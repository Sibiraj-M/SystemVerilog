class booking;
  int tic;
  int seat_no;
  
  extern function void display();
  
endclass

function void booking::display();
  this.tic=tic;
  this.seat_no=seat_no;
  
  $display("Seat No: %0d | Ticket No:%0d ",seat_no,tic);
endfunction

module test;
  booking b1;
  initial begin
    if(b1==null)
      $display("TICKET NOT AVAILABLE");
    
    b1=new();
    
    b1.tic=101;
    b1.seat_no=12;
    
    b1.display();
  end
endmodule
    
/*OUTPUT
TICKET NOT AVAILABLE
Seat No: 12 | Ticket No:101 
*/
