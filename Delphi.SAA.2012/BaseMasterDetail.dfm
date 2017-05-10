inherited BaseUIMasterDetailForm: TBaseUIMasterDetailForm
  Left = 227
  Top = 164
  Width = 747
  Height = 481
  Caption = 'BaseUIMasterDetailForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 227
    Width = 731
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  inherited StatusBar1: TfcStatusBar
    Top = 423
    Width = 731
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  object panel1: TPanel
    Left = 0
    Top = 230
    Width = 731
    Height = 193
    Align = alClient
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 729
      Height = 191
      DisableThemes = False
      IniAttributes.Delimiter = ';;'
      TitleColor = 9927006
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsDetail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
    end
  end
  object plHeader: TPanel
    Left = 0
    Top = 33
    Width = 731
    Height = 194
    Align = alTop
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object plToolBar: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 33
    Align = alTop
    TabOrder = 3
  end
  object dsMaster: TDataSource
    OnStateChange = dsMasterStateChange
    Left = 536
    Top = 17
  end
  object dsDetail: TDataSource
    OnStateChange = dsDetailStateChange
    Left = 552
    Top = 265
  end
end
