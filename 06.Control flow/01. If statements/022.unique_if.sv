module unique_if;
  int a;
  initial begin
    a=10;
    unique if(a<5)
      $display("packet avalible");
    else
      $display("no packet");
  end
endmodule

/*OUTPUT:
xcelium> run
packet avalible
*/
