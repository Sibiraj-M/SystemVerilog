class bankacc;
  int bal;
  string status;
  task deposit(int amount);
  bal=bal+amount;
  $display("Deposited = %0d | Balance = %0d", amount, bal);
  endtask
  
  task withdrew(int amount);
    if(bal >= amount) begin
      bal = bal - amount;
      $display("Withdrawn: %0d | Balance = %0d", amount, bal);
    end
    else begin
      $display("Insufficient Balance!");
      end
  endtask
endclass

module atm;
  	initial begin
      
      bankacc acc1;
      
      if(acc1==null)
        $display("No Acc Found");
      
      acc1=new();
      acc1.bal=2000;
      
      $display("ATM Started with Balance = %0d", acc1.bal);
      
      acc1.deposit(2000);
      acc1.withdrew(3000);
      acc1.withdrew(2000);
      acc1.deposit(1500);
      acc1.withdrew(2500);
      
    end
endmodule

/*OUTPUT
No Acc Found
ATM Started with Balance = 2000
Deposited = 2000 | Balance = 4000
Withdrawn: 3000 | Balance = 1000
Insufficient Balance!
Deposited = 1500 | Balance = 2500
Withdrawn: 2500 | Balance = 0
*/
