############################################
# Set Common Variables
############################################
source ./tcl/common.tcl
#source ./tmax_option.tcl
set MODE "tdf_loc"

############################################
# Read Library & Netlist
############################################
read_netlist -f verilog -lib ${Verilog_lib}
read_netlist -f verilog ${W_area}/file_output/${TOP}_scan${CHAIN_COUNT}.v

############################################
# Build Model
############################################
run_build_mode ${TOP}

############################################
# Set Common Constraints
############################################
add_pi_constraints 0 ${RESET_PORT}
add_pi_constraints 0 test_se
set_delay -nopi_change -nopo_measures
set_delay -launch_cycle system_clock -common_launch_capture_clock

############################################
# DRC
############################################
run_drc  ${W_area}/file_output/${TOP}_scan${CHAIN_COUNT}.spf

############################################
# Set Faults
############################################
set_faults -atpg_effectiveness -fault_coverage -summary verbose
set_faults -model transition
add_faults -all

############################################
# Set ATPG Constraints
############################################
set_atpg -capture_cycle 2 -chain_test off
set_atpg -fill ${FILL_OPTION}
#set_atpg -merge ${MERGE_OPTION}
#set_atpg -decision ${ATPG_DECISION}

############################################
#Run ATPG
############################################
run_atpg -auto

############################################
# Write Pattern & Faults & Summary
############################################
write_patterns  ${W_area}/tmax_output/${TOP}_scan${CHAIN_COUNT}_${MODE}.stil -format stil -replace
write_fault  ${W_area}/tmax_output/${TOP}_scan${CHAIN_COUNT}_${MODE}.fault -all -replace
report_summaries cpu_usage faults patterns > ${W_area}/report/tmax_summaries.txt

quit

