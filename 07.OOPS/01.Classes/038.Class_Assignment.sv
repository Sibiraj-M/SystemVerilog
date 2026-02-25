class trans;
  int addr;
  int data;
  
  function new();
    addr=100;
    data=10;
  endfunction
  
  function void display(string name);
    $display("%0s -> addr=%0d | data=%0d",name,addr,data);
  endfunction
  
endclass

module test;
  initial begin
    trans t1;
    trans t2;
    
    t1=new();
    $display("Before Assignment:");
    t1.display("t1");
    t2 = t1;
    t2.display("t2");
    $display("\nDriver modifies t2.data");
    t2.data = 23;
    $display("\nAfter Modification:");
    t1.display("t1");
    t2.display("t2");
  end
endmodule

/*OUTPUT
xcelium> run
Before Assignment:
t1 -> addr=100 | data=10
t2 -> addr=100 | data=10

Driver modifies t2.data

After Modification:
t1 -> addr=100 | data=23
t2 -> addr=100 | data=23
*/
