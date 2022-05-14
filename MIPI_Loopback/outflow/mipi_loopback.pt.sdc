
# Efinity Interface Designer SDC
# Version: 2021.2.323
# Date: 2022-05-14 12:36

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T120F324
# Project: mipi_loopback
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 25.00 tx_vga_clk
create_clock -period 99.99 tx_pixel_clk
create_clock -period 10.00 mipi_rx_cal_clk
create_clock -period 51.25 tx_esc_pll_CLKOUT0
create_clock -period 25.00 rx_vga_clk
create_clock -period 100.00 rx_pixel_clk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {mipi_refclk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {mipi_refclk}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {ref_clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {ref_clk}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {refclk2}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {refclk2}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rst_n}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rst_n}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sw4}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sw4}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sw5}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sw5}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led5}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led5}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led6}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led6}]

# LVDS Rx Constraints
####################

# MIPI RX Constraints
#####################################
set_output_delay -clock rx_pixel_clk -max -4.746 [get_ports {my_mipi_rx_VC_ENA[3] my_mipi_rx_VC_ENA[2] my_mipi_rx_VC_ENA[1] my_mipi_rx_VC_ENA[0]}]
set_output_delay -clock rx_pixel_clk -min -2.587 [get_ports {my_mipi_rx_VC_ENA[3] my_mipi_rx_VC_ENA[2] my_mipi_rx_VC_ENA[1] my_mipi_rx_VC_ENA[0]}]
set_output_delay -clock rx_pixel_clk -max -5.197 [get_ports {my_mipi_rx_CLEAR}]
set_output_delay -clock rx_pixel_clk -min -2.498 [get_ports {my_mipi_rx_CLEAR}]
set_input_delay -clock rx_pixel_clk -max 6.394 [get_ports {my_mipi_rx_VSYNC[3] my_mipi_rx_VSYNC[2] my_mipi_rx_VSYNC[1] my_mipi_rx_VSYNC[0]}]
set_input_delay -clock rx_pixel_clk -min 3.197 [get_ports {my_mipi_rx_VSYNC[3] my_mipi_rx_VSYNC[2] my_mipi_rx_VSYNC[1] my_mipi_rx_VSYNC[0]}]
set_input_delay -clock rx_pixel_clk -max 6.388 [get_ports {my_mipi_rx_HSYNC[3] my_mipi_rx_HSYNC[2] my_mipi_rx_HSYNC[1] my_mipi_rx_HSYNC[0]}]
set_input_delay -clock rx_pixel_clk -min 3.194 [get_ports {my_mipi_rx_HSYNC[3] my_mipi_rx_HSYNC[2] my_mipi_rx_HSYNC[1] my_mipi_rx_HSYNC[0]}]
set_input_delay -clock rx_pixel_clk -max 6.242 [get_ports {my_mipi_rx_VALID}]
set_input_delay -clock rx_pixel_clk -min 3.121 [get_ports {my_mipi_rx_VALID}]
set_input_delay -clock rx_pixel_clk -max 6.312 [get_ports {my_mipi_rx_CNT[3] my_mipi_rx_CNT[2] my_mipi_rx_CNT[1] my_mipi_rx_CNT[0]}]
set_input_delay -clock rx_pixel_clk -min 3.156 [get_ports {my_mipi_rx_CNT[3] my_mipi_rx_CNT[2] my_mipi_rx_CNT[1] my_mipi_rx_CNT[0]}]
set_input_delay -clock rx_pixel_clk -max 6.340 [get_ports {my_mipi_rx_DATA[*]}]
set_input_delay -clock rx_pixel_clk -min 3.170 [get_ports {my_mipi_rx_DATA[*]}]
set_input_delay -clock rx_pixel_clk -max 6.257 [get_ports {my_mipi_rx_ERROR[*]}]
set_input_delay -clock rx_pixel_clk -min 3.128 [get_ports {my_mipi_rx_ERROR[*]}]
set_input_delay -clock rx_pixel_clk -max 6.255 [get_ports {my_mipi_rx_ULPS_CLK}]
set_input_delay -clock rx_pixel_clk -min 3.127 [get_ports {my_mipi_rx_ULPS_CLK}]
set_input_delay -clock rx_pixel_clk -max 6.264 [get_ports {my_mipi_rx_ULPS[3] my_mipi_rx_ULPS[2] my_mipi_rx_ULPS[1] my_mipi_rx_ULPS[0]}]
set_input_delay -clock rx_pixel_clk -min 3.132 [get_ports {my_mipi_rx_ULPS[3] my_mipi_rx_ULPS[2] my_mipi_rx_ULPS[1] my_mipi_rx_ULPS[0]}]

# MIPI TX Constraints
#####################################
set_output_delay -clock tx_pixel_clk -max -4.840 [get_ports {my_mipi_tx_LANES[1] my_mipi_tx_LANES[0]}]
set_output_delay -clock tx_pixel_clk -min -2.654 [get_ports {my_mipi_tx_LANES[1] my_mipi_tx_LANES[0]}]
set_output_delay -clock tx_pixel_clk -max -5.098 [get_ports {my_mipi_tx_VSYNC}]
set_output_delay -clock tx_pixel_clk -min -2.549 [get_ports {my_mipi_tx_VSYNC}]
set_output_delay -clock tx_pixel_clk -max -5.099 [get_ports {my_mipi_tx_HSYNC}]
set_output_delay -clock tx_pixel_clk -min -2.578 [get_ports {my_mipi_tx_HSYNC}]
set_output_delay -clock tx_pixel_clk -max -5.055 [get_ports {my_mipi_tx_VALID}]
set_output_delay -clock tx_pixel_clk -min -2.592 [get_ports {my_mipi_tx_VALID}]
set_output_delay -clock tx_pixel_clk -max -4.927 [get_ports {my_mipi_tx_DATA[*]}]
set_output_delay -clock tx_pixel_clk -min -2.444 [get_ports {my_mipi_tx_DATA[*]}]
set_output_delay -clock tx_pixel_clk -max -4.732 [get_ports {my_mipi_tx_TYPE[*]}]
set_output_delay -clock tx_pixel_clk -min -2.526 [get_ports {my_mipi_tx_TYPE[*]}]
set_output_delay -clock tx_pixel_clk -max -5.228 [get_ports {my_mipi_tx_FRAME_MODE}]
set_output_delay -clock tx_pixel_clk -min -2.545 [get_ports {my_mipi_tx_FRAME_MODE}]
set_output_delay -clock tx_pixel_clk -max -5.193 [get_ports {my_mipi_tx_ULPS_CLK_ENTER}]
set_output_delay -clock tx_pixel_clk -min -2.547 [get_ports {my_mipi_tx_ULPS_CLK_ENTER}]
set_output_delay -clock tx_pixel_clk -max -5.213 [get_ports {my_mipi_tx_ULPS_CLK_EXIT}]
set_output_delay -clock tx_pixel_clk -min -2.542 [get_ports {my_mipi_tx_ULPS_CLK_EXIT}]
set_output_delay -clock tx_pixel_clk -max -5.012 [get_ports {my_mipi_tx_ULPS_ENTER[3] my_mipi_tx_ULPS_ENTER[2] my_mipi_tx_ULPS_ENTER[1] my_mipi_tx_ULPS_ENTER[0]}]
set_output_delay -clock tx_pixel_clk -min -2.524 [get_ports {my_mipi_tx_ULPS_ENTER[3] my_mipi_tx_ULPS_ENTER[2] my_mipi_tx_ULPS_ENTER[1] my_mipi_tx_ULPS_ENTER[0]}]
set_output_delay -clock tx_pixel_clk -max -4.942 [get_ports {my_mipi_tx_ULPS_EXIT[3] my_mipi_tx_ULPS_EXIT[2] my_mipi_tx_ULPS_EXIT[1] my_mipi_tx_ULPS_EXIT[0]}]
set_output_delay -clock tx_pixel_clk -min -2.517 [get_ports {my_mipi_tx_ULPS_EXIT[3] my_mipi_tx_ULPS_EXIT[2] my_mipi_tx_ULPS_EXIT[1] my_mipi_tx_ULPS_EXIT[0]}]

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
