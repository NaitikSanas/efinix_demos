
# Efinity Interface Designer SDC
# Version: 2019.1.95
# Date: 2019-06-19 11:12

# Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

# Device: T20F169
# Project: v_filter
# Timing Model: C4 (preliminary)
#               NOTE: The timing data is not final

# PLL Constraints
#################
create_clock -period 49.63 mipi_inst2_ESC_CLK
create_clock -period 10.00 mipi_cal_clk
create_clock -period 30.00 mipi_pclk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_arstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_arstn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_mipi_dphy_arstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_mipi_dphy_arstn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {i_mref_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {i_mref_clk}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_HSYNC[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_HSYNC[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_HSYNC[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_HSYNC[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_HSYNC[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_HSYNC[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_HSYNC[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_HSYNC[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_VALID}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_VALID}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_VSYNC[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_VSYNC[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_VSYNC[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_VSYNC[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_VSYNC[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_VSYNC[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {o_dbg_mipi_VSYNC[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {o_dbg_mipi_VSYNC[3]}]

# LVDS TX GPIO Constraints
############################

# LVDS Rx Constraints
####################

# MIPI RX Constraints
#####################################
set_output_delay -clock mipi_pclk -max -3.546 [get_ports {mipi_inst1_VC_ENA[3] mipi_inst1_VC_ENA[2] mipi_inst1_VC_ENA[1] mipi_inst1_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -min -1.987 [get_ports {mipi_inst1_VC_ENA[3] mipi_inst1_VC_ENA[2] mipi_inst1_VC_ENA[1] mipi_inst1_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -max -3.997 [get_ports {mipi_inst1_CLEAR}]
set_output_delay -clock mipi_pclk -min -1.899 [get_ports {mipi_inst1_CLEAR}]
set_input_delay -clock mipi_pclk -max 5.194 [get_ports {mipi_inst1_VSYNC[3] mipi_inst1_VSYNC[2] mipi_inst1_VSYNC[1] mipi_inst1_VSYNC[0]}]
set_input_delay -clock mipi_pclk -min 2.597 [get_ports {mipi_inst1_VSYNC[3] mipi_inst1_VSYNC[2] mipi_inst1_VSYNC[1] mipi_inst1_VSYNC[0]}]
set_input_delay -clock mipi_pclk -max 5.188 [get_ports {mipi_inst1_HSYNC[3] mipi_inst1_HSYNC[2] mipi_inst1_HSYNC[1] mipi_inst1_HSYNC[0]}]
set_input_delay -clock mipi_pclk -min 2.594 [get_ports {mipi_inst1_HSYNC[3] mipi_inst1_HSYNC[2] mipi_inst1_HSYNC[1] mipi_inst1_HSYNC[0]}]
set_input_delay -clock mipi_pclk -max 5.042 [get_ports {mipi_inst1_VALID}]
set_input_delay -clock mipi_pclk -min 2.521 [get_ports {mipi_inst1_VALID}]
set_input_delay -clock mipi_pclk -max 5.112 [get_ports {mipi_inst1_CNT[3] mipi_inst1_CNT[2] mipi_inst1_CNT[1] mipi_inst1_CNT[0]}]
set_input_delay -clock mipi_pclk -min 2.556 [get_ports {mipi_inst1_CNT[3] mipi_inst1_CNT[2] mipi_inst1_CNT[1] mipi_inst1_CNT[0]}]
set_input_delay -clock mipi_pclk -max 5.140 [get_ports {mipi_inst1_DATA[*]}]
set_input_delay -clock mipi_pclk -min 2.570 [get_ports {mipi_inst1_DATA[*]}]
set_input_delay -clock mipi_pclk -max 5.057 [get_ports {mipi_inst1_ERR[*]}]
set_input_delay -clock mipi_pclk -min 2.529 [get_ports {mipi_inst1_ERR[*]}]
set_input_delay -clock mipi_pclk -max 5.055 [get_ports {mipi_inst1_ULPS_CLK}]
set_input_delay -clock mipi_pclk -min 2.528 [get_ports {mipi_inst1_ULPS_CLK}]
set_input_delay -clock mipi_pclk -max 5.064 [get_ports {mipi_inst1_ULPS[3] mipi_inst1_ULPS[2] mipi_inst1_ULPS[1] mipi_inst1_ULPS[0]}]
set_input_delay -clock mipi_pclk -min 2.532 [get_ports {mipi_inst1_ULPS[3] mipi_inst1_ULPS[2] mipi_inst1_ULPS[1] mipi_inst1_ULPS[0]}]
set_output_delay -clock mipi_pclk -max -3.546 [get_ports {mipi_inst3_VC_ENA[3] mipi_inst3_VC_ENA[2] mipi_inst3_VC_ENA[1] mipi_inst3_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -min -1.987 [get_ports {mipi_inst3_VC_ENA[3] mipi_inst3_VC_ENA[2] mipi_inst3_VC_ENA[1] mipi_inst3_VC_ENA[0]}]
set_output_delay -clock mipi_pclk -max -3.997 [get_ports {mipi_inst3_CLEAR}]
set_output_delay -clock mipi_pclk -min -1.899 [get_ports {mipi_inst3_CLEAR}]
set_input_delay -clock mipi_pclk -max 5.194 [get_ports {mipi_inst3_VSYNC[3] mipi_inst3_VSYNC[2] mipi_inst3_VSYNC[1] mipi_inst3_VSYNC[0]}]
set_input_delay -clock mipi_pclk -min 2.597 [get_ports {mipi_inst3_VSYNC[3] mipi_inst3_VSYNC[2] mipi_inst3_VSYNC[1] mipi_inst3_VSYNC[0]}]
set_input_delay -clock mipi_pclk -max 5.188 [get_ports {mipi_inst3_HSYNC[3] mipi_inst3_HSYNC[2] mipi_inst3_HSYNC[1] mipi_inst3_HSYNC[0]}]
set_input_delay -clock mipi_pclk -min 2.594 [get_ports {mipi_inst3_HSYNC[3] mipi_inst3_HSYNC[2] mipi_inst3_HSYNC[1] mipi_inst3_HSYNC[0]}]
set_input_delay -clock mipi_pclk -max 5.042 [get_ports {mipi_inst3_VALID}]
set_input_delay -clock mipi_pclk -min 2.521 [get_ports {mipi_inst3_VALID}]
set_input_delay -clock mipi_pclk -max 5.112 [get_ports {mipi_inst3_CNT[3] mipi_inst3_CNT[2] mipi_inst3_CNT[1] mipi_inst3_CNT[0]}]
set_input_delay -clock mipi_pclk -min 2.556 [get_ports {mipi_inst3_CNT[3] mipi_inst3_CNT[2] mipi_inst3_CNT[1] mipi_inst3_CNT[0]}]
set_input_delay -clock mipi_pclk -max 5.140 [get_ports {mipi_inst3_DATA[*]}]
set_input_delay -clock mipi_pclk -min 2.570 [get_ports {mipi_inst3_DATA[*]}]
set_input_delay -clock mipi_pclk -max 5.057 [get_ports {mipi_inst3_ERR[*]}]
set_input_delay -clock mipi_pclk -min 2.529 [get_ports {mipi_inst3_ERR[*]}]
set_input_delay -clock mipi_pclk -max 5.055 [get_ports {mipi_inst3_ULPS_CLK}]
set_input_delay -clock mipi_pclk -min 2.528 [get_ports {mipi_inst3_ULPS_CLK}]
set_input_delay -clock mipi_pclk -max 5.064 [get_ports {mipi_inst3_ULPS[3] mipi_inst3_ULPS[2] mipi_inst3_ULPS[1] mipi_inst3_ULPS[0]}]
set_input_delay -clock mipi_pclk -min 2.532 [get_ports {mipi_inst3_ULPS[3] mipi_inst3_ULPS[2] mipi_inst3_ULPS[1] mipi_inst3_ULPS[0]}]

# MIPI TX Constraints
#####################################
set_output_delay -clock mipi_pclk -max -3.640 [get_ports {mipi_inst2_LANES[1] mipi_inst2_LANES[0]}]
set_output_delay -clock mipi_pclk -min -2.054 [get_ports {mipi_inst2_LANES[1] mipi_inst2_LANES[0]}]
set_output_delay -clock mipi_pclk -max -3.898 [get_ports {mipi_inst2_VSYNC}]
set_output_delay -clock mipi_pclk -min -1.950 [get_ports {mipi_inst2_VSYNC}]
set_output_delay -clock mipi_pclk -max -3.899 [get_ports {mipi_inst2_HSYNC}]
set_output_delay -clock mipi_pclk -min -1.978 [get_ports {mipi_inst2_HSYNC}]
set_output_delay -clock mipi_pclk -max -3.855 [get_ports {mipi_inst2_VALID}]
set_output_delay -clock mipi_pclk -min -1.993 [get_ports {mipi_inst2_VALID}]
set_output_delay -clock mipi_pclk -max -3.727 [get_ports {mipi_inst2_DATA[*]}]
set_output_delay -clock mipi_pclk -min -1.844 [get_ports {mipi_inst2_DATA[*]}]
set_output_delay -clock mipi_pclk -max -3.532 [get_ports {mipi_inst2_TYPE[*]}]
set_output_delay -clock mipi_pclk -min -1.926 [get_ports {mipi_inst2_TYPE[*]}]
set_output_delay -clock mipi_pclk -max -4.028 [get_ports {mipi_inst2_FRAME_MODE}]
set_output_delay -clock mipi_pclk -min -1.945 [get_ports {mipi_inst2_FRAME_MODE}]
set_output_delay -clock mipi_pclk -max -3.993 [get_ports {mipi_inst2_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -min -1.947 [get_ports {mipi_inst2_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -max -4.013 [get_ports {mipi_inst2_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -min -1.943 [get_ports {mipi_inst2_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -max -3.812 [get_ports {mipi_inst2_ULPS_ENTER[3] mipi_inst2_ULPS_ENTER[2] mipi_inst2_ULPS_ENTER[1] mipi_inst2_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -min -1.924 [get_ports {mipi_inst2_ULPS_ENTER[3] mipi_inst2_ULPS_ENTER[2] mipi_inst2_ULPS_ENTER[1] mipi_inst2_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -max -3.742 [get_ports {mipi_inst2_ULPS_EXIT[3] mipi_inst2_ULPS_EXIT[2] mipi_inst2_ULPS_EXIT[1] mipi_inst2_ULPS_EXIT[0]}]
set_output_delay -clock mipi_pclk -min -1.918 [get_ports {mipi_inst2_ULPS_EXIT[3] mipi_inst2_ULPS_EXIT[2] mipi_inst2_ULPS_EXIT[1] mipi_inst2_ULPS_EXIT[0]}]
set_output_delay -clock mipi_pclk -max -3.640 [get_ports {mipi_inst4_LANES[1] mipi_inst4_LANES[0]}]
set_output_delay -clock mipi_pclk -min -2.054 [get_ports {mipi_inst4_LANES[1] mipi_inst4_LANES[0]}]
set_output_delay -clock mipi_pclk -max -3.898 [get_ports {mipi_inst4_VSYNC}]
set_output_delay -clock mipi_pclk -min -1.950 [get_ports {mipi_inst4_VSYNC}]
set_output_delay -clock mipi_pclk -max -3.899 [get_ports {mipi_inst4_HSYNC}]
set_output_delay -clock mipi_pclk -min -1.978 [get_ports {mipi_inst4_HSYNC}]
set_output_delay -clock mipi_pclk -max -3.855 [get_ports {mipi_inst4_VALID}]
set_output_delay -clock mipi_pclk -min -1.993 [get_ports {mipi_inst4_VALID}]
set_output_delay -clock mipi_pclk -max -3.727 [get_ports {mipi_inst4_DATA[*]}]
set_output_delay -clock mipi_pclk -min -1.844 [get_ports {mipi_inst4_DATA[*]}]
set_output_delay -clock mipi_pclk -max -3.532 [get_ports {mipi_inst4_TYPE[*]}]
set_output_delay -clock mipi_pclk -min -1.926 [get_ports {mipi_inst4_TYPE[*]}]
set_output_delay -clock mipi_pclk -max -4.028 [get_ports {mipi_inst4_FRAME_MODE}]
set_output_delay -clock mipi_pclk -min -1.945 [get_ports {mipi_inst4_FRAME_MODE}]
set_output_delay -clock mipi_pclk -max -3.993 [get_ports {mipi_inst4_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -min -1.947 [get_ports {mipi_inst4_ULPS_CLK_ENTER}]
set_output_delay -clock mipi_pclk -max -4.013 [get_ports {mipi_inst4_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -min -1.943 [get_ports {mipi_inst4_ULPS_CLK_EXIT}]
set_output_delay -clock mipi_pclk -max -3.812 [get_ports {mipi_inst4_ULPS_ENTER[3] mipi_inst4_ULPS_ENTER[2] mipi_inst4_ULPS_ENTER[1] mipi_inst4_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -min -1.924 [get_ports {mipi_inst4_ULPS_ENTER[3] mipi_inst4_ULPS_ENTER[2] mipi_inst4_ULPS_ENTER[1] mipi_inst4_ULPS_ENTER[0]}]
set_output_delay -clock mipi_pclk -max -3.742 [get_ports {mipi_inst4_ULPS_EXIT[3] mipi_inst4_ULPS_EXIT[2] mipi_inst4_ULPS_EXIT[1] mipi_inst4_ULPS_EXIT[0]}]
set_output_delay -clock mipi_pclk -min -1.918 [get_ports {mipi_inst4_ULPS_EXIT[3] mipi_inst4_ULPS_EXIT[2] mipi_inst4_ULPS_EXIT[1] mipi_inst4_ULPS_EXIT[0]}]

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

