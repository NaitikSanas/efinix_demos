
// Efinity Top-level template
// Version: 2021.2.323
// Date: 2022-06-01 19:05

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\sanas\OneDrive\Documents\t120f324_lpddr3_x16\t120f324_lpddr3_x16.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  t120f324_lpddr3_x16
//     #4)  Insert design content.


module t120f324_lpddr3_x16
(
  input br0_pll_clkin,
  input br1_pll_clkin,
  input br1_pll_locked,
  input br0_pll_locked,
  input check_rstn,
  input ddr_rstn,
  input axi_clk,
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
  input aready_0,
  input aready_1,
  input [7:0] bid_0,
  input [7:0] bid_1,
  input bvalid_0,
  input bvalid_1,
  input [255:0] rdata_0,
  input [127:0] rdata_1,
  input [7:0] rid_0,
  input [7:0] rid_1,
  input rlast_0,
  input rlast_1,
  input [1:0] rresp_0,
  input [1:0] rresp_1,
  input rvalid_0,
  input rvalid_1,
  input wready_0,
  input wready_1,
  output br1_pll_rstn,
  output br0_pll_rstn,
  output done,
  output pass,
  output o_br0_pll_locked,
  output o_br1_pll_locked,
  output pll_locked,
  output bscan_TDO,
  output [31:0] aaddr_0,
  output [31:0] aaddr_1,
  output [1:0] aburst_0,
  output [1:0] aburst_1,
  output [7:0] aid_0,
  output [7:0] aid_1,
  output [7:0] alen_0,
  output [7:0] alen_1,
  output [1:0] alock_0,
  output [1:0] alock_1,
  output [2:0] asize_0,
  output [2:0] asize_1,
  output atype_0,
  output atype_1,
  output avalid_0,
  output avalid_1,
  output bready_0,
  output bready_1,
  output ddr_inst1_CFG_SEQ_RST,
  output ddr_inst1_CFG_SEQ_START,
  output rready_0,
  output rready_1,
  output ddr_inst1_RSTN,
  output [255:0] wdata_0,
  output [127:0] wdata_1,
  output [7:0] wid_0,
  output [7:0] wid_1,
  output wlast_0,
  output wlast_1,
  output [31:0] wstrb_0,
  output [15:0] wstrb_1,
  output wvalid_0,
  output wvalid_1
);


endmodule

