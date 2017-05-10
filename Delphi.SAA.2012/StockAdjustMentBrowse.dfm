inherited StockAdjustBrowseForm: TStockAdjustBrowseForm
  Left = 311
  Top = 205
  Width = 642
  Height = 389
  Caption = 'Stock Adjust Browse Window'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 331
    Width = 626
  end
  inherited Grid: TwwDBGrid
    Width = 626
    Height = 290
    Selected.Strings = (
      'DOC_NO'#9'15'#9'Adjust Document'#9#9
      'DOC_DATE'#9'18'#9'Adjust Date'#9#9
      'DESCS'#9'60'#9'Description'#9#9
      'UPDATE_USER'#9'10'#9'create By'#9#9
      'MELT_NO'#9'10'#9'MELT NO'#9#9
      'TRX_TYPE'#9'2'#9'TRX CODE'#9'T')
    OnDblClick = GridDblClick
  end
  inherited Panel1: TPanel
    Top = 290
    Width = 626
    object deleteButton: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 4
    end
  end
end
