inherited cxAbstractDataBrowse: TcxAbstractDataBrowse
  Left = 221
  Top = 188
  Width = 587
  Caption = 'AbstractDataBrowse'
  PixelsPerInch = 96
  TextHeight = 13
  object lbHeader: TLabel [0]
    Left = 0
    Top = 0
    Width = 571
    Height = 14
    Align = alTop
    Caption = 'Put your help text here.'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited StatusBar1: TfcStatusBar
    Width = 571
    Font.Name = 'Arial'
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
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
        Font.Name = 'Aril'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    ParentFont = False
  end
  inherited Grid: TwwDBGrid
    Left = 8
    Top = 248
    Width = 49
    Height = 52
    Align = alNone
    Color = clYellow
    Visible = False
  end
  inherited Panel1: TPanel
    Width = 571
  end
  object cxGrid: TcxGrid [4]
    Left = 0
    Top = 14
    Width = 571
    Height = 283
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    object cxGridDBTableView: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = cxGridDBTableViewDblClick
      NavigatorButtons.ConfirmDelete = False
      FilterBox.CustomizeDialog = False
      OnCellClick = cxGridDBTableViewCellClick
      DataController.DataSource = datasource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentOdd = SystemMenuDM.cxStyle232
      Styles.Header = SystemMenuDM.cxStyle153
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridDBTableView
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 504
    Top = 96
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 504
    Top = 64
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
