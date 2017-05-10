object Form2: TForm2
  Left = 1503
  Top = 174
  BorderStyle = bsDialog
  Caption = 'Form2'
  ClientHeight = 144
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 72
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    ModalResult = 1
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button2'
    ModalResult = 2
    TabOrder = 1
  end
  object Button3: TButton
    Left = 72
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Button3'
    ModalResult = 1
    TabOrder = 2
    OnClick = Button3Click
  end
end
