inherited frmMeltSheet: TfrmMeltSheet
  Left = 447
  Top = 198
  Width = 1110
  Height = 642
  Caption = 'Melt Sheet Preparation'
  Font.Height = -9
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 417
    Width = 1094
    Height = 2
  end
  inherited lbTitle: TLabel
    Width = 1094
    Height = 15
    Font.Height = -12
  end
  inherited plHeader: TPanel
    Top = 15
    Width = 1094
    Height = 402
    TabOrder = 1
    object Bevel1: TBevel [0]
      Left = 2
      Top = 31
      Width = 1090
      Height = 2
      Align = alTop
    end
    object GroupBox3: TGroupBox [1]
      Left = 7
      Top = 34
      Width = 409
      Height = 359
      Caption = 'General:'
      TabOrder = 2
      object Label6: TLabel
        Left = 15
        Top = 155
        Width = 61
        Height = 13
        Caption = 'Tab Remark:'
      end
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 68
        Height = 13
        Caption = 'Document No:'
      end
      object Label2: TLabel
        Left = 201
        Top = 23
        Width = 78
        Height = 13
        Caption = 'Document Date:'
      end
      object cxDBTextPlanDoc: TcxDBTextEdit
        Left = 88
        Top = 21
        DataBinding.DataField = 'PLAN_DOC'
        DataBinding.DataSource = dsMaster
        TabOrder = 0
        OnEnter = cxDBTextPlanDocEnter
        Width = 106
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 284
        Top = 21
        DataBinding.DataField = 'PLAN_DATE'
        DataBinding.DataSource = dsMaster
        TabOrder = 1
        Width = 104
      end
      object cxDBMemo2: TcxDBMemo
        Left = 97
        Top = 154
        DataBinding.DataField = 'TAP_REMARK'
        DataBinding.DataSource = dsMaster
        TabOrder = 2
        Height = 48
        Width = 290
      end
    end
    inherited ToolBar: TToolBar
      Width = 1090
      ButtonHeight = 22
      object Label7: TLabel
        Left = 391
        Top = 0
        Width = 357
        Height = 22
        Caption = 
          'Crtl+F2 Goto Column .F7(New Record) . F11(Open Import From Sprec' +
          'tro )'
      end
    end
    object GroupBox1: TGroupBox
      Left = 21
      Top = 90
      Width = 375
      Height = 84
      Caption = 'Melt Info:'
      TabOrder = 1
      object Label3: TLabel
        Left = 16
        Top = 21
        Width = 40
        Height = 13
        Caption = 'Melt No:'
      end
      object Label4: TLabel
        Left = 16
        Top = 41
        Width = 54
        Height = 13
        Caption = 'Item Code:'
      end
      object Label5: TLabel
        Left = 16
        Top = 63
        Width = 53
        Height = 13
        Caption = 'Customer :'
      end
      object dlgMeltNo: TwwDBLookupComboDlg
        Left = 63
        Top = 14
        Width = 83
        Height = 21
        DisableThemes = False
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Melt No'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'MELT_NO'#9'10'#9'MELT_NO'#9#9
          'LINE_NO'#9'10'#9'LINE_NO'#9#9
          'PLAN_DOC'#9'15'#9'PLAN_DOC'#9#9
          'PLAN_DATE'#9'18'#9'PLAN_DATE'#9#9
          'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
          'CUST_NAME'#9'60'#9'CUST_NAME'#9#9
          'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
          'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9
          'ESTIMATED_WEIGHT'#9'10'#9'ESTIMATED_WEIGHT'#9#9)
        DataField = 'MELT_NO'
        DataSource = dsMaster
        LookupTable = ProductionDM.qryActiveMeltNo
        LookupField = 'MELT_NO'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 63
        Top = 34
        DataBinding.DataField = 'ITEM_DESCS'
        DataBinding.DataSource = dsMaster
        TabOrder = 1
        Width = 298
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 63
        Top = 56
        DataBinding.DataField = 'CUST_NAME'
        DataBinding.DataSource = dsMaster
        TabOrder = 2
        Width = 298
      end
    end
    object GroupBox5: TGroupBox
      Left = 426
      Top = 256
      Width = 655
      Height = 136
      Caption = 'Final Result:'
      TabOrder = 3
      object Label10: TLabel
        Left = 14
        Top = 14
        Width = 58
        Height = 13
        Caption = 'Total Dross:'
      end
      object Label11: TLabel
        Left = 14
        Top = 31
        Width = 72
        Height = 13
        Caption = 'Total Charged:'
      end
      object Label12: TLabel
        Left = 14
        Top = 48
        Width = 77
        Height = 13
        Caption = 'Total Recovery:'
      end
      object Label13: TLabel
        Left = 14
        Top = 66
        Width = 53
        Height = 13
        Caption = 'Total Cost:'
      end
      object Label14: TLabel
        Left = 14
        Top = 83
        Width = 64
        Height = 13
        Caption = 'Recovery %:'
      end
      object Label15: TLabel
        Left = 14
        Top = 101
        Width = 70
        Height = 13
        Caption = 'Total Bath/KG:'
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 113
        Top = 7
        DataBinding.DataField = 'TOTAL_DROSS'
        DataBinding.DataSource = dsMaster
        TabOrder = 0
        Width = 104
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 113
        Top = 26
        DataBinding.DataField = 'TOTAL_CHARGED_WEIGHT'
        DataBinding.DataSource = dsMaster
        TabOrder = 1
        Width = 104
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 113
        Top = 44
        DataBinding.DataField = 'TOTAL_RECOVERY_WEIGHT'
        DataBinding.DataSource = dsMaster
        TabOrder = 2
        Width = 104
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 113
        Top = 63
        DataBinding.DataField = 'TOTAL_COST'
        DataBinding.DataSource = dsMaster
        TabOrder = 3
        Width = 104
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 113
        Top = 83
        DataBinding.DataField = 'RECOVERYPERCENTAGE'
        DataBinding.DataSource = dsMaster
        TabOrder = 4
        Width = 104
      end
      object cxDBTextEdit48: TcxDBTextEdit
        Left = 113
        Top = 102
        DataBinding.DataField = 'CostPerUnit'
        DataBinding.DataSource = dsMaster
        TabOrder = 5
        Width = 104
      end
      object GroupBox7: TGroupBox
        Left = 224
        Top = 8
        Width = 89
        Height = 49
        Caption = 'Action :'
        TabOrder = 6
        object btRecal: TButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          Action = actionRecalculate
          TabOrder = 0
        end
      end
    end
    inline FrameMeltSheetCustomerRequirement1: TFrameMeltSheetCustomerRequirement
      Left = 428
      Top = 38
      Width = 653
      Height = 211
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      inherited GroupBox2: TGroupBox
        inherited cxDBTextEdit22: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit23: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit24: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit25: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit26: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit27: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit28: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit29: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit30: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit31: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit32: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit33: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit34: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit35: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit36: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit37: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit38: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit39: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit40: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit41: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit42: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit43: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit44: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit45: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit46: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit47: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit65: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit66: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit79: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit80: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
      end
      inherited GroupBox6: TGroupBox
        inherited cxDBTextEdit1: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit2: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit3: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit13: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit14: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit15: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit16: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit17: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit48: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit49: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit50: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit51: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit52: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit53: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
        inherited cxDBTextEdit54: TcxDBTextEdit
          DataBinding.DataSource = dsReqSheet
        end
      end
    end
  end
  inherited plToolBar: TPanel
    Left = 380
    Top = 14
    Width = 21
    Height = 21
  end
  inherited StatusBar1: TfcStatusBar
    Top = 587
    Width = 1094
    Height = 17
  end
  inherited panel1: TPanel
    Top = 419
    Width = 1094
    Height = 168
    TabOrder = 0
    object cxPageControl1: TcxPageControl [0]
      Left = 1
      Top = 1
      Width = 1092
      Height = 166
      ActivePage = cxTabSheet2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ClientRectBottom = 166
      ClientRectRight = 1092
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Manage Sheet Item'
        ImageIndex = 0
        object dlgMaterial: TwwDBLookupComboDlg
          Left = 208
          Top = 208
          Width = 121
          Height = 21
          DisableThemes = False
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Material'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'STOCK_CD'#9'15'#9'STOCK_CD'#9#9
            'GROUP_ID'#9'10'#9'GROUP_ID'#9'F'#9
            'EN_DESCS'#9'60'#9'EN_DESCS'#9'F'
            'TH_DESCS'#9'60'#9'TH_DESCS'#9'F'
            'UNIT_COST'#9'10'#9'UNIT_COST'#9'F'#9
            'RECOVERY'#9'10'#9'RECOVERY'#9'F'#9)
          DataField = 'ITEM_CODE'
          DataSource = dsDetail
          LookupTable = ProductionDM.qryMaterial
          LookupField = 'STOCK_CD'
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
        object dlgPurchaserOrder: TwwDBLookupComboDlg
          Left = 368
          Top = 208
          Width = 121
          Height = 21
          DisableThemes = False
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
            'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
            'SUPP_CODE'#9'10'#9'SUPP_CODE'#9#9
            'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
            'QTY'#9'10'#9'QTY'#9#9
            'UNIT_COST'#9'10'#9'UNIT_COST'#9#9)
          DataField = 'LOT_NO'
          DataSource = dsDetail
          LookupTable = ProductionDM.qryActiveMeltSheetStock
          LookupField = 'ORDER_NO'
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Summary'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1092
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsDetail
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Column = cxGridDBTableView2CHECK_PLATE_GROUP_ID
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Cu:,0.00'
                Kind = skAverage
                FieldName = 'ELE_PERC1'
                Column = cxGridDBTableView2ELE_PERC1
                DisplayText = 'Cu'
              end
              item
                Format = 'Al:,0.00'
                Kind = skAverage
                FieldName = 'ELE_PERC2'
                Column = cxGridDBTableView2ELE_PERC2
                DisplayText = 'Al'
              end
              item
                Format = 'Zn:,0.00'
                Kind = skAverage
                FieldName = 'ELE_PERC3'
                Column = cxGridDBTableView2ELE_PERC3
                DisplayText = 'Zn'
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC4'
                Column = cxGridDBTableView2ELE_PERC4
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC5'
                Column = cxGridDBTableView2ELE_PERC5
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC6'
                Column = cxGridDBTableView2ELE_PERC6
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC7'
                Column = cxGridDBTableView2ELE_PERC7
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC8'
                Column = cxGridDBTableView2ELE_PERC8
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC9'
                Column = cxGridDBTableView2ELE_PERC9
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC10'
                Column = cxGridDBTableView2ELE_PERC10
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC11'
                Column = cxGridDBTableView2ELE_PERC11
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC12'
                Column = cxGridDBTableView2ELE_PERC12
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC13'
                Column = cxGridDBTableView2ELE_PERC13
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC14'
                Column = cxGridDBTableView2ELE_PERC13
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC15'
                Column = cxGridDBTableView2ELE_PERC15
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC16'
                Column = cxGridDBTableView2ELE_PERC16
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC17'
                Column = cxGridDBTableView2ELE_PERC17
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC18'
                Column = cxGridDBTableView2ELE_PERC18
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC19'
                Column = cxGridDBTableView2ELE_PERC19
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC20'
                Column = cxGridDBTableView2ELE_PERC20
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC21'
                Column = cxGridDBTableView2ELE_PERC21
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC22'
                Column = cxGridDBTableView2ELE_PERC22
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC23'
                Column = cxGridDBTableView2ELE_PERC23
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC24'
                Column = cxGridDBTableView2ELE_PERC24
              end
              item
                Kind = skAverage
                FieldName = 'ELE_PERC25'
                Column = cxGridDBTableView2ELE_PERC25
              end
              item
                Kind = skSum
                FieldName = 'CHARGED_WEIGHT'
                Column = cxGridDBTableView2CHARGED_WEIGHT
                DisplayText = 'Total Cost'
              end
              item
                Kind = skSum
                FieldName = 'RECOVERY_WEIGHT'
                Column = cxGridDBTableView2RECOVERY_WEIGHT
                DisplayText = 'Charged'
              end
              item
                Kind = skSum
                FieldName = 'TOTAL_COST'
                Column = cxGridDBTableView2TOTAL_COST
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <
                  item
                    Column = cxGridDBTableView2CHECK_PLATE_GROUP_ID
                  end>
                SummaryItems = <
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC1'
                    Column = cxGridDBTableView2ELE_PERC1
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC2'
                    Column = cxGridDBTableView2ELE_PERC2
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC3'
                    Column = cxGridDBTableView2ELE_PERC3
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC4'
                    Column = cxGridDBTableView2ELE_PERC4
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC5'
                    Column = cxGridDBTableView2ELE_PERC5
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC6'
                    Column = cxGridDBTableView2ELE_PERC6
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC7'
                    Column = cxGridDBTableView2ELE_PERC7
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC8'
                    Column = cxGridDBTableView2ELE_PERC8
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC9'
                    Column = cxGridDBTableView2ELE_PERC9
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC10'
                    Column = cxGridDBTableView2ELE_PERC10
                    DisplayText = 'Total Charged'
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC11'
                    Column = cxGridDBTableView2ELE_PERC11
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC12'
                    Column = cxGridDBTableView2ELE_PERC12
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC13'
                    Column = cxGridDBTableView2ELE_PERC13
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC14'
                    Column = cxGridDBTableView2ELE_PERC14
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC15'
                    Column = cxGridDBTableView2ELE_PERC15
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC16'
                    Column = cxGridDBTableView2ELE_PERC16
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC17'
                    Column = cxGridDBTableView2ELE_PERC17
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC18'
                    Column = cxGridDBTableView2ELE_PERC18
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC19'
                    Column = cxGridDBTableView2ELE_PERC19
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC20'
                    Column = cxGridDBTableView2ELE_PERC20
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC21'
                    Column = cxGridDBTableView2ELE_PERC21
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC22'
                    Column = cxGridDBTableView2ELE_PERC22
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC23'
                    Column = cxGridDBTableView2ELE_PERC23
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC24'
                    Column = cxGridDBTableView2ELE_PERC24
                  end
                  item
                    Kind = skAverage
                    FieldName = 'ELE_PERC25'
                    Column = cxGridDBTableView2ELE_PERC25
                  end
                  item
                    Kind = skSum
                    FieldName = 'CHARGED_WEIGHT'
                    Column = cxGridDBTableView2CHARGED_WEIGHT
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBTableView2RECOVERY_WEIGHT
                  end
                  item
                    Kind = skSum
                    FieldName = 'TOTAL_COST'
                    Column = cxGridDBTableView2TOTAL_COST
                  end>
              end>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGridDBTableView2CHECK_PLATE_GROUP_ID: TcxGridDBColumn
              Caption = 'Glx'
              DataBinding.FieldName = 'CHECK_PLATE_GROUP_ID'
              Visible = False
              GroupIndex = 0
            end
            object cxGridDBTableView2LINE_NO: TcxGridDBColumn
              DataBinding.FieldName = 'LINE_NO'
              Width = 25
            end
            object cxGridDBTableView2LAST_MELT_ITEM: TcxGridDBColumn
              Caption = 'Last'
              DataBinding.FieldName = 'LAST_MELT_ITEM'
            end
            object cxGridDBTableView2LOT_NO: TcxGridDBColumn
              DataBinding.FieldName = 'LOT_NO'
            end
            object cxGridDBTableView2PURCHASE_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'PURCHASE_DATE'
            end
            object cxGridDBTableView2STOCK_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'STOCK_CODE'
            end
            object cxGridDBTableView2GROUP_ID: TcxGridDBColumn
              DataBinding.FieldName = 'GROUP_ID'
            end
            object cxGridDBTableView2UOM: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
            end
            object cxGridDBTableView2SUPPLIER_CD: TcxGridDBColumn
              DataBinding.FieldName = 'SUPPLIER_CD'
            end
            object cxGridDBTableView2CHECK_PLATE_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'CHECK_PLATE_FLAG'
            end
            object cxGridDBTableView2ELE_PERC1: TcxGridDBColumn
              AlternateCaption = 'Cu'
              Caption = 'Cu'
              DataBinding.FieldName = 'ELE_PERC1'
            end
            object cxGridDBTableView2ELE_PERC2: TcxGridDBColumn
              AlternateCaption = 'Al'
              DataBinding.FieldName = 'ELE_PERC2'
            end
            object cxGridDBTableView2ELE_PERC3: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC3'
            end
            object cxGridDBTableView2ELE_PERC4: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC4'
            end
            object cxGridDBTableView2ELE_PERC5: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC5'
            end
            object cxGridDBTableView2ELE_PERC6: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC6'
            end
            object cxGridDBTableView2ELE_PERC7: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC7'
            end
            object cxGridDBTableView2ELE_PERC8: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC8'
            end
            object cxGridDBTableView2ELE_PERC9: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC9'
            end
            object cxGridDBTableView2ELE_PERC10: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC10'
            end
            object cxGridDBTableView2ELE_PERC11: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC11'
            end
            object cxGridDBTableView2ELE_PERC12: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC12'
            end
            object cxGridDBTableView2ELE_PERC13: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC13'
            end
            object cxGridDBTableView2ELE_PERC14: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC14'
            end
            object cxGridDBTableView2ELE_PERC15: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC15'
            end
            object cxGridDBTableView2ELE_PERC16: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC16'
            end
            object cxGridDBTableView2ELE_PERC17: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC17'
            end
            object cxGridDBTableView2ELE_PERC18: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC18'
            end
            object cxGridDBTableView2ELE_PERC19: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC19'
            end
            object cxGridDBTableView2ELE_PERC20: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC20'
            end
            object cxGridDBTableView2ELE_PERC21: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC21'
            end
            object cxGridDBTableView2ELE_PERC22: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC22'
            end
            object cxGridDBTableView2ELE_PERC23: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC23'
            end
            object cxGridDBTableView2ELE_PERC24: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC24'
            end
            object cxGridDBTableView2ELE_PERC25: TcxGridDBColumn
              DataBinding.FieldName = 'ELE_PERC25'
            end
            object cxGridDBTableView2RECOVERY_PERC: TcxGridDBColumn
              DataBinding.FieldName = 'RECOVERY_PERC'
            end
            object cxGridDBTableView2CHARGED_WEIGHT: TcxGridDBColumn
              AlternateCaption = 'Total Charged'
              DataBinding.FieldName = 'CHARGED_WEIGHT'
            end
            object cxGridDBTableView2RECOVERY_WEIGHT: TcxGridDBColumn
              DataBinding.FieldName = 'RECOVERY_WEIGHT'
            end
            object cxGridDBTableView2UNIT_COST: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
            end
            object cxGridDBTableView2TOTAL_COST: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_COST'
              Width = 136
            end
            object cxGridDBTableView2REF_MELT_NO: TcxGridDBColumn
              DataBinding.FieldName = 'REF_MELT_NO'
            end
            object cxGridDBTableView2DESCS: TcxGridDBColumn
              DataBinding.FieldName = 'DESCS'
              Width = 106
            end
            object cxGridDBTableView2ONHAND_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'ONHAND_QTY'
            end
            object cxGridDBTableView2ORDER_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_QTY'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
          object cxGrid1Level1: TcxGridLevel
          end
        end
      end
    end
    inherited wwDBGrid1: TwwDBGrid
      Left = 271
      Top = 80
      Width = 146
      Height = 113
      Hint = 
        'F7(New Record) . F11(Open Import From Sprectro   F2 Confirm Impo' +
        'rt and Close)'
      ControlType.Strings = (
        'LAST_MELT_ITEM;CheckBox;Y;N'
        'CHECK_PLATE_FLAG;CheckBox;Y;N'
        'STOCK_CODE;CustomEdit;dlgMaterial;F'
        'LOT_NO;CustomEdit;dlgPurchaserOrder;F')
      Selected.Strings = (
        'CHECK_PLATE_FLAG'#9'1'#9'CHECK_PLATE_FLAG'#9'F'#9
        'CHECK_PLATE_GROUP_ID'#9'10'#9'CHECK_PLATE_GROUP_ID'#9#9
        'LAST_MELT_ITEM'#9'1'#9'Is Last Melt'#9#9
        'LINE_NO'#9'10'#9'LINE_NO'#9#9
        'REF_MELT_NO'#9'10'#9'REF_MELT_NO'#9#9
        'STOCK_CODE'#9'15'#9'STOCK_CODE'#9#9
        'GROUP_ID'#9'10'#9'GROUP_ID'#9#9
        'LOT_NO'#9'15'#9'LOT_NO'#9#9
        'UOM'#9'4'#9'UOM'#9#9
        'PURCHASE_DATE'#9'18'#9'PURCHASE_DATE'#9#9
        'SUPPLIER_CD'#9'10'#9'SUPPLIER_CD'#9#9
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
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'RECOVERY_PERC'#9'10'#9'RECOVERY_PERC'#9#9
        'CHARGED_WEIGHT'#9'10'#9'CHARGED_WEIGHT'#9#9
        'RECOVERY_WEIGHT'#9'10'#9'RECOVERY_WEIGHT'#9#9
        'TOTAL_COST'#9'10'#9'TOTAL_COST'#9#9
        'DESCS'#9'60'#9'Remark'#9'F'#9)
      Align = alNone
      Font.Name = 'Tahoma'
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 856
    Top = 25
  end
  inherited dsDetail: TDataSource
    DataSet = ProductionDM.tbMaterialSheetDT
    OnDataChange = dsDetailDataChange
    Left = 784
    Top = 25
  end
  object dsReqSheet: TDataSource
    DataSet = ProductionDM.tbSaleItemReqSheet
    Left = 818
    Top = 26
  end
  object PopupMenu1: TPopupMenu
    Left = 609
    Top = 452
    object TMenuItem
    end
    object Refresh1: TMenuItem
      Action = ActionRefresh
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object DeleteGroup1: TMenuItem
      Action = ActionDeleteGroup
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImportDataFromSpectro1: TMenuItem
      Action = ActionImport
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SavetoTemplate1: TMenuItem
      Action = ActionSaveTemplate
    end
    object ImportTemplate1: TMenuItem
      Action = ActionImportTemplate
      Caption = 'Import From Template'
    end
  end
  object ActionManager1: TActionManager
    Left = 593
    Top = 388
    StyleName = 'XP Style'
    object ActionDeleteGroup: TAction
      Caption = 'Delete Group'
      OnExecute = ActionDeleteGroupExecute
    end
    object ActionImport: TAction
      Caption = 'Import Data From Spectro.'
      ShortCut = 122
      OnExecute = ActionImportExecute
    end
    object actionRecalculate: TAction
      Caption = 'Recalculate'
      ShortCut = 121
      OnExecute = actionRecalculateExecute
    end
    object ActionRefresh: TAction
      Caption = 'Refresh'
      ShortCut = 116
      OnExecute = ActionRefreshExecute
    end
    object ActionSaveTemplate: TAction
      Caption = 'Save to Template'
      OnExecute = ActionSaveTemplateExecute
    end
    object ActionImportTemplate: TAction
      Caption = 'ImportTemplate'
      OnExecute = ActionImportTemplateExecute
    end
    object ActionGotoColumn: TAction
      Caption = 'Goto Column'
      ShortCut = 16497
      OnExecute = ActionGotoColumnExecute
    end
  end
end
