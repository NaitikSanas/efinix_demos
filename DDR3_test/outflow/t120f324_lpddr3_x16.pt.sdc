
# Efinity Interface Designer SDC
# Version: 2021.2.323
# Date: 2022-06-01 19:05

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T85F324
# Project: t120f324_lpddr3_x16
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 2.50 br0_pll_CLKOUT0
create_clock -period 32.00 axi_clk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {br0_pll_clkin}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {br0_pll_clkin}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {br1_pll_clkin}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {br1_pll_clkin}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {check_rstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {check_rstn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {ddr_rstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {ddr_rstn}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {done}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {done}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pass}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pass}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_br0_pll_locked}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_br0_pll_locked}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_br1_pll_locked}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_br1_pll_locked}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pll_locked}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pll_locked}]

# LVDS Tx Constraints
####################

# JTAG Constraints
####################
# create_clock -period <USER_PERIOD> [get_ports {bscan_TCK}]
# create_clock -period <USER_PERIOD> [get_ports {bscan_DRCK}]
set_output_delay -clock bscan_TCK -max 0.111 [get_ports {bscan_TDO}]
set_output_delay -clock bscan_TCK -min 0.053 [get_ports {bscan_TDO}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_CAPTURE}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_CAPTURE}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_RESET}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_RESET}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_RUNTEST}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_RUNTEST}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.231 [get_ports {bscan_SEL}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.116 [get_ports {bscan_SEL}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.267 [get_ports {bscan_UPDATE}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.134 [get_ports {bscan_UPDATE}]
set_input_delay -clock_fall -clock bscan_TCK -max 0.321 [get_ports {bscan_SHIFT}]
set_input_delay -clock_fall -clock bscan_TCK -min 0.161 [get_ports {bscan_SHIFT}]

# DDR Constraints
#####################
set_output_delay -clock axi_clk -max -2.810 [get_ports {aaddr_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aaddr_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {aburst_0[1] aburst_0[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aburst_0[1] aburst_0[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {aid_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aid_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {alen_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {alen_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {alock_0[1] alock_0[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {alock_0[1] alock_0[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {asize_0[2] asize_0[1] asize_0[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {asize_0[2] asize_0[1] asize_0[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {atype_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {atype_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {avalid_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {avalid_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {bready_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {bready_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {rready_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {rready_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wdata_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wdata_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wid_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wid_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wlast_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wlast_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wstrb_0[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wstrb_0[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wvalid_0}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wvalid_0}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {aready_0}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {aready_0}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {bid_0[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {bid_0[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {bvalid_0}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {bvalid_0}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rdata_0[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rdata_0[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rid_0[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rid_0[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rlast_0}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rlast_0}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rresp_0[1] rresp_0[0]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rresp_0[1] rresp_0[0]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rvalid_0}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rvalid_0}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {wready_0}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {wready_0}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {aaddr_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aaddr_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {aburst_1[1] aburst_1[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aburst_1[1] aburst_1[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {aid_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {aid_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {alen_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {alen_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {alock_1[1] alock_1[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {alock_1[1] alock_1[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {asize_1[2] asize_1[1] asize_1[0]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {asize_1[2] asize_1[1] asize_1[0]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {atype_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {atype_1}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {avalid_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {avalid_1}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {bready_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {bready_1}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {rready_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {rready_1}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wdata_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wdata_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wid_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wid_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wlast_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wlast_1}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wstrb_1[*]}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wstrb_1[*]}]
set_output_delay -clock axi_clk -max -2.810 [get_ports {wvalid_1}]
set_output_delay -clock axi_clk -min -2.155 [get_ports {wvalid_1}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {aready_1}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {aready_1}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {bid_1[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {bid_1[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {bvalid_1}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {bvalid_1}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rdata_1[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rdata_1[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rid_1[*]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rid_1[*]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rlast_1}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rlast_1}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rresp_1[1] rresp_1[0]}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rresp_1[1] rresp_1[0]}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {rvalid_1}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {rvalid_1}]
set_input_delay -clock axi_clk -max 8.310 [get_ports {wready_1}]
set_input_delay -clock axi_clk -min 4.155 [get_ports {wready_1}]
