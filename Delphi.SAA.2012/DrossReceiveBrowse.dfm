inherited DrossReceiptBrowseForm: TDrossReceiptBrowseForm
  Left = 253
  Top = 221
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Dross Receive '
  ClientHeight = 233
  ClientWidth = 718
  Font.Charset = THAI_CHARSET
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 213
    Width = 718
    SizeGrip = False
  end
  inherited Grid: TwwDBGrid
    Width = 718
    Height = 172
    Selected.Strings = (
      'MELT_NO'#9'10'#9'MELT NO'#9#9
      'DESCS'#9'45'#9'Comment'#9#9
      'RECEIVE_DATE'#9'10'#9'Receive Date'#9'F'#9
      'RECEIVE_DOC'#9'15'#9'Receive No'#9#9
      'UPDATE_USER'#9'10'#9'Created By'#9#9
      'UPDATE_DATE'#9'18'#9'Create Date'#9#9)
  end
  inherited Panel1: TPanel
    Top = 172
    Width = 718
    inherited postButton: TBitBtn
      Left = 512
    end
    inherited cancelButton: TBitBtn
      Left = 600
    end
  end
end
