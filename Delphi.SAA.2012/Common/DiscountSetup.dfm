inherited frmDiscount: TfrmDiscount
  Caption = 'Discount Setup'
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      object cxGrid1DBTableView1DISCS_CD: TcxGridDBColumn
        DataBinding.FieldName = 'DISCS_CD'
      end
      object cxGrid1DBTableView1DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
      end
      object cxGrid1DBTableView1DISCS_DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DISCS_DESCS'
      end
      object cxGrid1DBTableView1DISCS_RATE: TcxGridDBColumn
        DataBinding.FieldName = 'DISCS_RATE'
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbDiscount
  end
end
