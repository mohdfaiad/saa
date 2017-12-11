inherited StockAdjustDataModule: TStockAdjustDataModule
  OldCreateOrder = True
  Left = 421
  Top = 114
  Height = 581
  Width = 771
  object qryUnPostedStockAdjust: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_stock_adjust_hd'
      'where status ='#39'N'#39)
    Left = 64
    Top = 40
    object qryUnPostedStockAdjustDOC_NO: TIBStringField
      DisplayLabel = 'Adjust Document'
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'IC_STOCK_ADJUST_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnPostedStockAdjustDOC_DATE: TDateTimeField
      DisplayLabel = 'Adjust Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'IC_STOCK_ADJUST_HD.DOC_DATE'
      Required = True
    end
    object qryUnPostedStockAdjustDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'IC_STOCK_ADJUST_HD.DESCS'
      Size = 60
    end
    object qryUnPostedStockAdjustUPDATE_USER: TIBStringField
      DisplayLabel = 'create By'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'IC_STOCK_ADJUST_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnPostedStockAdjustMELT_NO: TIBStringField
      DisplayLabel = 'MELT NO'
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'IC_STOCK_ADJUST_HD.MELT_NO'
      Required = True
      Size = 10
    end
    object qryUnPostedStockAdjustTRX_TYPE: TIBStringField
      DisplayLabel = 'TRX CODE'
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Origin = 'IC_STOCK_ADJUST_HD.TRX_TYPE'
      Required = True
      Size = 2
    end
    object qryUnPostedStockAdjustMODE: TIBStringField
      DisplayWidth = 1
      FieldName = 'MODE'
      Origin = 'IC_STOCK_ADJUST_HD.MODE'
      Required = True
      Size = 1
    end
  end
  object tbStockAdjustHeader: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    ForcedRefresh = True
    AfterClose = tbStockAdjustHeaderAfterClose
    AfterOpen = tbStockAdjustHeaderAfterOpen
    AfterPost = tbStockAdjustHeaderAfterPost
    BeforePost = tbStockAdjustHeaderBeforePost
    OnNewRecord = tbStockAdjustHeaderNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DOC_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DOC_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'MODE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UPDATE_USER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UPDATE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'COSTS_ADJUSTED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTY_ADJUSTED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REMARKS'
        DataType = ftString
        Size = 800
      end
      item
        Name = 'INIT_ADJUSTED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MELT_NO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TRX_TYPE'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY33'
        Fields = 'DOC_NO;DOC_DATE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKIC_STOCK_ADJUST_HD'
        Fields = 'DOC_NO;DOC_DATE'
        Options = [ixUnique]
      end>
    IndexName = 'XPKIC_STOCK_ADJUST_HD'
    StoreDefs = True
    TableName = 'IC_STOCK_ADJUST_HD'
    Left = 232
    Top = 48
    object tbStockAdjustHeaderDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbStockAdjustHeaderDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbStockAdjustHeaderMODE: TIBStringField
      FieldName = 'MODE'
      Size = 1
    end
    object tbStockAdjustHeaderDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbStockAdjustHeaderUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbStockAdjustHeaderUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbStockAdjustHeaderCOSTS_ADJUSTED: TIBStringField
      FieldName = 'COSTS_ADJUSTED'
      Size = 1
    end
    object tbStockAdjustHeaderQTY_ADJUSTED: TIBStringField
      FieldName = 'QTY_ADJUSTED'
      Size = 1
    end
    object tbStockAdjustHeaderSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbStockAdjustHeaderREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbStockAdjustHeaderINIT_ADJUSTED: TIBStringField
      FieldName = 'INIT_ADJUSTED'
      Size = 1
    end
    object tbStockAdjustHeaderMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Size = 10
    end
    object tbStockAdjustHeaderTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      OnChange = tbStockAdjustHeaderTRX_TYPEChange
      Size = 2
    end
  end
  object tbStockAdjustDetail: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbStockAdjustDetailAfterDelete
    AfterPost = tbStockAdjustDetailAfterPost
    AfterScroll = tbStockAdjustDetailAfterScroll
    OnNewRecord = tbStockAdjustDetailNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE'
    MasterFields = 'DOC_NO;DOC_DATE'
    MasterSource = dsStockAdjustHeader
    TableName = 'IC_STOCK_ADJUST_DT'
    Left = 232
    Top = 112
    object tbStockAdjustDetailITEM_CODE: TIBStringField
      DisplayLabel = 'ITEM CODE'
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      OnChange = tbStockAdjustDetailITEM_CODEChange
      Size = 15
    end
    object tbStockAdjustDetailSTOCK_DESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'STOCK_DESCS'
      LookupDataSet = qryStockMaster
      LookupKeyFields = 'STOCK_CD'
      LookupResultField = 'EN_DESCS'
      Size = 60
    end
    object tbStockAdjustDetailUOM_CD: TIBStringField
      DisplayLabel = 'UOM CD'
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbStockAdjustDetailLOT_NO: TIBStringField
      DisplayLabel = 'LOT NO'
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      OnChange = tbStockAdjustDetailLOT_NOChange
      Size = 15
    end
    object tbStockAdjustDetailPURCHASE_DATE: TDateTimeField
      DisplayLabel = 'PURCHASE DATE'
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
    end
    object tbStockAdjustDetailREF_NO: TIBStringField
      DisplayLabel = 'REF NO'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      OnChange = tbStockAdjustDetailREF_NOChange
      Size = 15
    end
    object tbStockAdjustDetailREF_DATE: TDateTimeField
      DisplayLabel = 'REF DATE'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object tbStockAdjustDetailONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
    end
    object tbStockAdjustDetailQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = tbStockAdjustDetailQTYChange
    end
    object tbStockAdjustDetailUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbStockAdjustDetailTOTAL_COST: TFloatField
      DisplayLabel = 'TOTAL COST'
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
    end
    object tbStockAdjustDetailVQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'VQTY'
    end
    object tbStockAdjustDetailDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbStockAdjustDetailDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbStockAdjustDetailGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Visible = False
      Size = 10
    end
    object tbStockAdjustDetailACCT_CD: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CD'
      Visible = False
      Size = 10
    end
  end
  object dsStockAdjustHeader: TDataSource
    DataSet = tbStockAdjustHeader
    Left = 352
    Top = 48
  end
  object dsStockAdjustDetail: TDataSource
    DataSet = tbStockAdjustDetail
    Left = 352
    Top = 112
  end
  object qryUnClosedRawmaterialPlan: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM V_RAWMATERIAL_PLAN'
      'order by plan_date,MELT_NO'
      '')
    Left = 64
    Top = 120
    object qryUnClosedRawmaterialPlanMELT_NO: TIBStringField
      DisplayLabel = 'MELT NO'
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = '"V_RAWMATERIAL_PLAN"."MELT_NO"'
      Size = 10
    end
    object qryUnClosedRawmaterialPlanPLAN_DOC: TIBStringField
      DisplayWidth = 15
      FieldName = 'PLAN_DOC'
      Origin = '"V_RAWMATERIAL_PLAN"."PLAN_DOC"'
      Visible = False
      Size = 15
    end
    object qryUnClosedRawmaterialPlanPLAN_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PLAN_DATE'
      Origin = '"V_RAWMATERIAL_PLAN"."PLAN_DATE"'
      Visible = False
    end
    object qryUnClosedRawmaterialPlanITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = '"V_RAWMATERIAL_PLAN"."ITEM_CODE"'
      Visible = False
      Size = 15
    end
  end
  object qryStockMaster: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IC_MAT_STK_HD'
      'WHERE CONSUMEABLE_ITEM ='#39'N'#39)
    Left = 64
    Top = 184
    object qryStockMasterSTOCK_CD: TIBStringField
      DisplayLabel = 'STOCK Code'
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_HD.STOCK_CD'
      Required = True
      Size = 15
    end
    object qryStockMasterEN_DESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 150
      FieldName = 'EN_DESCS'
      Origin = 'IC_MAT_STK_HD.EN_DESCS'
      Size = 150
    end
    object qryStockMasterTH_DESCS: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_DESCS'
      Origin = 'IC_MAT_STK_HD.TH_DESCS'
      Visible = False
      Size = 150
    end
    object qryStockMasterSHORT_DESCS: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_DESCS'
      Origin = 'IC_MAT_STK_HD.SHORT_DESCS'
      Visible = False
      Size = 45
    end
    object qryStockMasterONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_HD.ONHAND_QTY'
      Required = True
      Visible = False
    end
    object qryStockMasterUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_HD.UNIT_COST'
      Required = True
      Visible = False
    end
    object qryStockMasterTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'IC_MAT_STK_HD.TOTAL_COST'
      Required = True
      Visible = False
    end
    object qryStockMasterUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_HD.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryStockMasterGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_HD.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryStockMasterRECOVERY: TFloatField
      DisplayWidth = 10
      FieldName = 'RECOVERY'
      Origin = 'IC_MAT_STK_HD.RECOVERY'
      Visible = False
    end
    object qryStockMasterMARKED_UP: TFloatField
      DisplayWidth = 10
      FieldName = 'MARKED_UP'
      Origin = 'IC_MAT_STK_HD.MARKED_UP'
      Visible = False
    end
    object qryStockMasterUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'IC_MAT_STK_HD.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryStockMasterUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'IC_MAT_STK_HD.UPDATE_DATE'
      Visible = False
    end
    object qryStockMasterDEFAULT_ELEMENT_DETAIL: TIBStringField
      DisplayWidth = 1
      FieldName = 'DEFAULT_ELEMENT_DETAIL'
      Origin = 'IC_MAT_STK_HD.DEFAULT_ELEMENT_DETAIL'
      Visible = False
      Size = 1
    end
    object qryStockMasterCONSUMEABLE_ITEM: TIBStringField
      DisplayWidth = 1
      FieldName = 'CONSUMEABLE_ITEM'
      Origin = 'IC_MAT_STK_HD.CONSUMEABLE_ITEM'
      Visible = False
      Size = 1
    end
  end
  object qryOnhandDetail: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = qryOnhandDetailAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_mat_stk_dt'
      'where  purchase_date >='#39'1/1/2006'#39
      'and purchase_date <= current_date -:DayOfPurchase'
      'and group_id not in ('#39'SG008'#39','#39'SG009'#39')'
      'and stock_cd =:stock_cd'
      'order by purchase_date')
    Left = 64
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dayOfPurchase'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'stock_cd'
        ParamType = ptUnknown
      end>
    object qryOnhandDetailLOT_CD: TIBStringField
      DisplayLabel = 'LOT CD'
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT.LOT_CD'
      Required = True
      Size = 15
    end
    object qryOnhandDetailPURCHASE_DATE: TDateTimeField
      DisplayLabel = 'PURCHASE DATE'
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_MAT_STK_DT.PURCHASE_DATE'
      Required = True
    end
    object qryOnhandDetailUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_DT.UNIT_COST'
      Required = True
    end
    object qryOnhandDetailONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT.ONHAND_QTY'
      Required = True
    end
    object qryOnhandDetailRESERVED_QTY: TFloatField
      DisplayLabel = 'RESERVED QTY'
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'IC_MAT_STK_DT.RESERVED_QTY'
      Required = True
    end
    object qryOnhandDetailSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_DT.STOCK_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object qryOnhandDetailGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_DT.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandDetailUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_DT.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryOnhandDetailLAST_PURCHASE_PRICE: TFloatField
      DisplayLabel = 'LAST PURCHASE PRICE'
      DisplayWidth = 10
      FieldName = 'LAST_PURCHASE_PRICE'
      Origin = 'IC_MAT_STK_DT.LAST_PURCHASE_PRICE'
      Required = True
      Visible = False
    end
    object qryOnhandDetailSTOCK_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'STOCK_VALUE'
      Origin = 'IC_MAT_STK_DT.STOCK_VALUE'
      Visible = False
    end
    object qryOnhandDetailTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'IC_MAT_STK_DT.TOTAL_COST'
      Visible = False
    end
    object qryOnhandDetailACCT_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CODE'
      Origin = 'IC_MAT_STK_DT.ACCT_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandDetailORDER_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'ORDER_LINE'
      Origin = 'IC_MAT_STK_DT.ORDER_LINE'
      Required = True
      Visible = False
    end
  end
  object qryOnhandLink: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_mat_stk_dt_link'
      'where  purchase_date >='#39'1/1/2006'#39
      'and group_id not in ('#39'SG008'#39','#39'SG009'#39')'
      'and lot_cd =:lot_cd'
      'ORDER BY PURCHASE_DATE,REF_DATE')
    Left = 64
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lot_cd'
        ParamType = ptUnknown
      end>
    object qryOnhandLinkREF_NO: TIBStringField
      DisplayLabel = 'GRN NO'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'IC_MAT_STK_DT_LINK.REF_NO'
      Required = True
      Size = 15
    end
    object qryOnhandLinkREF_DATE: TDateTimeField
      DisplayLabel = 'GRN DATE'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.REF_DATE'
      Required = True
    end
    object qryOnhandLinkUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_DT_LINK.UNIT_COST'
      Required = True
    end
    object qryOnhandLinkONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.ONHAND_QTY'
      Required = True
    end
    object qryOnhandLinkRESERVED_QTY: TFloatField
      DisplayLabel = 'RESERVED QTY'
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.RESERVED_QTY'
      Required = True
    end
    object qryOnhandLinkSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_DT_LINK.STOCK_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object qryOnhandLinkGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_DT_LINK.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandLinkUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_DT_LINK.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryOnhandLinkLOT_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT_LINK.LOT_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object qryOnhandLinkLAST_PURCHASE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'LAST_PURCHASE_PRICE'
      Origin = 'IC_MAT_STK_DT_LINK.LAST_PURCHASE_PRICE'
      Required = True
      Visible = False
    end
    object qryOnhandLinkPURCHASE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.PURCHASE_DATE'
      Required = True
      Visible = False
    end
    object qryOnhandLinkSTOCK_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'STOCK_VALUE'
      Origin = 'IC_MAT_STK_DT_LINK.STOCK_VALUE'
      Visible = False
    end
    object qryOnhandLinkTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'IC_MAT_STK_DT_LINK.TOTAL_COST'
      Visible = False
    end
    object qryOnhandLinkACCT_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CODE'
      Origin = 'IC_MAT_STK_DT_LINK.ACCT_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandLinkORDER_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'ORDER_LINE'
      Origin = 'IC_MAT_STK_DT_LINK.ORDER_LINE'
      Required = True
      Visible = False
    end
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from rdb$database')
    Left = 216
    Top = 216
  end
  object spPostStockAdjust: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_POST_STOCK_ADJUST_2'
    Left = 64
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'ADOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ADOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AMODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AMODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AUSERID'
        ParamType = ptInput
      end>
  end
end
