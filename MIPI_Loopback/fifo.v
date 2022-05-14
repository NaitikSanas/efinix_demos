/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// fifo.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////


module fifo (
             clk,
             rst_n ,
             data_in,
             we,
             re,
             data_out,
             occupants,
             empty,
             full
);    
 

   parameter DATA_WIDTH = 8;
   parameter ADDR_WIDTH = 8;
   parameter RAM_DEPTH = (1 << ADDR_WIDTH);

   input clk;
   input rst_n;
   input we;
   input re;
   input [DATA_WIDTH-1:0] data_in;
   output reg [ADDR_WIDTH:0] occupants;
   output                 full;
   output                 empty;
   output [DATA_WIDTH-1:0] data_out;
   
   wire [DATA_WIDTH-1:0]   data_ram;
   reg [ADDR_WIDTH:0]      wr_pointer;
   reg [ADDR_WIDTH:0]      rd_pointer;
   
   
   always @ (posedge clk) begin
      if (~rst_n) begin
         wr_pointer <= 0;
         rd_pointer <= 0;
         occupants <= 0;
      end
      else begin
         if (we) wr_pointer <= wr_pointer + 1;
         if (re) rd_pointer <= rd_pointer + 1;
         if (re && !we && (occupants != 0)) occupants <= occupants - 1;
         else if (we && !re && (occupants != RAM_DEPTH)) occupants <= occupants + 1;
      end // else: !if(~rst_n)
   end // always @ (posedge clk)

   assign data_out = data_ram;
   assign full = (occupants == (RAM_DEPTH-1));
   assign empty = (occupants == 0);

   
memory #(.DATA_WIDTH(DATA_WIDTH),
	 .ADDR_WIDTH(ADDR_WIDTH),
	 .RAM_DEPTH(RAM_DEPTH)) memory_in0 (
.wr_clk (clk),
.rd_clk (clk),
.wr_rst_n (rst_n),
.rd_rst_n (rst_n),						    
.waddr (wr_pointer),
.wdata (data_in),
.wr_en (we),
.rd_en (re),
.raddr (rd_pointer),
.rdata (data_ram)
);     

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
