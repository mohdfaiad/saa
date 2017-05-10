object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1297
  Height = 604
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 809
    Height = 441
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Action'
      object PageControl2: TPageControl
        Left = 0
        Top = 153
        Width = 801
        Height = 193
        ActivePage = TabSheet2
        Align = alTop
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Digital Output'
          ImageIndex = 1
          object Label11: TLabel
            Left = 8
            Top = 40
            Width = 33
            Height = 16
            Caption = 'When'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 168
            Top = 40
            Width = 88
            Height = 16
            Caption = 'Output Address'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 48
            Top = 8
            Width = 29
            Height = 16
            Caption = 'Input'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 472
            Top = 8
            Width = 38
            Height = 16
            Caption = 'Output'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 560
            Top = 8
            Width = 100
            Height = 16
            Caption = 'Output Command'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ComboBox1: TComboBox
            Left = 48
            Top = 32
            Width = 113
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'Alarm/Clear'
            Items.Strings = (
              'Alarm/Clear'
              'Alarm/NoAck'
              'Alarm/Ack')
          end
          object Edit1: TEdit
            Left = 263
            Top = 32
            Width = 121
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '192.168.1.8'
          end
          object Button5: TButton
            Left = 392
            Top = 30
            Width = 75
            Height = 25
            Caption = 'Read'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object ComboBox2: TComboBox
            Left = 472
            Top = 32
            Width = 65
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 3
            Text = '3'
            Items.Strings = (
              'DO1'
              'DO2'
              'DO3'
              'DO4'
              'DO5')
          end
          object Button6: TButton
            Left = 696
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Add'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object ComboBox8: TComboBox
            Left = 552
            Top = 32
            Width = 113
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 5
            Text = 'Close/Open'
            Items.Strings = (
              'Close/Open')
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Goto Preset'
          ImageIndex = 1
          object Label13: TLabel
            Left = 16
            Top = 0
            Width = 132
            Height = 19
            Caption = 'Associate Cameras'
          end
          object Label14: TLabel
            Left = 192
            Top = 3
            Width = 43
            Height = 19
            Caption = 'Preset'
          end
          object Label15: TLabel
            Left = 392
            Top = 3
            Width = 50
            Height = 19
            Caption = 'Action '
          end
          object ComboBox3: TComboBox
            Left = 8
            Top = 24
            Width = 145
            Height = 27
            ItemHeight = 19
            ItemIndex = 0
            TabOrder = 0
            Text = 'Roof PTZ'
            Items.Strings = (
              'Roof PTZ')
          end
          object ComboBox4: TComboBox
            Left = 184
            Top = 21
            Width = 145
            Height = 27
            ItemHeight = 19
            ItemIndex = 0
            TabOrder = 1
            Text = 'Main Entrance'
            Items.Strings = (
              'Main Entrance')
          end
          object Button7: TButton
            Left = 384
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Add'
            TabOrder = 2
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 801
        Height = 153
        Align = alTop
        Caption = 'Configured Action'
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 32
          Width = 85
          Height = 19
          Caption = 'Action Type'
        end
        object Label2: TLabel
          Left = 160
          Top = 32
          Width = 39
          Height = 19
          Caption = 'Value'
        end
        object Label3: TLabel
          Left = 272
          Top = 32
          Width = 79
          Height = 19
          Caption = 'Description'
        end
        object Label4: TLabel
          Left = 432
          Top = 32
          Width = 45
          Height = 19
          Caption = 'Action'
        end
        object Label5: TLabel
          Left = 16
          Top = 64
          Width = 99
          Height = 19
          Caption = 'Digital Output'
        end
        object Label6: TLabel
          Left = 128
          Top = 64
          Width = 87
          Height = 19
          Caption = '192.168.1.8'
        end
        object Label7: TLabel
          Left = 280
          Top = 64
          Width = 47
          Height = 19
          Caption = 'RESET'
        end
        object Label8: TLabel
          Left = 16
          Top = 96
          Width = 82
          Height = 19
          Caption = 'Goto Preset'
        end
        object Label9: TLabel
          Left = 152
          Top = 96
          Width = 66
          Height = 19
          Caption = 'Roof PTZ'
        end
        object Label10: TLabel
          Left = 264
          Top = 96
          Width = 99
          Height = 19
          Caption = 'Main Entrance'
        end
        object Button1: TButton
          Left = 416
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 496
          Top = 64
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
        end
        object Button3: TButton
          Left = 416
          Top = 96
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
        end
        object Button4: TButton
          Left = 494
          Top = 96
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 3
        end
      end
      object Button8: TButton
        Left = 712
        Top = 376
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Rule'
      ImageIndex = 1
      object Label16: TLabel
        Left = 32
        Top = 40
        Width = 77
        Height = 19
        Caption = 'Alarm ON:'
      end
      object Label17: TLabel
        Left = 32
        Top = 88
        Width = 62
        Height = 19
        Caption = 'Severity:'
      end
      object Label18: TLabel
        Left = 32
        Top = 144
        Width = 65
        Height = 19
        Caption = 'Message:'
      end
      object ComboBox5: TComboBox
        Left = 128
        Top = 40
        Width = 145
        Height = 27
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 0
        Text = 'Open'
        Items.Strings = (
          'Open')
      end
      object ComboBox6: TComboBox
        Left = 128
        Top = 88
        Width = 145
        Height = 27
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 1
        Text = 'Warning'
        Items.Strings = (
          'Warning')
      end
      object ComboBox7: TComboBox
        Left = 128
        Top = 137
        Width = 345
        Height = 27
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 2
        Text = 'Adam0 has Alarm'
        Items.Strings = (
          'Adam0 has Alarm')
      end
    end
  end
end
