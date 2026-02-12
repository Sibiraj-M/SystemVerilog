module array_ordering;
  int array[11]='{3,4,6,8,2,5,5,7,9,2,7};
  initial begin
    array.reverse();
    $display("reverse   :%p",array);
    array.sort();
    $display("sort      :%p",array);
    array.rsort();
    $display("rsort     :%p",array);
    for(int i=0;i<5;i++)begin
      array.shuffle();
      $display("shuffle %0d:%p",i,array);
    end
  end
endmodule


/*OUTPUT:
xcelium> run
reverse   :'{7, 2, 9, 7, 5, 5, 2, 8, 6, 4, 3}
sort      :'{2, 2, 3, 4, 5, 5, 6, 7, 7, 8, 9}
rsort     :'{9, 8, 7, 7, 6, 5, 5, 4, 3, 2, 2}
shuffle 0:'{6, 7, 5, 2, 8, 5, 9, 2, 7, 3, 4}
shuffle 1:'{9, 4, 2, 6, 7, 8, 5, 2, 3, 7, 5}
shuffle 2:'{4, 3, 9, 7, 2, 5, 7, 6, 2, 5, 8}
shuffle 3:'{9, 7, 3, 4, 5, 8, 7, 2, 5, 6, 2}
shuffle 4:'{5, 8, 2, 4, 5, 9, 2, 7, 6, 7, 3}
xmsim: *W,RNQUIE: Simulation is complete.
*/
