virtual class Remote;
  pure virtual function void turn_on();
endclass

class TV extends Remote;
  function void turn_on();
    $display("TV is ON");
  endfunction
endclass

class AC extends Remote;
  function void turn_on();
    $display("AC is ON");
  endfunction
endclass

module test;
  initial begin
    Remote r;
    TV t;
    AC a;

    t=new();
    r=t;
    r.turn_on();

    a=new();
    r=a;
    r.turn_on();
  end
endmodule

/*OUTPUT:
xcelium> run
TV is ON
AC is ON
*/
