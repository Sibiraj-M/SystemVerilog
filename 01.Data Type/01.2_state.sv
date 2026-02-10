module two_state;
  bit a;
  byte b;
  shortint c;
  int d;
  longint e;
  initial begin
    a = 1;
    b = 8'h7F;     // 127
    c = 16'd1000;
    d = -25;
    e = 64'd999;
    $display("bit      = %b", a);
    $display("byte     = %b", b);
    $display("shortint = %b", c);
    $display("int      = %b", d);
    $display("longint  = %b", e);
  end
endmodule

/* OUTPUT
bit      = 1
byte     = 01111111
shortint = 0000001111101000
int      = 11111111111111111111111111100111
longint  = 0000000000000000000000000000000000000000000000000000001111100111
*/
