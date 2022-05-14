
// Efinity Top-level template
// Version: 2021.2.323
// Date: 2022-05-14 09:39

// Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\Users\sanas\OneDrive\Documents\LVDS\LVDS-T120\lvds_loopback.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  lvds_loopback
//     #4)  Insert design content.


module lvds_loopback
(
  input tx_refclk,
  input txpll_locked,
  input rxpll_locked,
  input lvds_refclk_DATA,
  input [7:0] rx_data0,
  input rstn,
  input rx_slowclk,
  input rx_fastclk,
  input tx_fastclk,
  input tx_slowclk,
  output txpll_rstn,
  output rxpll_rstn,
  output [3:0] led,
  output [7:0] prbs_data
);


endmodule

