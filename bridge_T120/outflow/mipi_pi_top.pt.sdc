
# Efinity Interface Designer SDC
# Version: 2021.2.323
# Date: 2022-06-02 14:29

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T120F324
# Project: mipi_pi_top
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 10.00 mipi_cal_clk
create_clock -period 20.00 mipi_pclk
create_clock -period 20.00 pll_inst3_CLKOUT0
create_clock -period 49.63 mipi_inst2_ESC_CLK

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_mref_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_mref_clk}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pll_clkin}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pll_clkin}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {pll_esc_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {pll_esc_clk}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sys_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sys_clk}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_arstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_arstn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {key1}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {key1}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {key2}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {key2}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rx_status}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rx_status}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rx_status2}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rx_status2}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rx_status3}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rx_status3}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {standby}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {standby}]

# LVDS Rx Constraints
####################

# MIPI RX Constraints
#####################################
set_output_delay -clock mipi_pclk -max -4.746 [get_ports {mipi_inst1_VC_ENA[3] mipi_inst1_VC_ENA[2] mipi_inst1_VC_ENA[1] mipi_inst1_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -min -2.587 [get_ports {mipi_inst1_VC_ENA[3] mipi_inst1_VC_ENA[2] mipi_inst1_VC_ENA[1] mipi_inst1_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -max -5.197 [get_ports {mipi_inst1_CLEAR}]
set_output_delay -clock mipi_pclk -min -2.498 [get_ports {mipi_inst1_CLEAR}]
set_input_delay -clock mipi_pclk -max 6.394 [get_ports {mipi_inst1_VSYNC[3] mipi_inst1_VSYNC[2] mipi_inst1_VSYNC[1] mipi_inst1_VSYNC[0]}]
set_input_delay -clock mipi_pclk -min 3.197 [get_ports {mipi_inst1_VSYNC[3] mipi_inst1_VSYNC[2] mipi_inst1_VSYNC[1] mipi_inst1_VSYNC[0]}]
set_input_delay -clock mipi_pclk -max 6.388 [get_ports {mipi_inst1_HSYNC[3] mipi_inst1_HSYNC[2] mipi_inst1_HSYNC[1] mipi_inst1_HSYNC[0]}]
set_input_delay -clock mipi_pclk -min 3.194 [get_ports {mipi_inst1_HSYNC[3] mipi_inst1_HSYNC[2] mipi_inst1_HSYNC[1] mipi_inst1_HSYNC[0]}]
set_input_delay -clock mipi_pclk -max 6.242 [get_ports {mipi_inst1_VALID}]
set_input_delay -clock mipi_pclk -min 3.121 [get_ports {mipi_inst1_VALID}]
set_input_delay -clock mipi_pclk -max 6.312 [get_ports {mipi_inst1_CNT[3] mipi_inst1_CNT[2] mipi_inst1_CNT[1] mipi_inst1_CNT[0]}]
set_input_delay -clock mipi_pclk -min 3.156 [get_ports {mipi_inst1_CNT[3] mipi_inst1_CNT[2] mipi_inst1_CNT[1] mipi_inst1_CNT[0]}]
set_input_delay -clock mipi_pclk -max 6.340 [get_ports {mipi_inst1_DATA[*]}]
set_input_delay -clock mipi_pclk -min 3.170 [get_ports {mipi_inst1_DATA[*]}]
set_input_delay -clock mipi_pclk -max 6.257 [get_ports {mipi_inst1_ERROR[*]}]
set_input_delay -clock mipi_pclk -min 3.128 [get_ports {mipi_inst1_ERROR[*]}]
set_input_delay -clock mipi_pclk -max 6.255 [get_ports {mipi_inst1_ULPS_CLK}]
set_input_delay -clock mipi_pclk -min 3.127 [get_ports {mipi_inst1_ULPS_CLK}]
set_input_delay -clock mipi_pclk -max 6.264 [get_ports {mipi_inst1_ULPS[3] mipi_inst1_ULPS[2] mipi_inst1_ULPS[1] mipi_inst1_ULPS[0]}]
set_input_delay -clock mipi_pclk -min 3.132 [get_ports {mipi_inst1_ULPS[3] mipi_inst1_ULPS[2] mipi_inst1_ULPS[1] mipi_inst1_ULPS[0]}]

# MIPI TX Constraints
#####################################
set_output_delay -clock mipi_pclk -max -4.840 [get_ports {mipi_inst2_LANES[1] mipi_inst2_LANES[0]}]
set_output_delay -clock mipi_pclk -min -2.654 [get_ports {mipi_inst2_LANES[1] mipi_inst2_LANES[0]}]
set_output_delay -clock mipi_pclk -max -5.098 [get_ports {mipi_inst2_VSYNC}]
set_output_delay -clock mipi_pclk -min -2.549 [get_ports {mipi_inst2_VSYNC}]
set_output_delay -clock mipi_pclk -max -5.099 [get_ports {mipi_inst2_HSYNC}]
set_output_delay -clock mipi_pclk -min -2.578 [get_ports {mipi_inst2_HSYNC}]
set_output_delay -clock mipi_pclk -max -5.055 [get_ports {mipi_inst2_VALID}]
set_output_delay -clock mipi_pclk -min -2.592 [get_ports {mipi_inst2_VALID}]
set_output_delay -clock mipi_pclk -max -4.927 [get_ports {mipi_inst2_DATA[*]}]
set_output_delay -clock mipi_pclk -min -2.444 [get_ports {mipi_inst2_DATA[*]}]
set_output_delay -clock mipi_pclk -max -4.732 [get_ports {mipi_inst2_TYPE[*]}]
set_output_delay -clock mipi_pclk -min -2.526 [get_ports {mipi_inst2_TYPE[*]}]
set_output_delay -clock mipi_pclk -max -5.228 [get_ports {mipi_inst2_FRAME_MODE}]
set_output_delay -clock mipi_pclk -min -2.545 [get_ports {mipi_inst2_FRAME_MODE}]
set_output_delay -clock mipi_pclk -max -5.193 [get_ports {mipi_inst2_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -min -2.547 [get_ports {mipi_inst2_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -max -5.213 [get_ports {mipi_inst2_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -min -2.542 [get_ports {mipi_inst2_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -max -5.012 [get_ports {mipi_inst2_ULPS_ENTER[3] mipi_inst2_ULPS_ENTER[2] mipi_inst2_ULPS_ENTER[1] mipi_inst2_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -min -2.524 [get_ports {mipi_inst2_ULPS_ENTER[3] mipi_inst2_ULPS_ENTER[2] mipi_inst2_ULPS_ENTER[1] mipi_inst2_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -max -4.942 [get_ports {mipi_inst2_ULPS_EXIT[3] mipi_inst2_ULPS_EXIT[2] mipi_inst2_ULPS_EXIT[1] mipi_inst2_ULPS_EXIT[0]}]
set_output_delay -clock mipi_pclk -min -2.517 [get_ports {mipi_inst2_ULPS_EXIT[3] mipi_inst2_ULPS_EXIT[2] mipi_inst2_ULPS_EXIT[1] mipi_inst2_ULPS_EXIT[0]}]

# JTAG Constraints
####################
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_TCK}]
# create_clock -period <USER_PERIOD> [get_ports {jtag_inst1_DRCK}]
set_output_delay -clock jtag_inst1_TCK -max 0.111 [get_ports {jtag_inst1_TDO}]
set_output_delay -clock jtag_inst1_TCK -min 0.053 [get_ports {jtag_inst1_TDO}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_CAPTURE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RESET}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_RUNTEST}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_RUNTEST}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.231 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.116 [get_ports {jtag_inst1_SEL}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.267 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.134 [get_ports {jtag_inst1_UPDATE}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -max 0.321 [get_ports {jtag_inst1_SHIFT}]
set_input_delay -clock_fall -clock jtag_inst1_TCK -min 0.161 [get_ports {jtag_inst1_SHIFT}]
