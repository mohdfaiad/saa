unit RunTimeController;

interface


uses classes,windows,sysutils,abstractdatamodule;

type TRuntimeController = class
  private
    datamodules:TList;
  public
   procedure commit;
   constructor create;overload;
   destructor destroy;override;
end;
var
  RController: TRuntimeController;
  
implementation
uses WareHouseDM,
DrossEnquiry,DrossDataModule,StockAdjustDM ,
StockEnquiryDM ;

constructor TRuntimeController.create;
begin
  DataModules :=TList.Create;
  DataModules.Add(WarehouseDataManager);
  DataModules.Add(StockEnquriyDM);
  datamodules.Add(StockAdjustDataModule);
  datamodules.Add(DROSSDM);
end;
destructor TRuntimeController.destroy;
begin
end;
procedure TRuntimeController.Commit;
var i:Integer;
begin

  for i:=0  to   DataModules.Count -1 do
  begin
    IF (DataModules.Items[I]  <> NIL) THEN
      TAbstractDM(DataModules.Items[I]).commit;
  end;
end;
end.
