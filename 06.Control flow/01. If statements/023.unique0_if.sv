module unique0_if;
  int a;
  int b;
  initial begin
    a=10;
    b=20;
    unique if(a==10)
      $display("packet revieced");
    else if(b==10)
      $display("packet transmitting");
    else
      $display("error");
  end
endmodule

/*OUTPUT:
xcelium> run
packet revieced
*/
