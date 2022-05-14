/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// frame_aligner.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// 1.1 Design updated to 2021.1
//
// *******************************
/////////////////////////////////////////////////////////////////////////////


module frame_aligner (
input clk,
input rstn,
input start,
input [7:0] data_in,
input [7:0] pattern,
output [7:0] data_out,
output reg lock
);

reg [15:0] data_buff;
reg rstn_filt, rstn_sync;
reg [1:0] cstates, nstates;
reg start_filt, start_sync;
reg [7:0] pipe0, pipe1, pipe2, pipe3, pipe4, pipe5, pipe6, pipe7;
reg [7:0] match_i;
wire match;

assign match = |match_i;

localparam IDLE		= 2'b00, 
	   SEARCH 	= 2'b01,
	   LOCK 	= 2'b10;

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
	rstn_filt <= 1'b0;
	rstn_sync <= 1'b0;
	end else begin
	rstn_filt <= 1'b1;
	rstn_sync <= rstn_filt;
	end
end

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	data_buff <= 16'h0000;
	end else begin
	data_buff <= {data_in, data_buff[15:8]};
	end
end

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	start_filt <= 1'b0;
	start_sync <= 1'b0;
	end else begin
	start_filt <= start;
	start_sync <= start_filt;
	end
end


//State machine

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	cstates <= IDLE;
	end else begin
	cstates <= nstates;
	end
end

always @(cstates or start_sync or match) begin
	case(cstates)
	IDLE	: if (start_sync)		nstates = SEARCH;
	      	  else				nstates = IDLE;
	SEARCH	: if (match) 			nstates = LOCK;
		  else				nstates = SEARCH;
	LOCK	: if (!start_sync) 		nstates = IDLE;
	      	  else 				nstates = LOCK;
	endcase
end

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	pipe0 <= 8'h00;
	pipe1 <= 8'h00;
	pipe2 <= 8'h00;
	pipe3 <= 8'h00;
	pipe4 <= 8'h00;
	pipe5 <= 8'h00;
	pipe6 <= 8'h00;
	pipe7 <= 8'h00;
	end else begin
	pipe0 <= data_buff[15:8];
	pipe1 <= data_buff[14:7];
	pipe2 <= data_buff[13:6];
	pipe3 <= data_buff[12:5];
	pipe4 <= data_buff[11:4];
	pipe5 <= data_buff[10:3];
	pipe6 <= data_buff[9:2];
	pipe7 <= data_buff[8:1];
	end
end

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	match_i <= 8'h00;
	end else begin
		if (cstates == SEARCH & ~match) begin
		match_i[7] <= &(pipe7 ~^ pattern);
		match_i[6] <= &(pipe6 ~^ pattern);
		match_i[5] <= &(pipe5 ~^ pattern);
		match_i[4] <= &(pipe4 ~^ pattern);
		match_i[3] <= &(pipe3 ~^ pattern);
		match_i[2] <= &(pipe2 ~^ pattern);
		match_i[1] <= &(pipe1 ~^ pattern);
		match_i[0] <= &(pipe0 ~^ pattern);
		end else if (cstates == IDLE) begin
    		    match_i <= 8'h00;
		end
	end
end

always @(posedge clk or negedge rstn_sync) begin
	if (!rstn_sync) begin
	lock <= 1'b0;
	end else begin
		if (cstates == LOCK) 
		lock <= 1'b1;
		else if (cstates == SEARCH || cstates == IDLE)
		lock <= 1'b0;
	end
end

assign data_out = match_i[0] ? pipe0 :
		  match_i[1] ? pipe1 :
		  match_i[2] ? pipe2 :
		  match_i[3] ? pipe3 :
		  match_i[4] ? pipe4 :
		  match_i[5] ? pipe5 :
		  match_i[6] ? pipe6 :
		  match_i[7] ? pipe7 :
		  data_in;
endmodule


//////////////////////////////////////////////////////////////////////////////
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// This   document  contains  proprietary information  which   is
// protected by  copyright. All rights  are reserved.  This notice
// refers to original work by Efinix, Inc. which may be derivitive
// of other work distributed under license of the authors.  In the
// case of derivative work, nothing in this notice overrides the
// original author's license agreement.  Where applicable, the 
// original license agreement is included in it's original 
// unmodified form immediately below this header.
//
// WARRANTY DISCLAIMER.  
//     THE  DESIGN, CODE, OR INFORMATION ARE PROVIDED “AS IS” AND 
//     EFINIX MAKES NO WARRANTIES, EXPRESS OR IMPLIED WITH 
//     RESPECT THERETO, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES, 
//     INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF 
//     MERCHANTABILITY, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR 
//     PURPOSE.  SOME STATES DO NOT ALLOW EXCLUSIONS OF AN IMPLIED 
//     WARRANTY, SO THIS DISCLAIMER MAY NOT APPLY TO LICENSEE.
//
// LIMITATION OF LIABILITY.  
//     NOTWITHSTANDING ANYTHING TO THE CONTRARY, EXCEPT FOR BODILY 
//     INJURY, EFINIX SHALL NOT BE LIABLE WITH RESPECT TO ANY SUBJECT 
//     MATTER OF THIS AGREEMENT UNDER TORT, CONTRACT, STRICT LIABILITY 
//     OR ANY OTHER LEGAL OR EQUITABLE THEORY (I) FOR ANY INDIRECT, 
//     SPECIAL, INCIDENTAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES OF ANY 
//     CHARACTER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF 
//     GOODWILL, DATA OR PROFIT, WORK STOPPAGE, OR COMPUTER FAILURE OR 
//     MALFUNCTION, OR IN ANY EVENT (II) FOR ANY AMOUNT IN EXCESS, IN 
//     THE AGGREGATE, OF THE FEE PAID BY LICENSEE TO EFINIX HEREUNDER 
//     (OR, IF THE FEE HAS BEEN WAIVED, $100), EVEN IF EFINIX SHALL HAVE 
//     BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES.  SOME STATES DO 
//     NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
//     CONSEQUENTIAL DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT 
//     APPLY TO LICENSEE.
//
/////////////////////////////////////////////////////////////////////////////
