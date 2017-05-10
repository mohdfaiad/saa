inherited frmDebtorType: TfrmDebtorType
  Left = 347
  Top = 211
  Width = 513
  Height = 287
  Caption = 'Debtor Type Setup'
  Font.Name = 'Tahoma'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 240
    Width = 505
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited ToolBar: TToolBar
    Width = 505
  end
  inherited mainPanel: TPanel
    Width = 505
    Height = 211
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 503
      Height = 209
      DisableThemes = False
      Selected.Strings = (
        'DEBTOR_TYPE'#9'2'#9'DEBTOR_TYPE'#9#9
        'DESCS'#9'60'#9'DESCS'#9#9
        'UPDATE_USER'#9'10'#9'UPDATE_USER'#9#9
        'UPDATE_DATE'#9'18'#9'UPDATE_DATE'#9'T')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dataSource
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbArDebtorType
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 296
    Top = 72
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
    end
  end
end
