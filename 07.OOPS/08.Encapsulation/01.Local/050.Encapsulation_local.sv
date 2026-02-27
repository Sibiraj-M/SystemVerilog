class bank;
  string name;
  int bal;
  local int pin;
  
  function new(string n,int b,int p);
    name=n;
    bal=b;
    pin=p;
  endfunction
  
  function bit verify_pin(int enter_pin);
    if(enter_pin==pin)
      return 1;
    else
      return 0;
  endfunction
  
  function void show_bal(int enter_pin);
    if(verify_pin(enter_pin))
      $display("Balance=%0d",bal);
    else
      $display("Incorrect pin");
  endfunction
endclass

module test;
  initial begin
    bank acc;
    acc=new("Vasu",5000,1234);
    
    acc.show_bal(1234);
    acc.show_bal(1343);
  end 
endmodule


/*OUTPUT:
xcelium> run
Balance=5000
Incorrect pin
*/
    
