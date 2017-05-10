object frmDeliveryOrderWizard: TfrmDeliveryOrderWizard
  Left = 161
  Top = 220
  Width = 978
  Height = 784
  Caption = 'Delivery Order Wizard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 0
    Top = 38
    Width = 962
    Height = 19
    Align = alTop
    Caption = '1.Select Order Manage  2.Current Stock'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object cxPageControlMain: TcxPageControl
    Left = 0
    Top = 57
    Width = 962
    Height = 669
    ActivePage = cxTabSheetMeltStock
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabSlants.Kind = skCutCorner
    OnChange = cxPageControlMainChange
    OnPageChanging = cxPageControlMainPageChanging
    ClientRectBottom = 669
    ClientRectRight = 962
    ClientRectTop = 24
    object cxTabPageOrder: TcxTabSheet
      Caption = 'Order Manage'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 169
        Width = 962
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object wwDBNavigator2: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 962
        Height = 25
        DataSource = dsOrder
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alTop
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
        object wwDBNavigator2Edit: TwwNavButton
          Left = 175
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
          Index = 7
          Style = nbsEdit
        end
        object wwDBNavigator2Post: TwwNavButton
          Left = 200
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
          Index = 8
          Style = nbsPost
        end
        object wwDBNavigator2Button: TwwNavButton
          Left = 225
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Button'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsDelete
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
      object wwDBGridOrder: TwwDBGrid
        Left = 0
        Top = 25
        Width = 962
        Height = 144
        DisableThemes = False
        ControlType.Strings = (
          'ORDER_NO;CustomEdit;wwDBLookupComboDlg1;F')
        Selected.Strings = (
          'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
          'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
          'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
          'UOM'#9'4'#9'UOM'#9#9
          'BATCH_NO'#9'10'#9'BATCH_NO'#9#9
          'ORDER_QTY'#9'10'#9'ORDER_QTY'#9'F'#9
          'MARKUP'#9'10'#9'MARKUP'#9'F'#9
          'DET_QTY'#9'10'#9'DET_QTY'#9'F'#9
          'UNIT_COST'#9'10'#9'UNIT_COST'#9'F'#9
          'markupqty'#9'10'#9'markupqty'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsOrder
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 172
        Width = 962
        Height = 473
        Align = alClient
        Caption = 'All Detail:'
        TabOrder = 2
        object cxGridAll: TcxGrid
          Left = 2
          Top = 15
          Width = 958
          Height = 456
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsAll
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'DET_QTY'
                Column = cxGridDBTableView1DET_QTY
              end
              item
                Kind = skSum
                FieldName = 'TOTAL_AMT'
                Column = cxGridDBTableView1TOTAL_AMT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGridDBTableView1BUNDLE_NO: TcxGridDBColumn
              DataBinding.FieldName = 'BUNDLE_NO'
            end
            object cxGridDBTableView1ORDER_NO: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_NO'
            end
            object cxGridDBTableView1ORDER_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_DATE'
            end
            object cxGridDBTableView1ITEM_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
            end
            object cxGridDBTableView1DESCS: TcxGridDBColumn
              DataBinding.FieldName = 'DESCS'
              Width = 94
            end
            object cxGridDBTableView1UOM: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
            end
            object cxGridDBTableView1MELT_NO: TcxGridDBColumn
              DataBinding.FieldName = 'MELT_NO'
            end
            object cxGridDBTableView1REF_NO: TcxGridDBColumn
              DataBinding.FieldName = 'REF_NO'
            end
            object cxGridDBTableView1REF_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'REF_DATE'
            end
            object cxGridDBTableView1DET_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'DET_QTY'
            end
            object cxGridDBTableView1UNIT_COST: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
            end
            object cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_AMT'
            end
            object cxGridDBTableView1DELIVERY_NO: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERY_NO'
              Visible = False
            end
            object cxGridDBTableView1DELIVERY_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERY_DATE'
              Visible = False
            end
            object cxGridDBTableView1CUST_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'CUST_CODE'
              Visible = False
            end
            object cxGridDBTableView1TAX_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'TAX_AMT'
              Visible = False
            end
            object cxGridDBTableView1TAX_CD: TcxGridDBColumn
              DataBinding.FieldName = 'TAX_CD'
              Visible = False
            end
            object cxGridDBTableView1ORDER_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_QTY'
              Visible = False
            end
            object cxGridDBTableView1ONHAND_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'ONHAND_QTY'
              Visible = False
            end
            object cxGridDBTableView1MARK_UP: TcxGridDBColumn
              DataBinding.FieldName = 'MARK_UP'
              Visible = False
            end
            object cxGridDBTableView1MARK_UP_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'MARK_UP_QTY'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 40
        Top = 40
        Width = 121
        Height = 21
        DisableThemes = False
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Sale Order/Alloy'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'ORDER_NO'#9'15'#9'ORDER_NO'#9'F'
          'ORDER_DATE'#9'18'#9'ORDER_DATE'#9'F'
          'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
          'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9
          'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
          'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9#9
          'QTY'#9'10'#9'QTY'#9#9
          'DET_QTY'#9'10'#9'DET_QTY'#9#9
          'MARK_UP'#9'10'#9'MARK_UP'#9#9)
        DataField = 'ORDER_NO'
        DataSource = dsOrder
        LookupTable = SaleOrderDataManager.qryDOActiveOrderItem
        LookupField = 'ORDER_NO'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
    end
    object cxTabSheetMeltStock: TcxTabSheet
      Caption = 'Melt /Stock Select'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 305
        Width = 962
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 962
        Height = 305
        Align = alTop
        Caption = 'Melt and Stock :'
        TabOrder = 0
        object Splitter3: TSplitter
          Left = 561
          Top = 15
          Height = 288
        end
        object GroupBox2: TGroupBox
          Left = 564
          Top = 15
          Width = 396
          Height = 288
          Align = alClient
          Caption = 'Action'
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 46
            Width = 85
            Height = 13
            Caption = 'Pre Onhand Qty :'
          end
          object Label2: TLabel
            Left = 9
            Top = 71
            Width = 85
            Height = 13
            Caption = 'Current Charged:'
          end
          object Label3: TLabel
            Left = 41
            Top = 18
            Width = 53
            Height = 13
            Caption = 'Order Qty:'
          end
          object Label7: TLabel
            Left = 12
            Top = 98
            Width = 90
            Height = 13
            Caption = 'Post Onhand Qty :'
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 136
            Top = 10
            DataBinding.DataField = 'ORDER_QTY'
            DataBinding.DataSource = dsOrder
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 136
            Top = 38
            DataBinding.DataField = 'ONHAND_QTY'
            DataBinding.DataSource = dsMelt
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 136
            Top = 68
            DataBinding.DataField = 'TOTAL_CHARGED_QTY'
            DataBinding.DataSource = dsMelt
            TabOrder = 2
            Width = 121
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 128
            Width = 392
            Height = 158
            Align = alBottom
            Caption = 'Weight Input:'
            TabOrder = 3
            object lbTotalCharged: TLabel
              Left = 112
              Top = 24
              Width = 6
              Height = 13
              Caption = '0'
            end
            object Label4: TLabel
              Left = 16
              Top = 24
              Width = 70
              Height = 13
              Caption = 'Total charged:'
            end
            object Label6: TLabel
              Left = 168
              Top = 24
              Width = 16
              Height = 13
              Caption = 'Kg.'
            end
            object btnValidate: TBitBtn
              Left = 232
              Top = 128
              Width = 75
              Height = 25
              Action = ActionValidate
              Caption = 'Validate'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object btnAddWeight: TBitBtn
              Left = 310
              Top = 128
              Width = 75
              Height = 25
              Hint = 'Add weight or '
              Action = ActionAddweight
              Caption = 'Add Weights'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object cxWeightInput: TcxMemo
              Left = 8
              Top = 40
              Hint = 'Press F2 To Add weight'
              ParentShowHint = False
              Properties.ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 2
              Height = 81
              Width = 377
            end
            object btnClear: TBitBtn
              Left = 11
              Top = 128
              Width = 75
              Height = 25
              Caption = 'Clear'
              TabOrder = 3
              OnClick = btnClearClick
            end
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 136
            Top = 98
            DataBinding.DataField = 'PostOnhand'
            DataBinding.DataSource = dsMelt
            TabOrder = 4
            Width = 121
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 15
          Width = 559
          Height = 288
          Align = alLeft
          Caption = 'Select Stock:'
          TabOrder = 1
          object wwDBGridMelt: TwwDBGrid
            Left = 2
            Top = 40
            Width = 555
            Height = 246
            DisableThemes = False
            ControlType.Strings = (
              'MELT_NO;CustomEdit;wwDBLookupComboDlg2;F')
            Selected.Strings = (
              'MELT_NO'#9'10'#9'MELT_NO'#9#9
              'REF_NO'#9'15'#9'REF_NO'#9#9
              'REF_DATE'#9'18'#9'REF_DATE'#9#9
              'START_BUNDLE'#9'10'#9'START_BUNDLE'#9#9
              'TOTAL_BUNDLE'#9'10'#9'TOTAL_BUNDLE'#9#9
              'ONHAND_QTY'#9'10'#9'ONHAND_QTY'#9#9
              'TOTAL_CHARGED_QTY'#9'10'#9'TOTAL_CHARGED_QTY'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsMelt
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgShowCellHint]
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnEnter = wwDBGridMeltEnter
            OnUpdateFooter = wwDBGridMeltUpdateFooter
          end
          object wwDBNavigator1: TwwDBNavigator
            Left = 2
            Top = 15
            Width = 555
            Height = 25
            DataSource = dsMelt
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alTop
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
          object wwDBLookupComboDlg2: TwwDBLookupComboDlg
            Left = 352
            Top = 72
            Width = 121
            Height = 21
            DisableThemes = False
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Sale item stock'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'MELT_NO'#9'10'#9'MELT_NO'#9#9
              'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
              'UOM_CD'#9'4'#9'UOM_CD'#9#9
              'ONHAND_QTY'#9'10'#9'ONHAND_QTY'#9#9
              'RESERVED_QTY'#9'10'#9'RESERVED_QTY'#9#9
              'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
              'DOC_NO'#9'15'#9'DOC_NO'#9#9
              'DOC_DATE'#9'18'#9'DOC_DATE'#9#9
              'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
              'TOTAL_COST'#9'10'#9'TOTAL_COST'#9#9
              'BUNDLE_QTY'#9'10'#9'BUNDLE_QTY'#9#9)
            DataField = 'MELT_NO'
            DataSource = dsMelt
            LookupTable = SaleOrderDataManager.qryDOStock
            LookupField = 'MELT_NO'
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
          end
        end
      end
      object cxPageControlLink: TcxPageControl
        Left = 0
        Top = 308
        Width = 962
        Height = 337
        ActivePage = cxTabSheetLinkAll
        Align = alClient
        TabOrder = 1
        ClientRectBottom = 337
        ClientRectRight = 962
        ClientRectTop = 24
        object cxTabSheetLinkCurrent: TcxTabSheet
          Caption = 'Current Melt'
          ImageIndex = 0
          object cxGridDTLink: TcxGrid
            Left = 0
            Top = 0
            Width = 962
            Height = 319
            Cursor = crHandPoint
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.Append.Enabled = False
              FilterBox.CustomizeDialog = False
              DataController.DataSource = dsLink
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTY'
                  Column = cxGridDBColumn5
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Editing = False
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.ContentOdd = SystemMenuDM.cxStyle232
              Styles.Header = SystemMenuDM.cxStyle153
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'BUNDLE_NO'
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'MELT_NO'
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'REF_NO'
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'REF_DATE'
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'QTY'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
        object cxTabSheetLinkAll: TcxTabSheet
          Caption = 'All Melt'
          ImageIndex = 1
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 962
            Height = 313
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              FilterBox.CustomizeDialog = False
              DataController.DataSource = dsLinkAll
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'QTY'
                  Column = cxGridDBTableView2QTY
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.ContentOdd = SystemMenuDM.cxStyle232
              Styles.Header = SystemMenuDM.cxStyle153
              object cxGridDBTableView2BUNDLE_NO: TcxGridDBColumn
                DataBinding.FieldName = 'BUNDLE_NO'
              end
              object cxGridDBTableView2MELT_NO: TcxGridDBColumn
                DataBinding.FieldName = 'MELT_NO'
              end
              object cxGridDBTableView2REF_NO: TcxGridDBColumn
                DataBinding.FieldName = 'REF_NO'
              end
              object cxGridDBTableView2REF_DATE: TcxGridDBColumn
                DataBinding.FieldName = 'REF_DATE'
              end
              object cxGridDBTableView2QTY: TcxGridDBColumn
                DataBinding.FieldName = 'QTY'
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 726
    Width = 962
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel3'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel4'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    ParentFont = False
    SimplePanel = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 962
    Height = 38
    ButtonHeight = 30
    ButtonWidth = 41
    Caption = 'ToolBar1'
    Images = ImageList1
    TabOrder = 2
    object tbSynchronizeExit: TToolButton
      Left = 0
      Top = 2
      Hint = 'Synchronize Item'
      Action = actionSynchronize
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton5: TToolButton
      Left = 41
      Top = 2
      Width = 40
      Caption = 'ToolButton5'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbExit: TToolButton
      Left = 81
      Top = 2
      Caption = 'tbExit'
      ImageIndex = 1
      OnClick = tbExitClick
    end
    object ToolButton4: TToolButton
      Left = 122
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
  end
  object wwLookupDialog1: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 160
    Top = 24
  end
  object wwLookupDialog2: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 248
    Top = 16
  end
  object wwLookupDialog3: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 280
    Top = 16
  end
  object ImageList1: TImageList
    Left = 440
    Top = 16
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A0000000000E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A004A4A4A00E6E6E600E6E6E600E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000437B9700437B9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A0000000000E6E6E600E6E6E600B6B6B6009E9E9E0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000437B
      97004784A3005F92AC00437B9700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A00E6E6E600E6E6E600AAAAAA006E6E6E006E6E6E009E9E9E00000000000000
      00000000000000000000000000000000000000000000000000004784A3005F92
      AC005F92AC0040738D00437B9700000000000E0E0E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E6E600AAAAAA006E6E6E003232320000DCDC009E9E9E00CECECE000000
      00000000000000000000000000000000000000000000000000005F92AC004073
      8D00538BA70040738D00437B9700000000000E0E0E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600AAAAAA003232320000B97A00009662000096620000DCDC00E6E6E600E6E6
      E600000000000000000000000000000000000000000000000000538BA7004073
      8D004784A30040738D00437B9700000000000E0E0E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E60000B97A00009662000096620000966200009662000096620000DCDC000000
      00000000000000000000000000000000000000000000000000004784A3004073
      8D004784A3005F92AC00437B9700000000001010100000000000756A59000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E600E6E6
      E60032323200008A5900007B500000744B0000794E00008859000096620000CA
      CA000000000000000000000000000000000000000000000000004784A3005F92
      AC005F92AC0040738D00437B97000000000012121200A18F7300897B64006A61
      53005F574C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E600E6E6
      E600E6E6E6003232320000734A006BFFFF003E3E3E0000734A00007B4F000088
      620000A8A80000000000000000000000000000000000000000005F92AC004073
      8D00538BA70040738D00437B9700000000001A1A1A00B7A17F00A18F7300B7A1
      7F00B7A17F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E60025FFAA0000D08A0000FEFE006BFFFF003E3E3E000073
      4A0000734A000096960000000000000000000000000000000000538BA7004073
      8D004784A30040738D00437B9700000000001B1B1B0000000000B7A17F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600E6E6E600E6E6
      E600E6E6E60025FFAA0000DC920000DC920000DC920000C8850000DCDC0000FE
      FE003232320000734A00000000000000000000000000000000004784A3004073
      8D00437B9700437B97005588A300000000002121210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600E6E6E6003E3E3E0000DC920000DC920000D58D0000C6830000BE7D0000B9
      7A0000D0BB0000DCDC0000000000000000000000000000000000437B9700437B
      97005588A30084A7B9002A2A2A00262626002424240000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E600E6E6E6003E3E3E0000BD7D0000B97A0000B3760000A5
      6D0000A36B0000A76E0000CFC0000000000000000000000000005588A30084A7
      B9003232320032323200303030002E2E2E002B2B2B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E6000000000000000000009762000096
      6200009662000096620000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009662000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FDFFFFFF00000000E0FFFDFF00000000
      807FF0FF00000000803FC0FF00000000E01F807F00000000E00F807F00000000
      E00F807F00000000C00F805F00000000C00F8007000000008007800700000000
      8003805F000000000003807F00000000C001807F00000000F000807F00000000
      FC81C07F00000000FFE3FFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object dsOrder: TDataSource
    DataSet = SaleOrderDataManager.tbDeliveryDTOrder
    Left = 384
    Top = 56
  end
  object dsAll: TDataSource
    DataSet = SaleOrderDataManager.tbDeliveryDTClone
    Left = 416
    Top = 56
  end
  object dsLink: TDataSource
    DataSet = SaleOrderDataManager.tbDeliveryDTLink
    Left = 624
    Top = 40
  end
  object dsMelt: TDataSource
    DataSet = SaleOrderDataManager.tbDeliveryDTMelt
    Left = 584
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 457
    object InsertLine1: TMenuItem
      Action = ActionInsert
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteCurrentLine1: TMenuItem
      Action = ActionDelete
      Enabled = False
    end
    object DeleteAll1: TMenuItem
      Action = ActionDeleteAll
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Action = ActionRefresh
    end
  end
  object ActionManager1: TActionManager
    Images = ImageList1
    Left = 554
    Top = 388
    StyleName = 'XP Style'
    object ActionDelete: TAction
      Category = 'ItemManage'
      Caption = 'Delete Line'
      ShortCut = 16452
      OnExecute = ActionDeleteExecute
    end
    object ActionInsert: TAction
      Category = 'ItemManage'
      Caption = 'Insert Line'
      ShortCut = 118
      OnExecute = ActionInsertExecute
    end
    object ActionRefresh: TAction
      Category = 'ItemManage'
      Caption = 'Refresh'
      ShortCut = 116
      OnExecute = ActionRefreshExecute
    end
    object actionSynchronize: TAction
      Category = 'Synchronize'
      Caption = 'Synchronize Item'
      ImageIndex = 0
      OnExecute = actionSynchronizeExecute
    end
    object ActionDeleteAll: TAction
      Category = 'ItemManage'
      Caption = 'Delete All'
      OnExecute = ActionDeleteAllExecute
    end
    object ActionAddweight: TAction
      Category = 'Synchronize'
      Caption = 'Add Weights'
      ShortCut = 113
      OnExecute = ActionAddweightExecute
    end
    object ActionValidate: TAction
      Category = 'Synchronize'
      Caption = 'Validate'
      OnExecute = ActionValidateExecute
    end
  end
  object dsLinkAll: TDataSource
    DataSet = SaleOrderDataManager.tbDeliveryDTLinkAll
    Left = 648
    Top = 469
  end
  object dsMeltSummary: TDataSource
    DataSet = SaleOrderDataManager.qryDeliveryDTMeltSummary
    Left = 680
    Top = 32
  end
end
