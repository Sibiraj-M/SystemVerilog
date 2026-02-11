module multi_unpacked;
  byte arr[3][4];
  initial begin
    foreach(arr[i])
      foreach(arr[i][j])
        arr[i][j]=$random;
    $display("Multi-dimensional array: %p",arr);
  end
endmodule
