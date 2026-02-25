typedef string str_t;

class data #(parameter int a = 4,parameter type team = str_t);
  bit [a-1:0] x;
  team z;

  function new();
    x = 11;
    z = "VLSI";
  endfunction

  function void disp();
    $display("d=%0d, c=%0s", x, z);
  endfunction

endclass
module test;
  initial begin
    data #(.a(4), .team(str_t)) p1;
    p1 = new();
    $display("");
    $display("contents of p1");
    p1.disp();
    $display("");
  end
endmodule

/*OUTPUT
xcelium> run

contents of p1
d=11, c=VLSI
*/
