module Structure;
  struct{
  int total_students;
  int present;
  int absent;
  }log;
  
  initial begin
    $display("Day 1");
    
    log='{60,55,5};
    $display("Day1 log=%p",log);
    
    $display("Day 2");
    
    log.present=30;
    log.absent=20;
    $display("Day2 log =%p",log);
  end
endmodule

/* OUTPUT
Day 1

Day1 log='{total_students:60, present:55, absent:5}

Day 2

Day2 log ='{total_students:60, present:30, absent:20}
*/
