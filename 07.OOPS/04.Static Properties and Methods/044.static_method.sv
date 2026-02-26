class bank;
  string name;
  int bal;
  static int total_acc;
  
  function new(string n,int b);
    name=n;
    bal=b;
    total_acc++;
  endfunction

  
  function void deposit(int amount);
    bal = bal + amount;
  endfunction
  
   function void display_balance();
     $display("Balance :%0d",bal);
  endfunction
  

  static function void display_total_acc();
    $display("total acc: %0d",total_acc);
  endfunction
endclass

module details;
  initial begin
     bank b1, b2, b3;
    b1=new("Ravi",   200);
    b2=new("Mathesh",300);
    b3=new("Mukesh", 500);
    b1.deposit(100);
    b2.deposit(50);
    b1.display_balance();
    b2.display_balance();
    b3.display_balance();
    bank::display_total_acc();  // static call
  end
endmodule

/*OUTPUT:
xcelium> run
Balance :300
Balance :350
Balance :500
total acc: 3
*/

  
