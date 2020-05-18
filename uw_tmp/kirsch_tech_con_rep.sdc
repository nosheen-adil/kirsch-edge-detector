###################################################################################
# Mentor Graphics Corporation
#
###################################################################################


##########
# Clocks #
##########
create_clock [get_ports clk] -name clk -domain xmplr_ClockDomain_clk -period 20 -waveform {0 10} -constraint_source derived
