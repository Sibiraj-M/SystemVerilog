class copy;
  int a;
  int b;
  
  function new();
    a=10;
    b=20;
  endfunction
  
  function void disp();
    $display("A=%0d | B=%0d ",a,b);
  endfunction
  
endclass

module shollow;
  copy c1;
  copy c2;
  initial begin
  
  c1=new();
  $display("Before c1 copy");
  c1.disp();
  
  c2=new c1;
  $display("c1 and c2 copy");
  
  c2.b=30;
  c1.disp();
  c2.disp();
  end
endmodule

/*OUTPUT
Before c1 copy
A=10 | B=20 
c1 and c2 copy
A=10 | B=20 
A=10 | B=30 
*/
