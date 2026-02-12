module dynamic_array;
  string name[];
  initial begin
    name=new[6];
    name='{"nithish","sibi","vasu","prabhu","karthi","shiyam"};
    foreach(name[i])
      $display("Name[%0d]=%0s",i,name[i]);
  end
endmodule
