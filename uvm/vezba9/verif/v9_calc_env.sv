`ifndef CALC_ENV_SV
 `define CALC_ENV_SV

class calc_env extends uvm_env;

   calc_agent agent1;
   calc_agent agent2;
   calc_agent agent3;
   calc_agent agent4;

   calc_config cfg;
   virtual interface calc_if vif1;
   virtual interface calc_if vif2;
  virtual interface calc_if vif3;
   virtual interface calc_if vif4;
   `uvm_component_utils (calc_env)

   function new(string name = "calc_env", uvm_component parent = null);
      super.new(name,parent);
   endfunction

   function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      /************Geting from configuration database*******************/
      if (!uvm_config_db#(virtual calc_if)::get(this, "", "calc_if1", vif1))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif1"})

      if (!uvm_config_db#(virtual calc_if)::get(this, "", "calc_if2", vif2))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif2"})

      if (!uvm_config_db#(virtual calc_if)::get(this, "", "calc_if3", vif3))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif3"})

      if (!uvm_config_db#(virtual calc_if)::get(this, "", "calc_if4", vif4))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif4"})
      
      if(!uvm_config_db#(calc_config)::get(this, "", "calc_config", cfg))
        `uvm_fatal("NOCONFIG",{"Config object must be set for: ",get_full_name(),".cfg"})
      /*****************************************************************/


      /************Setting to configuration database********************/
      uvm_config_db#(calc_config)::set(this, "*", "calc_config", cfg);
    
      uvm_config_db#(virtual calc_if)::set(this, "agent1", "calc_if", vif1);
      uvm_config_db#(virtual calc_if)::set(this, "agent2", "calc_if", vif2);
      uvm_config_db#(virtual calc_if)::set(this, "agent3", "calc_if", vif3);
      uvm_config_db#(virtual calc_if)::set(this, "agent4", "calc_if", vif4);
      /*****************************************************************/
      agent1 = calc_agent::type_id::create("agent1", this);
      agent2 = calc_agent::type_id::create("agent2", this);
      agent3 = calc_agent::type_id::create("agent3", this);
      agent4 = calc_agent::type_id::create("agent4", this);
      
   endfunction : build_phase

endclass : calc_env

`endif
