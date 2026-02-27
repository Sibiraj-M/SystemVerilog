class A;
  protected int x;
endclass

class B extends A;
  function void test();
    x=10;
  endfunction
  
  function void display();
    $display("X VALUE= %0d",x);
  endfunction
endclass

module test;
  initial begin
    B b;
    b=new();
    //b.x = 5;
    b.test();
    b.display();
  end
endmodule


/*output:
xcelium> run
X VALUE= 10
*/
