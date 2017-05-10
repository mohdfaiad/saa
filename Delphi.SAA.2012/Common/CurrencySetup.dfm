inherited frmCurrency: TfrmCurrency
  Width = 625
  Height = 281
  Caption = 'Currency Setup'
  Font.Name = 'Arial'
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Top = 234
    Width = 617
  end
  inherited ToolBar: TToolBar
    Width = 617
  end
  inherited mainPanel: TPanel
    Width = 617
    Height = 205
    inherited lbHelpText: TLabel
      Width = 615
    end
    inherited cxPageControl1: TcxPageControl
      Width = 615
      Height = 189
      ClientRectBottom = 189
      ClientRectRight = 615
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 617
    Height = 205
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      object cxGrid1DBTableView1CURRENCY_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'CURRENCY_CODE'
        Width = 117
      end
      object cxGrid1DBTableView1CURRENCY_RATE: TcxGridDBColumn
        DataBinding.FieldName = 'CURRENCY_RATE'
        Width = 134
      end
      object cxGrid1DBTableView1DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
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
    DataSet = MasterSetupDM.tbCurrency
  end
end
