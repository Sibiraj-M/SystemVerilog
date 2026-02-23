class student;
  int count;
endclass

module total;
  student a;
  initial begin
  if(a==null)
    $display("NO students here");
    $display("total students = %0d",a);
  end
endmodule
