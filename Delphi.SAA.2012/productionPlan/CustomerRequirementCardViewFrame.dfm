object frameCustomerRequirementCardView: TframeCustomerRequirementCardView
  Left = 0
  Top = 0
  Width = 843
  Height = 487
  TabOrder = 0
  object cxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 843
    Height = 465
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGridDBCardView1: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardWidth = 488
      Styles.Content = SystemMenuDM.cxStyle232
      Styles.ContentEven = SystemMenuDM.cxStyle232
      Styles.CaptionRow = SystemMenuDM.cxStyle232
      object cxGridDBCardView1CUST_CODE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'CUST_CODE'
        Position.BeginsLayer = True
      end
      object cxGridDBCardView1REQUIREMENTNOTE: TcxGridDBCardViewRow
        DataBinding.FieldName = 'REQUIREMENTNOTE'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Properties.VisibleLineCount = 20
        Position.BeginsLayer = True
      end
      object cxGridDBCardView1UPDATE_USER: TcxGridDBCardViewRow
        Caption = 'updateby'
        DataBinding.FieldName = 'UPDATE_USER'
        Position.BeginsLayer = True
      end
      object cxGridDBCardView1UPDATE_DATE: TcxGridDBCardViewRow
        Caption = 'LastModified'
        DataBinding.FieldName = 'UPDATE_DATE'
        Position.BeginsLayer = True
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnGrouping = False
      Styles.ContentEven = SystemMenuDM.cxStyle232
      Styles.ContentOdd = SystemMenuDM.cxStyle232
      object cxGridDBTableView1CUST_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CUST_CODE'
        Width = 113
      end
      object cxGridDBTableView1REQUIREMENTNOTE: TcxGridDBColumn
        DataBinding.FieldName = 'REQUIREMENTNOTE'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Properties.VisibleLineCount = 20
      end
      object cxGridDBTableView1UPDATE_USER: TcxGridDBColumn
        Caption = 'LastUpdate By'
        DataBinding.FieldName = 'UPDATE_USER'
      end
      object cxGridDBTableView1UPDATE_DATE: TcxGridDBColumn
        Caption = 'Last Modified'
        DataBinding.FieldName = 'UPDATE_DATE'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ProductionDM.qryCustRequirementView
    Left = 264
    Top = 128
  end
end
