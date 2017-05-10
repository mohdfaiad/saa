object frmProductionPlanMergePlanPopup: TfrmProductionPlanMergePlanPopup
  Left = 530
  Top = 398
  BorderStyle = bsDialog
  Caption = 'Merge Plan'
  ClientHeight = 156
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 473
    Height = 105
    Caption = 
      'Fill in source and target plan doc to merge then .Click Merge to' +
      ' confirm or Cancel button to cancel'
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Source:'
    end
    object Label4: TLabel
      Left = 216
      Top = 49
      Width = 36
      Height = 13
      Caption = 'Target:'
    end
  end
  object Button1: TButton
    Left = 152
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Merge'
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 248
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object cxTextEdit1: TcxTextEdit
    Left = 72
    Top = 40
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Height = 36
    Width = 126
  end
  object cxTextEdit2: TcxTextEdit
    Left = 272
    Top = 40
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Height = 36
    Width = 126
  end
end
