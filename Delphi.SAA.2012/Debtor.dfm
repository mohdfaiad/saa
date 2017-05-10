inherited frmDebtor: TfrmDebtor
  Left = 347
  Top = 172
  Width = 826
  Height = 416
  Caption = 'AR Debtor/ Customer'
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel [0]
    Left = 20
    Top = 31
    Width = 69
    Height = 14
    Caption = 'Creditor Code:'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 358
    Width = 810
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited ToolBar: TToolBar
    Width = 810
    ParentColor = False
    TabOrder = 8
    object wwDBNavigator1: TwwDBNavigator
      Left = 391
      Top = 0
      Width = 50
      Height = 25
      DataSource = dataSource
      ShowHint = True
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigatorPrev: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigatorPrev'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsPrior
      end
      object wwDBNavigatorNext: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigatorNext'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
    end
  end
  inherited mainPanel: TPanel
    Width = 810
    Height = 329
    Font.Name = 'Tahoma'
    TabOrder = 10
    object Label1: TLabel
      Left = 12
      Top = 13
      Width = 61
      Height = 13
      Caption = 'Debtor Acct:'
    end
    object Label3: TLabel
      Left = 12
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label4: TLabel
      Left = 181
      Top = 11
      Width = 35
      Height = 13
      Caption = 'CType:'
    end
    object Label5: TLabel
      Left = 12
      Top = 89
      Width = 52
      Height = 13
      Caption = 'Address 1:'
    end
    object Label6: TLabel
      Left = 12
      Top = 117
      Width = 52
      Height = 13
      Caption = 'Address 2:'
    end
    object Label7: TLabel
      Left = 12
      Top = 143
      Width = 52
      Height = 13
      Caption = 'Address 3:'
    end
    object Label8: TLabel
      Left = 12
      Top = 182
      Width = 54
      Height = 13
      Caption = 'Telephone:'
    end
    object Label9: TLabel
      Left = 227
      Top = 184
      Width = 25
      Height = 13
      Caption = 'Fax :'
    end
    object Label10: TLabel
      Left = 12
      Top = 55
      Width = 60
      Height = 13
      Caption = 'Short Name:'
    end
    object Label11: TLabel
      Left = 274
      Top = 59
      Width = 45
      Height = 13
      Caption = 'CR Term:'
    end
    object Label12: TLabel
      Left = 388
      Top = 39
      Width = 87
      Height = 13
      Caption = 'Tax Registred No:'
    end
    object Label13: TLabel
      Left = 549
      Top = 11
      Width = 51
      Height = 13
      Caption = 'Currency :'
    end
    object Label17: TLabel
      Left = 12
      Top = 159
      Width = 45
      Height = 13
      Caption = 'Province:'
    end
    object Label18: TLabel
      Left = 226
      Top = 159
      Width = 50
      Height = 13
      Caption = 'PostCode:'
    end
    object Label19: TLabel
      Left = 12
      Top = 216
      Width = 58
      Height = 13
      Caption = 'Local Name:'
    end
    object Label20: TLabel
      Left = 12
      Top = 239
      Width = 76
      Height = 13
      Caption = 'Local Address1:'
    end
    object Label21: TLabel
      Left = 12
      Top = 266
      Width = 76
      Height = 13
      Caption = 'Local Address2:'
    end
    object Label22: TLabel
      Left = 12
      Top = 289
      Width = 76
      Height = 13
      Caption = 'Local Address3:'
    end
    object Label23: TLabel
      Left = 388
      Top = 13
      Width = 48
      Height = 13
      Caption = 'Tax Rate:'
    end
    object Label16: TLabel
      Left = 652
      Top = 39
      Width = 53
      Height = 13
      Caption = 'Branch No:'
    end
    object edAccountCode: TcxDBTextEdit
      Left = 96
      Top = 10
      DataBinding.DataField = 'DEBTOR_ACCT'
      DataBinding.DataSource = dataSource
      TabOrder = 0
      Width = 78
    end
    object cbType: TcxDBLookupComboBox
      Left = 226
      Top = 10
      DataBinding.DataField = 'DEBTOR_TYPE'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'DEBTOR_TYPE'
      Properties.ListColumns = <
        item
          FieldName = 'DEBTOR_TYPE'
        end
        item
          FieldName = 'DESCS'
        end>
      Properties.ListSource = dsDebtorTypeLookup
      TabOrder = 1
      Width = 156
    end
    object cbTax: TcxDBLookupComboBox
      Left = 457
      Top = 10
      DataBinding.DataField = 'TAX_CD'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'TAX_CD'
      Properties.ListColumns = <
        item
          FieldName = 'TAX_CD'
        end
        item
          FieldName = 'TAX_RATE'
        end>
      Properties.ListSource = dsTaxLookup
      TabOrder = 2
      Width = 78
    end
    object edCRTerm: TcxDBTextEdit
      Left = 350
      Top = 54
      DataBinding.DataField = 'CREDIT_TERM'
      DataBinding.DataSource = dataSource
      TabOrder = 3
      Width = 36
    end
    object edProvince: TcxDBTextEdit
      Left = 96
      Top = 154
      DataBinding.DataField = 'PROVINCE'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 129
    end
    object cbCurrency: TcxDBLookupComboBox
      Left = 606
      Top = 10
      DataBinding.DataField = 'CURRENCY_CODE'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'CURRENCY_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CURRENCY_CODE'
        end
        item
          FieldName = 'BASE_RATE'
        end>
      Properties.ListSource = dsCurrencyLookup
      TabOrder = 5
      Width = 61
    end
    object edPostCode: TcxDBTextEdit
      Left = 295
      Top = 154
      DataBinding.DataField = 'POSTCODE'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 93
    end
    object edTel: TcxDBTextEdit
      Left = 96
      Top = 177
      DataBinding.DataField = 'TELPHONE'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 129
    end
    object edFax: TcxDBTextEdit
      Left = 260
      Top = 177
      DataBinding.DataField = 'FAX_NO'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 128
    end
    object edTaxReg: TcxDBTextEdit
      Left = 482
      Top = 36
      DataBinding.DataField = 'TAX_REGISTED_NO'
      DataBinding.DataSource = dataSource
      TabOrder = 9
      Width = 159
    end
    object cxGroupBox1: TcxGroupBox
      Left = 390
      Top = 68
      Caption = 'Letter Head Preview:'
      ParentColor = False
      Style.BorderColor = clWhite
      Style.Color = clWhite
      TabOrder = 10
      Height = 253
      Width = 387
      object Label14: TLabel
        Left = 17
        Top = 26
        Width = 63
        Height = 14
        Caption = 'Customer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 17
        Top = 86
        Width = 53
        Height = 14
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 26
        Top = 43
        Width = 216
        Height = 18
        DataField = 'NAME'
        DataSource = dataSource
      end
      object DBText2: TDBText
        Left = 26
        Top = 60
        Width = 216
        Height = 19
        DataField = 'TH_NAME'
        DataSource = dataSource
      end
      object DBText3: TDBText
        Left = 26
        Top = 103
        Width = 216
        Height = 19
        DataField = 'ADDRESS1'
        DataSource = dataSource
      end
      object DBText4: TDBText
        Left = 26
        Top = 121
        Width = 208
        Height = 18
        DataField = 'ADDRESS2'
        DataSource = dataSource
      end
      object DBText5: TDBText
        Left = 26
        Top = 138
        Width = 208
        Height = 18
        DataField = 'ADDRESS3'
        DataSource = dataSource
      end
      object DBText6: TDBText
        Left = 26
        Top = 155
        Width = 70
        Height = 18
        DataField = 'PROVINCE'
        DataSource = dataSource
      end
      object DBText7: TDBText
        Left = 112
        Top = 155
        Width = 130
        Height = 18
        DataField = 'POSTCODE'
        DataSource = dataSource
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 688
      Top = 8
      Caption = 'Head Office'
      DataBinding.DataField = 'ISHEADOFFICE'
      DataBinding.DataSource = dataSource
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      TabOrder = 11
      Width = 105
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 728
      Top = 36
      DataBinding.DataField = 'BRANCH_CODE'
      DataBinding.DataSource = dataSource
      TabOrder = 12
      Width = 43
    end
  end
  object edAddr3: TcxDBTextEdit [4]
    Left = 96
    Top = 160
    DataBinding.DataField = 'ADDRESS3'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 292
  end
  object edShortName: TcxDBTextEdit [5]
    Left = 96
    Top = 83
    DataBinding.DataField = 'SHORT_NAME'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 139
  end
  object edAddr1: TcxDBTextEdit [6]
    Left = 96
    Top = 116
    DataBinding.DataField = 'ADDRESS1'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 292
  end
  object edAddr2: TcxDBTextEdit [7]
    Left = 96
    Top = 138
    DataBinding.DataField = 'ADDRESS2'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 292
  end
  object edLocalName: TcxDBTextEdit [8]
    Left = 96
    Top = 250
    DataBinding.DataField = 'TH_NAME'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 292
  end
  object edLAddr1: TcxDBTextEdit [9]
    Left = 96
    Top = 272
    DataBinding.DataField = 'TH_ADDR1'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 292
  end
  object edLAddr2: TcxDBTextEdit [10]
    Left = 96
    Top = 296
    DataBinding.DataField = 'TH_ADDR2'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 292
  end
  object edLAddr3: TcxDBTextEdit [11]
    Left = 96
    Top = 320
    DataBinding.DataField = 'TH_ADDR3'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    Width = 292
  end
  object edName: TcxDBTextEdit [12]
    Left = 96
    Top = 61
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = dataSource
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'BrowalliaUPC'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 11
    Width = 290
  end
  inherited ImageIconList: TImageList
    Left = 456
    Top = 0
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbArDebtor
    Left = 296
    Top = 0
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 584
    Top = 0
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
    end
  end
  object dsDebtorTypeLookup: TDataSource [16]
    DataSet = MasterSetupDM.tbArDebtorType
    Left = 336
  end
  object dsCurrencyLookup: TDataSource [17]
    DataSet = MasterSetupDM.tbCurrency
    Left = 488
  end
  object dsTaxLookup: TDataSource [18]
    DataSet = MasterSetupDM.tbTax
    Left = 408
  end
  inherited searchDialog: TwwSearchDialog
    SearchTable = MasterSetupDM.tbArDebtor
    Left = 552
    Top = 0
  end
  inherited RecordViewDialog: TwwRecordViewDialog
    Left = 520
    Top = 0
  end
end
