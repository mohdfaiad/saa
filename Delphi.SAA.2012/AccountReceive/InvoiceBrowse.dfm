inherited InvoiceBrowseForm: TInvoiceBrowseForm
  Left = 139
  Top = 149
  Width = 870
  Height = 393
  Caption = 'AR Invoice Post/Edit)'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 346
    Width = 862
  end
  inherited Grid: TwwDBGrid
    Width = 862
    Height = 305
    Selected.Strings = (
      'DOC_NO'#9'15'#9'Invoice No'#9#9
      'DOC_DATE'#9'18'#9'Invoice Date'#9#9
      'DESCS'#9'24'#9'DESCS'#9#9
      'DEBT_NAME'#9'31'#9'DEBTOR  NAME'#9#9
      'CREDIT_TERM'#9'12'#9'CREDIT TERM'#9#9
      'DUE_DATE'#9'12'#9'DUE DATE'#9#9
      'UPDATE_USER'#9'12'#9'UPDATE USER'#9#9)
  end
  inherited Panel1: TPanel
    Top = 305
    Width = 862
    inherited postButton: TBitBtn
      Left = 624
    end
    inherited cancelButton: TBitBtn
      Left = 712
    end
  end
end
