/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// prbs_gen.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// 1.1 Design updated to 2021.1
//
// *******************************
/////////////////////////////////////////////////////////////////////////////


module prbs_gen(clk,rstn,out) ;
input          	clk;
input           rstn ;
output   [7:0]  out ;

wire [7:0] prbs_r ;
reg  [7:0] f1_prbs_r ;
reg rstn_filt, rstn_sync;
assign out = prbs_r;


always @(posedge clk or negedge rstn) begin
	if (~rstn) begin
	rstn_filt <= 1'b0;
	rstn_sync <= 1'b0;
	end else begin
	rstn_filt <= 1'b1;
	rstn_sync <= rstn_filt;
	end
end

always @(posedge clk or negedge rstn_sync) begin
  if (~rstn_sync) begin 
    f1_prbs_r <= 8'h08;
    end
  else begin
        f1_prbs_r <=  prbs_r;
  end
end

assign prbs_r[7] = prbs_r[0] ^ prbs_r[1];
assign prbs_r[6] = f1_prbs_r[7] ^ prbs_r[0];
assign prbs_r[5] = f1_prbs_r[6] ^ f1_prbs_r[7];
assign prbs_r[4] = f1_prbs_r[5] ^ f1_prbs_r[6];
assign prbs_r[3] = f1_prbs_r[4] ^ f1_prbs_r[5];
assign prbs_r[2] = f1_prbs_r[3] ^ f1_prbs_r[4];
assign prbs_r[1] = f1_prbs_r[2] ^ f1_prbs_r[3];
assign prbs_r[0] = f1_prbs_r[1] ^ f1_prbs_r[2];

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
