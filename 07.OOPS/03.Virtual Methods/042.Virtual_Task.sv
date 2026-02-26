class packet;
  virtual task display();
    $display("Base Task");
  endtask
endclass


class pack extends packet;

  task display();
    #2
    $display("Derived Task with Delay");
  endtask
endclass


module virtual_task_demo;

  packet p1;
  pack p2;

  initial begin
    p2=new();
    p1=p2;
    $display("Calling task using base handle:");
    p1.display();
  end

endmodule

/*OUTPUT
xcelium> run
Calling task using base handle:
Derived Task with Delay
*/
