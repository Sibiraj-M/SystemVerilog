class Payment;
  int amount;
  
  function new(int a);
    amount=a;
  endfunction
  
  virtual function void pay();
    $display("Processing generic payment");
  endfunction

endclass



class UPI extends Payment;
  
  function new(int a);
    super.new(a);
  endfunction
  
  function void pay();
    $display("UPI Payment of %0d successful", amount);
  endfunction

endclass



class CreditCard extends Payment;
  
  function new(int a);
    super.new(a);
  endfunction

  
  function void pay();
    $display("Credit Card Payment of %0d successful", amount);
  endfunction

endclass
module test;
    initial begin
    Payment p;
    UPI u;
    CreditCard c;

    u = new(3000);
    p = u;
    p.pay();

    c = new(5000);
    p = c;
    p.pay();
  end
endmodule

/*OUTPUT:
xcelium> run
UPI Payment of 3000 successful
Credit Card Payment of 5000 successful
*/
