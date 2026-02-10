module Double_d_array;
  logic [3:0][3:0] array;
  initial begin
    array=16'hfff2;
    foreach(array[i,j])
      $display("Arr[%0d][%0d]= %0b",i,j,array[i][j]);
  end
endmodule


/* OUTPUT:
xcelium> run
Arr[3][3]= 1
Arr[3][2]= 1
Arr[3][1]= 1
Arr[3][0]= 1
Arr[2][3]= 1
Arr[2][2]= 1
Arr[2][1]= 1
Arr[2][0]= 1
Arr[1][3]= 1
Arr[1][2]= 1
Arr[1][1]= 1
Arr[1][0]= 1
Arr[0][3]= 0
Arr[0][2]= 0
Arr[0][1]= 1
Arr[0][0]= 0

*/
