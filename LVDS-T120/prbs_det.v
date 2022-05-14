/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// prbs_det.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// 1.1 Design updated to 2021.1
//
// *******************************
/////////////////////////////////////////////////////////////////////////////


module prbs_det (
input clk,
input rstn,
input [7:0] data,
input testen,
output reg stat
);


reg rstn_filt, rstn_sync;
reg testen_filt, testen_sync;
wire error;
reg [7:0] prbs_r;
reg load;
reg [7:0] data_sync;

//assign stat = testen ? ~error : 1'b1; //1 = OK, 0 = error

/* always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
	rstn_filt <= 1'b0;
	rstn_sync <= 1'b0;
	end else begin
	rstn_filt <= 1'b1;
	rstn_sync <= rstn_filt;
	end
end */

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
	testen_filt <= 1'b0;
	testen_sync <= 1'b0;
	end else begin
	testen_filt <= testen;
	testen_sync <= testen_filt;
	end
end
	
always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
	data_sync <= 8'h00;
	end else begin
	data_sync <= data;
	end
end

assign error = |(data_sync ^ prbs_r);

always @(negedge clk or negedge rstn) begin
	if (!rstn) begin
	stat <= 1'b0;
	end else begin
		if (testen) stat <= ~error;
		else stat  <= 1'b1;
	end

end

always @(posedge clk or negedge rstn) begin
	if (!rstn) begin
	prbs_r <= 8'h08;
	end else begin
	prbs_r[7] <= load ? prbs_r[1] ^ prbs_r[3] 	      : prbs_r[7];
	prbs_r[6] <= load ? prbs_r[7] ^ prbs_r[1] ^ prbs_r[2] : prbs_r[6];
	prbs_r[5] <= load ? prbs_r[6] ^ prbs_r[7] 	      : prbs_r[5];
	prbs_r[4] <= load ? prbs_r[5] ^ prbs_r[6] 	      : prbs_r[4];
	prbs_r[3] <= load ? prbs_r[4] ^ prbs_r[5]	      : prbs_r[3];
	prbs_r[2] <= load ? prbs_r[3] ^ prbs_r[4]	      : prbs_r[2];
	prbs_r[1] <= load ? prbs_r[2] ^ prbs_r[3]	      : prbs_r[1];
	prbs_r[0] <= load ? prbs_r[1] ^ prbs_r[2]  	      : prbs_r[0];
	
	end
end

always @(negedge clk or negedge rstn) begin

	if (!rstn) begin
	load <= 1'b0;
	end else begin
	load <= testen_sync & ~error;
	end
end

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
