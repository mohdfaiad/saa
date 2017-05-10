inherited frmCXSysRole: TfrmCXSysRole
  Left = 376
  Top = 195
  Width = 607
  Caption = 'System Roles Setup'
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Width = 591
  end
  inherited ToolBar: TToolBar
    Width = 591
  end
  inherited mainPanel: TPanel
    Width = 591
    inherited lbHelpText: TLabel
      Width = 589
    end
    inherited cxPageControl1: TcxPageControl
      Width = 589
      ClientRectRight = 589
    end
  end
  inherited cxGrid1: TcxGrid
    Width = 591
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      object cxGrid1DBTableView1GROUP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'GROUP_ID'
      end
      object cxGrid1DBTableView1GROUP_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'GROUP_NAME'
      end
      object cxGrid1DBTableView1EDIT_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'EDIT_FLAG'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1DELETE_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'DELETE_FLAG'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1INSERT_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'INSERT_FLAG'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1DEFAULT_MODULE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEFAULT_MODULE_ID'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1ADMIN_USER: TcxGridDBColumn
        DataBinding.FieldName = 'ADMIN_USER'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1EXECUTE_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'EXECUTE_FLAG'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
      end
      object cxGrid1DBTableView1POST_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'POST_FLAG'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueGrayed = 'N'
        Properties.ValueUnchecked = #39'N'#39
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
    DataSet = CommomShareDM.tbSysRole
  end
end
