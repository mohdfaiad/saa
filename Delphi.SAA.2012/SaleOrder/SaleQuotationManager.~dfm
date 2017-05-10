inherited frmCXSaleQuotaionManager: TfrmCXSaleQuotaionManager
  Left = 191
  Top = 269
  Width = 710
  Height = 419
  Caption = 'Sale Quotaion Management'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 694
    Caption = 
      'If you can not findy your recent document please press F5 to ref' +
      'resh. Document must be approved before print.'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 361
    Width = 694
  end
  inherited Panel1: TPanel
    Top = 320
    Width = 694
    inherited postButton: TBitBtn
      Caption = 'Approve'
    end
  end
  inherited cxGrid: TcxGrid
    Width = 694
    Height = 306
    Font.Name = 'Tahoma'
    inherited cxGridDBTableView: TcxGridDBTableView
      OnSelectionChanged = cxGridDBTableViewSelectionChanged
      DataController.DetailKeyFieldNames = 'DOC_NO'
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
        Width = 61
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 116
      end
      object cxGridDBTableViewFAX_TO: TcxGridDBColumn
        DataBinding.FieldName = 'FAX_TO'
        Width = 51
      end
      object cxGridDBTableViewCC_TO: TcxGridDBColumn
        DataBinding.FieldName = 'CC_TO'
        Width = 89
      end
      object cxGridDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 109
      end
      object cxGridDBTableViewTERM_OF_PAYMENT: TcxGridDBColumn
        DataBinding.FieldName = 'TERM_OF_PAYMENT'
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsQuoteItem
      DataController.DetailKeyFieldNames = 'DOC_NO'
      DataController.KeyFieldNames = 'DOC_NO'
      DataController.MasterKeyFieldNames = 'DOC_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView1ITEM_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_CODE'
      end
      object cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_DESCS'
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
      end
      object cxGridDBTableView1UNIT_COST: TcxGridDBColumn
        DataBinding.FieldName = 'UNIT_COST'
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
  object dsQuoteItem: TDataSource
    DataSet = SaleOrderDataManager.tbSaleQuoteDTView
    Left = 512
    Top = 152
  end
end
