# copy modelsim.ini to local directory
xsys( "vmap -c" )

# libraries
xsys( "vlib work-msim")
xsys( "uw-msim-lib /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_mf /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/lpm /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_primitives /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/stratixiv" )

# compile source files
xsys( "uw-msim-com util.vhd kirsch_synth_pkg.vhd uw_tmp/kirsch_logic_sim.vhd uw_tmp/kirsch_logic_shim.vhd string_pkg.vhd kirsch_unsynth_pkg.vhd kirsch_tb.vhd")

# run simulation
xsys( "vsim -lib work-msim -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_mf -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/lpm -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/altera_primitives -L /opt-src/CMC/local/maagaard/kits-sim/altera-15.1/stratixiv   -g/kirsch_tb/period=20   -debugDB -postsimdataflow +autofindloop -wlf uw_tmp/vsim.wlf -voptargs=+acc -warning 3250 -warning 3894 -t 1ns -do uw_tmp/uw-sim.tcl kirsch_tb")
