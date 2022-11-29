-sv +incdir+./verif
-sv +incdir+./verif/Agent
-sv +incdir+./verif/Sequences

 
 ./dut/alu_input_stage.v
 ./dut/alu_output_stage.v
 ./dut/exdbin_mac.v
 ./dut/holdreg.v
 ./dut/mux_out.v
 ./dut/shifter.v
 ./dut/priority.v
 ./dut/calc_top.v

-sv ./verif/Agent/v6_calc_agent_pkg.sv
-sv ./verif/Agent/v6_calc_seq_item.sv
-sv ./verif/Agent/v6_calc_driver.sv
-sv ./verif/Agent/v6_calc_sequencer.sv
-sv ./verif/Sequences/v6_calc_seq_pkg.sv
-sv ./verif/Sequences/v6_calc_base_seq.sv
-sv ./verif/Sequences/v6_calc_simple_seq.sv

-sv ./verif/calc_if.sv
-sv ./verif/v6_calc_test_pkg.sv
-sv ./verif/v6_test_simple.sv
-sv ./verif/v6_calc_verif_top.sv
-sv ./verif/v6_test_simple_2.sv
-sv ./verif/v6_test_base.sv

-uvm +"/eda/cadence/2019-20/RHELx86/XCELIUM_19.03.013/tools/methodology/UVM/CDNS-1.2/sv/src" +UVM_TESTNAME=test_simple

#-LINEDEBUG
-access +rwc
-disable_sem2009
-nowarn "MEMODR"
-timescale 1ns/10ps
