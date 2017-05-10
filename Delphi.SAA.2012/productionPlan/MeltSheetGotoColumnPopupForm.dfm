object frmMeltSheetGotoColumnPopup: TfrmMeltSheetGotoColumnPopup
  Left = 823
  Top = 683
  BorderStyle = bsDialog
  Caption = 'Enter Number of Column and Enter'
  ClientHeight = 161
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  DesignSize = (
    378
    161)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 367
    Height = 16
    Caption = 'CU:10;UnitCost:23;Recovery(%)24;ChargedQty:25;Remark:END'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 8
    Width = 216
    Height = 16
    Caption = 'LastMeltItem:1;StockCode:4;LotNo:6:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btOK: TButton
    Left = 216
    Top = 127
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object edColumnNumber: TEdit
    Left = 24
    Top = 86
    Width = 345
    Height = 37
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btCancel: TButton
    Left = 296
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = btCancelClick
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 55
    Width = 345
    Height = 21
    DropDownCount = 15
    ItemHeight = 13
    TabOrder = 3
    OnChange = ComboBox1Change
  end
end
