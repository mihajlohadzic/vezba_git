`ifndef CALC_DRIVER_SV
 `define CALC_DRIVER_SV
class calc_driver extends uvm_driver#(calc_seq_item);
    
    
   `uvm_component_utils(calc_driver)
   
   virtual interface calc_if vif;
   function new(string name = "calc_driver", uvm_component parent = null);
      super.new(name,parent);
      
   if (!uvm_config_db#(virtual calc_if)::get(null, "*", "vif", vif))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif"})
        
   endfunction
   
   task main_phase(uvm_phase phase);
      forever begin
	@(posedge vif.clk)
	if(!vif.rst)
	begin
	
	         
         	seq_item_port.get_next_item(req);
         	`uvm_info(get_type_name(),
                $sformatf("Driver sending...\n%s", req.sprint()),
                   UVM_HIGH)
            

		vif.req1_data_in = req.operand1;
		vif.req1_cmd_in = req.req1_cmd_in;
		
		@(posedge vif.clk)
		vif.req1_data_in = req.operand2;
		vif.req1_cmd_in = 0;
		
		
		@(posedge vif.clk) //iff (vif.out_resp1 == 2'b01 && vif.out_resp2 == 2'b01) )

		vif.req2_data_in = req.operand3;
		vif.req2_cmd_in = req.req2_cmd_in;
		@(posedge vif.clk)
		vif.req2_data_in = req.operand4;
		vif.req2_cmd_in = 0;
		
		@(posedge vif.clk) //iff vif.out_resp2 == 2'b01)

		vif.req3_data_in = req.operand3;
		vif.req3_cmd_in = req.req3_cmd_in;
		@(posedge vif.clk)
		vif.req3_data_in = req.operand4;
		vif.req3_cmd_in = 0;
		
		@(posedge vif.clk) //iff vif.out_resp3 == 2'b01)

		vif.req4_data_in = req.operand1;
		vif.req4_cmd_in = req.req4_cmd_in;
		@(posedge vif.clk)
		vif.req4_data_in = req.operand2;
		vif.req4_cmd_in = 0;
		
		@(posedge vif.clk) //iff vif.out_resp4 == 2'b01)
		
		


         	seq_item_port.item_done();
	end
      end
   endtask : main_phase

endclass : calc_driver

`endif

