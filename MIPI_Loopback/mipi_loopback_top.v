/////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2013-2019 Efinix Inc. All rights reserved.
//
// mipi_loopback_top.v
//
// *******************************
// Revisions:
// 1.0 Initial rev
// *******************************
/////////////////////////////////////////////////////////////////////////////


module mipi_loopback_top (
/* Signals of the video pattern generator */

	input         tx_vga_clk,
	input         sw4,  // change video pattern
	input         sw5,  // bypass MIPI channels
	input         rst_n,

/* Signals of VGA display output interface */
	    
	input         rx_vga_clk,
    /*
	output        vga_hs,
	output        vga_vs,
	output [4:0]  vga_r,
	output [5:0]  vga_g,
	output [4:0]  vga_b,
    */
/* Flashing LEDs to indicate successful comparison of MIPI data */

        output        led5,
        output        led6,
	
/* Clocks of MIPI TX and RX parallel interfaces */
	    
	input         tx_pixel_clk,
	input         rx_pixel_clk,

/* Signals used by the MIPI TX Interface Designer instance */
	    
	output        my_mipi_tx_DPHY_RSTN,
	output        my_mipi_tx_RSTN,
	output        my_mipi_tx_VALID,
	output        my_mipi_tx_HSYNC,
	output        my_mipi_tx_VSYNC,
	output [63:0] my_mipi_tx_DATA,
	output [5:0]  my_mipi_tx_TYPE,
	output [1:0]  my_mipi_tx_LANES,
	output        my_mipi_tx_FRAME_MODE,
	output [15:0] my_mipi_tx_HRES,
	output [1:0]  my_mipi_tx_VC,
	output [3:0]  my_mipi_tx_ULPS_ENTER,
	output [3:0]  my_mipi_tx_ULPS_EXIT,
	output        my_mipi_tx_ULPS_CLK_ENTER,
	output        my_mipi_tx_ULPS_CLK_EXIT,

/* Signals used by the MIPI RX Interface Designer instance */
	    
	output        my_mipi_rx_DPHY_RSTN,
	output        my_mipi_rx_RSTN,
	output        my_mipi_rx_CLEAR,
	output [1:0]  my_mipi_rx_LANES,
	output [3:0]  my_mipi_rx_VC_ENA,
	input         my_mipi_rx_VALID,
	input [3:0]   my_mipi_rx_HSYNC,
	input [3:0]   my_mipi_rx_VSYNC,
	input [63:0]  my_mipi_rx_DATA,
	input [5:0]   my_mipi_rx_TYPE,
	input [1:0]   my_mipi_rx_VC,
	input [3:0]   my_mipi_rx_CNT,
	input [17:0]  my_mipi_rx_ERROR,
	input         my_mipi_rx_ULPS_CLK,
	input [3:0]   my_mipi_rx_ULPS,

// for HW Debug
	input         bscan_DRCK,
	input         bscan_RESET,
	input         bscan_TMS,
	input         bscan_RUNTEST,
	input         bscan_SEL,
	input         bscan_SHIFT,
	input         bscan_TDI,
	input         bscan_CAPTURE,
	input         bscan_TCK,
	input         bscan_UPDATE,
	output        bscan_TDO
    );

//-----------------------------------------------------------//
// 800*600 VGA
//-----------------------------------------------------------//
parameter syncPulse_h= 128;            
parameter backPorch_h= 88;             
parameter activeVideo_h= 800;            
parameter frontPorch_h= 40;            
parameter syncPulse_v= 4;              
parameter backPorch_v = 23;             
parameter activeVideo_v = 600;            
parameter frontPorch_v = 1;

parameter FIFO_ADDR_WIDTH = 12;
parameter FIFO_DEPTH = (1 << FIFO_ADDR_WIDTH);

localparam HALF_FIFO_DEPTH = FIFO_DEPTH >> 1;
localparam total_pixel = activeVideo_h * activeVideo_v;
   
 

//**************************
// Pattern generation module
//**************************
   
wire[3:0] video_pattern;
wire[4:0]  vga_r_patgen;
wire[5:0]  vga_g_patgen;
wire[4:0]  vga_b_patgen; 

wire hsync_patgen;
wire vsync_patgen; 
wire valid_h_patgen;
wire valid_v_patgen;

video_gen #(.syncPulse_h (syncPulse_h),
            .backPorch_h (backPorch_h),
            .activeVideo_h (activeVideo_h),
            .frontPorch_h (frontPorch_h),
            .syncPulse_v (syncPulse_v),
            .backPorch_v (backPorch_v),
            .activeVideo_v (activeVideo_v),
            .frontPorch_v (frontPorch_v)
            ) patgen (
                    .rst (~rst_n),
                    .clk (tx_vga_clk),
                    .video_pattern (video_pattern),
                    .video_valid_h_o (valid_h_patgen),
                    .video_valid_h_o_2 (),
                    .video_hsync_o (hsync_patgen),
                    .video_hsync_o_2 (),
                    .video_vsync_o (vsync_patgen),
                    .video_valid_v_o (valid_v_patgen),
                    .red_o (vga_r_patgen),
                    .green_o (vga_g_patgen),
                    .blue_o (vga_b_patgen)
                    );

wire [4:0] vga_r_i;
wire [5:0] vga_g_i;
wire [4:0] vga_b_i;

assign vga_r_i = (valid_h_patgen && valid_v_patgen) ? vga_r_patgen : 5'b00000;
assign vga_g_i = (valid_h_patgen && valid_v_patgen) ? vga_g_patgen : 6'b000000;
assign vga_b_i = (valid_h_patgen && valid_v_patgen) ? vga_b_patgen : 5'b00000;

//***********************************************
// Switch 4 debouncer
//   Press sw4 to toggle between 4 video patterns
//***********************************************

sw_counter #(.MAX_CNT(4)) sw4_inst (
                                    .clk (tx_vga_clk),
                                    .rst_n (rst_n),
                                    .sw (sw4),
                                    .mode (video_pattern)
                                    );
	

//********************************************
// Pixel-to-MIPI-Tx Data Packer
//********************************************

// RGB565
   parameter DWIDTH = 16;
   parameter PIXELPERCLK   = 4;
   parameter PIXELPERCLKRX = 4;
   
// since RGB565 is 4 pixels per tx_pixel_clk, need to send through shift register

reg [DWIDTH-1:0] data1;
reg [DWIDTH-1:0] data2;
reg [DWIDTH-1:0] data3;

always @(posedge tx_vga_clk)
	begin
	if(~rst_n) begin
		data3<=0;
		data2<=0;
		data1<=0;
	end
	else
	begin
		data3<=data2;
		data2<=data1;
		data1<={vga_r_i,vga_g_i,vga_b_i};
	end
	end

/* pxlword_cnt counts from 0 to 3. A 64-bit tx_pixel_data is formed every time pxlword_cnt=3 */   
   reg [2:0] pxlword_cnt;
   reg 	     pxlword_state;
    
reg [63:0] tx_pixel_data;       // 64-bit Tx pixel data in 1/6x tx_vga_clk domain
reg [63:0] tx_pixel_data_PC;    // 64-bit Tx pixel data in tx_pixel_clk domain
reg 	   vsync_patgen_divided;  // vsync_patgen in 1/6x divided tx_vga_clk domain
reg 	   vsync_patgen_PC;       // vsync_patgen in tx_pixel_clk domain
reg 	   hsync_patgen_divided;  // hsync_patgen in 1/6x divided tx_vga_clk domain
reg 	   hsync_patgen_PC;       // hsync_patgen in tx_pixel_clk domain
reg 	   valid_h_patgen_divided; // valid_h_patgen in 1/6x divided tx_vga_clk domain
reg 	   valid_h_patgen_PC;      // valid_h_patgen in tx_pixel_clk domain
   
   
always @(posedge tx_vga_clk) begin
   if (~rst_n) begin
      pxlword_cnt <= 0;
      pxlword_state <= 0; // not counting
   end
   else if (~pxlword_state && ~valid_h_patgen) begin
      pxlword_cnt <= 0;
      pxlword_state <= 0; // not counting
   end      
   else if (~pxlword_state && valid_h_patgen) begin
      pxlword_state <= 1; // counting
      pxlword_cnt <= 1;
   end
   else begin
      if (pxlword_cnt == PIXELPERCLK-1)
	pxlword_cnt <= 0;
      else
	pxlword_cnt <= pxlword_cnt + 1;
      if (~valid_h_patgen && pxlword_cnt == PIXELPERCLK-1)
	pxlword_state <= 0; // not counting
   end
end

/* Sync TX signals from 1x tx_vga_clk to 1/4x tx_vga_clk */
   
always @(posedge tx_vga_clk) begin
   if (~rst_n) begin
      tx_pixel_data <= 0;
      vsync_patgen_divided <= 0;
      hsync_patgen_divided <= 0;
      valid_h_patgen_divided <= 0;
   end
   else if (pxlword_cnt == PIXELPERCLK-1) begin
      tx_pixel_data <= {vga_r_i,vga_g_i,vga_b_i,data1,data2,data3};
      vsync_patgen_divided <= vsync_patgen;
      hsync_patgen_divided <= hsync_patgen;
      valid_h_patgen_divided <= valid_h_patgen && valid_v_patgen;
   end
end
   
/* Sync Tx signals from 1/4x tx_vga_clk to tx_pixel_clk */

   always @(posedge tx_pixel_clk) begin
      if (~rst_n) begin
	 tx_pixel_data_PC <= 64'b0;
	 vsync_patgen_PC <= 0;
	 hsync_patgen_PC <= 0;
	 valid_h_patgen_PC <= 0;
      end
      else begin
	 tx_pixel_data_PC <= tx_pixel_data;
	 vsync_patgen_PC <= vsync_patgen;
	 hsync_patgen_PC <= hsync_patgen && vsync_patgen; 
	 valid_h_patgen_PC <= valid_h_patgen_divided;
      end
   end
   
         
//***************
// MIPI TX HOOKUP
//***************

assign my_mipi_tx_DPHY_RSTN = rst_n;
assign my_mipi_tx_RSTN = rst_n;
assign my_mipi_tx_VALID = valid_h_patgen_PC;
assign my_mipi_tx_HSYNC = hsync_patgen_PC;
assign my_mipi_tx_VSYNC = vsync_patgen_PC;
assign my_mipi_tx_DATA = tx_pixel_data_PC;
assign my_mipi_tx_TYPE = 6'h22;			// RGB565
assign my_mipi_tx_LANES = 2'b01;                // 2 lanes
assign my_mipi_tx_FRAME_MODE = 1'b0;            // Generic Frame Mode
assign my_mipi_tx_HRES = activeVideo_h;         // Number of pixels per line
assign my_mipi_tx_VC = 2'b00;                   // Virtual Channel select
assign my_mipi_tx_ULPS_ENTER = 4'b0000;
assign my_mipi_tx_ULPS_EXIT = 4'b0000;
assign my_mipi_tx_ULPS_CLK_ENTER = 1'b0;
assign my_mipi_tx_ULPS_CLK_EXIT = 1'b0;
   

//***************
/* MIPI RX HOOKUP */
//***************
   
assign my_mipi_rx_DPHY_RSTN = rst_n;
assign my_mipi_rx_RSTN = rst_n;
//assign my_mipi_rx_CLEAR = ~rst_n;
assign my_mipi_rx_CLEAR = clear_error;
assign my_mipi_rx_LANES = 2'b01;         // 2 lanes
assign my_mipi_rx_VC_ENA = 4'b0001;      // Virtual Channel enable

   wire [63:0] rx_data       = my_mipi_rx_DATA;
   wire        rx_valid      = my_mipi_rx_VALID;
   wire        rx_vs         = my_mipi_rx_VSYNC[0];
   wire        rx_hs         = my_mipi_rx_HSYNC[0];
   wire [5:0]  rx_type       = my_mipi_rx_TYPE;
   wire [17:0] rx_error      = my_mipi_rx_ERROR; // Pass=18'h200
   wire [1:0]  rx_vc         = my_mipi_rx_VC;
   wire [3:0]  rx_count      = my_mipi_rx_CNT;
   wire        rx_data0_ULPS = my_mipi_rx_ULPS[0];
   wire        rx_clk_ULPS   = my_mipi_rx_ULPS_CLK;



//*******************************   
// MIPI-Rx-to-Pixel Data Depacker
//*******************************   

   reg [63:0]  rx_data_PC;
   reg [DWIDTH-1:0]  rx_data_VC;
   reg 	       rx_valid_PC;
   reg 	       rx_vs_PC;
   reg 	       rx_vs_VC;
   reg 	       rx_hs_PC;
   reg         rx_valid_VC;
   reg [5:0]   rx_type_PC;
   reg [5:0]   rx_type_VC;
   reg [17:0]  rx_error_PC;
   reg [17:0]  rx_error_VC;
   reg [1:0]   rx_vc_PC;
   reg [1:0]   rx_vc_VC;
   reg [3:0]   rx_count_PC;
   reg [3:0]   rx_count_VC;
   reg 	       rx_data0_ULPS_PC;
   reg 	       rx_data0_ULPS_VC;
   reg 	       rx_clk_ULPS_PC;
   reg 	       rx_clk_ULPS_VC;

   reg [2:0]   valid_cnt; // counter to serialize 64-bit pixel data to 16-bit
   

/* Sync Rx signals to FPGA-core rx_pixel_clk domain */

   always @(posedge rx_pixel_clk) begin
      if (~rst_n) begin
	 rx_data_PC <= 0;
	 rx_valid_PC <= 0;
	 rx_vs_PC <= 0;
	 rx_hs_PC <= 0;
	 rx_type_PC <= 0;
	 rx_error_PC <= 0;
	 rx_vc_PC <= 0;
	 rx_count_PC <= 0;
	 rx_data0_ULPS_PC <= 0;
	 rx_clk_ULPS_PC <= 0;
      end
      else begin
	 rx_data_PC <= rx_data;
	 rx_valid_PC <= rx_valid;
	 rx_vs_PC <= rx_vs;
	 rx_hs_PC <= rx_hs;
	 rx_type_PC <= rx_type;
	 rx_error_PC <= rx_error;
	 rx_vc_PC <= rx_vc;
	 rx_count_PC <= rx_count;
	 rx_data0_ULPS_PC <= rx_data0_ULPS;
	 rx_clk_ULPS_PC <= rx_clk_ULPS;
      end
   end // always @ (posedge rx_pixel_clk)

   
/* Sync Rx signals from rx_pixel_clk to rx_vga_clk */
   
   always @(posedge rx_vga_clk) begin
      if (~rst_n) begin
	 rx_data_VC <= 0;
	 rx_vs_VC <= 0;
	 rx_valid_VC <= 0;
	 rx_type_VC <= 0;
	 rx_error_VC <= 0;
	 rx_vc_VC <= 0;
	 rx_count_VC <= 0;
	 rx_data0_ULPS_VC <= 0;
	 rx_clk_ULPS_VC <= 0;
      end
      else begin 
	 rx_vs_VC         <= rx_vs_PC;
	 rx_type_VC       <= rx_type_PC;
	 rx_error_VC      <= rx_error_PC;
	 rx_vc_VC         <= rx_vc_PC;
	 rx_count_VC      <= rx_count_PC;
	 rx_data0_ULPS_VC <= rx_data0_ULPS_PC;
	 rx_clk_ULPS_VC   <= rx_clk_ULPS_PC;

	 if ((rx_count_PC - valid_cnt) == 1)
	   rx_data_VC <= rx_data_PC[63:48];
	 else if ((rx_count_PC - valid_cnt) == 2)
	   rx_data_VC <= rx_data_PC[47:32];
	 else if ((rx_count_PC - valid_cnt) == 3)
	   rx_data_VC <= rx_data_PC[31:16];
	 else if ((rx_count_PC - valid_cnt) == 4)
	   rx_data_VC <= rx_data_PC[15:0];
	 else
	   rx_data_VC <= 0;

	 if (rx_valid_PC && (rx_count_PC > valid_cnt))
	   rx_valid_VC <= 1;
	 else
	   rx_valid_VC <= 0;
      end // else: !if(~rst_n)
   end // always @ (posedge rx_vga_clk)
   

/* RX valid counter, to set rx_data_VC and rx_valid_VC */
 
   always @(posedge rx_vga_clk) begin
      if (~rst_n) begin
	 valid_cnt <= 0;
      end
      else if (~rx_valid_PC) begin   // Use valid
//      else if (~valid_h_patgen_PC) begin
	 valid_cnt <= 0;
      end
      else begin
	 if (valid_cnt == PIXELPERCLKRX-1)
	   valid_cnt <= 0;
	 else
	   valid_cnt <= valid_cnt + 1;
      end
   end // always @ (posedge rx_vga_clk)

   
//***********************************************************************************
// Rx reset generation
//     Rx is reset at every falling edge of vsync, and delayed by half the FIFO depth
//***********************************************************************************

   reg [HALF_FIFO_DEPTH-1:0]  rx_vs_VC_delay, vsync_golden_delay ; // delay for half of FIFO depth
   wire                       rxvga_reset, vsync_golden_reset;

   always @(posedge rx_vga_clk)
     if (~rst_n) begin
       rx_vs_VC_delay <= 0;
	   vsync_golden_delay <= 0; 
	 end
     else begin
       rx_vs_VC_delay <= {rx_vs_VC_delay[HALF_FIFO_DEPTH-2:0],rx_vs_VC};
	   vsync_golden_delay <= {vsync_golden_delay[HALF_FIFO_DEPTH-2:0],vsync_golden}; 
	 end


   assign rxvga_reset = rx_vs_VC_delay[HALF_FIFO_DEPTH-1] && !rx_vs_VC_delay[HALF_FIFO_DEPTH-2];
   assign vsync_golden_reset = vsync_golden_delay[HALF_FIFO_DEPTH-1] && !vsync_golden_delay[HALF_FIFO_DEPTH-2];
     

//*************************************************************************
// Rx FIFO module
//   FIFO depth = 1 << FIFO_ADDR_WIDTH
//   Width = 16 (data) + vsync + hsync = 18
//   Read enable controlled by the golden pattern generator
//   Write enable depends on hsync from MIPI Rx
//*************************************************************************
   
   wire [15:0] rx_data_vga;
   wire [15:0] rx_data_VCsync;
   wire rxfifo_empty;
   wire rxfifo_full;
   wire [FIFO_ADDR_WIDTH:0] occupants;


fifo #(.DATA_WIDTH(DWIDTH),
       .ADDR_WIDTH(FIFO_ADDR_WIDTH)) fifo_in0 (
  .clk (rx_vga_clk),
  .rst_n (rst_n && !rxvga_reset),
  .we (rx_valid_VC),
  .re (valid_h_golden),
  .data_in (rx_data_VC),
  .data_out (rx_data_VCsync),
  .empty (rxfifo_empty),
  .full (rxfifo_full),
  .occupants (occupants)
  );


   assign rx_data_vga = valid_h_golden_2 ? rx_data_VCsync : 0;

//******************************************************************
// Golden pattern generation module
//     Golden pattern is compared against the MIPI Rx data from FIFO
//******************************************************************

   wire       hsync_golden;
   wire       hsync_golden_2;
   wire       valid_h_golden;
   wire       valid_h_golden_2;
   wire	      vsync_golden;
   wire	      valid_v_golden;
   wire [4:0] vga_r_golden;
   wire [5:0] vga_g_golden;
   wire [4:0] vga_b_golden;

video_gen #(.syncPulse_h (syncPulse_h),
            .backPorch_h (backPorch_h),
            .activeVideo_h (activeVideo_h),
            .frontPorch_h (frontPorch_h),
            .syncPulse_v (syncPulse_v),
            .backPorch_v (backPorch_v),
            .activeVideo_v (activeVideo_v),
            .frontPorch_v (frontPorch_v)
            ) goldenpat (
                       .rst (~rst_n || rxvga_reset),
                       .clk (rx_vga_clk),
                       .video_pattern (video_pattern),
                       .video_valid_h_o (valid_h_golden),
                       .video_valid_h_o_2 (valid_h_golden_2),
                       .video_hsync_o (hsync_golden),
                       .video_hsync_o_2 (hsync_golden_2),
                       .video_vsync_o (vsync_golden),
                       .video_valid_v_o (valid_v_golden),
                       .red_o (vga_r_golden),
                       .green_o (vga_g_golden),
                       .blue_o (vga_b_golden)
                       );

//***************************************************************
// Switch 5 debouncer
//   Press sw5 to toggle between sourcing the VGA output display
//   from MIPI Rx & directly from pattern generator (MIPI_bypass)
//***************************************************************
   wire [3:0] mipi_bypass;

   sw_counter #(.MAX_CNT(2)) sw5_inst (
                                       .clk (rx_vga_clk),
                                       .rst_n (rst_n),
                                       .sw (sw5),
                                       .mode (mipi_bypass)
                                       );

//********************************************************   
// Output to VGA display (optional)
//   Please hook up the following signals to a VGA adaptor 
//********************************************************   

   assign vga_hs = mipi_bypass[0] ? hsync_patgen : hsync_golden_2;
   assign vga_vs = mipi_bypass[0] ? vsync_patgen : vsync_golden;  

   assign vga_r = mipi_bypass[0] ? vga_r_i : rx_data_vga[15:11];
   assign vga_g = mipi_bypass[0] ? vga_g_i : rx_data_vga[10:5];
   assign vga_b = mipi_bypass[0] ? vga_b_i : rx_data_vga[4:0];


//******************************************************************
// Clear error module
//    Clear the MIPI RX error status every 16 cycles if error is 
//    detected to make sure it reflect the updated error status
//******************************************************************

reg [3:0] err_checker_cnt;
reg clear_error;
   always @(posedge rx_vga_clk) begin
      if (~rst_n) begin
         clear_error <= 1;
		 err_checker_cnt <= 0;
	  end
	  else if (err_checker_cnt == 4'hf) begin
		if (rx_error_VC != 18'h200) begin
	      clear_error <= 1; end
		else begin
	      clear_error <= 0;	
		end
	    err_checker_cnt <= 1;	
	  end
	  else begin
          clear_error <= 0;
		  err_checker_cnt <= err_checker_cnt + 1; end  
	end	


//******************************************************************
// Comparison module
//    Performs pixel-by-pixel comparison of the golden data with 
//    the MIPI Rx data from Rx FIFO output
//******************************************************************

   reg [15:0] rx_data_golden;
   reg [19:0] compare_cnt;
   reg [19:0] compare_max;
   wire       compare_pass;
   
   always @(posedge rx_vga_clk) begin
      if (~rst_n)
        rx_data_golden <= 0;
      else
        rx_data_golden <= {vga_r_golden,vga_g_golden,vga_b_golden};
   end
   
   always @(posedge rx_vga_clk) begin
      if (~rst_n) begin
         compare_cnt <= 0;
         compare_max <= 0;
      end
      else if (vsync_golden_reset) begin
         compare_cnt <= 0;
         compare_max <= compare_cnt;
      end
      else if (valid_v_golden && valid_h_golden_2) begin
         if (rx_data_vga == rx_data_golden) 
           compare_cnt <= compare_cnt + 1;
		 else 
		   compare_cnt <= 0;
      end
   end
  

   assign compare_pass = (compare_max == total_pixel) && (rx_error_VC == 18'h200);
   
// LED5 and LED6 will toggle if the comparison passed
   
   reg [24:0] flash_cnt;
   
   always @(posedge rx_vga_clk) begin
      if (~rst_n)
        flash_cnt <= 0;
      else if (!compare_pass)
        flash_cnt <= 0;
      else if (flash_cnt == 25'h1ffffff) flash_cnt <= 1;
      else flash_cnt <= flash_cnt + 1;
   end

   assign led5 = (flash_cnt==25'b0) ? 1 : flash_cnt[24];
   assign led6 = (flash_cnt==25'b0) ? 1 : ~flash_cnt[24];


edb_top edb_top_inst (
    .bscan_CAPTURE    ( bscan_CAPTURE ),
    .bscan_DRCK       ( bscan_DRCK ),
    .bscan_RESET      ( bscan_RESET ),
    .bscan_RUNTEST    ( bscan_RUNTEST ),
    .bscan_SEL        ( bscan_SEL ),
    .bscan_SHIFT      ( bscan_SHIFT ),
    .bscan_TCK        ( bscan_TCK ),
    .bscan_TDI        ( bscan_TDI ),
    .bscan_TMS        ( bscan_TMS ),
    .bscan_UPDATE     ( bscan_UPDATE ),
    .bscan_TDO        ( bscan_TDO ),
    .VIO_0_clk                 ( rx_pixel_clk ),
    .VIO_0_mipi_rx_error       ( my_mipi_rx_ERROR ),
    .VIO_0_mipi_rx_type        ( my_mipi_rx_TYPE ),
    .VIO_0_video_pattern       ( video_pattern ),
    .VIO_0_mipi_bypass         ( mipi_bypass[0] ),			
    .VIO_0_compare_cnt         ( compare_cnt ),
    .VIO_0_compare_max         ( compare_max ),
    .VIO_0_compare_pass        ( compare_pass )
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
