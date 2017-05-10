inherited frmMeltSheetInspectImportPOPUP: TfrmMeltSheetInspectImportPOPUP
  Left = 188
  Top = 250
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Import data from spectro'
  ClientHeight = 358
  ClientWidth = 867
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 338
    Width = 867
    SizeGrip = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 867
    Height = 289
    DisableThemes = False
    Selected.Strings = (
      'LOT_CD'#9'15'#9'LOT_CD'#9#9
      'PURCHASE_DATE'#9'18'#9'PURCHASE_DATE'#9#9
      'LINE_NO'#9'10'#9'LINE_NO'#9#9
      'REF_DATE'#9'18'#9'REF_DATE'#9#9
      'REF_NO'#9'15'#9'REF_NO'#9#9
      'ELE1_PERC'#9'10'#9'ELE1_PERC'#9#9
      'ELE2_PERC'#9'10'#9'ELE2_PERC'#9#9
      'ELE3_PERC'#9'10'#9'ELE3_PERC'#9#9
      'ELE4_PERC'#9'10'#9'ELE4_PERC'#9#9
      'ELE5_PERC'#9'10'#9'ELE5_PERC'#9#9
      'ELE6_PERC'#9'10'#9'ELE6_PERC'#9#9
      'ELE7_PERC'#9'10'#9'ELE7_PERC'#9#9
      'ELE8_PERC'#9'10'#9'ELE8_PERC'#9#9
      'ELE9_PERC'#9'10'#9'ELE9_PERC'#9#9
      'ELE10_PERC'#9'10'#9'ELE10_PERC'#9#9
      'ELE11_PERC'#9'10'#9'ELE11_PERC'#9#9
      'ELE12_PERC'#9'10'#9'ELE12_PERC'#9#9
      'ELE13_PERC'#9'10'#9'ELE13_PERC'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DataSource
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    Top = 289
    Width = 867
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
    object Button1: TButton
      Left = 768
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exit'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DataSource: TDataSource
    DataSet = ProductionDM.tbQAMeltInspect
    Left = 360
    Top = 32
  end
end
