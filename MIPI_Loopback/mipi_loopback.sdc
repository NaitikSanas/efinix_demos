
# Efinity Interface Designer SDC
# Version: 2019.2.192
# Date: 2019-08-25 17:33

# Copyright (C) 2017 - 2019 Efinix Inc. All rights reserved.

# Device: T20F169
# Project: mipi_loopback
# Timing Model: C4 (preliminary)
#               NOTE: The timing data is not final

# PLL Constraints
#################
create_clock -period 25.00 tx_vga_clk
create_clock -period 100.00 tx_pixel_clk
create_clock -period 10.00 mipi_rx_cal_clk
create_clock -period 50.00 tx_esc_pll_CLKOUT0
create_clock -period 25.00 rx_vga_clk
create_clock -period 100.00 rx_pixel_clk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {mipi_refclk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {mipi_refclk}]
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
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_r[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_r[1]}]

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_hs}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_hs}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_r[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_r[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_r[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_r[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_r[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_r[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_r[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_r[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_vs}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_vs}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_b[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_b[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_b[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_b[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_b[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_b[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_b[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_b[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_b[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_b[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {vga_g[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {vga_g[0]}]

# LVDS Tx Constraints
####################

# MIPI RX Constraints
#####################################
set_output_delay -clock rx_pixel_clk -max -3.546 [get_ports {my_mipi_rx_VC_ENA[3] my_mipi_rx_VC_ENA[2] my_mipi_rx_VC_ENA[1] my_mipi_rx_VC_ENA[0]}]
set_output_delay -clock rx_pixel_clk -min -1.987 [get_ports {my_mipi_rx_VC_ENA[3] my_mipi_rx_VC_ENA[2] my_mipi_rx_VC_ENA[1] my_mipi_rx_VC_ENA[0]}]
set_output_delay -clock rx_pixel_clk -max -3.997 [get_ports {my_mipi_rx_CLEAR}]
set_output_delay -clock rx_pixel_clk -min -1.899 [get_ports {my_mipi_rx_CLEAR}]
set_input_delay -clock rx_pixel_clk -max 5.194 [get_ports {my_mipi_rx_VSYNC[3] my_mipi_rx_VSYNC[2] my_mipi_rx_VSYNC[1] my_mipi_rx_VSYNC[0]}]
set_input_delay -clock rx_pixel_clk -min 2.597 [get_ports {my_mipi_rx_VSYNC[3] my_mipi_rx_VSYNC[2] my_mipi_rx_VSYNC[1] my_mipi_rx_VSYNC[0]}]
set_input_delay -clock rx_pixel_clk -max 5.188 [get_ports {my_mipi_rx_HSYNC[3] my_mipi_rx_HSYNC[2] my_mipi_rx_HSYNC[1] my_mipi_rx_HSYNC[0]}]
set_input_delay -clock rx_pixel_clk -min 2.594 [get_ports {my_mipi_rx_HSYNC[3] my_mipi_rx_HSYNC[2] my_mipi_rx_HSYNC[1] my_mipi_rx_HSYNC[0]}]
set_input_delay -clock rx_pixel_clk -max 5.042 [get_ports {my_mipi_rx_VALID}]
set_input_delay -clock rx_pixel_clk -min 2.521 [get_ports {my_mipi_rx_VALID}]
set_input_delay -clock rx_pixel_clk -max 5.112 [get_ports {my_mipi_rx_CNT[3] my_mipi_rx_CNT[2] my_mipi_rx_CNT[1] my_mipi_rx_CNT[0]}]
set_input_delay -clock rx_pixel_clk -min 2.556 [get_ports {my_mipi_rx_CNT[3] my_mipi_rx_CNT[2] my_mipi_rx_CNT[1] my_mipi_rx_CNT[0]}]
set_input_delay -clock rx_pixel_clk -max 5.140 [get_ports {my_mipi_rx_DATA[*]}]
set_input_delay -clock rx_pixel_clk -min 2.570 [get_ports {my_mipi_rx_DATA[*]}]
set_input_delay -clock rx_pixel_clk -max 5.057 [get_ports {my_mipi_rx_ERROR[*]}]
set_input_delay -clock rx_pixel_clk -min 2.529 [get_ports {my_mipi_rx_ERROR[*]}]
set_input_delay -clock rx_pixel_clk -max 5.055 [get_ports {my_mipi_rx_ULPS_CLK}]
set_input_delay -clock rx_pixel_clk -min 2.528 [get_ports {my_mipi_rx_ULPS_CLK}]
set_input_delay -clock rx_pixel_clk -max 5.064 [get_ports {my_mipi_rx_ULPS[3] my_mipi_rx_ULPS[2] my_mipi_rx_ULPS[1] my_mipi_rx_ULPS[0]}]
set_input_delay -clock rx_pixel_clk -min 2.532 [get_ports {my_mipi_rx_ULPS[3] my_mipi_rx_ULPS[2] my_mipi_rx_ULPS[1] my_mipi_rx_ULPS[0]}]

# MIPI TX Constraints
#####################################
set_output_delay -clock tx_pixel_clk -max -3.640 [get_ports {my_mipi_tx_LANES[1] my_mipi_tx_LANES[0]}]
set_output_delay -clock tx_pixel_clk -min -2.054 [get_ports {my_mipi_tx_LANES[1] my_mipi_tx_LANES[0]}]
set_output_delay -clock tx_pixel_clk -max -3.898 [get_ports {my_mipi_tx_VSYNC}]
set_output_delay -clock tx_pixel_clk -min -1.950 [get_ports {my_mipi_tx_VSYNC}]
set_output_delay -clock tx_pixel_clk -max -3.899 [get_ports {my_mipi_tx_HSYNC}]
set_output_delay -clock tx_pixel_clk -min -1.978 [get_ports {my_mipi_tx_HSYNC}]
set_output_delay -clock tx_pixel_clk -max -3.855 [get_ports {my_mipi_tx_VALID}]
set_output_delay -clock tx_pixel_clk -min -1.993 [get_ports {my_mipi_tx_VALID}]
set_output_delay -clock tx_pixel_clk -max -3.727 [get_ports {my_mipi_tx_DATA[*]}]
set_output_delay -clock tx_pixel_clk -min -1.844 [get_ports {my_mipi_tx_DATA[*]}]
set_output_delay -clock tx_pixel_clk -max -3.532 [get_ports {my_mipi_tx_TYPE[*]}]
set_output_delay -clock tx_pixel_clk -min -1.926 [get_ports {my_mipi_tx_TYPE[*]}]
set_output_delay -clock tx_pixel_clk -max -4.028 [get_ports {my_mipi_tx_FRAME_MODE}]
set_output_delay -clock tx_pixel_clk -min -1.945 [get_ports {my_mipi_tx_FRAME_MODE}]
set_output_delay -clock tx_pixel_clk -max -3.993 [get_ports {my_mipi_tx_ULPS_CLK_ENTER}]
set_output_delay -clock tx_pixel_clk -min -1.947 [get_ports {my_mipi_tx_ULPS_CLK_ENTER}]
set_output_delay -clock tx_pixel_clk -max -4.013 [get_ports {my_mipi_tx_ULPS_CLK_EXIT}]
set_output_delay -clock tx_pixel_clk -min -1.943 [get_ports {my_mipi_tx_ULPS_CLK_EXIT}]
set_output_delay -clock tx_pixel_clk -max -3.812 [get_ports {my_mipi_tx_ULPS_ENTER[3] my_mipi_tx_ULPS_ENTER[2] my_mipi_tx_ULPS_ENTER[1] my_mipi_tx_ULPS_ENTER[0]}]
set_output_delay -clock tx_pixel_clk -min -1.924 [get_ports {my_mipi_tx_ULPS_ENTER[3] my_mipi_tx_ULPS_ENTER[2] my_mipi_tx_ULPS_ENTER[1] my_mipi_tx_ULPS_ENTER[0]}]
set_output_delay -clock tx_pixel_clk -max -3.742 [get_ports {my_mipi_tx_ULPS_EXIT[3] my_mipi_tx_ULPS_EXIT[2] my_mipi_tx_ULPS_EXIT[1] my_mipi_tx_ULPS_EXIT[0]}]
set_output_delay -clock tx_pixel_clk -min -1.918 [get_ports {my_mipi_tx_ULPS_EXIT[3] my_mipi_tx_ULPS_EXIT[2] my_mipi_tx_ULPS_EXIT[1] my_mipi_tx_ULPS_EXIT[0]}]

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
