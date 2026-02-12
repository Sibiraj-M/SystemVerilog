module Associative_Array_methods;
  int name[string];
  initial begin
    name='{"vasu":21,"vimal":2,"prabhu":23,"karthi":32};
    $display("Total name list=%0d",name.size());
    $display("roll no=%0d",name.num());
    if(name.exists("karthi"))
      $display("found %0d karthi !",name["karthi"]);
    if(!name.exists("sai"))
      $display("Nope,not exists this list");
    begin
      string n;
      if(name.first(n))
        $display("name first[%s]=%0d",n,name[n]);
    end
    begin
      string n;
      if(name.last(n))
        $display("name last[%s]=%0d",n,name[n]);
    end
    begin
      string f="vimal";
      if(name.prev(f))
        $display("name last[%s]=%0d",f,name[f]);
    end
    begin
      string f;
      f="vasu";
      if(name.next(f))
        $display("name next[%s]=%0d",f,name[f]);
    end
  end
endmodule


/*OUTPUT:
xcelium> run
Total name list=4
roll no=4
found 32 karthi !
Nope,not exists this list
name first[karthi]=32
name last[vimal]=2
name last[vasu]=21
name next[vimal]=2
xmsim: *W,RNQUIE: Simulation is complete.
*/
