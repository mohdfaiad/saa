inherited frmCXSaleOrderRevisionManager: TfrmCXSaleOrderRevisionManager
  Left = 304
  Top = 207
  Width = 825
  Height = 361
  Caption = 'Sale Order Revision Manage'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 809
    Caption = 
      'If you can not findy your recent document please press F5 to ref' +
      'resh. Document must be approved before prin'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 303
    Width = 809
  end
  inherited Panel1: TPanel
    Top = 262
    Width = 809
    inherited postButton: TBitBtn
      Left = 248
    end
    inherited cancelButton: TBitBtn
      Left = 376
    end
  end
  inherited cxGrid: TcxGrid
    Width = 809
    Height = 248
    Font.Name = 'Ta.'
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          DisplayText = 'Total Record:'
        end>
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
        Width = 86
      end
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
        Width = 88
      end
      object cxGridDBTableViewFROM_ORDER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'FROM_ORDER_DATE'
      end
      object cxGridDBTableViewTO_ORDER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'TO_ORDER_DATE'
      end
      object cxGridDBTableViewREVISION_BY: TcxGridDBColumn
        DataBinding.FieldName = 'REVISION_BY'
        Width = 74
      end
      object cxGridDBTableViewDISTRIBUTE_TO: TcxGridDBColumn
        DataBinding.FieldName = 'DISTRIBUTE_TO'
        Width = 99
      end
    end
  end
  inherited datasource: TDataSource
    DataSet = SaleOrderDataManager.qryUnApproveRevision
    Left = 16
    Top = 40
  end
  inherited PopupMenu1: TPopupMenu
    Left = 16
    Top = 104
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 16
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
