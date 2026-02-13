module strings;
  string s1,s2,s3;
  int num;
  string num_string;
  
  initial begin
    s1="Helloworld";
    s2="SV";
    
    //display
    $display("s1=%s",s1);
    $display("s2=%s",s2);
    
    //Length
    $display("Length of s2=%0d",s1.len());
    
    //Index
    $display("s1[2]=%c",s1[2]);
    $display("s2[1]=%c",s2[1]);
    
    //Upper to Lower
    $display("Upper=%s",s1.toupper());
    $display("Lower=%s",s1.tolower());
    
    //substring
    $display("Substring(0 to 6)=%s",s1.substr(0,6));
    
    //Concatenation
    s3={s2,"_",s1};
    $display("Concatenated=%s",s3);
    
    //Comparsion
    if(s2=="SV")
      $display("String match");
    else
      $display("String Not match");
    
    //String to Int
    s3="1234";
    num=s3.atoi();
    $display("String to int =%0d",num);
    
    //Int to String
    num=99;
    num_string = $sformatf("%0d", num);
    $display("Int to String=%s",num_string);
    
    // Dynamic string
    s1="Hi";
    s1={s1," Welcome"};
    $display("Dynamic string=%s",s1);
  end
endmodule

/* OUTPUT:
s1=Helloworld
s2=SV
Length of s2=10
s1[2]=l
s2[1]=V
Upper=HELLOWORLD
Lower=helloworld
Substring(0 to 6)=Hellowo
Concatenated=SV_Helloworld
String match
String to int =1234
Int to String=99
Dynamic string=Hi Welcome
*/
