inherited MaterialRequestBrowseForm: TMaterialRequestBrowseForm
  Left = 153
  Top = 195
  Width = 606
  Height = 341
  Caption = 'Material Request Manager Window'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 283
    Width = 590
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
        Width = '150'
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
        Width = '50'
      end>
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 590
    Height = 251
    DisableThemes = False
    Selected.Strings = (
      'DOC_NO'#9'15'#9'Document No'
      'DOC_DATE'#9'18'#9'Document Date'
      'REQ_BY'#9'60'#9'Request By'
      'ISSUE_BY'#9'60'#9'Issue By'
      'MELT_NO'#9'10'#9'Melt No')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = wwDBGrid1RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = WarehouseDataManager.dsUnPostedMaterialRequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = []
    MultiSelectOptions = [msoAutoUnselect]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    OnMouseDown = wwDBGrid1MouseDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 251
    Width = 590
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Button1: TButton
      Left = 80
      Top = 3
      Width = 75
      Height = 25
      Action = actEdit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button3: TButton
      Left = 520
      Top = 3
      Width = 75
      Height = 25
      Action = actExit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button4: TButton
      Left = 408
      Top = 3
      Width = 75
      Height = 25
      Action = actPost
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button5: TButton
      Left = 5
      Top = 3
      Width = 75
      Height = 25
      Action = actNew
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object ActionManager1: TActionManager
    Left = 352
    Top = 48
    StyleName = 'Standard'
    object actEdit: TAction
      Caption = 'Edit'
      ShortCut = 16453
      OnExecute = actEditExecute
    end
    object actPrint: TAction
      Caption = 'Print'
    end
    object actPost: TAction
      Caption = 'Post'
      ShortCut = 16464
      OnExecute = actPostExecute
    end
    object actExit: TAction
      Caption = 'Cancel'
      ShortCut = 32776
      OnExecute = actExitExecute
    end
    object actNew: TAction
      Caption = 'New'
      ShortCut = 16462
      OnExecute = actNewExecute
    end
  end
end
