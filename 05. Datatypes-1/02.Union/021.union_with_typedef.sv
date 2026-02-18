module union_with_typrdeff;
  typedef union{
    bit [7:0] data;
    bit [3:0] data1;
    bit [3:0] data2;
  }data_type;
  
  initial begin
    data_type h1;
    h1.data=8'hab;
    $display("data =%h",h1.data);
    $display("data 1=%h",h1.data1);
    $display("data 2=%h",h1.data2);
  end
endmodule

/*OUTPUT:
xcelium> run
data =ab
data 1=b
data 2=b
*/
