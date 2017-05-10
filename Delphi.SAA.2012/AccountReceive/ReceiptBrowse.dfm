inherited ReceiptBrowseForm: TReceiptBrowseForm
  Left = 571
  Top = 223
  Caption = 'ReceiptBrowseForm'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TwwDBGrid
    Selected.Strings = (
      'DOC_NO'#9'17'#9'Receipt No'#9#9
      'DOC_DATE'#9'18'#9'Receipt Date'#9#9
      'NAME'#9'60'#9'NAME'#9'F'#9
      'UPDATE_USER'#9'10'#9'Update User'#9#9)
  end
  inherited datasource: TDataSource
    DataSet = AccountReceiveDM.qryUnpostReceipt
  end
end
