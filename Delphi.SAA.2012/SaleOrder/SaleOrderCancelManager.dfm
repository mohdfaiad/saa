inherited frmCXSaleOrderCancleManager: TfrmCXSaleOrderCancleManager
  Left = 153
  Top = 218
  Width = 730
  Caption = 'Sale Order Close/Cancel'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 714
  end
  inherited StatusBar1: TfcStatusBar
    Width = 714
  end
  inherited Panel1: TPanel
    Width = 714
    inherited newButton: TBitBtn
      Visible = False
    end
    inherited editButton: TBitBtn
      Caption = 'Cancel'
    end
    inherited postButton: TBitBtn
      Caption = 'Close'
    end
    object cxButtonClose: TcxButton
      Left = 400
      Top = 8
      Width = 92
      Height = 25
      Caption = 'Close Order'
      TabOrder = 4
      OnClick = cxButtonCloseClick
    end
    object cxButtonCancel: TcxButton
      Left = 112
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Cancel Order'
      TabOrder = 5
      OnClick = cxButtonCancelClick
    end
    object cxButtonExit: TcxButton
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = cxButtonExitClick
    end
    object cxButton1: TcxButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'New'
      Enabled = False
      TabOrder = 7
    end
  end
  inherited cxGrid: TcxGrid
    Width = 714
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.DetailKeyFieldNames = 'ORDER_NO'
      object cxGridDBTableViewNAME: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'NAME'
        Width = 122
      end
      object cxGridDBTableViewORDER_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_NO'
      end
      object cxGridDBTableViewORDER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_DATE'
        Width = 88
      end
      object cxGridDBTableViewORDER_AMT: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_AMT'
        Width = 90
      end
      object cxGridDBTableViewRemark: TcxGridDBColumn
        Caption = 'Remark'
        DataBinding.FieldName = 'REMARKS'
        Width = 221
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.DetailKeyFieldNames = 'ORDER_NO'
      DataController.KeyFieldNames = 'ORDER_NO'
      DataController.MasterKeyFieldNames = 'ORDER_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ITEM_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_CODE'
      end
      object cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_DESCS'
      end
      object cxGridDBTableView1UNIT_COST: TcxGridDBColumn
        DataBinding.FieldName = 'UNIT_COST'
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
      end
      object cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_AMT'
      end
      object cxGridDBTableView1REMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
      end
    end
    inherited cxGridLevel: TcxGridLevel
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
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
    DataSet = SaleOrderDataManager.tbUnapproveOrderDT
    Left = 432
    Top = 184
  end
end
