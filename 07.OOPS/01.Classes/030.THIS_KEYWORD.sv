class details;
  string name;
  int id;
  
  function new(string name,int id);
    this.name=name;
    this.id=id;
  endfunction
  
  task show();
    $display("Students details Name=%0s | Id=%0d ",name,id);
  endtask
endclass

module enroll;
  initial begin
    details d;
    d= new("shiyam",91);
    d.show();
    d= new("prabu",1);
    d.show();
    
  end
endmodule

/*OUTPUT:
Students details Name=shiyam | Id=91 
Students details Name=prabu | Id=1 
*/
