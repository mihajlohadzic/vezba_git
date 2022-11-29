`ifndef CALC_IF_SV
 `define CALC_IF_SV

interface calc_if (input clk, logic [6 : 0] rst);

   parameter DATA_WIDTH = 32;
   parameter RESP_WIDTH = 2;
   parameter CMD_WIDTH = 4;

   logic [DATA_WIDTH - 1 : 0]  out_data1;
  
   logic [RESP_WIDTH - 1 : 0]  out_resp1;
   
   logic [CMD_WIDTH - 1 : 0]   req1_cmd_in;
   logic [DATA_WIDTH - 1 : 0]  req1_data_in;


endinterface : calc_if

`endif
