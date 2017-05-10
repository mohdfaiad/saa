unit CustomerRequirementCardViewFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCardView, cxGridDBCardView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo;

type
  TframeCustomerRequirementCardView = class(TFrame)
    cxGrid: TcxGrid;
    cxGridDBCardView1: TcxGridDBCardView;
    DataSource1: TDataSource;
    cxGridDBCardView1CUST_CODE: TcxGridDBCardViewRow;
    cxGridDBCardView1REQUIREMENTNOTE: TcxGridDBCardViewRow;
    cxGridDBCardView1UPDATE_USER: TcxGridDBCardViewRow;
    cxGridDBCardView1UPDATE_DATE: TcxGridDBCardViewRow;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CUST_CODE: TcxGridDBColumn;
    cxGridDBTableView1REQUIREMENTNOTE: TcxGridDBColumn;
    cxGridDBTableView1UPDATE_USER: TcxGridDBColumn;
    cxGridDBTableView1UPDATE_DATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  var  frameCustomerRequirementCardView:    TframeCustomerRequirementCardView;

implementation

   uses productionPlanDataModule;



{$R *.dfm}

end.
