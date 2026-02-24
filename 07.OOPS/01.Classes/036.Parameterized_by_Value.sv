class box #(parameter size=8);
  bit [size-1:0] data;
  
  function new();
    data=10;
  endfunction
  
  function void disp();
    $display("size=%0d,data=%0d",size,data);
  endfunction
endclass

module test;
  initial begin
    
    box #(4) b1;
    
    b1=new();
    b1.disp();
  end
endmodule

/*OUTPUT
xcelium> run
size=4,data=10
*/
