+incdir+dut/

        dut/shifter.v
	dut/priority.v
	dut/mux_out.v
	dut/holdreg.v
	dut/exdbin_mac.v
	dut/calc_top.v
	dut/alu_output_stage.v
	dut/alu_input_stage.v
	
	verif/Agent/v5_calc_agent_pkg.sv
	verif/Agent/v5_calc_seq_item.sv
	verif/calc_if.sv
	verif/v5_calc_test_pkg.sv
	verif/v5_calc_test_simple.sv
	verif/v5_calc_verif_top.sv
      -uvm +"eda/cadence/2017-18/RHELx86/INCISIVE_15.20.038/tools/methodology/UVM/CDNS-1.2/sv/src"
      -gui
      -access +rwc
