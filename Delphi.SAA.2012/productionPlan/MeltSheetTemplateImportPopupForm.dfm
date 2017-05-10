inherited frmMeltSheetImportTemplatePopup: TfrmMeltSheetImportTemplatePopup
  Left = 301
  Top = 231
  Width = 954
  Height = 452
  Caption = 'Import inspect data from Template'
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 394
    Width = 938
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 938
    Height = 345
    DisableThemes = False
    Selected.Strings = (
      'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
      'UOM_CD'#9'4'#9'UOM_CD'#9#9
      'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
      'MELT_NO'#9'10'#9'MELT_NO'#9'F'#9
      'ELE_PERC1'#9'10'#9'ELE_PERC1'#9#9
      'ELE_PERC2'#9'10'#9'ELE_PERC2'#9#9
      'ELE_PERC3'#9'10'#9'ELE_PERC3'#9#9
      'ELE_PERC4'#9'10'#9'ELE_PERC4'#9#9
      'ELE_PERC5'#9'10'#9'ELE_PERC5'#9#9
      'ELE_PERC6'#9'10'#9'ELE_PERC6'#9#9
      'ELE_PERC7'#9'10'#9'ELE_PERC7'#9#9
      'ELE_PERC8'#9'10'#9'ELE_PERC8'#9#9
      'ELE_PERC9'#9'10'#9'ELE_PERC9'#9#9
      'ELE_PERC10'#9'10'#9'ELE_PERC10'#9#9
      'ELE_PERC11'#9'10'#9'ELE_PERC11'#9#9
      'ELE_PERC12'#9'10'#9'ELE_PERC12'#9#9
      'ELE_PERC13'#9'10'#9'ELE_PERC13'#9#9
      'ELE_PERC14'#9'10'#9'ELE_PERC14'#9'F'#9
      'ELE_PERC15'#9'10'#9'ELE_PERC15'#9'F'#9
      'ELE_PERC16'#9'10'#9'ELE_PERC16'#9'F'#9
      'ELE_PERC17'#9'10'#9'ELE_PERC17'#9'F'#9
      'ELE_PERC18'#9'10'#9'ELE_PERC18'#9'F'#9
      'ELE_PERC19'#9'10'#9'ELE_PERC19'#9'F'#9
      'ELE_PERC20'#9'10'#9'ELE_PERC20'#9'F'#9
      'ELE_PERC21'#9'10'#9'ELE_PERC21'#9'F'#9
      'ELE_PERC22'#9'10'#9'ELE_PERC22'#9'F'#9
      'ELE_PERC23'#9'10'#9'ELE_PERC23'#9'F'#9
      'ELE_PERC24'#9'10'#9'ELE_PERC24'#9'F'#9
      'ELE_PERC25'#9'10'#9'ELE_PERC25'#9'F'#9
      'RECOVERY_PERC'#9'10'#9'RECOVERY_PERC'#9#9
      'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
      'UPDATE_USER'#9'10'#9'UPDATE_USER'#9#9
      'UPDATE_DATE'#9'18'#9'UPDATE_DATE'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = datasource
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 345
    Width = 938
    Height = 49
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 2
    object btImport: TButton
      Left = 584
      Top = 16
      Width = 179
      Height = 25
      Caption = 'Import Selected Row(F2)'
      ModalResult = 1
      TabOrder = 0
      OnClick = btImportClick
    end
    object btExit: TButton
      Left = 768
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exit'
      ModalResult = 2
      TabOrder = 1
    end
    object btDelete: TButton
      Left = 488
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btDeleteClick
    end
    object btSave: TButton
      Left = 376
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = btSaveClick
    end
  end
  object datasource: TDataSource
    DataSet = ProductionDM.tbPLElementTemplate
    OnDataChange = datasourceDataChange
    Left = 752
    Top = 48
  end
end
