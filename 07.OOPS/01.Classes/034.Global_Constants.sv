class Global_Constants;
  string a;
  const int b=2;
  
  function new();
    a="print";
  endfunction
  
  function void display();
    $display("a=%0s,b=%0d",a,b);
  endfunction
  
endclass

module test;
  initial begin
   Global_Constants g1;
    
    g1=new();
    g1.display();
    
  end
endmodule

/*OUTPUT:
xcelium> run
a=print,b=2
*/
