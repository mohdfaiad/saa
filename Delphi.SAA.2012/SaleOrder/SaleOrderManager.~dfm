inherited frmCXSaleOrderManager: TfrmCXSaleOrderManager
  Left = 335
  Top = 165
  Width = 839
  Caption = 'Sale Order Management'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 823
    Caption = 
      'If you can not findy your recent document please press F5 to ref' +
      'resh. Document must be approved before print'
  end
  inherited StatusBar1: TfcStatusBar
    Width = 823
  end
  inherited Panel1: TPanel
    Width = 823
    inherited postButton: TBitBtn
      Caption = 'Approve'
    end
  end
  inherited cxGrid: TcxGrid
    Width = 823
    Font.Name = 'Tahoma'
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.DetailKeyFieldNames = 'ORDER_NO'
      object cxGridDBTableViewORDER_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_NO'
      end
      object cxGridDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 183
      end
      object cxGridDBTableViewORDER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_DATE'
        Width = 84
      end
      object cxGridDBTableViewCUST_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CUST_CODE'
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableViewREF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
        Width = 102
      end
      object cxGridDBTableViewREMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 122
      end
      object cxGridDBTableViewFAX_TO: TcxGridDBColumn
        DataBinding.FieldName = 'FAX_TO'
        Width = 142
      end
      object cxGridDBTableViewCC_TO: TcxGridDBColumn
        DataBinding.FieldName = 'CC_TO'
        Width = 133
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsOrderItem
      DataController.DetailKeyFieldNames = 'ORDER_NO'
      DataController.KeyFieldNames = 'ORDER_NO'
      DataController.MasterKeyFieldNames = 'ORDER_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
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
      object cxGridDBTableView1TAX_AMT: TcxGridDBColumn
        DataBinding.FieldName = 'TAX_AMT'
      end
      object cxGridDBTableView1REMARKS: TcxGridDBColumn
        Caption = 'Delivery'
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
  object dsOrderItem: TDataSource
    DataSet = SaleOrderDataManager.tbSaleOrderDTView
    Left = 464
    Top = 104
  end
end
