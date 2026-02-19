module priority_if;
  int a;
  int b;
  initial begin
    a=20;
    b=10;
    priority if(a < 10)
      $display("Condition 1: a is less than 10");
    else if(b < 15)
      $display("Condition 2: b is less than 15");
    else
      $display("No condition matched");
  end
endmodule

/*OUTPUT:
xcelium> run
Condition 2: b is less than 15
*/
