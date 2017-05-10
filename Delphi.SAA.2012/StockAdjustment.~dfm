inherited StockAdjustmentForm: TStockAdjustmentForm
  Left = 399
  Top = 104
  Width = 723
  Height = 452
  Caption = 'Stock adjustment '
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 198
    Width = 715
  end
  inherited StatusBar1: TfcStatusBar
    Top = 398
    Width = 715
  end
  inherited panel1: TPanel
    Top = 201
    Width = 715
    inherited wwDBGrid1: TwwDBGrid
      Width = 713
      Height = 167
      ControlType.Strings = (
        'ITEM_CODE;CustomEdit;DBLookupComboDlgStock;F'
        'LOT_NO;CustomEdit;DBLookupComboDlgLot;F'
        'REF_NO;CustomEdit;DBLookupComboDlgGRN;F')
      Selected.Strings = (
        'ITEM_CODE'#9'15'#9'ITEM CODE'#9'F'
        'STOCK_DESCS'#9'60'#9'Description'#9'T'
        'UOM_CD'#9'4'#9'UOM CD'#9'T'
        'LOT_NO'#9'15'#9'LOT NO'#9'F'
        'PURCHASE_DATE'#9'18'#9'PURCHASE DATE'#9'T'
        'REF_NO'#9'15'#9'REF NO'#9'F'
        'REF_DATE'#9'18'#9'REF DATE'#9'T'
        'ONHAND_QTY'#9'10'#9'ONHAND QTY'#9'T'
        'QTY'#9'10'#9'QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT COST'#9'F'
        'TOTAL_COST'#9'10'#9'TOTAL COST'#9'F'
        'VQTY'#9'10'#9'VQTY'#9'T'#9)
      TabOrder = 1
      OnDrawDataCell = wwDBGrid1DrawDataCell
    end
    object Panel2: TPanel
      Left = 1
      Top = 168
      Width = 713
      Height = 28
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 0
      object wwDBNavigator2: TwwDBNavigator
        Left = 1
        Top = 1
        Width = 350
        Height = 26
        DataSource = dsDetail
        ShowHint = True
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        ParentShowHint = False
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
    object DBLookupComboDlgStock: TwwDBLookupComboDlg
      Tag = -1
      Left = 64
      Top = 24
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Stock Code'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'STOCK_CD'#9'15'#9'STOCK Code'#9'F'
        'EN_DESCS'#9'150'#9'Description'#9'F')
      DataField = 'ITEM_CODE'
      DataSource = dsDetail
      LookupTable = StockAdjustDataModule.qryStockMaster
      LookupField = 'STOCK_CD'
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object DBLookupComboDlgLot: TwwDBLookupComboDlg
      Tag = -1
      Left = 208
      Top = 24
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Stock Code'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'LOT_CD'#9'15'#9'LOT CD'#9'F'
        'PURCHASE_DATE'#9'18'#9'PURCHASE DATE'#9'F'
        'UNIT_COST'#9'10'#9'UNIT COST'#9'F'
        'ONHAND_QTY'#9'10'#9'ONHAND QTY'#9'F'
        'RESERVED_QTY'#9'10'#9'RESERVED QTY'#9'F')
      DataField = 'LOT_NO'
      DataSource = dsDetail
      LookupTable = StockAdjustDataModule.qryOnhandDetail
      LookupField = 'LOT_CD'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object DBLookupComboDlgGRN: TwwDBLookupComboDlg
      Tag = -1
      Left = 376
      Top = 24
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'GRN List'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'REF_NO'#9'15'#9'GRN NO'#9'F'#9
        'REF_DATE'#9'18'#9'GRN DATE'#9'F'#9
        'UNIT_COST'#9'10'#9'UNIT COST'#9'F'
        'ONHAND_QTY'#9'10'#9'ONHAND QTY'#9'F'#9
        'RESERVED_QTY'#9'10'#9'RESERVED QTY'#9'F'#9)
      DataField = 'REF_NO'
      DataSource = dsDetail
      LookupTable = StockAdjustDataModule.qryOnhandLink
      LookupField = 'REF_NO'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited plHeader: TPanel
    Top = 28
    Width = 715
    Height = 170
    Color = clActiveBorder
    object GroupBox1: TGroupBox
      Left = 472
      Top = 1
      Width = 242
      Height = 168
      Align = alRight
      Caption = 'Adjust Options:'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object Label5: TLabel
        Left = 13
        Top = 26
        Width = 37
        Height = 14
        Caption = 'Option :'
      end
      object lbMeltNo: TLabel
        Left = 13
        Top = 130
        Width = 38
        Height = 14
        Caption = 'Melt No:'
        Visible = False
      end
      object Label6: TLabel
        Left = 13
        Top = 57
        Width = 29
        Height = 14
        Caption = 'Mode:'
      end
      object wwDBComboBoxTrxType: TwwDBComboBox
        Left = 60
        Top = 23
        Width = 121
        Height = 22
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'TRX_TYPE'
        DataSource = dsMaster
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Melt Adjust'#9'MA'
          'Normal Adjust'#9'SA')
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        OnChange = wwDBComboBoxTrxTypeChange
      end
      object wwDBLookupComboMeltNo: TwwDBLookupCombo
        Left = 60
        Top = 128
        Width = 121
        Height = 22
        DisableThemes = False
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'MELT_NO'#9'10'#9'MELT NO'#9'T')
        DataField = 'MELT_NO'
        DataSource = dsMaster
        LookupTable = StockAdjustDataModule.qryUnClosedRawmaterialPlan
        LookupField = 'MELT_NO'
        Navigator = False
        TabOrder = 2
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBComboBoxMode: TwwDBComboBox
        Left = 60
        Top = 47
        Width = 121
        Height = 22
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'MODE'
        DataSource = dsMaster
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'In (+)'#9'I'
          'Out(-)'#9'O'
          'Cost'#9'C')
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 471
      Height = 168
      Align = alClient
      Caption = 'General '
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object Label2: TLabel
        Left = 216
        Top = 24
        Width = 82
        Height = 14
        Caption = 'Adjustment Date:'
      end
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 67
        Height = 14
        Caption = 'Document No:'
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 60
        Height = 14
        Caption = 'Description :'
      end
      object Label4: TLabel
        Left = 8
        Top = 81
        Width = 48
        Height = 14
        Caption = 'Remarks :'
      end
      object wwDBEdit1: TwwDBEdit
        Left = 88
        Top = 24
        Width = 121
        Height = 22
        DataField = 'DOC_NO'
        DataSource = dsMaster
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 312
        Top = 24
        Width = 121
        Height = 22
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DOC_DATE'
        DataSource = dsMaster
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyy'
      end
      object wwDBEdit2: TwwDBEdit
        Left = 88
        Top = 48
        Width = 345
        Height = 21
        DataField = 'DESCS'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object DBMemo1: TDBMemo
        Left = 88
        Top = 72
        Width = 345
        Height = 89
        DataField = 'REMARKS'
        DataSource = dsMaster
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inherited plToolBar: TPanel
    Width = 715
    Height = 28
    object wwDBNavigator1: TwwDBNavigator
      Left = 539
      Top = 1
      Width = 175
      Height = 26
      DataSource = dsMaster
      Options = []
      ShowHint = True
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Align = alRight
      ParentShowHint = False
      object wwDBNavigator1Button1: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Button1'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 25
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
        Index = 1
        Style = nbsDelete
      end
      object wwDBNavigator1Edit: TwwNavButton
        Left = 50
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
        Index = 2
        Style = nbsEdit
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 75
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
        Index = 3
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 100
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
        Index = 4
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 125
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
        Index = 5
        Style = nbsRefresh
      end
      object wwDBNavigator1Button: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
        ImageIndex = -1
        NumGlyphs = 1
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Button'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsCustom
      end
    end
  end
end
