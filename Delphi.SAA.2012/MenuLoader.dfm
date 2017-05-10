inherited MenuLoadDialog: TMenuLoadDialog
  Left = 1538
  Top = 340
  Caption = 'Menu Loader Window'
  ClientHeight = 159
  ClientWidth = 224
  Font.Color = clGreen
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object fcButtonGroup1: TfcButtonGroup
    Left = 48
    Top = 16
    Width = 137
    Height = 100
    AutoBold = True
    BevelOuter = bvNone
    ButtonClassName = 'TfcShapeBtn'
    ClickStyle = bcsRadioGroup
    ControlSpacing = 1
    Columns = 1
    Layout = loVertical
    MaxControlSize = 0
    TabOrder = 0
    Transparent = False
    object fcButtonGroup1fcShapeBtn1: TfcShapeBtn
      Left = 0
      Top = 0
      Width = 137
      Height = 33
      Caption = 'System Admin.'
      Color = clBtnFace
      DitherColor = clWhite
      GroupIndex = 1
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 0
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcButtonGroup1fcShapeBtn1Click
    end
    object fcButtonGroup1fcShapeBtn2: TfcShapeBtn
      Left = 0
      Top = 34
      Width = 137
      Height = 33
      Caption = 'Warehouse'
      Color = clBtnFace
      DitherColor = clWhite
      GroupIndex = 1
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcButtonGroup1fcShapeBtn2Click
    end
    object fcButtonGroup1fcShapeBtn3: TfcShapeBtn
      Left = 0
      Top = 68
      Width = 137
      Height = 32
      Caption = 'Account Receive'
      Color = clBtnFace
      DitherColor = clWhite
      GroupIndex = 1
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcButtonGroup1fcShapeBtn3Click
    end
  end
end
