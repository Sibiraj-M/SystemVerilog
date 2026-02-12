module unbounded_queue;
  real ip[$];
  initial begin
    ip='{12.32,194.3,198.3};
    foreach(ip[i])
      $display("IP[%0d]=%0f",i,ip[i]);
    ip = {ip, 198.6, 197.3};
    $display("Ip = %p",ip);
    ip={};
    $display("IP after delection=%p",ip);
  end
endmodule


/*OUTPUT:
xcelium> run
IP[0]=12.320000
IP[1]=194.300000
IP[2]=198.300000
Ip = '{12.32, 194.3, 198.3, 198.6, 197.3}
IP after delection='{}
xmsim: *W,RNQUIE: Simulation is complete.
*/
