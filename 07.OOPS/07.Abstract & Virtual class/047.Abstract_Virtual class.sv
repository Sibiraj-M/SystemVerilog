virtual class Vehicle;

  function void info();
    $display("This is a vehicle");
  endfunction

endclass

class Car extends Vehicle;

  function void drive();
    $display("Car is driving");
  endfunction

endclass

module test1;
  initial begin
    Car c;
    c = new();
    c.info();
    c.drive();
  end
endmodule


/*OUTPUT:
xcelium> run
This is a vehicle
Car is driving
*/
