object frmSysMenuRegister: TfrmSysMenuRegister
  Left = 197
  Top = 416
  Width = 684
  Height = 408
  Align = alTop
  Caption = 'System Menu Register'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 668
    Height = 15
    Align = alTop
    Caption = 'Please select system view avaliable menus'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 47
    Align = alTop
    Caption = 'System Module'
    TabOrder = 0
    Height = 64
    Width = 668
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 51
      Height = 14
      Caption = 'System ID:'
    end
    object Label5: TLabel
      Left = 250
      Top = 19
      Width = 258
      Height = 15
      Caption = 'PLEASE CLICK SEARCH TO RETRIVE MENU'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cxComboBox1: TcxComboBox
      Left = 64
      Top = 19
      Properties.Items.Strings = (
        'AR'#9'Account Receivable'
        'WH'#9'Warehouse'
        'SA'#9'System Administrator'
        'PL'#9'Planing'#9
        'SO'#9'Sale Order'
        'PO'#9'Purchase Order')
      TabOrder = 0
      Text = 'WH'#9'Warehouse'
      Width = 177
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 111
    Align = alTop
    Caption = 'Avaliable Menu'
    TabOrder = 1
    Height = 152
    Width = 668
    object cxGrid1: TcxGrid
      Left = 2
      Top = 19
      Width = 664
      Height = 131
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsAvaliableMenu
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
        object cxGrid1DBTableView1MODULE_ID: TcxGridDBColumn
          Caption = 'System ID'
          DataBinding.FieldName = 'MODULE_ID'
        end
        object cxGrid1DBTableView1MENU_INDEX: TcxGridDBColumn
          Caption = 'Menu Level'
          DataBinding.FieldName = 'MENU_INDEX'
          Width = 41
        end
        object cxGrid1DBTableView1MENU_ITEM_INDEX: TcxGridDBColumn
          Caption = 'Menu Item Level'
          DataBinding.FieldName = 'MENU_ITEM_INDEX'
          Width = 33
        end
        object cxGrid1DBTableView1FORM_CAPTION: TcxGridDBColumn
          Caption = 'Menu Name'
          DataBinding.FieldName = 'FORM_CAPTION'
          Width = 286
        end
        object cxGrid1DBTableView1ENABLED: TcxGridDBColumn
          Caption = 'Active'
          DataBinding.FieldName = 'ENABLED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'Yes'
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Width = 33
        end
        object cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn
          Caption = 'Registered Date'
          DataBinding.FieldName = 'UPDATE_DATE'
          Width = 169
        end
        object cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn
          Caption = 'Registered By'
          DataBinding.FieldName = 'UPDATE_USER'
          Width = 92
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Action'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = 'Delete'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 263
    Align = alClient
    Caption = 'New Menu Register'
    TabOrder = 2
    Height = 107
    Width = 668
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 58
      Height = 14
      Caption = 'Menu Level:'
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 61
      Height = 14
      Caption = '*New Menu: '
    end
    object Label6: TLabel
      Left = 274
      Top = 43
      Width = 7
      Height = 15
      Caption = '*'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cxComboBox2: TcxComboBox
      Left = 80
      Top = 40
      Properties.Items.Strings = (
        'Setup Master Data'
        'Transaction'
        'Other'
        'Inquiry')
      Properties.OnChange = cxComboBox2PropertiesChange
      TabOrder = 0
      Text = 'Setup OR Configuration'
      Width = 193
    end
    object cxRegistName: TcxTextEdit
      Left = 80
      Top = 72
      TabOrder = 1
      Width = 329
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 15
    Width = 668
    Height = 32
    Align = alTop
    TabOrder = 3
    object btSearch: TcxButton
      Left = 11
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Search'
      TabOrder = 0
      OnClick = btSearchClick
    end
    object btRegist: TcxButton
      Left = 112
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Regist Menu'
      TabOrder = 1
      OnClick = btRegistClick
    end
    object btCancel: TcxButton
      Left = 584
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btCancelClick
    end
    object btDelete: TcxButton
      Left = 211
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Delete'
      TabOrder = 3
      OnClick = btDeleteClick
    end
  end
  object dsAvaliableMenu: TDataSource
    DataSet = SystemMenuDM.qrySysMenuByModuleID
    Left = 128
    Top = 177
  end
end
