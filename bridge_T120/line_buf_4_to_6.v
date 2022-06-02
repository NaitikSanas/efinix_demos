/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// line_buf_4_to_6.v
//
// *******************************
// Revisions:
// 0.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////

module line_buf_4_to_6
#(
	parameter	RX_DW			= 10*4,
	parameter	TX_DW			= 10*6,
	parameter	PW				= 10,
	parameter	MIPI_TX_HRES	= 1920
)
(
	input                mipi_pclk,
	input                i_arstn,
	
	input [3:0]          mipi_inst1_HSYNC,
	input                mipi_inst1_VALID,
	input [RX_DW-1:0]    mipi_inst1_DATA,
	input [5:0]          mipi_inst1_TYPE,
    input [2:0]          red_gain,
    input [2:0]          green_gain,
    input [2:0]          blue_gain,
 
	output               mipi_tx_hsync,
	output               mipi_tx_valid,
	output [TX_DW-1:0]   mipi_tx_data
);

localparam	LNB_AW	= 11;

reg		r_mipi_rx_hsync_1P;
reg		r_mipi_rx_valid_1P;
reg		[RX_DW-1:0]r_mipi_rx_data_1P;

reg		r_mipi_rx_hsync_2P;
reg		[LNB_AW-1:0]r_mipi_rx_x_2P;

////////////////////////////////

reg		r_mipi_rx_full_1P;
reg		r_mipi_tx_en_1P;
reg		r_mipi_tx_x_inc_1P;
reg		[LNB_AW-1:0]r_mipi_tx_x_1P;
reg		[2:0]r_mipi_tx_b_1P;
reg		r_mipi_tx_hsync_1P;
reg		r_mipi_tx_valid_1P;
reg		r_mipi_tx_latch_1P;

reg		[2:0]r_mipi_tx_b_2P;
reg		r_mipi_tx_hsync_2P;
reg		r_mipi_tx_valid_2P;
reg		r_mipi_tx_latch_2P;

reg		[2:0]r_mipi_tx_b_3P;
reg		r_mipi_tx_hsync_3P;
reg		r_mipi_tx_valid_3P;
reg		r_mipi_tx_latch_3P;
wire	[RX_DW-1:0]w_mipi_tx_data_3P;

reg		[2:0]r_mipi_tx_b_4P;
reg		[TX_DW*2-1:0]r_mipi_tx_data_4P;
reg		r_mipi_tx_hsync_4P;
reg		r_mipi_tx_valid_4P;
reg		r_mipi_tx_latch_4P;

reg		[TX_DW*2-1:0]r_mipi_tx_data_5P;
reg		r_mipi_tx_hsync_5P;
reg		r_mipi_tx_valid_5P;
reg		r_mipi_tx_hsync_6P;
reg		r_mipi_tx_valid_6P;

   wire [RX_DW-1:0] mipi_inst1_DATA_filtered;

   wire [PW:0] odd_line_byte_3;
   wire [PW:0] odd_line_byte_2;
   wire [PW:0] odd_line_byte_1;
   wire [PW:0] odd_line_byte_0;
   
   wire [PW-1:0] odd_line_pix_3;
   wire [PW-1:0] odd_line_pix_2;
   wire [PW-1:0] odd_line_pix_1;
   wire [PW-1:0] odd_line_pix_0;
   
   wire [PW:0] even_line_byte_3;
   wire [PW:0] even_line_byte_2;
   wire [PW:0] even_line_byte_1;
   wire [PW:0] even_line_byte_0;
   
   wire [PW-1:0] even_line_pix_3;
   wire [PW-1:0] even_line_pix_2;
   wire [PW-1:0] even_line_pix_1;
   wire [PW-1:0] even_line_pix_0;
   
   wire [PW-1:0] byte_3_div_1;
   wire [PW-1:0] byte_3_div_2;
   wire [PW-1:0] byte_3_div_4;
   wire [PW-1:0] byte_2_div_1;
   wire [PW-1:0] byte_2_div_2;
   wire [PW-1:0] byte_2_div_4;
   wire [PW-1:0] byte_1_div_1;
   wire [PW-1:0] byte_1_div_2;
   wire [PW-1:0] byte_1_div_4;
   wire [PW-1:0] byte_0_div_1;
   wire [PW-1:0] byte_0_div_2;
   wire [PW-1:0] byte_0_div_4;

wire	[39:0]w_mipi_tx_data_0_4P;
wire	[39:0]w_mipi_tx_data_1_4P;
wire	[39:0]w_mipi_tx_data_2_4P;

wire	[59:0]w_mipi_tx_data_0_5P;
wire	[59:0]w_mipi_tx_data_1_5P;

   
   assign byte_3_div_1 = mipi_inst1_DATA[RX_DW-1:PW*3];
   assign byte_3_div_2 = byte_3_div_1 >> 1;
   assign byte_3_div_4 = byte_3_div_1 >> 2;
   assign byte_2_div_1 = mipi_inst1_DATA[PW*3-1:PW*2];
   assign byte_2_div_2 = byte_2_div_1 >> 1;
   assign byte_2_div_4 = byte_2_div_1 >> 2;
   assign byte_1_div_1 = mipi_inst1_DATA[PW*2-1:PW];
   assign byte_1_div_2 = byte_1_div_1 >> 1;
   assign byte_1_div_4 = byte_1_div_1 >> 2;
   assign byte_0_div_1 = mipi_inst1_DATA[PW-1:0];
   assign byte_0_div_2 = byte_0_div_1 >> 1;
   assign byte_0_div_4 = byte_0_div_1 >> 2;
   
   assign odd_line_byte_3 = green_gain[2] ? 
             byte_3_div_1+(byte_3_div_2 & {PW{green_gain[1]}})+(byte_3_div_4 & {PW{green_gain[0]}}):
             byte_3_div_1-byte_3_div_4-(byte_3_div_2 & {PW{~green_gain[1]}})-(byte_3_div_4 & {PW{~green_gain[0]}});
   assign odd_line_byte_2 = blue_gain[2] ? 
             byte_2_div_1+(byte_2_div_2 & {PW{blue_gain[1]}})+(byte_2_div_4 & {PW{blue_gain[0]}}):
             byte_2_div_1-byte_2_div_4-(byte_2_div_2 & {PW{~blue_gain[1]}})-(byte_2_div_4 & {PW{~blue_gain[0]}});
   assign odd_line_byte_1 = green_gain[2] ? 
             byte_1_div_1+(byte_1_div_2 & {PW{green_gain[1]}})+(byte_1_div_4 & {PW{green_gain[0]}}):
             byte_1_div_1-byte_1_div_4-(byte_1_div_2 & {PW{~green_gain[1]}})-(byte_1_div_4 & {PW{~green_gain[0]}});
   assign odd_line_byte_0 = blue_gain[2] ? 
             byte_0_div_1+(byte_0_div_2 & {PW{blue_gain[1]}})+(byte_0_div_4 & {PW{blue_gain[0]}}):
             byte_0_div_1-byte_0_div_4-(byte_0_div_2 & {PW{~blue_gain[1]}})-(byte_0_div_4 & {PW{~blue_gain[0]}});
   assign even_line_byte_3 = red_gain[2] ? 
             byte_3_div_1+(byte_3_div_2 & {PW{red_gain[1]}})+(byte_3_div_4 & {PW{red_gain[0]}}):
             byte_3_div_1-byte_3_div_4-(byte_3_div_2 & {PW{~red_gain[1]}})-(byte_3_div_4 & {PW{~red_gain[0]}});
   assign even_line_byte_2 = green_gain[2] ? 
             byte_2_div_1+(byte_2_div_2 & {PW{green_gain[1]}})+(byte_2_div_4 & {PW{green_gain[0]}}):
             byte_2_div_1-byte_2_div_4-(byte_2_div_2 & {PW{~green_gain[1]}})-(byte_2_div_4 & {PW{~green_gain[0]}});
   assign even_line_byte_1 = red_gain[2] ? 
             byte_1_div_1+(byte_1_div_2 & {PW{red_gain[1]}})+(byte_1_div_4 & {PW{red_gain[0]}}):
             byte_1_div_1-byte_1_div_4-(byte_1_div_2 & {PW{~red_gain[1]}})-(byte_1_div_4 & {PW{~red_gain[0]}});
   assign even_line_byte_0 = green_gain[2] ? 
             byte_0_div_1+(byte_0_div_2 & {PW{green_gain[1]}})+(byte_0_div_4 & {PW{green_gain[0]}}):
             byte_0_div_1-byte_0_div_4-(byte_0_div_2 & {PW{~green_gain[1]}})-(byte_0_div_4 & {PW{~green_gain[0]}});

   assign odd_line_pix_3 = odd_line_byte_3[PW] ? {PW{1'b1}} : odd_line_byte_3[PW-1:0];
   assign odd_line_pix_2 = odd_line_byte_2[PW] ? {PW{1'b1}} : odd_line_byte_2[PW-1:0];
   assign odd_line_pix_1 = odd_line_byte_1[PW] ? {PW{1'b1}} : odd_line_byte_1[PW-1:0];
   assign odd_line_pix_0 = odd_line_byte_0[PW] ? {PW{1'b1}} : odd_line_byte_0[PW-1:0];
   assign even_line_pix_3 = even_line_byte_3[PW] ? {PW{1'b1}} : even_line_byte_3[PW-1:0];
   assign even_line_pix_2 = even_line_byte_2[PW] ? {PW{1'b1}} : even_line_byte_2[PW-1:0];
   assign even_line_pix_1 = even_line_byte_1[PW] ? {PW{1'b1}} : even_line_byte_1[PW-1:0];
   assign even_line_pix_0 = even_line_byte_0[PW] ? {PW{1'b1}} : even_line_byte_0[PW-1:0];
   
   assign mipi_inst1_DATA_filtered = r_mipi_rx_x_2P[LNB_AW-1] ?
                               {even_line_pix_3,even_line_pix_2,even_line_pix_1,even_line_pix_0}:
                                {odd_line_pix_3, odd_line_pix_2, odd_line_pix_1, odd_line_pix_0};
   
   
always@(posedge mipi_pclk or negedge i_arstn)
begin
	if (~i_arstn)
	begin
		r_mipi_rx_hsync_1P		<= 1'b0;
		r_mipi_rx_valid_1P		<= 1'b0;
		r_mipi_rx_data_1P		<= {RX_DW{1'b0}};
		
		r_mipi_rx_hsync_2P		<= 1'b0;
		r_mipi_rx_x_2P			<= {LNB_AW{1'b0}};
		
		////////////////////////////////
		
		r_mipi_rx_full_1P		<= 1'b0;
		r_mipi_tx_en_1P			<= 1'b0;
		r_mipi_tx_x_inc_1P		<= 1'b0;
		r_mipi_tx_x_1P			<= {LNB_AW{1'b0}};
		r_mipi_tx_b_1P			<= {3{1'b0}};
		r_mipi_tx_hsync_1P		<= 1'b0;
		r_mipi_tx_valid_1P		<= 1'b0;
		r_mipi_tx_latch_1P		<= 1'b0;
		
		r_mipi_tx_hsync_2P		<= 1'b0;
		r_mipi_tx_valid_2P		<= 1'b0;
		r_mipi_tx_latch_2P		<= 1'b0;
		r_mipi_tx_hsync_3P		<= 1'b0;
		r_mipi_tx_valid_3P		<= 1'b0;
		r_mipi_tx_latch_3P		<= 1'b0;
		
		r_mipi_tx_data_4P		<= {TX_DW*2{1'b0}};
		r_mipi_tx_hsync_4P		<= 1'b0;
		r_mipi_tx_valid_4P		<= 1'b0;
		r_mipi_tx_latch_4P		<= 1'b0;
		
		r_mipi_tx_data_5P		<= {TX_DW*2{1'b0}};
		r_mipi_tx_hsync_5P		<= 1'b0;
		r_mipi_tx_valid_5P		<= 1'b0;
		r_mipi_tx_hsync_6P		<= 1'b0;
		r_mipi_tx_valid_6P		<= 1'b0;
	end
	else
	begin
		r_mipi_rx_hsync_1P	<= mipi_inst1_HSYNC[0];
		r_mipi_rx_valid_1P	<= mipi_inst1_VALID;
		r_mipi_rx_data_1P	<= mipi_inst1_DATA_filtered[RX_DW-1:0];		
		r_mipi_rx_hsync_2P	<= r_mipi_rx_hsync_1P;
		
		if(r_mipi_rx_valid_1P)
			r_mipi_rx_x_2P[LNB_AW-2:0]	<= r_mipi_rx_x_2P[LNB_AW-2:0]+1'b1;
		
		////////////////////////////////
		
		r_mipi_tx_hsync_1P	<= 1'b0;
		r_mipi_tx_valid_1P	<= 1'b0;
		r_mipi_tx_latch_1P	<= 1'b0;
		if (~r_mipi_rx_hsync_1P && r_mipi_rx_hsync_2P)
		begin
			r_mipi_rx_x_2P[LNB_AW-2:0]	<= {LNB_AW-1{1'b0}};
			r_mipi_rx_full_1P			<= 1'b1;
			begin
				r_mipi_rx_x_2P[LNB_AW-1]	<= ~r_mipi_rx_x_2P[LNB_AW-1];
			end
		end
		
		if (r_mipi_rx_full_1P)
		begin
			r_mipi_tx_en_1P				<= 1'b1;
			r_mipi_tx_x_inc_1P			<= 1'b1;
			r_mipi_tx_x_1P[LNB_AW-2:0]	<= {LNB_AW-1{1'b0}};
			r_mipi_tx_b_1P				<= {3{1'b0}};
			r_mipi_tx_hsync_1P			<= 1'b1;
			r_mipi_tx_valid_1P			<= 1'b0;
			r_mipi_tx_latch_1P			<= 1'b1;
			
			r_mipi_rx_full_1P			<= 1'b0;
		end
		
		if (r_mipi_tx_en_1P)
		begin
			if (r_mipi_tx_x_inc_1P)
				r_mipi_tx_x_1P[LNB_AW-2:0]	<= r_mipi_tx_x_1P[LNB_AW-2:0]+1'b1;
			r_mipi_tx_b_1P				<= r_mipi_tx_b_1P+1'b1;
			r_mipi_tx_hsync_1P			<= 1'b1;
			r_mipi_tx_valid_1P			<= 1'b1;
			
			if (r_mipi_tx_b_1P == 3'd2)
			begin
				r_mipi_tx_b_1P		<= {3{1'b0}};
				r_mipi_tx_valid_1P	<= 1'b0;
				r_mipi_tx_latch_1P	<= 1'b1;
			end
			
			if (r_mipi_tx_x_1P[LNB_AW-2:0] == (MIPI_TX_HRES/4)-1'b1)
			begin
				r_mipi_tx_en_1P				<= 1'b0;
				r_mipi_tx_x_1P[LNB_AW-2:0]	<= {LNB_AW-1{1'b0}};
				r_mipi_tx_x_1P[LNB_AW-1]	<= ~r_mipi_tx_x_1P[LNB_AW-1];
				r_mipi_tx_b_1P				<= {3{1'b0}};
			end
		end
		
		r_mipi_tx_hsync_2P	<= r_mipi_tx_hsync_1P;
		r_mipi_tx_valid_2P	<= r_mipi_tx_valid_1P;
		r_mipi_tx_latch_2P	<= r_mipi_tx_latch_1P;
		r_mipi_tx_hsync_3P	<= r_mipi_tx_hsync_2P;
		r_mipi_tx_valid_3P	<= r_mipi_tx_valid_2P;
		r_mipi_tx_latch_3P	<= r_mipi_tx_latch_2P;
		
		r_mipi_tx_data_4P	<= {w_mipi_tx_data_3P, r_mipi_tx_data_4P[RX_DW*3-1:RX_DW]};
		r_mipi_tx_hsync_4P	<= r_mipi_tx_hsync_3P;
		r_mipi_tx_valid_4P	<= r_mipi_tx_valid_3P;
		r_mipi_tx_latch_4P	<= r_mipi_tx_latch_3P;
		
		if (r_mipi_tx_valid_6P)
			r_mipi_tx_data_5P	<= {{TX_DW{1'b0}}, r_mipi_tx_data_5P[TX_DW*2-1:TX_DW]};
		else
			r_mipi_tx_data_5P	<= r_mipi_tx_data_4P;
		r_mipi_tx_hsync_5P	<= r_mipi_tx_hsync_4P;
		r_mipi_tx_valid_5P	<= r_mipi_tx_valid_4P;
		r_mipi_tx_hsync_6P	<= r_mipi_tx_hsync_5P;
		r_mipi_tx_valid_6P	<= r_mipi_tx_valid_5P;
	end
end

simple_dual_port_ram
#(
	.DATA_WIDTH(RX_DW),
	.ADDR_WIDTH(LNB_AW),
	.OUTPUT_REG("TRUE")
)
inst_simple_dual_port_ram
(
	.wdata(r_mipi_rx_data_1P),
	.waddr(r_mipi_rx_x_2P),
	.raddr(r_mipi_tx_x_1P),
	.we(r_mipi_rx_valid_1P),
	.wclk(mipi_pclk),
	.re(1'b1),
	.rclk(mipi_pclk),
	.rdata(w_mipi_tx_data_3P)
);

assign	mipi_tx_hsync	= r_mipi_tx_hsync_6P;
assign	mipi_tx_valid	= r_mipi_tx_valid_6P;
assign	mipi_tx_data	= r_mipi_tx_data_5P[TX_DW-1:0];

assign	w_mipi_tx_data_0_4P	= r_mipi_tx_data_4P[RX_DW*1-1:RX_DW*0];
assign	w_mipi_tx_data_1_4P	= r_mipi_tx_data_4P[RX_DW*2-1:RX_DW*1];
assign	w_mipi_tx_data_2_4P	= r_mipi_tx_data_4P[RX_DW*3-1:RX_DW*2];

assign	w_mipi_tx_data_0_5P	= r_mipi_tx_data_5P[TX_DW*1-1:TX_DW*0];
assign	w_mipi_tx_data_1_5P	= r_mipi_tx_data_5P[TX_DW*2-1:TX_DW*1];

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
