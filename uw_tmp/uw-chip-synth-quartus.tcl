project_new kirsch_top -overwrite

set_global_assignment -name EDA_MAP_ILLEGAL_CHARACTERS ON -section_id eda_simulation

set_global_assignment -name POWER_OUTPUT_SAF_NAME kirsch_top.saf.rpt

set_global_assignment -name POWER_DEFAULT_TOGGLE_RATE "10 %"
set_global_assignment -name POWER_DEFAULT_INPUT_IO_TOGGLE_RATE "10 %"
set_global_assignment -name AUTO_SHIFT_REGISTER_RECOGNITION OFF

source /home/ece327/lib/pins-lstep.tcl

