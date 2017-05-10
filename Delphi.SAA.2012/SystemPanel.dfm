inherited SystemPanelForm: TSystemPanelForm
  Left = 246
  Top = 136
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'System Configuration '
  ClientHeight = 278
  ClientWidth = 499
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 16
    Top = 8
    Width = 385
    Height = 105
    Caption = 'Database Setup:'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 30
      Width = 78
      Height = 13
      Caption = 'Database Host :'
    end
    object Label2: TLabel
      Left = 16
      Top = 69
      Width = 102
      Height = 13
      Caption = 'Database File Name :'
    end
    object edHost: TEdit
      Left = 128
      Top = 24
      Width = 249
      Height = 21
      TabOrder = 0
      OnChange = edHostChange
    end
    object edFileName: TEdit
      Left = 128
      Top = 64
      Width = 249
      Height = 21
      TabOrder = 1
      OnChange = edHostChange
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 258
    Width = 499
    SizeGrip = False
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 120
    Width = 385
    Height = 129
    Caption = 'Default Setup:'
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 17
      Width = 128
      Height = 13
      Caption = 'Default Transection Type :'
    end
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 98
      Height = 13
      Caption = 'Default Description :'
    end
    object Label5: TLabel
      Left = 16
      Top = 73
      Width = 98
      Height = 13
      Caption = 'Last Purchase Days:'
    end
    object Label6: TLabel
      Left = 16
      Top = 95
      Width = 86
      Height = 13
      Caption = 'System Tax Rate:'
    end
    object edTrxType: TEdit
      Left = 304
      Top = 17
      Width = 73
      Height = 21
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edHostChange
    end
    object edTrxDescs: TEdit
      Left = 128
      Top = 41
      Width = 249
      Height = 21
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edHostChange
    end
    object edDayOfPurchase: TEdit
      Left = 304
      Top = 66
      Width = 73
      Height = 21
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object Edit1: TEdit
      Left = 304
      Top = 90
      Width = 73
      Height = 21
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '7.00'
    end
  end
  object btTest: TBitBtn
    Left = 416
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Test'
    TabOrder = 2
    OnClick = btTestClick
  end
  object btSave: TBitBtn
    Left = 416
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Save'
    Enabled = False
    TabOrder = 3
    OnClick = btSaveClick
  end
  object btCancel: TBitBtn
    Left = 416
    Top = 224
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 2
    TabOrder = 4
    OnClick = btCancelClick
  end
  object Database: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 448
    Top = 96
  end
  object Transaction: TIBTransaction
    Active = False
    AutoStopAction = saNone
    Left = 448
    Top = 136
  end
end
