module unique_case;
  logic x=2'b10;
  initial begin
    unique case(x)
      00: $display("Value is %0b",x);
      01: $display("Value is %0b",x);
      10: $display("Value is %0b",x);
      11: $display("Value is %0b",x);
      01: $display("Value is %0b",x);
    endcase
  end
endmodule
