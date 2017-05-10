inherited ProgressDialog: TProgressDialog
  Left = 372
  Top = 187
  Cursor = crSQLWait
  Caption = 'Progress Dialog'
  ClientHeight = 103
  ClientWidth = 372
  Font.Name = 'Arial'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 0
    Top = 87
    Width = 372
    Height = 16
    Cursor = crSQLWait
    Align = alBottom
    Alignment = taCenter
    Caption = 'Processing...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object progressBar1: TGauge
    Left = 55
    Top = 40
    Width = 273
    Height = 25
    Cursor = crSQLWait
    ForeColor = clBlue
    Progress = 10
  end
  object Animate1: TAnimate
    Left = 56
    Top = 8
    Width = 49
    Height = 24
    Cursor = crSQLWait
    CommonAVI = aviCopyFile
    StopFrame = 20
    Visible = False
  end
end
