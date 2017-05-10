inherited GoodsReceiveNoteForm: TGoodsReceiveNoteForm
  Left = 345
  Top = 237
  Width = 966
  Height = 631
  Caption = 'Goods Receive Note Entry'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 217
    Width = 950
  end
  inherited StatusBar1: TfcStatusBar
    Top = 573
    Width = 950
  end
  inherited panel1: TPanel
    Top = 220
    Width = 950
    Height = 353
    inherited wwDBGrid1: TwwDBGrid
      Top = 41
      Width = 948
      Height = 223
      ControlType.Strings = (
        'ORDER_NO;CustomEdit;dlgOrderHeader;F'
        'ITEM_CODE;CustomEdit;dlgOrderDetail;F')
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'Purchase No'#9'T'#9
        'ORDER_DATE'#9'18'#9'Purchase Date'#9'T'#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
        'ITEM_DESCS'#9'60'#9'Item Description'#9'F'#9
        'UNIT_COST'#9'10'#9'Purchase Price'#9'F'#9
        'MARK_UP'#9'10'#9'Markup(%)'#9'F'#9
        'ORDER_QTY'#9'10'#9'Order Qty'#9'F'#9
        'ReceivedQty'#9'10'#9'Received Qty'#9'F'#9
        'GRN_QTY'#9'10'#9'Receive Qty'#9'F'#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9#9)
    end
    object plSummary: TPanel
      Left = 1
      Top = 264
      Width = 948
      Height = 88
      Align = alBottom
      BevelOuter = bvLowered
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label8: TLabel
        Left = 464
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Base Amount :'
      end
      object Label9: TLabel
        Left = 469
        Top = 40
        Width = 65
        Height = 13
        Caption = 'Tax Amount :'
      end
      object Label10: TLabel
        Left = 463
        Top = 64
        Width = 71
        Height = 13
        Caption = 'Total Amount :'
      end
      object Panel3: TPanel
        Left = 536
        Top = 5
        Width = 185
        Height = 77
        BevelInner = bvLowered
        TabOrder = 0
        object wwDBEdit4: TwwDBEdit
          Left = 8
          Top = 5
          Width = 169
          Height = 21
          Color = clSilver
          DataField = 'BASEAMOUNT'
          DataSource = dsGRNSummary
          Enabled = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit5: TwwDBEdit
          Left = 8
          Top = 29
          Width = 169
          Height = 21
          Color = clSilver
          DataField = 'TAXAMOUNT'
          DataSource = dsGRNSummary
          Enabled = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit6: TwwDBEdit
          Left = 8
          Top = 53
          Width = 169
          Height = 21
          Color = clSilver
          DataField = 'TOTALAMOUNT'
          DataSource = dsGRNSummary
          Enabled = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 948
      Height = 40
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 2
      object wwDBNavigator2: TwwDBNavigator
        Left = 8
        Top = 8
        Width = 150
        Height = 25
        DataSource = dsDetail
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        object wwDBNavigator2Insert: TwwNavButton
          Left = 0
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
          Index = 0
          Style = nbsInsert
        end
        object wwDBNavigator2Delete: TwwNavButton
          Left = 25
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
          Index = 1
          Style = nbsDelete
        end
        object wwDBNavigator2Edit: TwwNavButton
          Left = 50
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
          Index = 2
          Style = nbsEdit
        end
        object wwDBNavigator2Post: TwwNavButton
          Left = 75
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
          Index = 3
          Style = nbsPost
        end
        object wwDBNavigator2Cancel: TwwNavButton
          Left = 100
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
          Index = 4
          Style = nbsCancel
        end
        object wwDBNavigator2Refresh: TwwNavButton
          Left = 125
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
          Index = 5
          Style = nbsRefresh
        end
      end
    end
    object dlgOrderDetail: TwwDBLookupComboDlg
      Left = 280
      Top = 72
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
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9'F'
        'QTY'#9'10'#9'QTY'#9#9)
      DataField = 'ITEM_CODE'
      DataSource = dsDetail
      LookupTable = GoodsReceiveDM.qryPurchaseOrderDetailLookup
      LookupField = 'ITEM_CODE'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dlgOrderHeader: TwwDBLookupComboDlg
      Left = 96
      Top = 88
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Order Heder'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
        'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
        'REF_NO'#9'15'#9'REF_NO'#9#9
        'REF_DATE'#9'18'#9'REF_DATE'#9#9)
      DataField = 'ORDER_NO'
      DataSource = dsDetail
      LookupTable = GoodsReceiveDM.qryPurchaseOrderHeaderLookup
      LookupField = 'ORDER_NO'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited plHeader: TPanel
    Width = 950
    Height = 184
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Grn No :'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Grn Date :'
    end
    object Label3: TLabel
      Left = 396
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Ref No :'
    end
    object Label4: TLabel
      Left = 560
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Ref Date :'
    end
    object Label5: TLabel
      Left = 4
      Top = 48
      Width = 60
      Height = 13
      Caption = 'Description :'
    end
    object Label6: TLabel
      Left = 19
      Top = 70
      Width = 45
      Height = 13
      Caption = 'Supplier :'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label6Click
    end
    object Label7: TLabel
      Left = 24
      Top = 159
      Width = 43
      Height = 13
      Caption = 'Remark :'
    end
    object Panel2: TPanel
      Left = 207
      Top = 61
      Width = 527
      Height = 23
      BevelInner = bvLowered
      TabOrder = 7
      DesignSize = (
        527
        23)
      object DBText1: TDBText
        Left = -80
        Top = 16
        Width = 41
        Height = 13
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = True
        DataField = 'NAME'
        DataSource = dsMaster
      end
      object DBText2: TDBText
        Left = -80
        Top = 16
        Width = 41
        Height = 13
        Anchors = [akLeft, akTop, akBottom]
        AutoSize = True
        DataField = 'NAME'
        DataSource = dsMaster
      end
      object DBText3: TDBText
        Left = 8
        Top = 5
        Width = 505
        Height = 17
        DataField = 'NAME'
        DataSource = dsMaster
      end
    end
    object edGRNNO: TwwDBEdit
      Left = 83
      Top = 16
      Width = 121
      Height = 21
      DataField = 'GRN_NO'
      DataSource = dsMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 264
      Top = 16
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'GRN_DATE'
      DataSource = dsMaster
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object wwDBEdit2: TwwDBEdit
      Left = 437
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
      Left = 616
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
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object wwDBEdit3: TwwDBEdit
      Left = 83
      Top = 39
      Width = 653
      Height = 21
      Anchors = [akLeft, akTop, akBottom]
      DataField = 'DESCS'
      DataSource = dsMaster
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBMemo1: TDBMemo
      Left = 83
      Top = 85
      Width = 652
      Height = 89
      DataField = 'REMARKS'
      DataSource = dsMaster
      TabOrder = 6
    end
    object dlgSupplier: TwwDBLookupComboDlg
      Left = 83
      Top = 62
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Supplier'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'SUPPLIER_CD'#9'10'#9'SUPPLIER_CD'#9#9
        'NAME'#9'60'#9'NAME'#9#9)
      DataField = 'SUPP_CODE'
      DataSource = dsMaster
      LookupTable = GoodsReceiveDM.tbSupplier
      LookupField = 'SUPPLIER_CD'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited plToolBar: TPanel
    Width = 950
    object wwDBNavigator1: TwwDBNavigator
      Left = 3
      Top = 4
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
    DataSet = GoodsReceiveDM.tbGRNHD
    Left = 712
    Top = 1
  end
  inherited dsDetail: TDataSource
    DataSet = GoodsReceiveDM.tbGRNDT
    OnDataChange = dsDetailDataChange
    Left = 712
  end
  object dsGRNSummary: TDataSource
    DataSet = GoodsReceiveDM.qryGRNSummary
    Left = 729
    Top = 495
  end
end
