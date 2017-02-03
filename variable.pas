
procedure Memo3OnBeforePrint(Sender: TfrxComponent);
var
mivariable:string;  
  
  
begin
mivariable:='0';                            


 if mivariable  =  '1'  then
memo10.visible := true
                                             
                                                
                                          

  
else
memo10.visible := false  
                

end;
            

procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);

  

var
mivariable:string;  
  
  
begin
mivariable:='0';                            


 if mivariable  =  '1'  then
memo6.visible := true
                                             
                                                
                                          

  
else
memo6.visible := false  
end;

begin

  

end.
