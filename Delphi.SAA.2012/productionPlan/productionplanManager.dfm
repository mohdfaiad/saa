inherited frmproductionplanmanager: Tfrmproductionplanmanager
  Left = 511
  Top = 349
  Width = 770
  Height = 465
  Caption = 'production plan melt management'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 754
  end
  inherited StatusBar1: TfcStatusBar
    Top = 407
    Width = 754
  end
  inherited Panel1: TPanel
    Top = 366
    Width = 754
    inherited postButton: TBitBtn
      Left = 328
      Width = 123
      Caption = 'Close Plan/Melt'
    end
    inherited cancelButton: TBitBtn
      Left = 664
    end
    object btMergePlan: TButton
      Left = 224
      Top = 9
      Width = 75
      Height = 25
      Action = ActionMergePlan
      TabOrder = 4
    end
    object btGetMeltSummary: TButton
      Left = 512
      Top = 8
      Width = 131
      Height = 25
      Caption = 'Prepare MeltSummary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btGetMeltSummaryClick
    end
  end
  inherited cxGrid: TcxGrid
    Width = 754
    Height = 352
    inherited cxGridDBTableView: TcxGridDBTableView
      object cxGridDBTableViewPLAN_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_DATE'
        Styles.Content = cxStyle1
        Width = 69
      end
      object cxGridDBTableViewPLAN_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'PLAN_DOC'
        Styles.Content = cxStyle1
      end
      object cxGridDBTableViewSTART_MELT_NO: TcxGridDBColumn
        DataBinding.FieldName = 'START_MELT_NO'
        Styles.Content = cxStyle1
        Width = 79
      end
      object cxGridDBTableViewEND_MELT_NO: TcxGridDBColumn
        DataBinding.FieldName = 'END_MELT_NO'
        Styles.Content = cxStyle1
      end
      object cxGridDBTableViewMELT_PREFIX: TcxGridDBColumn
        DataBinding.FieldName = 'MELT_PREFIX'
        Styles.Content = cxStyle1
        Width = 62
      end
      object cxGridDBTableViewREMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        Styles.Content = cxStyle1
      end
      object cxGridDBTableViewORDER_REMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_REMARKS'
        Styles.Footer = cxStyle1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarCombo1: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      ItemIndex = -1
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object ActionManager1: TActionManager
    Left = 432
    Top = 88
    StyleName = 'XP Style'
    object ActionMergePlan: TAction
      Caption = 'Merge Plan'
      OnExecute = ActionMergePlanExecute
    end
  end
end
