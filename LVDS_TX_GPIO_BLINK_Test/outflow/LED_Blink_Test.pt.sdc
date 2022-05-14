
# Efinity Interface Designer SDC
# Version: 2021.1.165
# Date: 2022-05-12 17:03

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T85F324
# Project: LED_Blink_Test
# Timing Model: C4 (final)

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clk}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clk}]

# LVDS RX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {blink[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {blink[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {blink[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {blink[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {blink[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {blink[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {blink[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {blink[3]}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[8]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[8]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[9]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[9]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[10]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[10]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[11]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[11]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[12]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[12]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[13]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[13]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[14]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[14]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[15]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[15]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[16]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[16]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[17]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[17]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[18]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[18]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[19]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[19]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[20]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[20]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[21]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[21]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[22]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[22]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[23]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[23]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[24]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[24]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[25]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[25]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[26]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[26]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[27]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[27]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[28]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[28]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[29]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[29]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[30]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[30]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[31]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[31]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[32]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[32]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[33]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[33]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[34]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[34]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[35]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[35]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[36]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[36]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[37]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[37]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[38]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[38]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {led[39]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {led[39]}]

# LVDS Tx Constraints
####################
