
project_open kirsch_top

create_timing_netlist

set has_timing_constraint [expr ! [ string equal "" "20" ] ]
# set is_comb [ string equal "" [query_collection [get_clocks clk]]]
# set is_comb [ string equal "" [query_collection [get_nets clk~clkctrl]]]

# for max10 with quartus 15:
set is_comb [ string equal "" [query_collection [get_ports clk]]]

if { $has_timing_constraint } {
  if { $is_comb } then {
    #--------------------------------------------------
    # purely combinational --- use virtual clock to contrain timing
    #
    create_clock -name VIRT_CLK -period 20
    set_input_delay  0 -clock VIRT_CLK [all_inputs]
    set_output_delay 0 -clock VIRT_CLK [all_outputs]
  } else {
    #--------------------------------------------------
    # clocked design
  
    create_clock -name CLK -period 20 [list clk]
    set_input_delay  0 -clock CLK [all_inputs]
    set_output_delay 0 -clock CLK [all_outputs]
  }

  update_timing_netlist

  report_clock_fmax_summary \
    -file timing_chip.rpt \
    -stdout

  report_timing \
    -npaths 5 \
    -detail path_only \
    -pairs_only \
    -file timing_chip_path.rpt
  
  report_timing \
    -npaths 5 \
    -detail path_only \
    -pairs_only
  
}

