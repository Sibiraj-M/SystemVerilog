class student;
  string name;
  int mark;
  
  function new(string n,int m);
    name=n;
    mark=m;
  endfunction
  
  function void display();
    $display("Name=%0s | Mark: %0d",name,mark);
  endfunction
  
endclass

module test;
  initial begin
    student s;
    s=new("saran",90);
    s.display();
    s.mark=95;
    s.display();
  end
endmodule

/*OUTPUT:
xcelium> run
Name=saran | Mark: 90
Name=saran | Mark: 95
*/
