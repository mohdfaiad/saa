inherited frmCustomerRequirementManager: TfrmCustomerRequirementManager
  Left = 507
  Top = 253
  Width = 881
  Height = 702
  Caption = 'Customer Requirement Manage Form'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 865
  end
  object Splitter1: TSplitter [1]
    Left = 0
    Top = 313
    Width = 865
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  inherited StatusBar1: TfcStatusBar
    Top = 644
    Width = 865
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited Panel1: TPanel
    Top = 603
    Width = 865
    inherited newButton: TBitBtn
      Left = 664
      Font.Color = clRed
      ParentFont = False
      Visible = False
    end
    inherited editButton: TBitBtn
      Left = 744
      Font.Color = clRed
      ParentFont = False
      Visible = False
    end
    inherited postButton: TBitBtn
      Left = 8
      Caption = 'Save'
    end
    inherited cancelButton: TBitBtn
      Left = 104
    end
    object Button1: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  inherited cxGrid: TcxGrid
    Width = 865
    Height = 299
    Align = alTop
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.DetailKeyFieldNames = 'DEBTOR_ACCT'
      DataController.KeyFieldNames = 'DEBTOR_ACCT'
      Styles.ContentEven = SystemMenuDM.cxStyle232
      object cxGridDBTableViewDEBTOR_ACCT: TcxGridDBColumn
        DataBinding.FieldName = 'DEBTOR_ACCT'
        Width = 79
      end
      object cxGridDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 219
      end
      object cxGridDBTableViewTH_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'TH_NAME'
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCustomerNote
      DataController.DetailKeyFieldNames = 'CUST_CODE'
      DataController.KeyFieldNames = 'CUST_CODE'
      DataController.MasterKeyFieldNames = 'DEBTOR_ACCT'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBTableView1REQUIREMENTNOTE: TcxGridDBColumn
        DataBinding.FieldName = 'REQUIREMENTNOTE'
        PropertiesClassName = 'TcxMemoProperties'
      end
      object cxGridDBTableView1UPDATE_USER: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_USER'
      end
      object cxGridDBTableView1UPDATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_DATE'
      end
    end
  end
  object PageControl1: TPageControl [6]
    Left = 0
    Top = 318
    Width = 865
    Height = 285
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Edit Requirement'
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'REQUIREMENTNOTE'
        DataBinding.DataSource = dsCustomerNote
        Properties.MaxLength = 2000
        Properties.ScrollBars = ssVertical
        Properties.VisibleLineCount = 30
        TabOrder = 0
        OnEnter = cxDBMemo1Enter
        Width = 857
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'All'
      ImageIndex = 1
      inline frameCustomerRequirementCardView1: TframeCustomerRequirementCardView
        Left = 0
        Top = 0
        Width = 857
        Height = 257
        Align = alClient
        TabOrder = 0
        inherited cxGrid: TcxGrid
          Width = 857
          Height = 257
          Align = alClient
          inherited cxGridDBTableView1: TcxGridDBTableView
            inherited cxGridDBTableView1CUST_CODE: TcxGridDBColumn
              Width = 104
            end
            inherited cxGridDBTableView1REQUIREMENTNOTE: TcxGridDBColumn
              Properties.ScrollBars = ssNone
            end
          end
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 760
        Top = 64
        Width = 80
        Height = 120
        DisableThemes = False
        Selected.Strings = (
          'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
          'REQUIREMENTNOTE'#9'2500'#9'REQUIREMENTNOTE'#9#9
          'UPDATE_USER'#9'10'#9'UPDATE_USER'#9#9
          'UPDATE_DATE'#9'18'#9'UPDATE_DATE'#9#9)
        IniAttributes.Delimiter = ';;'
        ExportOptions.FileName = 'c:\temp\export.cvs'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = frameCustomerRequirementCardView1.DataSource1
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        Visible = False
      end
    end
  end
  inherited datasource: TDataSource
    DataSet = ProductionDM.qryCustomer
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
  end
  object dsCustomerNote: TDataSource
    DataSet = ProductionDM.tbCustomerRequirementNote
    OnStateChange = dsCustomerNoteStateChange
    Left = 560
    Top = 136
  end
end
