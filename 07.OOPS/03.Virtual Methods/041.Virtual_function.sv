class account;
  int balance;

  function new(int bal);
    balance=bal;
  endfunction
  
  virtual function void calculate_interest();
    $display("Base Account-No Interest");
  endfunction
endclass


class savings extends account;
  function new(int bal);
    super.new(bal);
  endfunction

  
  function void calculate_interest();
    int interest;
    interest=balance*5/100;
    $display("Savings Account Interest = %0d",interest);
  endfunction
endclass


class current extends account;
  
  function new(int bal);
    super.new(bal);
  endfunction

  function void calculate_interest();
    int interest;
    interest = balance * 2 / 100;
    $display("Current Account Interest = %0d", interest);
  endfunction
endclass



module bank_demo;
  account acc;       
  savings s_acc;
  current c_acc;

  initial begin
    s_acc=new(10000);
    c_acc=new(10000);
    acc=s_acc;
    $display("Using Savings Object:");
    acc.calculate_interest();
    acc=c_acc;
    $display("Using Current Object:");
    acc.calculate_interest();
  end
endmodule
