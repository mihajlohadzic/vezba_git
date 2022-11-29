`ifndef TEST_BASE_SV
 `define TEST_BASE_SV

 class test_base extends uvm_test;

   `uvm_component_utils(test_base)

   calc_driver drv;
   calc_sequencer seqr;
   calc_seq_item seq_item1;
   function new(string name = "test_base", uvm_component parent = null);
      super.new(name,parent);
   endfunction : new

   function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      drv = calc_driver::type_id::create("drv", this);
      seq_item1 = calc_seq_item::type_id::create("seq_item", this);
      seqr = calc_sequencer::type_id::create("seqr", this);
      seq_item1.randomize();
      seq_item1.print();
   endfunction : build_phase

   function void connect_phase(uvm_phase phase);
      drv.seq_item_port.connect(seqr.seq_item_export);
   endfunction : connect_phase

endclass : test_base

`endif
