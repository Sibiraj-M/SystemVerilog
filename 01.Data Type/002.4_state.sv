// Code your testbench here
// or browse Examples
module four_state;
  reg a;
  logic c;
  int d;
  time e;
  real f;
  initial begin
    a = 1;
    c = 0;
    d = 25;
    e = 100;
    f = 3.14;
    $display("reg   a=%b",a);
    $display("logic c=%b",c);
    $display("int   d=%0b",d);
    $display("time  e=%0t",e);
    $display("real  f=%0f",f);
  end
endmodule


/* OUTPUT
reg   a=1
logic c=0
int   d=11001
time  e=100
real  f=3.140000
*/
    
   
