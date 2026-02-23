class students;
  int count;
endclass

module obj;
  students a; //handle
  initial begin
    a=new(); //object
    a.count=5;
    if(a==null)
      $display("No students here");
    
    
    $display("total students=%0d",a.count);
  end
endmodule

/*OUTPUT
total students=5
*/
 
