inherited frmCXSaleQuotation: TfrmCXSaleQuotation
  Left = 160
  Top = 180
  Width = 935
  Height = 552
  Caption = 'Sale Quotation Manage'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 297
    Width = 919
    Height = 2
  end
  inherited lbTitle: TLabel
    Width = 919
    Height = 14
    Caption = 
      'Sale Quotation Management Select customer to create quotation th' +
      'en select  sale Item'
    Font.Height = -11
  end
  inherited plHeader: TPanel
    Top = 14
    Width = 919
    Height = 283
    TabOrder = 1
    OnClick = plHeaderClick
    object Label1: TLabel [0]
      Left = 16
      Top = 43
      Width = 68
      Height = 13
      Caption = 'Quotation No:'
    end
    object Label2: TLabel [1]
      Left = 208
      Top = 43
      Width = 78
      Height = 13
      Caption = 'Quotation Date:'
    end
    object Label3: TLabel [2]
      Left = 256
      Top = 67
      Width = 37
      Height = 13
      Caption = 'Ref No:'
    end
    object Label5: TLabel [3]
      Left = 408
      Top = 43
      Width = 38
      Height = 13
      Caption = 'Validity:'
    end
    object Label4: TLabel [4]
      Left = 408
      Top = 67
      Width = 47
      Height = 13
      Caption = 'Ref Date:'
    end
    object Label8: TLabel [5]
      Left = 16
      Top = 67
      Width = 57
      Height = 13
      Caption = 'Prepare By:'
    end
    object Bevel1: TBevel [6]
      Left = 2
      Top = 31
      Width = 915
      Height = 2
      Align = alTop
    end
    inherited ToolBar: TToolBar
      Width = 915
      TabOrder = 8
    end
    object cxGroupBox1: TcxGroupBox
      Left = 16
      Top = 91
      Caption = 'To Customer:'
      Style.Shadow = True
      TabOrder = 6
      Height = 105
      Width = 537
      object Label6: TLabel
        Left = 16
        Top = 80
        Width = 48
        Height = 13
        Caption = 'Currency:'
      end
      object Label7: TLabel
        Left = 160
        Top = 80
        Width = 73
        Height = 13
        Caption = 'Payment Term:'
      end
      object DBText1: TDBText
        Left = 88
        Top = 16
        Width = 209
        Height = 17
        Color = clWhite
        DataField = 'NAME'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 16
        Top = 37
        Width = 281
        Height = 17
        Color = clWhite
        DataField = 'ADDRESS1'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 16
        Top = 58
        Width = 169
        Height = 17
        Color = clWhite
        DataField = 'ADDRESS2'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 192
        Top = 56
        Width = 105
        Height = 19
        Color = clWhite
        DataField = 'ADDRESS3'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 72
        Top = 77
        DataBinding.DataField = 'CURRENCY_CD'
        DataBinding.DataSource = dsMaster
        Enabled = False
        TabOrder = 1
        Width = 57
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 240
        Top = 77
        DataBinding.DataField = 'TERM_OF_PAYMENT'
        DataBinding.DataSource = dsMaster
        TabOrder = 2
        Width = 57
      end
      object dlgCustomer: TwwDBLookupComboDlg
        Left = 16
        Top = 15
        Width = 65
        Height = 19
        BorderStyle = bsNone
        DisableThemes = False
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Customer'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'NAME'#9'60'#9'NAME'#9#9
          'DEBTOR_ACCT'#9'10'#9'DEBTOR_ACCT'#9#9)
        DataField = 'CUST_CODE'
        DataSource = dsMaster
        LookupTable = SaleOrderDataManager.tbCustomerLookup
        LookupField = 'DEBTOR_ACCT'
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = False
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 322
      Top = 100
      Cursor = crHandPoint
      Hint = 'Click Here to mange contract'
      Caption = 'Fax / Attend:'
      ParentShowHint = False
      ShowHint = True
      Style.Shadow = True
      TabOrder = 7
      OnDblClick = cxGroupBox2DblClick
      Height = 85
      Width = 223
      object cbFaxTo: TcxDBLookupComboBox
        Left = 8
        Top = 16
        DataBinding.DataField = 'FAX_TO'
        DataBinding.DataSource = dsMaster
        ParentFont = False
        Properties.KeyFieldNames = 'CONTRACT_PERSON1'
        Properties.ListColumns = <
          item
            FieldName = 'CONTRACT_PERSON1'
          end>
        Properties.ListSource = dsFax
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 201
      end
      object cbCCTO: TcxDBLookupComboBox
        Left = 8
        Top = 39
        DataBinding.DataField = 'CC_TO'
        DataBinding.DataSource = dsMaster
        ParentFont = False
        Properties.KeyFieldNames = 'CONTRACT_PERSON2'
        Properties.ListColumns = <
          item
            FieldName = 'CONTRACT_PERSON2'
          end>
        Properties.ListSource = dsAttend
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 201
      end
    end
    object edDocNo: TcxDBTextEdit
      Left = 88
      Top = 38
      DataBinding.DataField = 'DOC_NO'
      DataBinding.DataSource = dsMaster
      Style.Shadow = True
      TabOrder = 0
      Width = 81
    end
    object edDocDate: TcxDBDateEdit
      Left = 296
      Top = 35
      DataBinding.DataField = 'DOC_DATE'
      DataBinding.DataSource = dsMaster
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 97
    end
    object edRefNo: TcxDBTextEdit
      Left = 296
      Top = 62
      DataBinding.DataField = 'REF_NO'
      DataBinding.DataSource = dsMaster
      Style.Shadow = True
      TabOrder = 4
      Width = 97
    end
    object edValid: TcxDBDateEdit
      Left = 456
      Top = 35
      DataBinding.DataField = 'VALIDITY'
      DataBinding.DataSource = dsMaster
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 97
    end
    object edRefDate: TcxDBDateEdit
      Left = 456
      Top = 63
      DataBinding.DataField = 'REF_DATE'
      DataBinding.DataSource = dsMaster
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 97
    end
    object edPrepareBy: TcxDBTextEdit
      Left = 88
      Top = 62
      DataBinding.DataField = 'PREPARE_PERSON'
      DataBinding.DataSource = dsMaster
      Style.Shadow = True
      TabOrder = 3
      Width = 161
    end
    object cxGroupBox3: TcxGroupBox
      Left = 16
      Top = 196
      Caption = 'Remark:'
      Style.Shadow = True
      TabOrder = 9
      Height = 61
      Width = 537
      object cxDBMemo1: TcxDBMemo
        Left = 8
        Top = 13
        DataBinding.DataField = 'REMARKS'
        DataBinding.DataSource = dsMaster
        ParentFont = False
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 43
        Width = 521
      end
    end
  end
  inherited plToolBar: TPanel
    Left = 576
  end
  inherited StatusBar1: TfcStatusBar
    Top = 494
    Width = 919
    Font.Name = 'Arial'
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
        Width = '100'
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
        Width = '150'
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
    ParentFont = False
  end
  inherited panel1: TPanel
    Top = 299
    Width = 919
    Height = 195
    TabOrder = 0
    inherited wwDBGrid1: TwwDBGrid
      Width = 917
      Height = 193
      ControlType.Strings = (
        'ITEM_CODE;CustomEdit;dlgItemLookup;F')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'#NO'#9#9
        'ITEM_CODE'#9'15'#9'ITEM CODE'#9#9
        'ITEM_DESCS'#9'60'#9'Description'#9#9
        'UOM'#9'4'#9'UOM'#9#9
        'TAX_RATE'#9'10'#9'TAX_RATE'#9#9
        'MARK_UP'#9'10'#9'MARK_UP'#9#9
        'UNIT_COST'#9'10'#9'OfferPrice'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'BASE_AMT'#9'10'#9'BASE_AMT'#9#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9#9
        'DISCS_AMT'#9'10'#9'DISCS_AMT'#9#9
        'REMARKS'#9'15'#9'Delivery'#9#9)
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnColEnter = wwDBGrid1ColEnter
      OnKeyDown = wwDBGrid1KeyDown
      OnUpdateFooter = wwDBGrid1UpdateFooter
      FooterCellColor = clCaptionText
      FooterHeight = 30
    end
    object dlgItemLookup: TwwDBLookupComboDlg
      Left = 56
      Top = 8
      Width = 97
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Item List'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DESCS'#9'60'#9'DESCS'#9#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9)
      DataField = 'ITEM_CODE'
      DataSource = dsDetail
      LookupTable = SaleOrderDataManager.tbSaleItemLookup
      LookupField = 'ITEM_CODE'
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited dsMaster: TDataSource
    DataSet = SaleOrderDataManager.tbSaleQuoteHD
    Left = 496
    Top = 33
  end
  inherited dsDetail: TDataSource
    DataSet = SaleOrderDataManager.tbSaleQuoteDT
    OnDataChange = dsDetailDataChange
    Left = 464
    Top = 305
  end
  inherited ImageIconList: TImageList
    Left = 424
    Top = 112
  end
  object dsFax: TDataSource
    DataSet = SaleOrderDataManager.tbContract
    Left = 448
    Top = 180
  end
  object dsAttend: TDataSource
    DataSet = SaleOrderDataManager.tbContract
    Left = 490
    Top = 180
  end
  object wwMemoDialog1: TwwMemoDialog
    DataSource = dsDetail
    DataField = 'REMARKS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MemoAttributes = [mWordWrap]
    Caption = 'Delivery Note Edit'
    DlgLeft = 0
    DlgTop = 0
    DlgWidth = 561
    DlgHeight = 396
    Left = 416
    Top = 244
  end
end
