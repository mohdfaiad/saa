inherited InvoiceLineEditForm: TInvoiceLineEditForm
  Left = 193
  Top = 190
  Width = 725
  Height = 172
  BorderStyle = bsSizeToolWin
  Caption = 'Invoice Line Edit'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 118
    Width = 717
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        Text = 'Editing'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '500'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    ParentFont = False
  end
  object wwRecordViewPanel1: TwwRecordViewPanel
    Left = 0
    Top = 29
    Width = 717
    Height = 89
    HorzScrollBar.Margin = 6
    HorzScrollBar.Range = 272
    VertScrollBar.Increment = 23
    VertScrollBar.Margin = 6
    VertScrollBar.Range = 82
    Align = alClient
    AutoScroll = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    DataSource = dataSource
    Style = rvpsHorizontal
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clBlue
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Selected.Strings = (
      'QTY'#9'20'#9'Deliverd Qty'#9'F'
      'UNIT_COST'#9'10'#9'UNIT COST'#9'F'
      'BASE_AMT'#9'20'#9'BASE AMT'#9'F'
      'TAX_RATE'#9'6'#9'TAX RATE'#9'F'
      'TAX_AMT'#9'20'#9'TAX AMT'#9'F'
      'DOC_AMT'#9'25'#9'DOC AMT'#9'F'
      'DESCS'#9'28'#9'Remark'#9'F')
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 717
    Height = 29
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Hint = 'Save'
      Caption = 'ToolButton4'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton3: TToolButton
      Left = 23
      Top = 2
      Hint = 'Calculator'
      Caption = 'ToolButton3'
      ImageIndex = 5
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 46
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 54
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 62
      Top = 2
      Hint = 'Exit'
      Caption = 'Exit'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
  end
  object ImageList1: TImageList
    Left = 376
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000800000008000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      000080800000808000008000000000000000000000000000000080808000C0C0
      C00080800000C0C0C00080000000FFFFFF00C0C0C00080000000FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080000080800000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000808000008000000000000000000000000000000080808000C0C0
      C00000000000C0C0C0008000000080800000C0C0C0000000000080800000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000000000
      0000000000000000000000000000800000008000000080808000000000000000
      0000FFFF0000808000008000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000000000
      0000000000000000000000000000FFFF0000FF00FF0080808000000000000000
      0000FFFF0000808000008000000000000000000000000000000080808000C0C0
      C00080800000C0C0C00080000000FFFFFF00C0C0C00080000000FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000000000
      0000000000000000000000000000FFFF0000FF00FF0080808000000000000000
      0000FFFF0000808000008000000000000000000000000000000080808000C0C0
      C00000000000C0C0C0000000000080800000C0C0C0000000000080800000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000000000
      0000000000000000000000000000FFFF0000FF00FF0080808000000000000000
      0000FFFF0000808000008000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008000000000000000FFFF0000FF00FF0080808000FFFF00008080
      000080800000808000008000000000000000000000000000000080808000C0C0
      C00080800000C0C0C00080800000C0C0C00080800000C0C0C00080800000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008000000000000000FFFF0000FF00FF0080808000FFFF00008080
      000080800000808000008000000000000000000000000000000080808000C0C0
      C00000000000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FF00FF0080808000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF008000000080000000FFFF0000FF00FF0080000000800000008000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C00080800000C0C0C00080800000C0C0C00080800000C0C0C00080800000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FFFFFF00FF00FF00FF00FF00FF00FF00800000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FFFFFF00FF00FF0080000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000800000008000000000FF000000FF0000800000008000000000FF0000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF008000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C00080000000800000008000000080000000800000008000000080000000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B0ACB000B0ACB000B09CB000A0ACB000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0058585800000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800000000000000000003333330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006633330000000000000000000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B0ACB000B0ACA000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000000000003333330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006666330000003300000000000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00585858000000000058585800FFFFFF005858580058585800000000005858
      5800FFFFFF00FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF000000
      FF00000000008080800080808000FFFFFF00FFFFFF0000000000808080008080
      8000FFFFFF00FFFFFF00C0C0C00000000000000000006633330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006633330000000000000000000000000000000000CCFFFF0077115500CCFF
      FF0077115500CCFFFF00771155007711550022002200CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005858780038244800788CD000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF000000
      FF000000FF00000000008080800080808000FF00FF000000FF00000000008080
      800080808000FFFFFF00C0C0C00000000000000000003333330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006666330000000000000000000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00000000005858
      580058585800585858006868C000908CF00028244800383458009078E0005858
      5800FFFFFF00FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF00FF00
      FF000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
      0000FFFFFF00FFFFFF00C0C0C00000000000000000003333330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006633660000000000003333000000000000000000CCFFFF00CCFFFF00CCFF
      FF0055114400550055005511440066004400CCFFFF0055005500CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B0BCFF00909CE00038244800283448003848
      9000FFFFFF00FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF00FF00
      FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000000000006633330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006666660033003300000033000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00585858005858
      58005858580058585800000000006868B000B0BCFF00908CF000181448001824
      380038489000FFFFFF005858580000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FF00FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000000000003333330000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006633660000330000003333000000000000000000CCFFFF00771155007711
      5500771155007711550077115500771155007711550077115500771155007711
      5500CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00488CFF003858A0003858A0002824
      480018243800384890005858580000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF00FF000000FF000000FF000000FF008080800080808000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000000000000000000033003300000000006633
      6600666666006633660066663300993366006666330099336600666666006633
      33006666330033003300330000000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF005858
      580058585800585858005858580058585800B09CB000488CFF003858A0002858
      A00028144800182438005858580000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF00FF000000FF000000FF000000FF0000000000808080008080
      8000FFFFFF00FFFFFF00C0C0C000000000000000000033333300663333006633
      3300660033003333330033333300663333006633000033330000330033003333
      33003300330033000000333333000000000000000000CCFFFF00771155007711
      5500771155007711550077115500771155007711550077115500771155007711
      550077115500CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00489CFF003858
      A0002868A000282448001824380000000000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FF00FF000000FF000000FF00000000008080
      800080808000FFFFFF00C0C0C000000000000000000066333300663333006633
      6600333333006633330033333300333333003333000066333300333333003333
      33003300330033003300003300000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF0058585800FFFF
      FF00585858005858580058585800FFFFFF005858580058585800B09CB000488C
      FF003858A0002858A0001814480018243800C0C0C00080808000808080008080
      8000FF00FF000000FF000000000080808000FF00FF000000FF000000FF000000
      00008080800080808000C0C0C000000000000000000066663300000000006666
      3300CC999900CC99CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC99CC009999
      66003300330033333300330033000000000000000000CCFFFF00771155007711
      55007711550077115500771155007711550077115500CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00488CFF003858A0003858A00028244800C0C0C00080000000800000008000
      00000000FF000000FF00808080008000000080000000FF00FF000000FF000000
      FF00000000000000000000000000000000000000000066336600000000006633
      6600CC999900CC999900CCCC9900CCCCCC00CCCCCC0033666600CCCCCC009999
      99003333330033003300333300000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00488CFF003858A0002858A000C0C0C00080000000800000008000
      0000FF00FF00FF00FF0080000000800000008000000080000000FF00FF000000
      FF00C0C0C000C0C0C00000000000000000000000000066333300000000006666
      33009999990099999900CCCC9900CCCCCC00CCCCCC0066666600CCCCCC00CCCC
      99003300330033330000663300000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660058585800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00489CFF003858A000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000066336600000000006633
      6600CCCCCC009999990099999900CC999900CCCC990066663300CC9999009999
      9900333333006633330033333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000488CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC666600FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE007000000008001C00700000000
      8001C007000000008001C007000000009E31C007000000009E31C00700000000
      9E31C007000000009E31C007000000008201C007000000008201C00700000000
      FE3FC00700000000F00FC00700000000F81FC00700000000FC3FC00700000000
      FE7FC00700000000FFFFC00700000000FFFFFFFFFFFFC0018000000100008001
      8000000100008001800000010000800180000001000080018000000100008001
      8000000100008001800000010000800180000001000080018000000100008001
      8000000100008001800000000000800180000000000080018000000000008001
      8000000000008001FFFFFFFEFFFFC00F00000000000000000000000000000000
      000000000000}
  end
  object dataSource: TDataSource
    DataSet = AccountReceiveDM.tbInvoiceDT
    Left = 112
    Top = 5
  end
end
