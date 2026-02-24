class Instance_Constants;
  string a;
  const int b;
  
  function new();
    a="byte";
    b=7;
  endfunction
  
  function void display();
    $display("a=%0s,b=%0d",a,b);
  endfunction
  
endclass

module test;
  initial begin
  Instance_Constants i1;
  
  i1=new();
  i1.a="string";
  
  i1.display();
  end
endmodule

/*OUTPUT:
xcelium> run
a=string,b=7
*/
