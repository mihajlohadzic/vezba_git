`ifndef CALC_BASE_SEQ_SV
 `define CALC_BASE_SEQ_SV

class calc_base_seq extends uvm_sequence#(calc_seq_item);

   `uvm_object_utils(calc_base_seq)
   `uvm_declare_p_sequencer(calc_sequencer)

   function new(string name = "calc_base_seq");
      super.new(name);
   endfunction

   // objections are raised in pre_body
   virtual task pre_body();
      
   endtask : pre_body

   // objections are dropped in post_body
   virtual task post_body();
      
   endtask : post_body

endclass : calc_base_seq

`endif
