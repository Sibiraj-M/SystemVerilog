class copy;
  string a;
  int b;
  
  function new();
    a="VLSI";
    b=4;
  endfunction
  
  function void disp();
    $display("\t a=%0s , \t b=%0d",a,b);
  endfunction
  
  function void deep(copy copy );
    this.a=copy.a;
    this.b=copy.b;
  endfunction
endclass

module deep;
  copy c1;
  copy c2;
  
  initial begin
    c1=new();
    c2=new();
    c2.deep(c1);
    $display("");
    $display("copy c1 before changes");
    c1.disp();
    $display(" branch c2 before changes");
    
    c1.a="SILICON";
    c2.a="CRAFT";
    
    $display("copy of c1 after changes");
    c1.disp();
    $display("copy c2 after changes");
    c2.disp();
  end
endmodule

/*OUTPUT
xcelium> run

copy c1 before changes
	 a=VLSI , 	 b=4
 branch c2 before changes
copy of c1 after changes
	 a=SILICON , 	 b=4
copy c2 after changes
	 a=CRAFT , 	 b=4
*/
