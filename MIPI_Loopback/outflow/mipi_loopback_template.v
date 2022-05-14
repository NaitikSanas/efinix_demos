
// Efinity Top-level template
// Version: 2021.2.323
// Date: 2022-05-14 12:36

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\sanas\OneDrive\Documents\MIPI_Loopback\mipi_loopback.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  mipi_loopback
//     #4)  Insert design content.


module mipi_loopback
(
  input mipi_refclk,
  input ref_clk,
  input refclk2,
  input rst_n,
  input sw4,
  input sw5,
  input [3:0] my_mipi_rx_CNT,
  input [63:0] my_mipi_rx_DATA,
  input [17:0] my_mipi_rx_ERROR,
  input [3:0] my_mipi_rx_HSYNC,
  input [5:0] my_mipi_rx_TYPE,
  input [3:0] my_mipi_rx_ULPS,
  input my_mipi_rx_ULPS_CLK,
  input my_mipi_rx_VALID,
  input [1:0] my_mipi_rx_VC,
  input [3:0] my_mipi_rx_VSYNC,
  input tx_vga_clk,
  input tx_pixel_clk,
  input mipi_rx_cal_clk,
  input tx_esc_pll_CLKOUT0,
  input rx_vga_clk,
  input rx_pixel_clk,
  input bscan_CAPTURE,
  input bscan_DRCK,
  input bscan_RESET,
  input bscan_RUNTEST,
  input bscan_SEL,
  input bscan_SHIFT,
  input bscan_TCK,
  input bscan_TDI,
  input bscan_TMS,
  input bscan_UPDATE,
  output led5,
  output led6,
  output my_mipi_rx_CLEAR,
  output my_mipi_rx_DPHY_RSTN,
  output [1:0] my_mipi_rx_LANES,
  output my_mipi_rx_RSTN,
  output [3:0] my_mipi_rx_VC_ENA,
  output [63:0] my_mipi_tx_DATA,
  output my_mipi_tx_DPHY_RSTN,
  output my_mipi_tx_FRAME_MODE,
  output [15:0] my_mipi_tx_HRES,
  output my_mipi_tx_HSYNC,
  output [1:0] my_mipi_tx_LANES,
  output my_mipi_tx_RSTN,
  output [5:0] my_mipi_tx_TYPE,
  output my_mipi_tx_ULPS_CLK_ENTER,
  output my_mipi_tx_ULPS_CLK_EXIT,
  output [3:0] my_mipi_tx_ULPS_ENTER,
  output [3:0] my_mipi_tx_ULPS_EXIT,
  output my_mipi_tx_VALID,
  output [1:0] my_mipi_tx_VC,
  output my_mipi_tx_VSYNC,
  output bscan_TDO
);


endmodule

