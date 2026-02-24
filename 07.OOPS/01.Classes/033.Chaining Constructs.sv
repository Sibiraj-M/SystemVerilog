class shopping;
  int tol_price;

  function new();
    tol_price=0;
  endfunction
  
  function shopping add_item(int price);
    tol_price=tol_price+price;
    $display("Item Added: %0d | Total = %0d", price, tol_price);
    return this;
  endfunction
  
  function shopping discount(int per);
    tol_price = tol_price-(tol_price*per/100);
    $display("Discount Applied: %0d%% | Total = %0d",per, tol_price);
    return this; 
  endfunction
  
  task checkout();
    $display("Final Bill Amount= %0d",tol_price);
  endtask
  
endclass


module test;
  initial begin
  
  shopping s=new();
  s.add_item(100).add_item(2000).discount(15).checkout();
  end
endmodule
  
/*OUTPUT:
xcelium> run
Item Added: 100 | Total = 100
Item Added: 2000 | Total = 2100
Discount Applied: 15% | Total = 1785
Final Bill Amount= 1785
*/
