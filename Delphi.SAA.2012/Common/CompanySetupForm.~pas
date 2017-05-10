unit CompanySetupForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, DBCtrls, DB, StdCtrls, Mask, wwdbedit,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, ExtDlgs,
  dxGDIPlusClasses, jpeg;

type
  TfrmCompanySetup = class(TBaseUIForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Panel1: TPanel;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    datasource: TDataSource;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit13: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit14: TwwDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    Label11: TLabel;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanySetup: TfrmCompanySetup;

implementation

uses CommomShareDataModule;

{$R *.dfm}

procedure TfrmCompanySetup.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.DataSet := CommomShareDM.tbCompany;
  datasource.dataset.open;
end;

procedure TfrmCompanySetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  inherited;
  datasource.dataset.close;
end;

end.
