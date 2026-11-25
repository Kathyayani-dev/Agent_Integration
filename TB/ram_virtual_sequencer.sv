# code for  Virtual sequencer class for Dual Port RAM TB
...
  //------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------



// Extend ram_virtual_sequencer from uvm_sequencer parametrized with uvm_sequence_item
class ram_virtual_sequencer extends uvm_sequencer #(uvm_sequence_item) ;

        // Factory Registration
        `uvm_component_utils(ram_virtual_sequencer)

   // Declare handles for ram_wr_sequencer and ram_rd_sequencer as wr_seqrh
   // & rd_seqrh
        ram_wr_sequencer wr_seqrh;
        ram_rd_sequencer rd_seqrh;
        //------------------------------------------
        // METHODS
        //------------------------------------------

        // Standard UVM Methods:
        extern function new(string name = "ram_virtual_sequencer",uvm_component parent);
endclass

// Define Constructor new() function
function ram_virtual_sequencer::new(string name="ram_virtual_sequencer",uvm_component parent);
        super.new(name,parent);
endfunction
...
