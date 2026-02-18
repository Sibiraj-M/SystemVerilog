module Structure;
  typedef struct{
  int day;
  int total_students;
  int present;
  int absent;
  }log;
  log d1,d2,d3,d4;
  initial begin  
    d1='{1,60,57,3};
    d2='{2,60,59,1};
    d3='{3,60,34,24};
    d4='{4,60,25,35};
    $display("LOG:");
    $display("%p",d1);
    $display("%p",d2);
    $display("%p",d3);
    $display("%p",d4);
  end
endmodule


/* OUTPUT
LOG:
'{day:1, total_students:60, present:57, absent:3}
'{day:2, total_students:60, present:59, absent:1}
'{day:3, total_students:60, present:34, absent:24}
'{day:4, total_students:60, present:25, absent:35}
*/
