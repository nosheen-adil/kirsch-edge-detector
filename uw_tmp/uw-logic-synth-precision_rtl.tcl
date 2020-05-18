set_results_dir "uw_tmp/"

# first setup_design must set *only* technology info
setup_design \
  -manufacturer Altera \
  -family {Stratix IV} \
  -part EP4SGX70HF35M \
  -speed {3}

#!!MDA: 2016-12-07: try deleting -part, because getting fitter problems
#  
#----------------------------------------------------------------------
# verilog required:
#   - figure vhdl libs for quartus
#   - timing simulation with precision cell instances use vlog format
#       - also forces us to turn off vhdl
setup_design \
  -edif=false \
  -verilog=true \
  -vhdl=true
setup_design \
  -hdl vhdl_2008
setup_design \
  -frequency 50 \
  -design kirsch
setup_design \
  -addio=false
if { {main} != {} } {
  setup_design -architecture main
  puts "USING DESIGN ARCH"
}
setup_design -overrides {  }


#!!MDA: doesn't work for technologies that we use
# setup_design \
#   -compile_for_timing 

#----------------------------------------------------------------------


foreach file [concat { util.vhd kirsch_synth_pkg.vhd } { mem.vhd kirsch.vhd }] {
  add_input_file $file
}  

compile

auto_write uw_tmp/kirsch_gate.vhd

set_attribute \
  -name hierarchy \
  -value preserve_interface_block_and_sub_blocks

report_area \
  -hierarchy \
  RPT/area_gate.rpt

auto_write uw_tmp/kirsch_gate.vhd

#----------------------------------------------------------------------
# synthesize
#----------------------------------------------------------------------

# generates uw_tmp/kirsch_logic.v, .vhd
synthesize

#----------------------------------------------------------------------

report_area \
  -hierarchy \
  RPT/area_logic.rpt

set_attribute \
  -name hierarchy \
  -value flatten_block_and_sub_blocks

# generates warnings that modules are not flattened  
ungroup \
  -all \
  -hierarchy

# need second synthesize after ungroup  
synthesize

report_area \
  -hierarchy \
  RPT/area_logic_flat.rpt

  
set clocks [ find_clocks ]
set has_timing_constraint [expr ! [ string equal "" "20" ] ]
set is_comb               [string equal "" "$clocks" ]

if { $has_timing_constraint } {
  #------------------------------------------------------------
  # have timing constraints
  
  set synth_clk_period 20
  
  if { $is_comb } then {
    #--------------------------------------------------
    # purely combinational --- use virtual clock to contrain timing
    #
    create_clock -name VIRT_CLK -period $synth_clk_period
    set_input_delay  0 -clock VIRT_CLK [all_inputs]
    set_output_delay 0 -clock VIRT_CLK [all_outputs]
    #--------------------------------------------------
  } else {  
    #--------------------------------------------------
    # clocked design
  
    set clock [ lindex $clocks 0 ]
    # create_clock -period $synth_clk_period $clock
    set_input_delay 0 [ all_inputs ] -clock $clock
    set_output_delay 0 [ all_outputs ] -clock $clock
  }

  report_timing \
    -num_paths 5 \
    -clock_frequency \
    RPT/timing_logic.rpt
      
  # this does not work as intended
  # set timing_srcs [all_inputs]
  # lappend timing_srcs [all_registers -output_pins]
  # 
  # set timing_dsts [all_outputs]
  # lappend timing_dsts [all_registers -data_pins]
  # 
  # report_timing \
  #  -from $timing_srcs \
  #   -to $timing_dsts \
  #   -num_paths 5 \
  #   -clock_frequency \
  #  RPT/timing_logic2.rpt
      
}

#----------------------------------------------------------------------

# netlist is written by synthesize command above

auto_write uw_tmp/kirsch_logic.sdf

report_constraints \
  -hierarchy \
  -clocks \
  uw_tmp/kirsch_logic.sdc
  

#----------------------------------------------------------------------
# the end
#----------------------------------------------------------------------

puts "*** logic synthesis succeeded ***"

# no need to test for False to control exit,
# because Precision automatically exits when run with -file <scriptname>
