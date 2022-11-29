`ifndef CALC_SEQ_ITEM_SV
 `define CALC_SEQ_ITEM_SV

class calc_seq_item extends uvm_sequence_item;

   rand bit [31:0] req1_data1_in;
   rand bit [31:0] req1_data2_in;
   rand bit [3:0] req1_cdm_in;
   rand int choose_port;
   
   
   `uvm_object_utils_begin(calc_seq_item)
   `uvm_object_utils_end

   function new (string name = "calc_seq_item");
      super.new(name);
   endfunction // new

endclass : calc_seq_item

`endif
