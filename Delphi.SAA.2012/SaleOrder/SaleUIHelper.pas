unit SaleUIHelper;

interface


uses Forms,WINDOWS;
procedure   ArrangeUI( Form:TForm);

implementation


procedure   ArrangeUI( Form:TForm);
begin
  Form.FormStyle :=fsMdiChild;
  Form.top:=0;
  Form.Left:=0;
  //
end;



end.
