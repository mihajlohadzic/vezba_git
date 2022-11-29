`ifndef CALC_SIMPLE_SEQ_SV
 `define CALC_SIMPLE_SEQ_SV

class calc_simple_seq extends calc_base_seq;

   `uvm_object_utils (calc_simple_seq)

   function new(string name = "calc_simple_seq");
      super.new(name);
   endfunction

   virtual task body();

	calc_seq_item calc_it;
	calc_it = calc_seq_item::type_id::create("calc_it");

	for(int i = 0; i < 4; i++)
	begin	
	start_item(calc_it);

	assert(calc_it.randomize() with {calc_it.req1_cmd_in == 4'b0001;});

	finish_item(calc_it);

	end
     
      `uvm_do(req);
   endtask : body

endclass : calc_simple_seq

`endif
