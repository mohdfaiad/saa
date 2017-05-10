inherited frmARDebitNote: TfrmARDebitNote
  Left = 179
  Top = 166
  Width = 1015
  Height = 608
  Cursor = crHandPoint
  Caption = 'AR Debit Note'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Width = 1007
  end
  inherited plToolBar: TPanel [1]
    Width = 1007
    object wwDBNavigator1: TwwDBNavigator
      Left = 6
      Top = 3
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
  inherited StatusBar1: TfcStatusBar [2]
    Top = 554
    Width = 1007
  end
  inherited panel1: TPanel [3]
    Width = 1007
    Height = 324
    inherited wwDBGrid1: TwwDBGrid
      Top = 25
      Width = 1005
      Height = 227
      ControlType.Strings = (
        'INVOICE_NO;CustomEdit;dlgUnPaidInvoice;F')
      Selected.Strings = (
        'LINE_NO'#9'3'#9'#'#9#9
        'INVOICE_NO'#9'11'#9'INVOICE_NO'#9#9
        'INVOICE_DATE'#9'10'#9'INVOICE_DATE'#9#9
        'ITEM_CODE'#9'9'#9'ITEM_CODE'#9#9
        'ITEM_DESCS'#9'30'#9'ITEM_DESCS'#9#9
        'UOM_CD'#9'7'#9'UOM_CD'#9#9
        'INVOICE_AMOUNT'#9'15'#9'INVOICE_AMOUNT'#9'T'
        'QTY'#9'10'#9'QTY'#9'F'#9
        'UNIT_COST'#9'9'#9'UNIT_COST'#9#9
        'BASE_AMOUNT'#9'11'#9'Issue Amount'#9#9
        'TAX_AMOUNT'#9'11'#9'TAX_AMOUNT'#9#9
        'TOTAL_AMOUNT'#9'13'#9'TOTAL_AMOUNT'#9#9
        'VARIANT_AMOUNT'#9'15'#9'VARIANT_AMOUNT'#9#9)
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnDrawDataCell = wwDBGrid1DrawDataCell
      OnUpdateFooter = wwDBGrid1UpdateFooter
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1005
      Height = 24
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
    object dlgUnPaidInvoice: TwwDBLookupComboDlg
      Left = 208
      Top = 88
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
        'DOC_NO'#9'15'#9'Invoice '#9'F'
        'DOC_DATE'#9'18'#9'Invoice Date'#9'F'
        'ORDER_NO'#9'15'#9'OrderNo'#9'F'
        'ITEMCODE'#9'15'#9'Item'#9'F'
        'UNITCOST'#9'10'#9'UNITCOST'#9'F'
        'ITEMDESCS'#9'60'#9'Description'#9'F'
        'BASEAMOUNT'#9'10'#9'BASEAMOUNT'#9'F')
      DataField = 'INVOICE_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryUnpaidInvoice
      LookupField = 'DOC_NO'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 252
      Width = 1005
      Height = 71
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 3
      object Bevel1: TBevel
        Left = 101
        Top = 16
        Width = 636
        Height = 33
      end
      object Label4: TLabel
        Left = 6
        Top = 24
        Width = 41
        Height = 23
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ldbBahtText: TwwDBEdit
        Left = 105
        Top = 20
        Width = 624
        Height = 35
        BorderStyle = bsNone
        Color = clYellow
        DataField = 'BATHTEXT'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  inherited plHeader: TPanel [4]
    Width = 1007
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 67
      Height = 14
      Caption = 'Document No:'
    end
    object Label2: TLabel
      Left = 216
      Top = 24
      Width = 76
      Height = 14
      Caption = 'Document Date:'
    end
    object Label3: TLabel
      Left = 424
      Top = 24
      Width = 49
      Height = 14
      Caption = 'Trx Type :'
    end
    object Label7: TLabel
      Left = 32
      Top = 137
      Width = 39
      Height = 14
      Caption = 'Remark:'
    end
    object wwDBGrid2: TwwDBGrid
      Left = 208
      Top = 69
      Width = 457
      Height = 120
      DisableThemes = False
      Selected.Strings = (
        'DOC_NO'#9'15'#9'Invoice '#9#9
        'DOC_DATE'#9'18'#9'Invoice Date'#9#9
        'ORDER_NO'#9'15'#9'OrderNo'#9#9
        'ITEMCODE'#9'15'#9'Item'#9#9
        'UNITCOST'#9'10'#9'UNITCOST'#9#9
        'ITEMDESCS'#9'60'#9'Description'#9#9
        'BASEAMOUNT'#9'10'#9'BASEAMOUNT'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsUnpaidInvoice
      TabOrder = 7
      TitleAlignment = taLeftJustify
      TitleFont.Charset = THAI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      Visible = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 80
      Top = 24
      Width = 121
      Height = 22
      DataField = 'DOC_NO'
      DataSource = dsMaster
      Frame.NonFocusStyle = efsFrameSingle
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 80
      Top = 72
      Width = 585
      Height = 113
      AutoURLDetect = False
      DataField = 'REMARK'
      DataSource = dsMaster
      PrintJobName = 'Delphi 7'
      TabOrder = 6
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
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 296
      Top = 24
      Width = 121
      Height = 22
      AutoFillDateAndTime = True
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
    end
    object cbTrxTypeLookup: TwwDBLookupCombo
      Left = 476
      Top = 23
      Width = 61
      Height = 22
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRX_TYPE'#9'2'#9'Trx Type'#9#9
        'DESCRIPTION'#9'60'#9'Description'#9#9)
      DataField = 'TRX_TYPE'
      DataSource = dsMaster
      LookupTable = AccountReceiveDM.tbTransactionType
      LookupField = 'TRX_TYPE'
      Navigator = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 544
      Top = 24
      Width = 121
      Height = 22
      DataField = 'DESCS'
      DataSource = dsMaster
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBLookupComboDlg1: TwwDBLookupComboDlg
      Left = 80
      Top = 48
      Width = 121
      Height = 22
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'NAME'#9'60'#9'NAME'#9#9
        'DEBTOR_ACCT'#9'10'#9'DEBTOR_ACCT'#9#9
        'TH_NAME'#9'150'#9'TH_NAME'#9#9)
      DataField = 'DEBTOR_ACCT'
      DataSource = dsMaster
      LookupTable = AccountReceiveDM.qryDebtor
      LookupField = 'DEBTOR_ACCT'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 208
      Top = 48
      Width = 457
      Height = 22
      TabStop = False
      Color = clBtnFace
      DataField = 'DEBT_NAME'
      DataSource = dsMaster
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnDblClick = wwDBEdit3DblClick
    end
  end
  inherited dsMaster: TDataSource
    AutoEdit = False
    OnDataChange = dsMasterDataChange
    Left = 592
    Top = 9
  end
  inherited dsDetail: TDataSource
    AutoEdit = False
    DataSet = AccountReceiveDM.tbDebitNoteDT
  end
  object dsUnpaidInvoice: TDataSource
    DataSet = AccountReceiveDM.qryUnpaidInvoice
    Left = 600
    Top = 262
  end
end
