inherited TransactionTypeForm: TTransactionTypeForm
  Left = 306
  Top = 266
  Width = 687
  Height = 308
  Caption = 'Transaction Type Configuration'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 250
    Width = 671
  end
  inherited HeaderControl1: THeaderControl
    Width = 671
  end
  inherited ToolBar: TToolBar
    Width = 671
    Flat = False
    inherited tbNew: TToolButton
      Top = 2
    end
    inherited tbEdit: TToolButton
      Top = 2
    end
    inherited ToolButton6: TToolButton
      Top = 2
    end
    inherited tbDelete: TToolButton
      Top = 2
    end
    inherited tbCancel: TToolButton
      Top = 2
    end
    inherited ToolButton8: TToolButton
      Top = 2
    end
    inherited tbPost: TToolButton
      Top = 2
    end
    inherited tbRefresh: TToolButton
      Top = 2
    end
    inherited ToolButton7: TToolButton
      Top = 2
    end
    inherited DBNavigator: TwwDBNavigator
      Top = 2
    end
    inherited tbClose: TToolButton
      Top = 2
    end
  end
  inherited plGrid: TPanel
    Width = 671
    Height = 219
    inherited Bevel1: TBevel
      Width = 669
    end
    inherited DBGrid: TwwDBGrid
      Width = 669
      Height = 215
      ControlType.Strings = (
        'DEFAULT_MODULE;CustomEdit;wwDBLookupCombo1;F'
        'REQUIRE_REFERENCE;CheckBox;Y;N'
        'MODE;CustomEdit;dlgMode;F')
      Selected.Strings = (
        'TRX_TYPE'#9'8'#9'Trx Prefix.'#9#9
        'DESCRIPTION'#9'30'#9'Description'#9#9
        'DEFAULT_MODULE'#9'60'#9'DDefault Module'#9#9
        'UPDATE_DATE'#9'18'#9'Last Modified '#9'T'#9
        'REQUIRE_REFERENCE'#9'1'#9'REQUIRE REFERENCE'#9'F'#9
        'MODE'#9'1'#9'MODE'#9'F'#9)
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 168
      Top = 40
      Width = 121
      Height = 21
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      DataField = 'DEFAULT_MODULE'
      DataSource = dataSource
      LookupTable = CommomShareDM.SysModule
      LookupField = 'MODULE_DESCRIPTION'
      Navigator = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object dlgMode: TwwDBComboBox
      Left = 328
      Top = 88
      Width = 121
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      DataField = 'MODE'
      DataSource = dataSource
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'Invoice'#9'I'
        'Receipt'#9'R'
        'Sale'#9'S'
        'Warehouse'#9'W'
        'Planing'#9'P')
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
  end
  inherited dataSource: TDataSource
    DataSet = CommomShareDM.TransactionType
  end
end
