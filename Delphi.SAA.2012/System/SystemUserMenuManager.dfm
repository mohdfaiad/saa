inherited frmSysUserMenuManager: TfrmSysUserMenuManager
  Left = 385
  Top = 267
  Width = 1211
  Height = 651
  Caption = 'User Menu Setup'
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Top = 593
    Width = 1195
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
        Text = 
          'User pop menu to import menus or drag menu item to the right dat' +
          'a grid'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited ToolBar: TToolBar
    Width = 1195
    Height = 41
    ButtonHeight = 22
    inherited exitButton: TToolButton
      OnClick = exitButtonClick
    end
    object lbUser: TLabel
      Left = 391
      Top = 0
      Width = 84
      Height = 22
      Caption = 'Curent User'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 475
      Top = 0
      Width = 24
      Height = 22
      Hint = 'Drag menu item on data grid below then drop it over'
      Picture.Data = {
        055449636F6E0000010001002020000000000000A80C00001600000028000000
        20000000400000000100180000000000800C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000314149496878000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000049
        68783141494968783D5460000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000031414949
        68783141494968783D54600000006B808B53646D000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000049687831414949
        68783141494968783D5460000000798A935F747F657C8846545B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000031414949687831414949
        68783141494968783D5460000000798A935F747F5F747F46545B5F747F53646D
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000031414949687831414949
        68783141494968783D5460000000798A935F747F5F747F46545B5F747F5F747F
        0000004968780000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000031414949687831414941
        5B683141494968783D5460000000798A93657C885F747F46545B5F747F5F747F
        0000004968780000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003141494968783D546041
        5B683D54604968783D5460000000798A93657C88657C8853646D5F747F5F747F
        0000004968780000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000031414949687831414941
        5B683D54604968783D5460000000798A93657C88657C8853646D5F747F5F747F
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149415B683D546041
        5B683141494968783D5460000000798A93657C88000000000000657C885F747F
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149415B683D546041
        5B683D54604968783D54600000006B808B657C88000000657C88657C885F747F
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149415B6831414941
        5B683141494968783D54600000006B808B657C88657C88000000657C88657C88
        0000004968780000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003D5460415B683D546039
        4E58314149435D6A3D5460000000000000657C88657C8853646D657C88657C88
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149394E5831414939
        4E58314149435D6A37474F49687849687800000000000053646D657C88657C88
        0000004968780000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003D5460394E5831414939
        4E5800000000000037474F435D6A4968783D5460496878000000000000657C88
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149394E5831414900
        00002B58552F6662000000435D6A435D6A3D54604968783D5460496878000000
        0000004968780000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000314149394E580000002A
        4F4D2B58552B58552F6662000000435D6A37474F4968783D5460496878496878
        3D54604968780000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003141490000002A4F4D2A
        4F4D2A4F4D2B58552B58552F666200000037474F435D6A3D5460496878496878
        37474F435D6A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000294B492A4F4D2A
        4F4D2A4F4D2A4F4D2B58552B58552F6662000000435D6A3D5460496878435D6A
        37474F0000002F66620000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000294B49294B49294B492A
        4F4D2A4F4D2A4F4D2A4F4D2B58552B58552F66620000003D5460435D6A435D6A
        0000002F666229514E0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000294B49294B49294B49294B4929
        4B492A4F4D2A4F4D2A4F4D2A4F4D2B58552B58552F6662000000435D6A000000
        2F666229514E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000294B49294B49294B4929
        4B49294B492A4F4D2A4F4D2A4F4D2A4F4D2B58552B58552F66620000002F6662
        29514E0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000294B49294B4929
        4B49294B49294B492A4F4D2A4F4D2A4F4D2A4F4D2B58552B58552F666229514E
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000294B4929
        4B49294B49294B49294B492A4F4D2A4F4D2A4F4D2A4F4D2B58552B5855000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000029
        4B49294B49294B49294B49294B492A4F4D2A4F4D2A4F4D000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000294B49294B49294B49294B49294B49000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000294B49294B49000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFCFFFFFFF83FFFFFF00FFFFFE003FFFFC000FFFF80003FF
        F80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FF
        F80001FFF80001FFF80001FFF80001FFF80001FFF80000FFF80000FFF00001FF
        F80003FFFC0007FFFE000FFFFF001FFFFF807FFFFFC1FFFFFFE7FFFFFFFFFFFF
        FFFFFFFF}
      OnDragDrop = Image1DragDrop
      OnDragOver = Image1DragOver
    end
  end
  inherited mainPanel: TPanel
    Top = 41
    Width = 1195
    Height = 552
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1193
      Height = 550
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 550
      ClientRectRight = 1193
      ClientRectTop = 25
      object cxTabSheet1: TcxTabSheet
        Caption = 'Users And Menus'
        ImageIndex = 0
        object cxSplitter1: TcxSplitter
          Left = 320
          Top = 0
          Width = 8
          Height = 525
          Cursor = crHSplit
          Control = wwDBGrid1
        end
        object cxGrid: TcxGrid
          Left = 328
          Top = 0
          Width = 865
          Height = 525
          Align = alClient
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxGridDBTableView: TcxGridDBTableView
            DragMode = dmAutomatic
            PopupMenu = PopupMenu1
            OnDragOver = cableViewDragOver
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dataSource
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGridDBTableViewModuleName: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleName'
              Visible = False
              GroupIndex = 0
            end
            object cxGridDBTableViewMENU_INDEX: TcxGridDBColumn
              DataBinding.FieldName = 'MENU_INDEX'
              Width = 76
            end
            object cxGridDBTableViewMENU_ITEM_INDEX: TcxGridDBColumn
              DataBinding.FieldName = 'MENU_ITEM_INDEX'
              Width = 83
            end
            object cxGridDBTableViewFORM_CAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'FORM_CAPTION'
            end
            object cxGridDBTableViewEDIT_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'EDIT_FLAG'
            end
            object cxGridDBTableViewDELETE_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'DELETE_FLAG'
            end
            object cxGridDBTableViewINSERT_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'INSERT_FLAG'
            end
            object cxGridDBTableViewEXECUTE_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'EXECUTE_FLAG'
            end
            object cxGridDBTableViewPOST_FLAG: TcxGridDBColumn
              DataBinding.FieldName = 'POST_FLAG'
            end
          end
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DetailKeyFieldNames = 'ORDER_NO'
            DataController.KeyFieldNames = 'ORDER_NO'
            DataController.MasterKeyFieldNames = 'ORDER_NO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1ITEM_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
            end
            object cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
            end
            object cxGridDBTableView1UNIT_COST: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
            end
            object cxGridDBTableView1QTY: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
            end
            object cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_AMT'
            end
            object cxGridDBTableView1TAX_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'TAX_AMT'
            end
            object cxGridDBTableView1REMARKS: TcxGridDBColumn
              Caption = 'Delivery'
              DataBinding.FieldName = 'REMARKS'
            end
          end
          object cxGridLevel: TcxGridLevel
            GridView = cxGridDBTableView
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 0
          Top = 0
          Width = 320
          Height = 525
          DisableThemes = False
          Selected.Strings = (
            'USER_ID'#9'10'#9'USER_ID'#9'T'#9
            'USER_NAME'#9'60'#9'USER_NAME'#9#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          DataSource = dsUser
          TabOrder = 2
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
      object cxTabSheet2: TcxTabSheet
        Caption = 'System Menus'
        ImageIndex = 1
        object Splitter1: TSplitter
          Left = 473
          Top = 0
          Width = 8
          Height = 525
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 473
          Height = 525
          Hint = 
            'User pop menu to import menus or drag menu item to the right dat' +
            'a grid'
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            DragMode = dmAutomatic
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsSysMenu
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGridDBTableView2MODULE_ID: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_ID'
              Visible = False
              GroupIndex = 0
            end
            object cxGridDBTableView2MENU_ITEM_INDEX: TcxGridDBColumn
              DataBinding.FieldName = 'MENU_ITEM_INDEX'
              Width = 87
            end
            object cxGridDBTableView2FORM_CAPTION: TcxGridDBColumn
              DataBinding.FieldName = 'FORM_CAPTION'
            end
            object cxGridDBTableView2ENABLED: TcxGridDBColumn
              DataBinding.FieldName = 'ENABLED'
              Width = 109
            end
          end
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DetailKeyFieldNames = 'ORDER_NO'
            DataController.KeyFieldNames = 'ORDER_NO'
            DataController.MasterKeyFieldNames = 'ORDER_NO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
            end
            object cxGridDBColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_AMT'
            end
            object cxGridDBColumn15: TcxGridDBColumn
              DataBinding.FieldName = 'TAX_AMT'
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Delivery'
              DataBinding.FieldName = 'REMARKS'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object cxGrid2: TcxGrid
          Left = 481
          Top = 0
          Width = 712
          Height = 525
          Align = alClient
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxGridDBTableView4: TcxGridDBTableView
            DragMode = dmAutomatic
            PopupMenu = PopupMenu1
            OnDragDrop = cxGridDBTableView4DragDrop
            OnDragOver = cableViewDragOver
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dataSource
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleName'
              Visible = False
              GroupIndex = 0
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'MENU_INDEX'
              Width = 76
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'MENU_ITEM_INDEX'
              Width = 83
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'FORM_CAPTION'
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'EDIT_FLAG'
            end
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'DELETE_FLAG'
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'INSERT_FLAG'
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'EXECUTE_FLAG'
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'POST_FLAG'
            end
          end
          object cxGridDBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DetailKeyFieldNames = 'ORDER_NO'
            DataController.KeyFieldNames = 'ORDER_NO'
            DataController.MasterKeyFieldNames = 'ORDER_NO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
            end
            object cxGridDBColumn18: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
            end
            object cxGridDBColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
            end
            object cxGridDBColumn20: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
            end
            object cxGridDBColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL_AMT'
            end
            object cxGridDBColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'TAX_AMT'
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = 'Delivery'
              DataBinding.FieldName = 'REMARKS'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
      end
    end
  end
  inherited dataSource: TDataSource
    DataSet = SystemMenuDM.tbSysUserMenu
    Left = 88
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 113
    Top = 191
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteAllfromModule1: TMenuItem
      Caption = 'Delete All from Module'
      OnClick = DeleteAllfromModule1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DeleteAll1: TMenuItem
      Caption = 'Delete All from User'
      OnClick = DeleteAll1Click
    end
  end
  object dsSysMenu: TDataSource
    DataSet = CommomShareDM.tbSysMenus
    Left = 289
    Top = 127
  end
  object PopupMenu2: TPopupMenu
    Left = 321
    Top = 247
    object Importmenutocurrentuser1: TMenuItem
      Caption = 'Import menu to current user'
      OnClick = Importmenutocurrentuser1Click
    end
  end
  object dsUser: TDataSource
    DataSet = SystemMenuDM.tbSysUser
    Left = 161
    Top = 135
  end
end
