inherited frmCreditorType: TfrmCreditorType
  Left = 190
  Top = 205
  Width = 475
  Height = 256
  Caption = 'Creditor Type Setup'
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Top = 209
    Width = 467
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
    Width = 467
  end
  inherited mainPanel: TPanel
    Width = 467
    Height = 180
    object dxDBGrid2: TdxDBGrid
      Left = 1
      Top = 1
      Width = 465
      Height = 178
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CREDITOR_TYPE'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'Arial'
      BandFont.Style = []
      DataSource = dataSource
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Arial'
      HeaderFont.Style = []
      LookAndFeel = lfUltraFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'Arial'
      PreviewFont.Style = []
      object dxDBGrid2CREDITOR_TYPE: TdxDBGridMaskColumn
        Caption = 'Type Code'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CREDITOR_TYPE'
      end
      object dxDBGrid2DESCS: TdxDBGridMaskColumn
        Caption = 'Description'
        Width = 504
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCS'
      end
      object dxDBGrid2UPDATE_USER: TdxDBGridMaskColumn
        Visible = False
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UPDATE_USER'
      end
      object dxDBGrid2UPDATE_DATE: TdxDBGridDateColumn
        Visible = False
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UPDATE_DATE'
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbApCreditorType
  end
end
