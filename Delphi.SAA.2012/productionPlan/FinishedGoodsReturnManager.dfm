inherited frmFNGReturnManager: TfrmFNGReturnManager
  Left = 376
  Top = 185
  Width = 738
  Caption = 'Finished Goods Return Manager'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 722
  end
  inherited StatusBar1: TfcStatusBar
    Width = 722
  end
  inherited Panel1: TPanel
    Width = 722
    inherited postButton: TBitBtn
      DragCursor = crMultiDrag
      OnDragDrop = postButtonDragDrop
      OnDragOver = postButtonDragOver
    end
  end
  inherited cxGrid: TcxGrid
    Width = 722
    DragMode = dmAutomatic
    inherited cxGridDBTableView: TcxGridDBTableView
      DragMode = dmAutomatic
      OnCellDblClick = cxGridDBTableViewCellDblClick
      Styles.ContentEven = SystemMenuDM.cxStyle232
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
      end
      object cxGridDBTableViewMELT_NO: TcxGridDBColumn
        DataBinding.FieldName = 'MELT_NO'
      end
      object cxGridDBTableViewITEM_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_CODE'
      end
      object cxGridDBTableViewCUST_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CUST_CODE'
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
      end
      object cxGridDBTableViewBUNDLE_QTY: TcxGridDBColumn
        DataBinding.FieldName = 'BUNDLE_QTY'
      end
    end
  end
  inherited datasource: TDataSource
    DataSet = ProductionDM.qryFNGReturnUnpost
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
end
