inherited frmCXSaleOrder: TfrmCXSaleOrder
  Left = 81
  Top = 123
  Width = 997
  Height = 575
  Caption = 'Sale Order Management'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 281
    Width = 981
  end
  inherited lbTitle: TLabel
    Width = 981
  end
  inherited plHeader: TPanel
    Width = 981
    Height = 265
    TabOrder = 1
    object Label1: TLabel [0]
      Left = 16
      Top = 43
      Width = 48
      Height = 13
      Caption = 'Order No:'
    end
    object Label2: TLabel [1]
      Left = 152
      Top = 43
      Width = 58
      Height = 13
      Caption = 'Order Date:'
    end
    object Label3: TLabel [2]
      Left = 16
      Top = 67
      Width = 37
      Height = 13
      Caption = 'Ref No:'
    end
    object Label4: TLabel [3]
      Left = 160
      Top = 75
      Width = 47
      Height = 13
      Caption = 'Ref Date:'
    end
    object Bevel1: TBevel [4]
      Left = 2
      Top = 31
      Width = 977
      Height = 2
      Align = alTop
    end
    inherited ToolBar: TToolBar
      Width = 977
    end
    object cxGroupBox1: TcxGroupBox
      Left = 16
      Top = 91
      Caption = 'To Customer:'
      Style.Shadow = True
      TabOrder = 1
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
      TabOrder = 2
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
      Left = 64
      Top = 38
      DataBinding.DataField = 'ORDER_NO'
      DataBinding.DataSource = dsMaster
      Style.Shadow = True
      TabOrder = 3
      Width = 81
    end
    object edDocDate: TcxDBDateEdit
      Left = 216
      Top = 35
      DataBinding.DataField = 'ORDER_DATE'
      DataBinding.DataSource = dsMaster
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 97
    end
    object edRefNo: TcxDBTextEdit
      Left = 64
      Top = 64
      DataBinding.DataField = 'REF_NO'
      DataBinding.DataSource = dsMaster
      Style.Shadow = True
      TabOrder = 5
      Width = 80
    end
    object edRefDate: TcxDBDateEdit
      Left = 216
      Top = 64
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
      TabOrder = 6
      Width = 97
    end
    object cxGroupBox3: TcxGroupBox
      Left = 16
      Top = 196
      Caption = 'Remark:'
      Style.Shadow = True
      TabOrder = 7
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
  inherited StatusBar1: TfcStatusBar
    Top = 517
    Width = 981
  end
  inherited panel1: TPanel
    Top = 284
    Width = 981
    Height = 233
    TabOrder = 0
    inherited wwDBGrid1: TwwDBGrid
      Width = 979
      Height = 231
      ControlType.Strings = (
        'ITEM_CODE;CustomEdit;dlgItemLookup;F')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'NO#'#9'F'#9
        'ITEM_CODE'#9'15'#9'ITEM CODE'#9'F'#9
        'ITEM_DESCS'#9'45'#9'DESCS'#9'F'#9
        'UOM'#9'4'#9'UOM'#9'T'#9
        'TAX_RATE'#9'10'#9'TAX_RATE'#9#9
        'MARK_UP'#9'10'#9'MARK_UP'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'BASE_AMT'#9'10'#9'BASE_AMT'#9#9
        'DISCS_AMT'#9'10'#9'DISCS_AMT'#9#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9#9
        'TAX_AMT'#9'10'#9'TAX_AMT'#9#9
        'REMARKS'#9'60'#9'Delivery'#9'F')
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnColEnter = wwDBGrid1ColEnter
      OnUpdateFooter = wwDBGrid1UpdateFooter
      FooterColor = clBtnHighlight
      FooterHeight = 35
    end
    object dlgItemLookup: TwwDBLookupComboDlg
      Left = 64
      Top = 16
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
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
        'DESCS'#9'60'#9'DESCS'#9#9)
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
  inherited dsDetail: TDataSource
    DataSet = SaleOrderDataManager.tbSaleOrderDT
    Left = 384
    Top = 305
  end
  object wwMemoDialog1: TwwMemoDialog
    DataSource = dsDetail
    DataField = 'REMARKS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DlgLeft = 0
    DlgTop = 0
    DlgWidth = 561
    DlgHeight = 396
    Left = 552
    Top = 372
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
end
