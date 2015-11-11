############################################
# Target Circuit
############################################
source ./tcl/name.txt

#set RTL "/cad/benchmark/IWLS_benchmarks_2005_V_1.0/itc99/rtl/b12.vhd"
set HDL "vhdl"
#set TOP "b12"
#set CLOCK_PORT "clock"
#set CLOCK_PERIOD "10"
#set RESET_PORT "reset"
set W_area "."

############################################
# Target Library
############################################
set Std_cell_lib "/cad/lib/SAED_EDK90nm/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/models/saed90nm_typ.db"
set Symbol_lib "/cad/lib/SAED_EDK90nm/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/icons/saed90nm.sdb"
set Verilog_lib "/cad/lib/SAED_EDK90nm/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/saed90nm.v"

############################################
# Scan Chain Configuration
############################################
#set CHAIN_COUNT "2"
set FILL_OPTION "X"


