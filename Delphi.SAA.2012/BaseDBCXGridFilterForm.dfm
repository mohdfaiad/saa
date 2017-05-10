object frmCXGridFilterView: TfrmCXGridFilterView
  Left = 383
  Top = 154
  Width = 502
  Height = 309
  Caption = 'frmCXGridFilterView'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 486
    Height = 271
    Align = alClient
    TabOrder = 0
    object cxTableView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Hint = 'Insert Record'
      NavigatorButtons.Append.Enabled = False
      NavigatorButtons.Post.Hint = 'Save'
      FilterBox.Position = fpTop
      FilterBox.Visible = fvAlways
      DataController.DataSource = datasource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'ITEM_CODE'
          DisplayText = 'Total Record'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      Styles.Header = SystemMenuDM.cxStyle153
    end
    object cxTableLevel: TcxGridLevel
      GridView = cxTableView
    end
  end
  object datasource: TDataSource
    Left = 432
    Top = 88
  end
end
