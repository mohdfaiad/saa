inherited frmQAInspectManager: TfrmQAInspectManager
  Left = 353
  Top = 178
  Width = 836
  Height = 480
  Caption = 'Quality Assurrance Manager (Inspect Data)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 820
  end
  inherited StatusBar1: TfcStatusBar
    Top = 422
    Width = 820
  end
  inherited Panel1: TPanel
    Top = 381
    Width = 820
  end
  inherited cxGrid: TcxGrid
    Width = 820
    Height = 250
    Cursor = crHandPoint
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.KeyFieldNames = 'LOT_CD'
      object cxGridDBTableViewLOT_CD: TcxGridDBColumn
        DataBinding.FieldName = 'LOT_CD'
      end
      object cxGridDBTableViewPURCHASE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PURCHASE_DATE'
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableViewREF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
      end
      object cxGridDBTableViewSTOCK_CD: TcxGridDBColumn
        DataBinding.FieldName = 'STOCK_CD'
      end
      object cxGridDBTableViewGROUP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'GROUP_ID'
      end
      object cxGridDBTableViewACCT_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACCT_CODE'
      end
      object cxGridDBTableViewONHAND_QTY: TcxGridDBColumn
        DataBinding.FieldName = 'ONHAND_QTY'
        Width = 88
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.KeyFieldNames = 'LOT_CD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBTableView1REF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableView1REF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
      end
      object cxGridDBTableView1PURCHASE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PURCHASE_DATE'
      end
      object cxGridDBTableView1ELE1_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE1_PERC'
      end
      object cxGridDBTableView1ELE2_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE2_PERC'
      end
      object cxGridDBTableView1ELE3_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE3_PERC'
      end
      object cxGridDBTableView1ELE4_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE4_PERC'
      end
      object cxGridDBTableView1ELE5_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE5_PERC'
      end
      object cxGridDBTableView1ELE6_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE6_PERC'
      end
      object cxGridDBTableView1ELE7_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE7_PERC'
      end
      object cxGridDBTableView1ELE8_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE8_PERC'
      end
      object cxGridDBTableView1ELE9_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE9_PERC'
      end
      object cxGridDBTableView1ELE10_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE10_PERC'
      end
      object cxGridDBTableView1ELE11_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE11_PERC'
      end
      object cxGridDBTableView1ELE12_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE12_PERC'
      end
      object cxGridDBTableView1ELE13_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE13_PERC'
      end
      object cxGridDBTableView1ACCT_CD: TcxGridDBColumn
        DataBinding.FieldName = 'ACCT_CD'
      end
    end
  end
  object cxGrid1: TcxGrid [5]
    Left = 0
    Top = 264
    Width = 820
    Height = 117
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 8
    object cxGridDBTableView2: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = cxGridDBTableViewDblClick
      NavigatorButtons.ConfirmDelete = False
      FilterBox.CustomizeDialog = False
      OnCellClick = cxGridDBTableViewCellClick
      DataController.DataSource = dsDetail
      DataController.KeyFieldNames = 'LOT_CD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentOdd = SystemMenuDM.cxStyle232
      Styles.Header = SystemMenuDM.cxStyle153
      object cxGridDBTableView2LINE_NO: TcxGridDBColumn
        DataBinding.FieldName = 'LINE_NO'
      end
      object cxGridDBTableView2REF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
      end
      object cxGridDBTableView2REF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableView2ELE1_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE1_PERC'
      end
      object cxGridDBTableView2ELE2_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE2_PERC'
      end
      object cxGridDBTableView2ELE3_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE3_PERC'
      end
      object cxGridDBTableView2ELE4_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE4_PERC'
      end
      object cxGridDBTableView2ELE5_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE5_PERC'
      end
      object cxGridDBTableView2ELE6_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE6_PERC'
      end
      object cxGridDBTableView2ELE7_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE7_PERC'
      end
      object cxGridDBTableView2ELE8_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE8_PERC'
      end
      object cxGridDBTableView2ELE9_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE9_PERC'
      end
      object cxGridDBTableView2ELE10_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE10_PERC'
      end
      object cxGridDBTableView2ELE11_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE11_PERC'
      end
      object cxGridDBTableView2ELE12_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE12_PERC'
      end
      object cxGridDBTableView2ELE13_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE13_PERC'
      end
      object cxGridDBTableView2ELE14_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE14_PERC'
      end
      object cxGridDBTableView2ELE15_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE15_PERC'
      end
      object cxGridDBTableView2ELE16_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE16_PERC'
      end
      object cxGridDBTableView2ELE17_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE17_PERC'
      end
      object cxGridDBTableView2ELE18_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE18_PERC'
      end
      object cxGridDBTableView2ELE19_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE19_PERC'
      end
      object cxGridDBTableView2ELE20_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE20_PERC'
      end
      object cxGridDBTableView2ELE21_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE21_PERC'
      end
      object cxGridDBTableView2ELE22_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE22_PERC'
      end
      object cxGridDBTableView2ELE23_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE23_PERC'
      end
      object cxGridDBTableView2ELE24_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE24_PERC'
      end
      object cxGridDBTableView2ELE25_PERC: TcxGridDBColumn
        DataBinding.FieldName = 'ELE25_PERC'
      end
    end
    object cxGridDBTableView3: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.KeyFieldNames = 'LOT_CD'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'PURCHASE_DATE'
      end
      object cxGridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'ELE1_PERC'
      end
      object cxGridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'ELE2_PERC'
      end
      object cxGridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'ELE3_PERC'
      end
      object cxGridDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'ELE4_PERC'
      end
      object cxGridDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = 'ELE5_PERC'
      end
      object cxGridDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = 'ELE6_PERC'
      end
      object cxGridDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = 'ELE7_PERC'
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = 'ELE8_PERC'
      end
      object cxGridDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = 'ELE9_PERC'
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = 'ELE10_PERC'
      end
      object cxGridDBColumn22: TcxGridDBColumn
        DataBinding.FieldName = 'ELE11_PERC'
      end
      object cxGridDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = 'ELE12_PERC'
      end
      object cxGridDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = 'ELE13_PERC'
      end
      object cxGridDBColumn25: TcxGridDBColumn
        DataBinding.FieldName = 'ACCT_CD'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView2
    end
  end
  inherited datasource: TDataSource
    DataSet = ProductionDM.qryQAInspect
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object dsDetail: TDataSource
    DataSet = ProductionDM.tbQAElement
    OnDataChange = datasourceDataChange
    Left = 512
    Top = 112
  end
end
