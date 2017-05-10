inherited MaterialRequestForm: TMaterialRequestForm
  Left = 414
  Top = 201
  Width = 805
  Height = 602
  Caption = 'Material Request'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 241
    Width = 789
  end
  inherited StatusBar1: TfcStatusBar
    Top = 544
    Width = 789
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
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
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited panel1: TPanel
    Top = 244
    Width = 789
    Height = 300
    inherited wwDBGrid1: TwwDBGrid
      Top = 33
      Width = 787
      Height = 266
      ControlType.Strings = (
        'LOT_NO;CustomEdit;lookupLotNo;F'
        'REF_NO;CustomEdit;LookupComboDlgStockDetailLink;F')
      Selected.Strings = (
        'LOT_NO'#9'20'#9'Purchase Order'
        'ITEM_CODE'#9'11'#9'Stock Code'
        'ITEM_DESCS'#9'27'#9'Description'
        'UOM'#9'8'#9'UOM'
        'REF_NO'#9'15'#9'GRN No.'
        'REF_DATE'#9'12'#9'GRN Date'
        'UNIT_COST'#9'10'#9'UNIT COST'
        'ONHAND_QTY'#9'12'#9'ONHAND QTY'
        'QTY'#9'10'#9'QTY'
        'TOTAL_COST'#9'10'#9'TOTAL COST')
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnDblClick = wwDBGrid1DblClick
      OnUpdateFooter = wwDBGrid1UpdateFooter
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 787
      Height = 32
      Align = alTop
      TabOrder = 1
      object wwDBNavigator2: TwwDBNavigator
        Left = 0
        Top = 0
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
    object lookupLotNo: TwwDBLookupComboDlg
      Left = 80
      Top = 72
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'LOT_NO'
      DataSource = dsDetail
      LookupTable = WarehouseDataManager.qryStockOnhandDetail
      LookupField = 'LOT_CD'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object LookupComboDlgStockDetailLink: TwwDBLookupComboDlg
      Left = 224
      Top = 72
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'REF_NO'#9'15'#9'REF_NO'#9#9
        'REF_DATE'#9'18'#9'REF_DATE'#9#9
        'LOT_CD'#9'15'#9'LOT_CD'#9#9
        'ONHAND_QTY'#9'10'#9'ONHAND_QTY'#9#9
        'RESERVED_QTY'#9'10'#9'RESERVED_QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9)
      DataField = 'REF_NO'
      DataSource = dsDetail
      LookupTable = WarehouseDataManager.qryStockOnhandDetailLink
      LookupField = 'REF_NO'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited plHeader: TPanel
    Width = 789
    Height = 208
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Request No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 232
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Request Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 434
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Melt No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 434
      Top = 43
      Width = 36
      Height = 13
      Caption = 'Alloy:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 38
      Width = 72
      Height = 13
      Caption = 'Description:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 67
      Width = 54
      Height = 13
      Caption = 'Issue By:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 14
      Top = 86
      Width = 66
      Height = 13
      Caption = 'Request By:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 14
      Top = 117
      Width = 42
      Height = 13
      Caption = 'Remark:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 480
      Top = 41
      Width = 113
      Height = 17
      Color = clAqua
      DataField = 'ALLOY_CODE'
      DataSource = dsMaster
      ParentColor = False
    end
    object edDocNo: TwwDBEdit
      Left = 96
      Top = 13
      Width = 121
      Height = 21
      DataField = 'DOC_NO'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 307
      Top = 13
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'DOC_DATE'
      DataSource = dsMaster
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 480
      Top = 13
      Width = 113
      Height = 21
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MELT_NO'#9'10'#9'MELT NO'#9#9
        'PLAN_DOC'#9'15'#9'PLAN_DOC'#9#9
        'PLAN_DATE'#9'18'#9'PLAN_DATE'#9#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9)
      DataField = 'MELT_NO'
      DataSource = dsMaster
      LookupTable = WarehouseDataManager.qryUnClosedRawmaterialPlan
      LookupField = 'MELT_NO'
      Navigator = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 96
      Top = 33
      Width = 332
      Height = 21
      DataField = 'DESCS'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 96
      Top = 59
      Width = 332
      Height = 21
      DataField = 'ISSUE_BY'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 96
      Top = 83
      Width = 332
      Height = 21
      DataField = 'REQ_BY'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBMemo1: TDBMemo
      Left = 96
      Top = 110
      Width = 332
      Height = 89
      DataField = 'REMARKS'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 440
      Top = 112
      Width = 305
      Height = 81
      Caption = 'Reset Stock Reserved'
      TabOrder = 7
      object Label9: TLabel
        Left = 8
        Top = 32
        Width = 84
        Height = 13
        Caption = 'Year Of Purchase'
      end
      object Label10: TLabel
        Left = 120
        Top = 32
        Width = 92
        Height = 13
        Caption = 'Month Of Purchase'
      end
      object monthOfPO: TcxSpinEdit
        Left = 120
        Top = 49
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 0
        Value = 1
        Width = 89
      end
      object yearOfPO: TcxSpinEdit
        Left = 8
        Top = 49
        Properties.MaxValue = 2020.000000000000000000
        Properties.MinValue = 2006.000000000000000000
        TabOrder = 1
        Value = 2006
        Width = 97
      end
      object btStockReservedReset: TcxButton
        Left = 220
        Top = 44
        Width = 75
        Height = 25
        Caption = 'Reset'
        TabOrder = 2
        OnClick = btStockReservedResetClick
        LookAndFeel.Kind = lfOffice11
      end
    end
  end
  inherited plToolBar: TPanel
    Width = 789
    object wwDBNavigator1: TwwDBNavigator
      Left = 1
      Top = 1
      Width = 150
      Height = 31
      DataSource = dsMaster
      Flat = False
      MoveBy = 1
      ShowHint = True
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Align = alLeft
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
    end
  end
  object PopupMenu1: TPopupMenu [5]
    Left = 280
    Top = 306
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Insert1: TMenuItem
      Caption = 'New Record'
      OnClick = Insert1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DeleteAll1: TMenuItem
      Action = DeleteAllAction
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object DeleteAll2: TMenuItem
      Action = actExcel
    end
  end
  object popupMenusActionMgr: TActionManager [6]
    Left = 344
    Top = 312
    StyleName = 'XP Style'
    object DeleteAllAction: TAction
      Caption = 'Delete All'
      OnExecute = DeleteAllActionExecute
    end
    object actExit: TAction
      Caption = 'actExit'
      ShortCut = 32776
      OnExecute = actExitExecute
    end
    object actExcel: TAction
      Caption = 'Export to Excel'
      OnExecute = actExcelExecute
    end
  end
  inherited dsMaster: TDataSource
    DataSet = WarehouseDataManager.tbMaterialRequestHD
    Top = 73
  end
  inherited dsDetail: TDataSource
    DataSet = WarehouseDataManager.tbMaterialRequestDT
    Left = 464
    Top = 297
  end
end
