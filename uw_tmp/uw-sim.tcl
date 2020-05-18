source /home/ece327/lib/lib-msim.tcl

#----------------------------------------------------------------------

proc reload {} {

  # vcom -93 +acc -work work-msim uw_tmp/kirsch_logic_sim.vhd uw_tmp/kirsch_logic_shim.vhd string_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd

  foreach file [concat { util.vhd kirsch_synth_pkg.vhd } { uw_tmp/kirsch_logic_sim.vhd uw_tmp/kirsch_logic_shim.vhd } { string_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd }] {
    echo "INFO: compiling $file"
    set ext [file extension $file]
    if [regexp -nocase ".v(|lg|o)$" $ext] {
      vlog -novopt +acc -work work-msim $file
    } elseif [regexp -nocase ".v(hd|hdl|ho)$" $ext] {
      vcom -93 +acc -work work-msim $file
    } else {
      echo [concat "ERROR: could not determine VHDL or Verilog for " $file]
      exit
    }
  }
}

#----------------------------------------------------------------------
# set tcl flags from python vars

set sim_mode LOGIC_MODE
set gui_mode True

#----------------------------------------------------------------------

if { "kirsch_tb.sim" ne "" } {
  source kirsch_tb.sim
}


