module arr_rec;
  int arr[5];
  initial begin
    foreach(arr[i])
      arr[i]=$random % 100;
    $display("value:%p ",arr);
    $display("sum    :%p",arr.sum());
    $display("value:%p ",arr);
    $display("proiduct    :%p",arr.product());
    $display("value:%p ",arr);
    $display("and     :%p",arr.and());
    $display("value:%p ",arr);
    $display("OR    :%p",arr.or());
    $display("value:%p ",arr);
    $display("XOR     :%p",arr.xor());
  end
endmodule

/*OUTPUT:
xcelium> run
value:'{48, -99, -39, -9, 57} 
sum    :-42
value:'{48, -99, -39, -9, 57} 
proiduct    :-95073264
value:'{48, -99, -39, -9, 57} 
and     :16
value:'{48, -99, -39, -9, 57} 
OR    :-1
value:'{48, -99, -39, -9, 57} 
XOR     :-70
xmsim: *W,RNQUIE: Simulation is complete.
*/
