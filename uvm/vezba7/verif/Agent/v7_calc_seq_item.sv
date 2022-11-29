`ifndef CALC_SEQ_ITEM_SV
 `define CALC_SEQ_ITEM_SV

parameter DATA_WIDTH = 32;
parameter RESP_WIDTH = 2;
parameter CMD_WIDTH = 4;

class calc_seq_item extends uvm_sequence_item;

   rand logic [3:0] cmd;
   rand logic [31:0] operand1;
   rand logic [31:0] operand2;
   rand logic [31:0] operand3;
   rand logic [31:0] operand4;

   rand logic [3:0] req1_cmd_in;   
   rand logic [31:0] req1_data_in;
   rand logic [3:0] req2_cmd_in;   
   rand logic [31:0] req2_data_in;
   rand logic [3:0] req3_cmd_in;   
   rand logic [31:0] req3_data_in;
   rand logic [3:0] req4_cmd_in;   
   rand logic [31:0] req4_data_in;

   rand logic [1:0] out_resp1;
   rand logic [31:0] out_data1;
   rand logic [1:0] out_resp2;
   rand logic [31:0] out_data2;
   rand logic [1:0] out_resp3;
   rand logic [31:0] out_data3;
   rand logic [1:0] out_resp4;
   rand logic [31:0] out_data4;


	constraint op1_constraint {operand1 < 10;};
	constraint op2_constraint {operand2 < 10;};
	constraint op3_constraint {operand3 < 10;};
	constraint op4_constraint {operand4 < 10;};

	constraint req2 {req2_cmd_in == 4'b0010;};
	constraint req3 {req3_cmd_in == 4'b0101;};
	constraint req4 {req4_cmd_in == 4'b0110;};
	
	

   `uvm_object_utils_begin(calc_seq_item)
   `uvm_object_utils_end

   function new (string name = "calc_seq_item");
      super.new(name);
   endfunction // new

endclass : calc_seq_item

`endif
