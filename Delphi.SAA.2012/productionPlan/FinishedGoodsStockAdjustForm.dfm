inherited frmFNGAdjustForm: TfrmFNGAdjustForm
  Left = 304
  Top = 212
  Width = 847
  Height = 444
  Caption = 'Finished Goods Stock Adjustment Form'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 145
    Width = 831
  end
  inherited lbTitle: TLabel
    Width = 831
    Caption = 
      'Enter the discrepancy of stock or bundle value. Value can be - o' +
      'r +'
  end
  inherited plHeader: TPanel
    Width = 831
    Height = 129
    TabOrder = 1
    object Bevel1: TBevel [0]
      Left = 2
      Top = 31
      Width = 827
      Height = 3
      Align = alTop
    end
    object Label1: TLabel [1]
      Left = 14
      Top = 48
      Width = 68
      Height = 13
      Caption = 'Document No:'
    end
    object Label2: TLabel [2]
      Left = 238
      Top = 40
      Width = 78
      Height = 13
      Caption = 'Document Date:'
    end
    object Label3: TLabel [3]
      Left = 14
      Top = 72
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label4: TLabel [4]
      Left = 14
      Top = 97
      Width = 40
      Height = 13
      Caption = 'Reason:'
    end
    inherited ToolBar: TToolBar
      Width = 827
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 86
      Top = 40
      DataBinding.DataField = 'DOC_NO'
      DataBinding.DataSource = dsMaster
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 342
      Top = 40
      DataBinding.DataField = 'DOC_DATE'
      DataBinding.DataSource = dsMaster
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 86
      Top = 65
      DataBinding.DataField = 'DESCS'
      DataBinding.DataSource = dsMaster
      TabOrder = 3
      Width = 377
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 86
      Top = 91
      DataBinding.DataField = 'DESCS1'
      DataBinding.DataSource = dsMaster
      TabOrder = 4
      Width = 377
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 386
    Width = 831
  end
  inherited panel1: TPanel
    Top = 148
    Width = 831
    Height = 238
    TabOrder = 0
    inherited wwDBGrid1: TwwDBGrid
      Width = 829
      Height = 236
      ControlType.Strings = (
        'MELT_NO;CustomEdit;dlgLookupMelt;F')
      Selected.Strings = (
        'MELT_NO'#9'10'#9'MELT_NO'#9#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9'T'
        'UOM_CD'#9'4'#9'UOM_CD'#9'T'
        'ONHAND_QTY'#9'10'#9'ONHAND QTY'#9'T'
        'QTY'#9'10'#9'ADJ +/-QTY'#9'F'#9
        'ONHAND_BUNDLE_QTY'#9'10'#9'ONHAND BUNDLE'#9'T'
        'BUNDLE_QTY'#9'10'#9'ADJ +/- BUNDLE_QTY'#9'F'#9)
    end
    object dlgLookupMelt: TwwDBLookupComboDlg
      Left = 128
      Top = 56
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Active Melt'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'MELT_NO'#9'10'#9'MELT_NO'#9#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
        'UOM_CD'#9'4'#9'UOM_CD'#9#9
        'ONHAND_QTY'#9'10'#9'ONHAND_QTY'#9#9
        'RESERVED_QTY'#9'10'#9'RESERVED_QTY'#9#9
        'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
        'DOC_NO'#9'15'#9'DOC_NO'#9#9
        'DOC_DATE'#9'18'#9'DOC_DATE'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'TOTAL_COST'#9'10'#9'TOTAL_COST'#9#9
        'BUNDLE_QTY'#9'10'#9'BUNDLE_QTY'#9#9)
      DataField = 'MELT_NO'
      DataSource = dsDetail
      LookupTable = ProductionDM.qryFNGStockItem
      LookupField = 'MELT_NO'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
  end
  inherited dsMaster: TDataSource
    DataSet = ProductionDM.tbFNGAdjustHD
  end
  inherited dsDetail: TDataSource
    DataSet = ProductionDM.tbFNGAdjustDT
  end
end
