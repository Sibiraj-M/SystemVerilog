module associative_Array;
  int arr1[int];
  string arr2[string];
  initial begin
    arr1='{2:4,6:8};
    arr2='{"vasu":"vimal","prabhu":"shiyam"};
    $display("array_1=%p",arr1);
    $display("array 2=%p",arr2);
  end
endmodule

/*OUTPUT:
xcelium> run
array_1='{2:4, 6:8}
array 2='{"prabhu":"shiyam", "vasu":"vimal"}
xmsim: *W,RNQUIE: Simulation is complete.
*/
