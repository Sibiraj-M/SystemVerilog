class students;
  string students;
  static int total_students;
  
  function new();
    total_students++;
  endfunction
  
  static function void display();
    $display("Total student count =%0d",total_students);
  endfunction
  
  static function void reset_disp();
    total_students=0;
    $display("reset count=%0d",total_students);
  endfunction
  
endclass

module static_variable;
  students m[6];
  
  initial begin
    foreach(m[i])begin
      $display("");
      m[i]=new();
      $display("students");
      students::display();
      
      students::reset_disp();
    end
  end
endmodule

/*OUTPUT:

students
Total student count =1
reset count=0

students
Total student count =1
reset count=0

students
Total student count =1
reset count=0

students
Total student count =1
reset count=0

students
Total student count =1
reset count=0

students
Total student count =1
reset count=0

*/
