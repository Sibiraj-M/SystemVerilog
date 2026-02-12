module bouned_queues;
  int id[$:4]='{11,22,33,44};
  
  initial begin
    $display("id =%p",id);
    foreach(id[i])
    $display("id[%0d]=%0d",i,id[i]);
    $display("id bw 0 to 2=%p",id[0:2]);
    id={};
    $display("id after delection=%p",id);
  end
endmodule
/*OUTPUT:
id ='{11, 22, 33, 44}
id[0]=11
id[1]=22
id[2]=33
id[3]=44
id bw 0 to 2='{11, 22, 33}
id after delection='{}
*/
