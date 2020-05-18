###################################################################################
# Mentor Graphics Corporation
#
###################################################################################


##########
# Clocks #
##########
create_clock [get_ports clk] -name clk -period 20 -waveform {0 10} -constraint_source derived
