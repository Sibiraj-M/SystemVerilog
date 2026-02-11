module comb_packed_unpacked;
  logic [7:0] mem[0:3][0:3];
  initial begin
    foreach(mem[i])
      foreach(mem[i][j])begin
        mem[i][j]=$random;
        $display("MEM[%0d][%0d]=%0d",i,j,mem[i][j]);
      end
  end
endmodule

/*OUTPUT:
xcelium> run
MEM[0][0]=36
MEM[0][1]=129
MEM[0][2]=9
MEM[0][3]=99
MEM[1][0]=13
MEM[1][1]=141
MEM[1][2]=101
MEM[1][3]=18
MEM[2][0]=1
MEM[2][1]=13
MEM[2][2]=118
MEM[2][3]=61
MEM[3][0]=237
MEM[3][1]=140
MEM[3][2]=249
MEM[3][3]=198
*/
