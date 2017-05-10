inherited frmProPlanMeltSummayReportGenerate: TfrmProPlanMeltSummayReportGenerate
  Left = 435
  Top = 233
  Caption = 'Melt Summary Report Generate'
  ClientHeight = 263
  ClientWidth = 364
  Font.Name = 'Tahoma'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 364
    Height = 263
    Align = alClient
    Caption = 'Enter Melt Information'
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 16
      Top = 128
      Width = 329
      Height = 123
      Caption = 'Melt Parameters:'
      TabOrder = 4
      object Label1: TLabel
        Left = 16
        Top = 28
        Width = 51
        Height = 13
        Caption = 'Start Melt:'
      end
      object Label2: TLabel
        Left = 17
        Top = 52
        Width = 45
        Height = 13
        Caption = 'End Melt:'
      end
    end
    object cxFromMelt: TcxTextEdit
      Left = 210
      Top = 146
      TabOrder = 0
      Width = 121
    end
    object cxToMelt: TcxTextEdit
      Left = 210
      Top = 178
      TabOrder = 1
      Width = 121
    end
    object btConfirm: TButton
      Left = 210
      Top = 210
      Width = 121
      Height = 25
      Caption = 'Confirm'
      ModalResult = 5
      TabOrder = 2
      OnClick = btConfirmClick
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 16
      Width = 329
      Height = 105
      Caption = 'Plan Document:'
      TabOrder = 3
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 40
        Height = 16
        Caption = 'Result:'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lbResultValue: TLabel
        Left = 56
        Top = 64
        Width = 37
        Height = 16
        Caption = 'VALUE'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object cbMeltSuffix: TCheckBox
        Left = 5
        Top = 18
        Width = 129
        Height = 17
        Caption = 'Seach Melt Suffix'
        TabOrder = 0
      end
      object cxMeltSuffix: TcxTextEdit
        Left = 193
        Top = 14
        TabOrder = 1
        Width = 121
      end
      object Button1: TButton
        Left = 193
        Top = 56
        Width = 121
        Height = 25
        Hint = 'Check if Melt Sufix found. '
        Caption = 'Verify'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
  end
end
