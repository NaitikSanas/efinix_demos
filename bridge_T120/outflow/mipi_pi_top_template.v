
// Efinity Top-level template
// Version: 2021.2.323
// Date: 2022-06-02 14:29

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\sanas\OneDrive\Documents\t120_bridge\bridge_T120\mipi_pi_top.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  mipi_pi_top
//     #4)  Insert design content.


module mipi_pi_top
(
  input i_mref_clk,
  input pll_clkin,
  input pll_esc_clk,
  input sys_clk,
  input i_pll_locked,
  input i_arstn,
  input key1,
  input key2,
  input [3:0] mipi_inst1_CNT,
  input [63:0] mipi_inst1_DATA,
  input [17:0] mipi_inst1_ERROR,
  input [3:0] mipi_inst1_HSYNC,
  input [5:0] mipi_inst1_TYPE,
  input [3:0] mipi_inst1_ULPS,
  input mipi_inst1_ULPS_CLK,
  input mipi_inst1_VALID,
  input [1:0] mipi_inst1_VC,
  input [3:0] mipi_inst1_VSYNC,
  input mipi_cal_clk,
  input mipi_pclk,
  input pll_inst3_CLKOUT0,
  input mipi_inst2_ESC_CLK,
  input jtag_inst1_CAPTURE,
  input jtag_inst1_DRCK,
  input jtag_inst1_RESET,
  input jtag_inst1_RUNTEST,
  input jtag_inst1_SEL,
  input jtag_inst1_SHIFT,
  input jtag_inst1_TCK,
  input jtag_inst1_TDI,
  input jtag_inst1_TMS,
  input jtag_inst1_UPDATE,
  output rx_status,
  output rx_status2,
  output rx_status3,
  output standby,
  output mipi_inst1_CLEAR,
  output mipi_inst1_DPHY_RSTN,
  output [1:0] mipi_inst1_LANES,
  output mipi_inst1_RSTN,
  output [3:0] mipi_inst1_VC_ENA,
  output [63:0] mipi_inst2_DATA,
  output mipi_inst2_DPHY_RSTN,
  output mipi_inst2_FRAME_MODE,
  output [15:0] mipi_inst2_HRES,
  output mipi_inst2_HSYNC,
  output [1:0] mipi_inst2_LANES,
  output mipi_inst2_RSTN,
  output [5:0] mipi_inst2_TYPE,
  output mipi_inst2_ULPS_CLK_ENTER,
  output mipi_inst2_ULPS_CLK_EXIT,
  output [3:0] mipi_inst2_ULPS_ENTER,
  output [3:0] mipi_inst2_ULPS_EXIT,
  output mipi_inst2_VALID,
  output [1:0] mipi_inst2_VC,
  output mipi_inst2_VSYNC,
  output jtag_inst1_TDO
);


endmodule

