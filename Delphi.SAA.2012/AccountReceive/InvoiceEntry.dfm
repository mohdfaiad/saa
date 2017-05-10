inherited InvoiceForm: TInvoiceForm
  Left = 241
  Top = 196
  Width = 741
  Height = 464
  Caption = 'Account Receive Invoice'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 225
    Width = 733
  end
  inherited StatusBar1: TfcStatusBar
    Top = 417
    Width = 733
    Font.Charset = THAI_CHARSET
    Font.Name = 'Tahoma'
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
        Width = '200'
      end
      item
        Component = DBText1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Style = psControl
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    ParentFont = False
    object DBText1: TDBText
      Left = 203
      Top = 3
      Width = 512
      Height = 16
      DataField = 'BATHTEXT'
      DataSource = dsMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited panel1: TPanel
    Top = 228
    Width = 733
    Height = 189
    inherited wwDBGrid1: TwwDBGrid
      Top = 33
      Width = 731
      Height = 155
      ControlType.Strings = (
        'DELIVERY_NO;CustomEdit;lookupDeliveryOrder;T'
        'ORDER_NO;CustomEdit;lookupDeliveryOrderItem;T')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'#No'
        'DELIVERY_NO'#9'13'#9'DELIVERY NO'
        'DELIVERY_DATE'#9'10'#9'DELIVERY DATE'
        'PURCHASE_NO'#9'13'#9'PURCHASE NO'
        'PURCHASE_DATE'#9'14'#9'PURCHASE DATE'
        'ORDER_NO'#9'11'#9'ORDER NO'
        'ORDER_DATE'#9'10'#9'ORDER DATE'
        'ITEM_CODE'#9'4'#9'Alloy'
        'ITEM_DESCS'#9'15'#9'Alloy Spec.'
        'DESCS'#9'18'#9'Remark'
        'QTY'#9'10'#9'Deliverd Qty'
        'UNIT_COST'#9'10'#9'UNIT COST'
        'BASE_AMT'#9'10'#9'BASE AMT'
        'TAX_RATE'#9'10'#9'TAX RATE'
        'TAX_AMT'#9'10'#9'TAX_AMT'
        'DOC_AMT'#9'15'#9'DOC AMT')
      Font.Charset = THAI_CHARSET
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnDblClick = wwDBGrid1DblClick
      OnUpdateFooter = wwDBGrid1UpdateFooter
      OnBeforePaint = wwDBGrid1BeforePaint
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 731
      Height = 32
      Align = alTop
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object wwDBNavigator1: TwwDBNavigator
        Left = 2
        Top = 2
        Width = 250
        Height = 28
        DataSource = dsDetail
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
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
        object wwDBNavigator1Prior: TwwNavButton
          Left = 25
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
          Index = 1
          Style = nbsPrior
        end
        object wwDBNavigator1Next: TwwNavButton
          Left = 50
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
          Index = 2
          Style = nbsNext
        end
        object wwDBNavigator1Last: TwwNavButton
          Left = 75
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
          Index = 3
          Style = nbsLast
        end
        object wwDBNavigator1Insert: TwwNavButton
          Left = 100
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
          Index = 4
          Style = nbsInsert
        end
        object wwDBNavigator1Delete: TwwNavButton
          Left = 125
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
          Index = 5
          Style = nbsDelete
        end
        object wwDBNavigator1Edit: TwwNavButton
          Left = 150
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
          Index = 6
          Style = nbsEdit
        end
        object wwDBNavigator1Post: TwwNavButton
          Left = 175
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
          Index = 7
          Style = nbsPost
        end
        object wwDBNavigator1Cancel: TwwNavButton
          Left = 200
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
          Index = 8
          Style = nbsCancel
        end
        object wwDBNavigator1Refresh: TwwNavButton
          Left = 225
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
          Index = 9
          Style = nbsRefresh
        end
      end
      object ToolBar1: TToolBar
        Left = 257
        Top = -1
        Width = 77
        Height = 29
        Align = alNone
        ButtonHeight = 25
        ButtonWidth = 25
        Caption = 'ToolBar1'
        Images = ImageList1
        TabOrder = 1
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Hint = 'Detail Edit'
          Caption = 'ToolButton1'
          ImageIndex = 0
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton1Click
        end
        object ToolButton3: TToolButton
          Left = 25
          Top = 2
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object ToolButton2: TToolButton
          Left = 33
          Top = 2
          Hint = 'Show Calculator'
          Caption = 'ToolButton2'
          ImageIndex = 1
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton2Click
        end
      end
    end
    object lookupDeliveryOrder: TwwDBLookupComboDlg
      Tag = -1
      Left = 640
      Top = 8
      Width = 17
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DELIVERY_NO'#9'15'#9'DELIVERY_NO'#9#9
        'DELIVERY_DATE'#9'18'#9'DELIVERY_DATE'#9#9)
      DataField = 'DELIVERY_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryUnmatchedDeliveryOrder
      LookupField = 'DELIVERY_NO'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object lookupDeliveryOrderItem: TwwDBLookupComboDlg
      Tag = -1
      Left = 616
      Top = 8
      Width = 17
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
        'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9)
      DataField = 'ORDER_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryDeliveryOrderItem
      LookupField = 'ORDER_NO'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object dlgLookupIndirectSaleItem: TwwDBLookupComboDlg
      Tag = -1
      Left = 664
      Top = 8
      Width = 17
      Height = 21
      TabStop = False
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Indirect Sale Items'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
        'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
        'REF_NO'#9'15'#9'REF_NO'#9'F'#9
        'REF_DATE'#9'18'#9'REF_DATE'#9'F'#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9'F'#9
        'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9'F'#9)
      DataField = 'ORDER_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryIndirectSaleOrderItem
      LookupField = 'ORDER_NO'
      Color = clWhite
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
    end
  end
  inherited plHeader: TPanel
    Width = 733
    Height = 192
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 55
      Height = 13
      Caption = 'Invoice No:'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 65
      Height = 13
      Cursor = crHandPoint
      Caption = 'Invoice Date:'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnDblClick = Label2DblClick
    end
    object Label3: TLabel
      Left = 34
      Top = 92
      Width = 37
      Height = 13
      Caption = 'Debtor:'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 40
      Top = 115
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label5: TLabel
      Left = 22
      Top = 138
      Width = 49
      Height = 13
      Caption = 'CR/TERM:'
    end
    object Label6: TLabel
      Left = 132
      Top = 136
      Width = 32
      Height = 13
      Caption = '(Days)'
    end
    object Label7: TLabel
      Left = 224
      Top = 137
      Width = 49
      Height = 13
      Caption = 'Due Date:'
    end
    object Label8: TLabel
      Left = 14
      Top = 66
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label10: TLabel
      Left = 23
      Top = 161
      Width = 48
      Height = 13
      Caption = 'Currency:'
    end
    object Label11: TLabel
      Left = 246
      Top = 157
      Width = 27
      Height = 13
      Caption = 'Rate:'
    end
    object Label12: TLabel
      Left = 5
      Top = 45
      Width = 66
      Height = 13
      Caption = 'Invoice Type:'
    end
    object dlgDebtor: TwwDBLookupComboDlg
      Left = 80
      Top = 84
      Width = 120
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Debtor'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'NAME'#9'60'#9'NAME'#9#9
        'DEBTOR_ACCT'#9'10'#9'DEBTOR ACCT'#9#9)
      DataField = 'DEBTOR_ACCT'
      DataSource = dsMaster
      LookupTable = AccountReceiveDM.qryDebtor
      LookupField = 'DEBTOR_ACCT'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 80
      Top = 107
      Width = 310
      Height = 21
      Color = clBtnFace
      DataField = 'DEBT_NAME'
      DataSource = dsMaster
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edDocNo: TwwDBEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      DataField = 'DOC_NO'
      DataSource = dsMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edDocDate: TwwDBDateTimePicker
      Left = 280
      Top = 16
      Width = 112
      Height = 21
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
    object wwDBEdit3: TwwDBEdit
      Left = 80
      Top = 130
      Width = 50
      Height = 21
      Color = clBtnFace
      DataField = 'CREDIT_TERM'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 280
      Top = 130
      Width = 111
      Height = 21
      Color = clBtnFace
      DataField = 'DUE_DATE'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object deDescs: TwwDBEdit
      Left = 80
      Top = 61
      Width = 311
      Height = 21
      DataField = 'DESCS'
      DataSource = dsMaster
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 80
      Top = 153
      Width = 51
      Height = 21
      Color = clBtnFace
      DataField = 'CURRENCY_CODE'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edCurrRate: TwwDBEdit
      Left = 280
      Top = 153
      Width = 111
      Height = 21
      DataField = 'CURRENCY_RATE'
      DataSource = dsMaster
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dlgTrxType: TwwDBLookupCombo
      Left = 80
      Top = 39
      Width = 121
      Height = 21
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRX_TYPE'#9'2'#9'Trx Type'#9'F'
        'DESCRIPTION'#9'60'#9'Description'#9'F')
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
  end
  inherited plToolBar: TPanel
    Width = 733
    Font.Name = 'Tahoma'
    ParentFont = False
    object wwDBNavigator2: TwwDBNavigator
      Left = 1
      Top = 1
      Width = 150
      Height = 31
      DataSource = dsMaster
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Align = alLeft
      object wwNavButton7: TwwNavButton
        Left = 0
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
        Index = 0
        Style = nbsInsert
      end
      object wwNavButton8: TwwNavButton
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
      object wwNavButton9: TwwNavButton
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
      object wwNavButton10: TwwNavButton
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
      object wwNavButton11: TwwNavButton
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
      object wwNavButton12: TwwNavButton
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
  inherited dsMaster: TDataSource
    OnDataChange = dsMasterDataChange
    Left = 640
    Top = 1
  end
  inherited dsDetail: TDataSource
    AutoEdit = False
    OnDataChange = dsDetailDataChange
    Left = 672
    Top = 1
  end
  object ImageList1: TImageList
    Left = 673
    Top = 229
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C000C0C0C000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080000000000080808000808080008080800080808000808080008080
      800080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      000080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C0000000
      0000808080008080800000000000FFFFFF00C0C0C00000000000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080008080800080808000C0C0C000C0C0C00000000000808080008080
      800080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FFFF000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF001F00000000FFFF001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F0000000000000000000000000000000000000000
      000000000000}
  end
end
