unit GoodsReceiveNoteBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,DialogUtils, Menus;

type
  TGoodsReceiveNoteBrowseForm = class(TAbstractDataBrowseForm)
    tbDelete: TBitBtn;
    procedure tbDeleteClick(Sender: TObject);
    procedure postButtonClick(Sender: TObject);
  private
    { Private declarations }
  public

       { Public declarations }                                   procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupdatasets; override  ;
  end;

var
  GoodsReceiveNoteBrowseForm: TGoodsReceiveNoteBrowseForm;

implementation
uses goodsreceiveDataModule,goodsreceiveForm,RunTimeController, Math;

{$R *.dfm}


procedure TGoodsReceiveNoteBrowseForm.doEditAction(Sender:TObject);
begin
   fSelectedObject := datasource.DataSet.FieldByName('GRN_NO').AsString;
   GoodsReceiveNoteForm :=  TGoodsReceiveNoteForm.create(self,fSelectedObject,'GRN_NO',1);
   GoodsReceiveNoteForm.show;
  // RController.commit;

end;

procedure TGoodsReceiveNoteBrowseForm.doNewAction(Sender:TObject);
begin

   GoodsReceiveNoteForm := TGoodsReceiveNoteForm.create(SELF,fSelectedObject,'GRN_NO',0);
   GoodsReceiveNoteForm.show;
 //  RController.commit ;

   datasource.dataset.close;
    datasource.dataset.open;


end;
procedure TGoodsReceiveNoteBrowseForm.doPostAction(Sender:TObject);
var suppCode,grnNo:String;
    grnDate :TDateTime;
begin
  //
  suppCode :=dataSource.DataSet.fIELDBYNAME('supp_code').AsString;
  grnNo := datasource.DataSet.Fieldbyname('grn_no').AsString;
  grnDate :=DataSource.DataSet.FieldByName('grn_date').AsDateTime;
  fsuccess :=GoodsReceiveDM.postGoodsReceiveNote(SuppCode,grnNo,grnDate );
  if (fsuccess ) then RController.commit;
end;
procedure TGoodsReceiveNoteBrowseForm.doDeleteAction(Sender:TObject);
begin
//
  If (confirm('Please Confirm to delete records?')=mrYes)Then
  begin
     if (GoodsReceiveDM.deleteGoodsReceiveNote(fSelectedObject)) then
     begin
         info('Success to delete '+fSelectedObject);
         RController.commit;
         doRefreshAction(Sender);
     end;
  end;
end;
procedure TGoodsReceiveNoteBrowseForm.setupdatasets;
begin
   datasource.DataSet:=GoodsReceiveDM.qryUnPostedGRN;

end;

procedure TGoodsReceiveNoteBrowseForm.tbDeleteClick(Sender: TObject);
begin
  doDeleteAction(sender);

end;

procedure TGoodsReceiveNoteBrowseForm.postButtonClick(Sender: TObject);
begin
  inherited;
  doPostAction(sender);

end;

end.
