inherited frmFNGReceiveForm: TfrmFNGReceiveForm
  Left = 253
  Top = 283
  Width = 1000
  Height = 621
  Caption = 'Finished Goods Receive Form'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 249
    Width = 984
  end
  inherited lbTitle: TLabel
    Top = 233
    Width = 984
  end
  object Label8: TLabel [2]
    Left = 312
    Top = 88
    Width = 40
    Height = 13
    Caption = 'Melt No:'
  end
  inherited plHeader: TPanel
    Top = 0
    Width = 984
    Height = 233
    TabOrder = 1
    object Bevel1: TBevel [0]
      Left = 2
      Top = 31
      Width = 980
      Height = 2
      Align = alTop
    end
    object Label1: TLabel [1]
      Left = 32
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Document No:'
    end
    object Label2: TLabel [2]
      Left = 264
      Top = 55
      Width = 78
      Height = 13
      Caption = 'Document Date:'
    end
    object Label3: TLabel [3]
      Left = 32
      Top = 84
      Width = 40
      Height = 13
      Caption = 'Melt No:'
    end
    object Label9: TLabel [4]
      Left = 264
      Top = 84
      Width = 30
      Height = 13
      Caption = 'Spec :'
    end
    object Label4: TLabel [5]
      Left = 32
      Top = 116
      Width = 40
      Height = 13
      Caption = 'Remark:'
    end
    inherited ToolBar: TToolBar
      Width = 980
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 105
      Top = 48
      DataBinding.DataField = 'DOC_NO'
      DataBinding.DataSource = dsMaster
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 384
      Top = 48
      DataBinding.DataField = 'DOC_DATE'
      DataBinding.DataSource = dsMaster
      TabOrder = 2
      Width = 121
    end
    object dlgLookupMelt: TwwDBLookupComboDlg
      Left = 105
      Top = 80
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Melt Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'MELT_NO'#9'10'#9'MELT_NO'#9#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
        'PLAN_DOC'#9'15'#9'PLAN_DOC'#9#9
        'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9
        'PLAN_DATE'#9'18'#9'PLAN_DATE'#9#9
        'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
        'CUST_NAME'#9'60'#9'CUST_NAME'#9#9
        'ESTIMATED_WEIGHT'#9'10'#9'ESTIMATED_WEIGHT'#9#9)
      DataField = 'MELT_NO'
      DataSource = dsMaster
      LookupTable = ProductionDM.qryActiveMeltNo
      LookupField = 'MELT_NO'
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object cxGroupBox1: TcxGroupBox
      Left = 24
      Top = 136
      Caption = 'Weight Output:'
      TabOrder = 4
      Height = 81
      Width = 481
      object Label6: TLabel
        Left = 8
        Top = 28
        Width = 56
        Height = 13
        Caption = 'Belt/Palate:'
      end
      object Label7: TLabel
        Left = 7
        Top = 52
        Width = 69
        Height = 13
        Caption = 'Other Weight:'
      end
      object Label5: TLabel
        Left = 240
        Top = 28
        Width = 39
        Height = 13
        Caption = 'Bundle :'
      end
      object cxDBMaskEdit2: TcxDBMaskEdit
        Left = 82
        Top = 22
        DataBinding.DataField = 'MARKUP_WEIGHT1'
        DataBinding.DataSource = dsMaster
        TabOrder = 0
        Width = 121
      end
      object cxDBMaskEdit3: TcxDBMaskEdit
        Left = 82
        Top = 47
        DataBinding.DataField = 'MARKUP_WEIGHT2'
        DataBinding.DataSource = dsMaster
        TabOrder = 1
        Width = 121
      end
      object cxDBMaskEdit1: TcxDBMaskEdit
        Left = 288
        Top = 23
        DataBinding.DataField = 'BUNDLE_QTY'
        DataBinding.DataSource = dsMaster
        TabOrder = 2
        Width = 121
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 240
        Top = 44
        Caption = 'By Product'
        DataBinding.DataField = 'BY_PRODUCTED_ITEM'
        DataBinding.DataSource = dsMaster
        Properties.DisplayChecked = 'False'
        Properties.DisplayUnchecked = 'True'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
        Width = 121
      end
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 105
      Top = 112
      DataBinding.DataField = 'DESCS'
      DataBinding.DataSource = dsMaster
      TabOrder = 5
      Width = 400
    end
  end
  object dlgLookupItem: TwwDBLookupComboDlg [4]
    Left = 385
    Top = 80
    Width = 121
    Height = 21
    DisableThemes = False
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Sale item'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
      'DESCS'#9'60'#9'DESCS'#9'F'#9
      'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
      'NAME'#9'60'#9'NAME'#9'F'#9)
    DataField = 'ITEM_CODE'
    DataSource = dsMaster
    LookupTable = ProductionDM.qryActiveSaleItem
    LookupField = 'ITEM_CODE'
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    AllowClearKey = False
  end
  inherited plToolBar: TPanel
    Left = 408
    Top = 8
  end
  inherited StatusBar1: TfcStatusBar
    Top = 563
    Width = 984
  end
  inherited panel1: TPanel
    Top = 252
    Width = 984
    Height = 311
    TabOrder = 0
    inherited wwDBGrid1: TwwDBGrid
      Width = 982
      Height = 309
      ControlType.Strings = (
        'REMELT_ITEM_FLAG;CheckBox;Y;N')
      Selected.Strings = (
        'REMELT_ITEM_FLAG'#9'1'#9'REMELT_ITEM_FLAG'#9#9
        'LINE_NO'#9'10'#9'LINE_NO'#9'T'#9
        'WEIGHT_QTY'#9'10'#9'WEIGHT_QTY'#9'F'#9
        'QTY'#9'10'#9'QTY'#9'F'
        'GROUP_ID'#9'10'#9'GROUP_ID'#9'T'#9)
    end
  end
  inherited dsMaster: TDataSource
    DataSet = ProductionDM.tbFNGReceiveHD
  end
  inherited dsDetail: TDataSource
    DataSet = ProductionDM.tbFNGReceiveDT
  end
  inherited ImageIconList: TImageList
    Left = 480
    Top = 8
  end
end
