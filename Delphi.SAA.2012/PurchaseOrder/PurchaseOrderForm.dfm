inherited frmPurchaseOrder: TfrmPurchaseOrder
  Left = 616
  Top = 199
  Width = 840
  Height = 613
  Caption = 'Purchase Order Transaction'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 217
    Width = 824
  end
  inherited StatusBar1: TfcStatusBar
    Top = 555
    Width = 824
  end
  inherited panel1: TPanel
    Top = 220
    Width = 824
    Height = 335
    inherited wwDBGrid1: TwwDBGrid
      Top = 31
      Width = 822
      Height = 202
      ControlType.Strings = (
        'ITEM_CODE;CustomEdit;dlgOrderItem;F'
        'DISCS_CD;CustomEdit;dlgDiscount;F')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'LINE_NO'#9'F'#9
        'ITEM_CODE'#9'15'#9'ITEM'#9'F'#9
        'ITEM_DESCS'#9'60'#9'Description'#9'F'#9
        'MARKUP'#9'10'#9'MARKUP(%)'#9'F'#9
        'QTY'#9'10'#9'QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'DISCS_CD'#9'2'#9'Discount%'#9'F'#9
        'DISCS_RATE'#9'10'#9'DISCS_RATE'#9'T'#9
        'DISCS_AMT'#9'10'#9'Discount'#9'F'#9
        'BASE_AMT'#9'10'#9'Base Amount'#9'T'#9
        'TAX_RATE'#9'10'#9'TAX_RATE'#9'F'#9
        'TAX_AMT'#9'10'#9'Tax Amount'#9'T'#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9'T'#9)
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnUpdateFooter = wwDBGrid1UpdateFooter
      FooterHeight = 25
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 822
      Height = 30
      Align = alTop
      TabOrder = 1
      object wwDBNavigator2: TwwDBNavigator
        Left = 2
        Top = 3
        Width = 350
        Height = 25
        DataSource = dsDetail
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        object wwDBNavigator2First: TwwNavButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwDBNavigator2PriorPage: TwwNavButton
          Left = 25
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object wwDBNavigator2Prior: TwwNavButton
          Left = 50
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object wwDBNavigator2Next: TwwNavButton
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object wwDBNavigator2NextPage: TwwNavButton
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object wwDBNavigator2Last: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object wwDBNavigator2Insert: TwwNavButton
          Left = 150
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object wwDBNavigator2Delete: TwwNavButton
          Left = 175
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object wwDBNavigator2Edit: TwwNavButton
          Left = 200
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object wwDBNavigator2Post: TwwNavButton
          Left = 225
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsPost
        end
        object wwDBNavigator2Cancel: TwwNavButton
          Left = 250
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 10
          Style = nbsCancel
        end
        object wwDBNavigator2Refresh: TwwNavButton
          Left = 275
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Refresh'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
        object wwDBNavigator2SaveBookmark: TwwNavButton
          Left = 300
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Bookmark current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2SaveBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 12
          Style = nbsSaveBookmark
        end
        object wwDBNavigator2RestoreBookmark: TwwNavButton
          Left = 325
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Go back to saved bookmark'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2RestoreBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 13
          Style = nbsRestoreBookmark
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 233
      Width = 822
      Height = 101
      Align = alBottom
      BevelOuter = bvLowered
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 501
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Base Amount'
      end
      object Label13: TLabel
        Left = 506
        Top = 34
        Width = 58
        Height = 13
        Caption = 'Tax Amount'
      end
      object Label14: TLabel
        Left = 483
        Top = 56
        Width = 81
        Height = 13
        Caption = 'Discount Amount'
      end
      object Label15: TLabel
        Left = 500
        Top = 77
        Width = 64
        Height = 13
        Caption = 'Total Amount'
      end
      object wwDBEdit7: TwwDBEdit
        Left = 587
        Top = 8
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'BASE_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit8: TwwDBEdit
        Left = 587
        Top = 29
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'TAX_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit9: TwwDBEdit
        Left = 587
        Top = 50
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'DIS_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit10: TwwDBEdit
        Left = 587
        Top = 71
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'TOTAL_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dlgOrderItem: TwwDBLookupComboDlg
      Left = 176
      Top = 88
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Order Item'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'STOCK_CD'#9'15'#9'STOCK_CD'#9#9
        'EN_DESCS'#9'150'#9'EN_DESCS'#9#9
        'TH_DESCS'#9'150'#9'TH_DESCS'#9'F'
        'UNIT_COST'#9'10'#9'UNIT_COST'#9'F'#9)
      DataField = 'ITEM_CODE'
      DataSource = dsDetail
      LookupTable = PurchaseOrderDM.qryOrderItemLookkup
      LookupField = 'STOCK_CD'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dlgDiscount: TwwDBLookupComboDlg
      Left = 424
      Top = 88
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Discount'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DISCS_CD'#9'2'#9'Code'#9#9
        'DISCS_RATE'#9'10'#9'Rate'#9#9
        'DESCS'#9'18'#9'DESCS'#9#9)
      DataField = 'DISCS_CD'
      DataSource = dsDetail
      LookupTable = PurchaseOrderDM.qryDiscount
      LookupField = 'DISCS_CD'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited plHeader: TPanel
    Top = 27
    Width = 824
    Height = 190
    object Label1: TLabel
      Left = 4
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Order No'
    end
    object Label2: TLabel
      Left = 183
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Order Date'
    end
    object Label3: TLabel
      Left = 376
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Ref No'
    end
    object Label4: TLabel
      Left = 548
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Ref Date'
    end
    object Label5: TLabel
      Left = 9
      Top = 70
      Width = 39
      Height = 13
      Caption = 'Mark Up'
    end
    object Label6: TLabel
      Left = 168
      Top = 72
      Width = 65
      Height = 13
      Caption = 'Delivery Date'
    end
    object Label7: TLabel
      Left = 10
      Top = 46
      Width = 38
      Height = 13
      Caption = 'Supplier'
    end
    object Label8: TLabel
      Left = 614
      Top = 45
      Width = 56
      Height = 13
      Caption = 'Credit Term'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 36
      Height = 13
      Caption = 'Remark'
    end
    object Bevel1: TBevel
      Left = 128
      Top = 41
      Width = 473
      Height = 22
    end
    object DBText1: TDBText
      Left = 137
      Top = 44
      Width = 456
      Height = 17
      DataField = 'Name'
      DataSource = dsMaster
    end
    object wwDBEdit1: TwwDBEdit
      Left = 52
      Top = 16
      Width = 121
      Height = 21
      DataField = 'ORDER_NO'
      DataSource = dsMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 241
      Top = 16
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ORDER_DATE'
      DataSource = dsMaster
      Date = 37966.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object wwDBEdit2: TwwDBEdit
      Left = 417
      Top = 16
      Width = 121
      Height = 21
      DataField = 'REF_NO'
      DataSource = dsMaster
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 599
      Top = 16
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'REF_DATE'
      DataSource = dsMaster
      Date = 37966.000000000000000000
      Epoch = 1950
      Time = 0.612418981480004700
      ShowButton = True
      TabOrder = 3
    end
    object wwDBLookupComboDlg1: TwwDBLookupComboDlg
      Left = 52
      Top = 41
      Width = 76
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Supplier'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'NAME'#9'60'#9'NAME'#9#9
        'SUPPLIER_CD'#9'10'#9'SUPPLIER_CD'#9#9)
      DataField = 'SUPP_CODE'
      DataSource = dsMaster
      LookupTable = PurchaseOrderDM.tbSupplier
      LookupField = 'SUPPLIER_CD'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 675
      Top = 40
      Width = 43
      Height = 21
      DataField = 'TERM_OF_PAYMENT'
      DataSource = dsMaster
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 52
      Top = 64
      Width = 72
      Height = 21
      DataField = 'MARKUP'
      DataSource = dsMaster
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker3: TwwDBDateTimePicker
      Left = 240
      Top = 64
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DELIVERY_DATE'
      DataSource = dsMaster
      Date = 37972.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 7
    end
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 52
      Top = 88
      Width = 309
      Height = 89
      AutoURLDetect = False
      DataField = 'REMARKS'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PrintJobName = 'Delphi 7'
      TabOrder = 8
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      RichEditVersion = 2
      Data = {
        850000007B5C727466315C616E73695C616E73696370673837345C6465666630
        5C6465666C616E67313035347B5C666F6E7474626C7B5C66305C666E696C5C66
        63686172736574323232205461686F6D613B7D7D0D0A5C766965776B696E6434
        5C7563315C706172645C66305C6673313620777744425269636845646974315C
        7061720D0A7D0D0A00}
    end
    object cxGroupBox2: TcxGroupBox
      Left = 368
      Top = 64
      Cursor = crHandPoint
      Hint = 'Click Here to mange contract'
      Caption = 'Fax / Attend:'
      ParentShowHint = False
      ShowHint = True
      Style.Shadow = True
      TabOrder = 9
      OnDblClick = cxGroupBox2DblClick
      Height = 110
      Width = 353
      object CBFAXTO: TcxDBLookupComboBox
        Left = 8
        Top = 24
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
        Width = 313
      end
      object CBCCTO: TcxDBLookupComboBox
        Left = 8
        Top = 59
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
        Width = 313
      end
    end
  end
  inherited plToolBar: TPanel
    Width = 824
    Height = 27
    object wwDBNavigator1: TwwDBNavigator
      Left = 3
      Top = 1
      Width = 350
      Height = 25
      DataSource = dsMaster
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      object wwDBNavigator1First: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to first record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1First'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsFirst
      end
      object wwDBNavigator1PriorPage: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move backward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1PriorPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPriorPage
      end
      object wwDBNavigator1Prior: TwwNavButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to prior record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Prior'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Next'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsNext
      end
      object wwDBNavigator1NextPage: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move forward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1NextPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsNextPage
      end
      object wwDBNavigator1Last: TwwNavButton
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Last'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsLast
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 175
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 7
        Style = nbsDelete
      end
      object wwDBNavigator1Edit: TwwNavButton
        Left = 200
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Edit current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Edit'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 8
        Style = nbsEdit
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 225
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 9
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 250
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 10
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 275
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Refresh'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 11
        Style = nbsRefresh
      end
      object wwDBNavigator1SaveBookmark: TwwNavButton
        Left = 300
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Bookmark current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1SaveBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 12
        Style = nbsSaveBookmark
      end
      object wwDBNavigator1RestoreBookmark: TwwNavButton
        Left = 325
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Go back to saved bookmark'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1RestoreBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 13
        Style = nbsRestoreBookmark
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = PurchaseOrderDM.tbPurchaseOrderHeader
  end
  inherited dsDetail: TDataSource
    DataSet = PurchaseOrderDM.tbPurchaseOrderDetail
  end
  object dsPurchaseSummary: TDataSource
    DataSet = PurchaseOrderDM.qryOrderSummary
    Left = 417
    Top = 472
  end
  object dsFax: TDataSource
    DataSet = PurchaseOrderDM.tbContract
    Left = 448
    Top = 180
  end
  object dsAttend: TDataSource
    DataSet = PurchaseOrderDM.tbContract
    Left = 490
    Top = 180
  end
end
