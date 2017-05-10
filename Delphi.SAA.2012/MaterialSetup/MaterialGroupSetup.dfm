inherited frmCXMaterialStockGroup: TfrmCXMaterialStockGroup
  Caption = 'Material Stock Group Setup'
  PixelsPerInch = 96
  TextHeight = 14
  inherited cxGrid1: TcxGrid
    Font.Name = 'Tahoma'
    ParentFont = False
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      object cxGrid1DBTableView1GROUP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'GROUP_ID'
        Width = 75
      end
      object cxGrid1DBTableView1DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 181
      end
      object cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_USER'
      end
      object cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_DATE'
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbMaterialGroup
  end
end
