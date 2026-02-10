module packed_array_single;
  bit [7:0] arr;
  initial begin
    arr=8'hff;
    foreach(arr[i])begin
    $display("Arr[%0d]=%b",i,arr[i]);
    end
  end
endmodule


/*OUTPUT:
Arr[7]=1
Arr[6]=1
Arr[5]=1
Arr[4]=1
Arr[3]=1
Arr[2]=1
Arr[1]=1
Arr[0]=1
*/
