
# Efinity Interface Designer SDC
# Version: 2021.2.323
# Date: 2022-05-14 09:39

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T120F324
# Project: lvds_loopback
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 16.00 rx_slowclk
create_clock -waveform {1.00 3.00} -period 4.00 rx_fastclk
create_clock -waveform {1.00 3.00} -period 4.00 tx_fastclk
create_clock -period 16.00 tx_slowclk

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {tx_refclk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {tx_refclk}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {rstn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {rstn}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[3]}]

# LVDS Rx Constraints
####################
set_input_delay -clock rx_slowclk -max 6.295 [get_ports {rx_data0[7] rx_data0[6] rx_data0[5] rx_data0[4] rx_data0[3] rx_data0[2] rx_data0[1] rx_data0[0]}]
set_input_delay -clock rx_slowclk -min 3.147 [get_ports {rx_data0[7] rx_data0[6] rx_data0[5] rx_data0[4] rx_data0[3] rx_data0[2] rx_data0[1] rx_data0[0]}]

# LVDS Tx Constraints
####################
set_output_delay -clock tx_slowclk -max -5.230 [get_ports {prbs_data[7] prbs_data[6] prbs_data[5] prbs_data[4] prbs_data[3] prbs_data[2] prbs_data[1] prbs_data[0]}]
set_output_delay -clock tx_slowclk -min -2.575 [get_ports {prbs_data[7] prbs_data[6] prbs_data[5] prbs_data[4] prbs_data[3] prbs_data[2] prbs_data[1] prbs_data[0]}]
