/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// mipi_pi_top.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////

`include "mipi_parameter.vh"

module mipi_pi_top
#(
/* Max. pixel per line */
	parameter	MIPI_TX_HRES	= 1920
)
(
/* Signals of MIPI clock and system reset */
	input	i_arstn,
	input	mipi_pclk,

/* Channel 0 MIPI Rx config */	
	output	mipi_inst1_DPHY_RSTN,
	output	mipi_inst1_RSTN,
	output	[3:0]mipi_inst1_VC_ENA,
	output	[1:0]mipi_inst1_LANES,
	output	mipi_inst1_CLEAR,
	
/* Signals of channel 0 MIPI Rx */
	input	[3:0]mipi_inst1_HSYNC,
	input	[3:0]mipi_inst1_VSYNC,
	input	[3:0]mipi_inst1_CNT,
	input	mipi_inst1_VALID,
	input	[5:0]mipi_inst1_TYPE,
	input	[63:0]mipi_inst1_DATA,
	input	[1:0]mipi_inst1_VC,	
	input	[17:0]mipi_inst1_ERR,
		
/* Signals of channel 0 MIPI Tx */	
	output	mipi_inst2_DPHY_RSTN,
	output	mipi_inst2_RSTN,
	output	mipi_inst2_VALID,
	output	mipi_inst2_HSYNC,
	output	mipi_inst2_VSYNC,
	output	[63:0]mipi_inst2_DATA,
	output	[5:0]mipi_inst2_TYPE,
	output	[1:0]mipi_inst2_LANES,
	output	mipi_inst2_FRAME_MODE,
	output	[15:0]mipi_inst2_HRES,
	output	[1:0]mipi_inst2_VC,
	output	[3:0]mipi_inst2_ULPS_ENTER,
	output	[3:0]mipi_inst2_ULPS_EXIT,
	output	mipi_inst2_ULPS_CLK_ENTER,
	output	mipi_inst2_ULPS_CLK_EXIT,
	
    input sys_clk,
    output rx_status,standby,rx_status2,rx_status3,
/* RGB gain buttons */
	input key1, //RGB gain reset
	input key2	//Red gain button
);

wire	[0:0]w_PROBE_TRIGGER;
wire	[0:0]w_mipi_inst1_CLEAR;

/* RGB gain */
reg [2:0] red_gain;
reg [2:0] green_gain;
reg [2:0] blue_gain;

reg[15:0] key1_counter; 
reg[15:0] key2_counter; 

/* MIPI Tx signals */
wire	w_mipi_tx_vsync;
wire	w_mipi_tx_hsync;
wire	w_mipi_tx_valid;
wire	[5:0]w_mipi_tx_type;
wire	[15:0]w_mipi_tx_hres;
wire	[59:0]w_mipi_tx_data;
wire	[59:0]w_mipi_tx_data_filtered;

/* MIPI Rx config */
assign	mipi_inst1_DPHY_RSTN			= 1'b1;
assign	mipi_inst1_RSTN					= 1'b1;
assign	mipi_inst1_VC_ENA[`MIPI_VC0]	= 1'b1;
assign	mipi_inst1_VC_ENA[`MIPI_VC1]	= 1'b0;
assign	mipi_inst1_VC_ENA[`MIPI_VC2]	= 1'b0;
assign	mipi_inst1_VC_ENA[`MIPI_VC3]	= 1'b0;
assign	mipi_inst1_LANES				= `MIPI_2_LANE;

assign	mipi_inst1_CLEAR		= w_mipi_inst1_CLEAR[0];

/* MIPI Tx config */
assign	mipi_inst2_DPHY_RSTN		= 1'b1;
assign	mipi_inst2_RSTN				= 1'b1;
assign	mipi_inst2_VALID			= w_mipi_tx_valid;
assign	mipi_inst2_HSYNC			= w_mipi_tx_hsync;
assign	mipi_inst2_VSYNC			= w_mipi_tx_vsync;
assign	mipi_inst2_DATA				= {{4{1'b0}}, w_mipi_tx_data_filtered};
assign	mipi_inst2_TYPE				= w_mipi_tx_type;
assign	mipi_inst2_LANES			= `MIPI_2_LANE;
assign	mipi_inst2_FRAME_MODE		= 1'b0;
assign	mipi_inst2_HRES				= w_mipi_tx_hres;
assign	mipi_inst2_VC				= 2'b00;
assign	mipi_inst2_ULPS_ENTER		= 4'b0000;
assign	mipi_inst2_ULPS_EXIT		= 4'b0000;
assign	mipi_inst2_ULPS_CLK_ENTER	= 1'b0;
assign	mipi_inst2_ULPS_CLK_EXIT	= 1'b0;
assign	w_mipi_tx_type				= 6'h2B;
assign	w_mipi_tx_hres				= MIPI_TX_HRES;

wire	w_confdone;

reg tmp = 24'd0;
assign rx_status = mipi_inst1_VSYNC;
assign rx_status2 = mipi_inst1_ERR[9];//1'b1;//w_mipi_tx_hsync;
assign rx_status3 = w_mipi_tx_hsync;
assign standby = mipi_inst1_HSYNC;

/*
always@(posedge mipi_inst_inst1_VSYNC)begin
    
end
*/
reg [24:0] cnt = 24'd0;
always@(posedge sys_clk)begin
    cnt <= cnt + 1'd1;
end

//******************************
// MIPI debug signal assignment
//******************************
reg	[3:0]r_mipi_rx_hsync_1P;
reg	r_mipi_rx_valid_1P;
reg	[39:0]r_mipi_rx_data_1P;
reg	[5:0]r_mipi_rx_type_1P;

always@(posedge mipi_pclk or negedge i_arstn)
begin
	if (~i_arstn)
	begin		
		r_mipi_rx_hsync_1P	<= {4{1'b0}};
		r_mipi_rx_valid_1P	<= 1'b0;
		r_mipi_rx_data_1P	<= {40{1'b0}};
		r_mipi_rx_type_1P	<= {6{1'b0}};
	end
	else
	begin
		r_mipi_rx_hsync_1P	<= mipi_inst1_HSYNC;
		r_mipi_rx_valid_1P	<= mipi_inst1_VALID;
		r_mipi_rx_type_1P	<= mipi_inst1_TYPE;
		r_mipi_rx_data_1P	<= mipi_inst1_DATA[39:0];
	end
end

//**************************
// RGB gain switch module
//**************************
always @(posedge mipi_pclk) begin
   if(~mipi_inst1_ERR[9]) begin
      key1_counter <= 0;
	  key2_counter <= 0;
      red_gain <= 4;
	  green_gain <= 4;
	  blue_gain <= 4;
   end
   else
	begin
/* RGB gain reset */
	if (key1==1'b1)                                                    
	  key1_counter<=0;
	else if ((key1==1'b0)& (key1_counter<=16'hc350))       	
	  key1_counter<=key1_counter+1'b1;
	if (key1_counter==16'hc349)     	
	  begin
	     red_gain<=4;
	     green_gain<=4;
		 blue_gain<=4;
	  end	
	else
/* Red gain select */
	begin if (key2==1'b1)                                                    
	  key2_counter<=0;
	else if ((key2==1'b0)& (key2_counter<=16'hc350))       	
	  key2_counter<=key2_counter+1'b1;
	if (key2_counter==16'hc349)     	
	  begin
	     if(red_gain==7)
	       red_gain<=3'b000;
	     else
	       red_gain<=red_gain+1'b1; 
	  end	
	end
	end
end

//**************************************
// Line buffer module for MIPI Rx to Tx
//**************************************
line_buf_4_to_6
#(
	.MIPI_TX_HRES(MIPI_TX_HRES)
)
inst_line_buf
(
	.mipi_pclk(mipi_pclk),
	.i_arstn(mipi_inst1_ERR[9]),
	.mipi_inst1_HSYNC(r_mipi_rx_hsync_1P),
	.mipi_inst1_VALID(r_mipi_rx_valid_1P),
	.mipi_inst1_DATA(r_mipi_rx_data_1P),
	.mipi_inst1_TYPE(r_mipi_rx_type_1P),

	.red_gain (red_gain),
	.green_gain (green_gain),
	.blue_gain (blue_gain),

	.mipi_tx_hsync(w_mipi_tx_hsync),
	.mipi_tx_valid(w_mipi_tx_valid),
	.mipi_tx_data(w_mipi_tx_data)
);



reg	[12:0]r_waddr_1P;
reg	r_rden_1P;
reg	[12:0]r_raddr_1P;



always@(posedge mipi_pclk or negedge i_arstn)
begin
	if (~i_arstn)
	begin
		r_waddr_1P	<= {13{1'b0}};
		r_rden_1P	<= 1'b0;
		r_raddr_1P	<= {13{1'b0}};
	end
	else
	begin
		r_waddr_1P	<= r_waddr_1P+1'b1;
		if (r_waddr_1P[10])
			r_rden_1P	<= 1'b1;
		if (r_rden_1P)
			r_raddr_1P	<= r_raddr_1P+1'b1;
	end
end

simple_dual_port_ram
#(
	.DATA_WIDTH(1),
	.ADDR_WIDTH(13),
	.OUTPUT_REG("TRUE")
)
inst_dly
(
	.wdata(mipi_inst1_VSYNC[0]),
	.waddr(r_waddr_1P),
	.raddr(r_raddr_1P),
	.we(1'b1),
	.wclk(mipi_pclk),
	.re(r_rden_1P),
	.rclk(mipi_pclk),
	.rdata(w_mipi_tx_vsync)
);

assign w_mipi_tx_data_filtered = w_mipi_tx_data; 

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
