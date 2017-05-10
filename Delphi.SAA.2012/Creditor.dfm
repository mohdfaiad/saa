inherited frmCreditor: TfrmCreditor
  Left = 227
  Top = 222
  Width = 743
  Height = 327
  Caption = 'AP Creditor/PO Supplier Setup'
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 19
    Top = 29
    Width = 67
    Height = 13
    Caption = 'Creditor Code:'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 280
    Width = 735
  end
  inherited ToolBar: TToolBar
    Width = 735
    object cxDBNavigator1: TcxDBNavigator
      Left = 197
      Top = 0
      Width = 225
      Height = 30
      DataSource = dataSource
      TabOrder = 0
      Visible = False
    end
  end
  inherited mainPanel: TPanel
    Width = 735
    Height = 247
    Font.Name = 'Tahoma'
    ParentFont = False
    object Label1: TLabel
      Left = 19
      Top = 9
      Width = 71
      Height = 13
      Caption = 'Creditor Code:'
    end
    object Label3: TLabel
      Left = 27
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label4: TLabel
      Left = 227
      Top = 9
      Width = 70
      Height = 13
      Caption = 'Creditor Type:'
    end
    object Label5: TLabel
      Left = 30
      Top = 85
      Width = 52
      Height = 13
      Caption = 'Address 1:'
    end
    object Label6: TLabel
      Left = 30
      Top = 109
      Width = 52
      Height = 13
      Caption = 'Address 2:'
    end
    object Label7: TLabel
      Left = 30
      Top = 135
      Width = 52
      Height = 13
      Caption = 'Address 3:'
    end
    object Label8: TLabel
      Left = 371
      Top = 173
      Width = 54
      Height = 13
      Caption = 'Telephone:'
    end
    object Label9: TLabel
      Left = 587
      Top = 175
      Width = 25
      Height = 13
      Caption = 'Fax :'
    end
    object Label10: TLabel
      Left = 371
      Top = 34
      Width = 60
      Height = 13
      Caption = 'Short Name:'
    end
    object Label11: TLabel
      Left = 467
      Top = 9
      Width = 66
      Height = 13
      Caption = 'Credit Teram:'
    end
    object Label12: TLabel
      Left = 371
      Top = 61
      Width = 87
      Height = 13
      Caption = 'Tax Registred No:'
    end
    object Label13: TLabel
      Left = 595
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Currency :'
    end
    object Label17: TLabel
      Left = 49
      Top = 173
      Width = 45
      Height = 13
      Caption = 'Province:'
    end
    object Label18: TLabel
      Left = 195
      Top = 173
      Width = 50
      Height = 13
      Caption = 'PostCode:'
    end
    object Label19: TLabel
      Left = 32
      Top = 61
      Width = 58
      Height = 13
      Caption = 'Local Name:'
    end
    object Label20: TLabel
      Left = 363
      Top = 82
      Width = 76
      Height = 13
      Caption = 'Local Address1:'
    end
    object Label21: TLabel
      Left = 363
      Top = 108
      Width = 76
      Height = 13
      Caption = 'Local Address2:'
    end
    object Label22: TLabel
      Left = 363
      Top = 126
      Width = 76
      Height = 13
      Caption = 'Local Address3:'
    end
    object Label23: TLabel
      Left = 363
      Top = 9
      Width = 48
      Height = 13
      Caption = 'Tax Rate:'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 96
      Top = 9
      DataBinding.DataSource = dataSource
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 304
      Top = 9
      Properties.ListColumns = <>
      TabOrder = 1
      Width = 57
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 400
      Top = 9
      Properties.ListColumns = <>
      TabOrder = 2
      Width = 57
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 536
      Top = 9
      DataBinding.DataSource = dataSource
      TabOrder = 3
      Width = 41
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 96
      Top = 168
      DataBinding.DataSource = dataSource
      TabOrder = 4
      Width = 81
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 656
      Top = 9
      Properties.ListColumns = <>
      TabOrder = 5
      Width = 57
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 256
      Top = 168
      DataBinding.DataSource = dataSource
      TabOrder = 6
      Width = 57
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 440
      Top = 168
      DataBinding.DataSource = dataSource
      TabOrder = 7
      Width = 97
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 616
      Top = 170
      DataBinding.DataSource = dataSource
      TabOrder = 8
      Width = 89
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 464
      Top = 56
      DataBinding.DataSource = dataSource
      TabOrder = 9
      Width = 153
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 96
    Top = 65
    DataBinding.DataSource = dataSource
    TabOrder = 3
    Width = 264
  end
  object cxDBTextEdit5: TcxDBTextEdit [5]
    Left = 436
    Top = 65
    DataBinding.DataSource = dataSource
    TabOrder = 4
    Width = 145
  end
  object cxDBTextEdit6: TcxDBTextEdit [6]
    Left = 96
    Top = 88
    DataBinding.DataSource = dataSource
    TabOrder = 5
    Width = 264
  end
  object cxDBTextEdit7: TcxDBTextEdit [7]
    Left = 96
    Top = 113
    DataBinding.DataSource = dataSource
    TabOrder = 6
    Width = 264
  end
  object cxDBTextEdit8: TcxDBTextEdit [8]
    Left = 96
    Top = 137
    DataBinding.DataSource = dataSource
    TabOrder = 7
    Width = 264
  end
  object cxDBTextEdit9: TcxDBTextEdit [9]
    Left = 96
    Top = 161
    DataBinding.DataSource = dataSource
    TabOrder = 8
    Width = 264
  end
  object cxDBTextEdit14: TcxDBTextEdit [10]
    Left = 440
    Top = 109
    DataBinding.DataSource = dataSource
    TabOrder = 9
    Width = 264
  end
  object cxDBTextEdit15: TcxDBTextEdit [11]
    Left = 440
    Top = 133
    DataBinding.DataSource = dataSource
    TabOrder = 10
    Width = 264
  end
  object cxDBTextEdit16: TcxDBTextEdit [12]
    Left = 440
    Top = 165
    DataBinding.DataSource = dataSource
    TabOrder = 11
    Width = 264
  end
  inherited ImageIconList: TImageList
    Left = 376
    Top = 16
  end
end
