inherited frmFNGAdjustManager: TfrmFNGAdjustManager
  Left = 415
  Top = 233
  Width = 867
  Height = 417
  Caption = 'Finshed Goods Stock Adjustment Manager'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 851
  end
  inherited StatusBar1: TfcStatusBar
    Top = 359
    Width = 851
  end
  inherited Panel1: TPanel
    Top = 318
    Width = 851
  end
  inherited cxGrid: TcxGrid
    Width = 851
    Height = 304
    inherited cxGridDBTableView: TcxGridDBTableView
      Styles.ContentEven = SystemMenuDM.cxStyle232
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 266
      end
      object cxGridDBTableViewDESCS1: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS1'
      end
    end
  end
  inherited datasource: TDataSource
    DataSet = ProductionDM.qryFNGAdjustUnpost
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
