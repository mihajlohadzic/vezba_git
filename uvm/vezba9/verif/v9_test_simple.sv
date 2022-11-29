`ifndef TEST_SIMPLE_SV
 `define TEST_SIMPLE_SV

class test_simple extends test_base;

   `uvm_component_utils(test_simple)

   calc_simple_seq simple_seq1;

   calc_simple_seq simple_seq2; 
   calc_simple_seq simple_seq3; 
   calc_simple_seq simple_seq4;

   function new(string name = "test_simple", uvm_component parent = null);
      super.new(name,parent);
   endfunction : new

   function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      simple_seq1 = calc_simple_seq::type_id::create("simple_seq1");
      simple_seq2 = calc_simple_seq::type_id::create("simple_seq2");
      simple_seq3 = calc_simple_seq::type_id::create("simple_seq3");
      simple_seq4 = calc_simple_seq::type_id::create("simple_seq4");
   endfunction : build_phase

   task main_phase(uvm_phase phase);
      phase.raise_objection(this);
      simple_seq1.start(env.agent1.seqr);
      simple_seq2.start(env.agent2.seqr);
      simple_seq3.start(env.agent3.seqr);
      simple_seq4.start(env.agent4.seqr);
            

	phase.drop_objection(this);
   endtask : main_phase

endclass

`endif
