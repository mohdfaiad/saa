inherited GoodsReceiveNoteBrowseForm: TGoodsReceiveNoteBrowseForm
  Left = 366
  Top = 194
  Caption = 'Goods Receive Note'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TwwDBGrid
    Selected.Strings = (
      'GRN_NO'#9'15'#9'Document No'#9#9
      'GRN_DATE'#9'18'#9'Document Date'#9#9
      'NAME'#9'60'#9'Supplier'#9#9)
  end
  inherited Panel1: TPanel
    inherited postButton: TBitBtn
      OnClick = postButtonClick
    end
    object tbDelete: TBitBtn
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 4
      OnClick = tbDeleteClick
    end
  end
  inherited datasource: TDataSource
    DataSet = GoodsReceiveDM.qryUnPostedGRN
  end
end
