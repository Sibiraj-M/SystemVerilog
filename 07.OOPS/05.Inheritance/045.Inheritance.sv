class Employee;
  string name;
  int base_salary;
  
  function new(string n,int b);
    name=n;
    base_salary=b;
  endfunction
  
  function void display();
    $display("Name=%0s | Salary=%0d",name,base_salary);
  endfunction
endclass

class Manager extends Employee;
  int bonus;
  
  function new(string n,int b,int b0);
    super.new(n,b);
    bonus=b0;
  endfunction
  
  function void total_salary();
    int total_salary;
    total_salary=base_salary+bonus;
    $display("Total salary = %0d",total_salary);
  endfunction
endclass

module Inheritance;
  initial begin
    Manager m1;
    m1=new("nithesh",50000,20000);
    m1.display();
    m1.total_salary();
  end
endmodule
  
/*OUTPUT:
xcelium> run
Name=nithesh | Salary=50000
Total salary = 70000
*/
  
  
  
  
