inherited frmDeliveryOrderMelt: TfrmDeliveryOrderMelt
  Left = 412
  Top = 272
  Width = 809
  Height = 614
  Caption = 'Delivery Order Melt'
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Top = 556
    Width = 793
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
    Width = 793
  end
  inherited mainPanel: TPanel
    Width = 793
    Height = 527
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 791
      Height = 224
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 1
        Top = 220
        Width = 789
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter2: TSplitter
        Left = 533
        Top = 1
        Height = 219
        Align = alRight
      end
      object GroupBox1: TGroupBox
        Left = 536
        Top = 1
        Width = 254
        Height = 219
        Align = alRight
        Caption = 'Action'
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 32
          Width = 67
          Height = 14
          Caption = 'Onhand Qty  :'
        end
        object Label2: TLabel
          Left = 8
          Top = 64
          Width = 38
          Height = 14
          Caption = 'Melt No:'
        end
        object Label3: TLabel
          Left = 8
          Top = 88
          Width = 47
          Height = 14
          Caption = 'Order No:'
        end
        object Label4: TLabel
          Left = 8
          Top = 115
          Width = 53
          Height = 14
          Caption = 'Item Code :'
        end
        object Label5: TLabel
          Left = 0
          Top = 48
          Width = 79
          Height = 14
          Caption = '+ Reserved Qty:'
        end
        object BitBtn1: TBitBtn
          Left = 140
          Top = 183
          Width = 75
          Height = 25
          Caption = 'Add Weight'
          TabOrder = 0
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 96
          Top = 32
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 96
          Top = 80
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 96
          Top = 112
          TabOrder = 3
          Width = 121
        end
        object cxTextEdit1: TcxTextEdit
          Left = 12
          Top = 187
          TabOrder = 4
          Text = '550,530,510'
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 96
          Top = 56
          TabOrder = 5
          Width = 121
        end
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 1
        Width = 532
        Height = 219
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.CustomizeDialog = False
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
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'ORDER_NO'
            Options.Filtering = False
            Width = 85
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'ORDER_DATE'
            Options.Filtering = False
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'ITEM_CODE'
            Options.Filtering = False
            Width = 79
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'UOM'
            Options.Filtering = False
            Width = 36
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'ITEM_DESCS'
            Options.Filtering = False
            Width = 354
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'UNIT_COST'
            Options.Filtering = False
          end
          object cxGridDBColumn19: TcxGridDBColumn
            DataBinding.FieldName = 'REMARKS'
            Options.Filtering = False
            Width = 150
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'BASE_AMT'
            Options.Filtering = False
          end
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
            Options.Filtering = False
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            Options.Filtering = False
          end
          object cxGridDBColumn23: TcxGridDBColumn
            DataBinding.FieldName = 'DET_QTY'
            Options.Filtering = False
          end
          object cxGridDBColumn24: TcxGridDBColumn
            DataBinding.FieldName = 'DELIVERY_DATE'
            Options.Filtering = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 225
      Width = 791
      Height = 301
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Current Order'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 783
          Height = 272
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
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
            object cxGrid1DBTableView1ORDER_NO: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_NO'
              Options.Filtering = False
              Width = 85
            end
            object cxGrid1DBTableView1ORDER_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_DATE'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
              Options.Filtering = False
              Width = 79
            end
            object cxGrid1DBTableView1UOM: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
              Options.Filtering = False
              Width = 36
            end
            object cxGrid1DBTableView1ITEM_DESCS: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
              Options.Filtering = False
              Width = 354
            end
            object cxGrid1DBTableView1UNIT_COST: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1REMARKS: TcxGridDBColumn
              DataBinding.FieldName = 'REMARKS'
              Options.Filtering = False
              Width = 150
            end
            object cxGrid1DBTableView1BASE_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'BASE_AMT'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1QTY: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1DET_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'DET_QTY'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1DELIVERY_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERY_DATE'
              Options.Filtering = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Summary'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 783
          Height = 272
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
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
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_NO'
              Options.Filtering = False
              Width = 85
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_DATE'
              Options.Filtering = False
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
              Options.Filtering = False
              Width = 79
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
              Options.Filtering = False
              Width = 36
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
              Options.Filtering = False
              Width = 354
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
              Options.Filtering = False
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'REMARKS'
              Options.Filtering = False
              Width = 150
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'BASE_AMT'
              Options.Filtering = False
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
              Options.Filtering = False
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Options.Filtering = False
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'DET_QTY'
              Options.Filtering = False
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERY_DATE'
              Options.Filtering = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited dataSource: TDataSource
    Left = 512
    Top = 32
  end
  inherited searchDialog: TwwSearchDialog
    Left = 408
    Top = 0
  end
  inherited RecordViewDialog: TwwRecordViewDialog
    Left = 448
    Top = 0
  end
end
