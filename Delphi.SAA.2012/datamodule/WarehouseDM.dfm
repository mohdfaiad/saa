object WarehouseDataManager: TWarehouseDataManager
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 230
  Top = 181
  Height = 738
  Width = 708
  object IBTransaction: TIBTransaction
    Active = True
    AutoStopAction = saNone
    Left = 24
    Top = 8
  end
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:C:\project\saa\DATABASE\SAA.GDB'
    Params.Strings = (
      'USER_NAME=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 64
    Top = 8
  end
  object tbMaterialRequestHD: TIBTable
    Database = IBDatabase
    Transaction = IBTransaction
    AfterPost = tbMaterialRequestHDAfterPost
    BeforePost = tbMaterialRequestHDBeforePost
    OnNewRecord = tbMaterialRequestHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_REQ_HD'
    Left = 200
    Top = 8
    object tbMaterialRequestHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbMaterialRequestHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbMaterialRequestHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbMaterialRequestHDREQ_BY: TIBStringField
      FieldName = 'REQ_BY'
      Size = 60
    end
    object tbMaterialRequestHDREQ_DATE: TDateTimeField
      FieldName = 'REQ_DATE'
    end
    object tbMaterialRequestHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbMaterialRequestHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbMaterialRequestHDTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object tbMaterialRequestHDIC_MODE: TIBStringField
      FieldName = 'IC_MODE'
      Size = 1
    end
    object tbMaterialRequestHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 60
    end
    object tbMaterialRequestHDMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      OnChange = tbMaterialRequestHDMELT_NOChange
      Size = 10
    end
    object tbMaterialRequestHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbMaterialRequestHDPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Size = 15
    end
    object tbMaterialRequestHDPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
    end
    object tbMaterialRequestHDALLOY_CODE: TIBStringField
      FieldName = 'ALLOY_CODE'
      Size = 15
    end
    object tbMaterialRequestHDISSUE_BY: TIBStringField
      FieldName = 'ISSUE_BY'
      Size = 60
    end
  end
  object tbMaterialRequestDT: TIBTable
    Database = IBDatabase
    Transaction = IBTransaction
    AfterDelete = tbMaterialRequestDTAfterDelete
    AfterOpen = tbMaterialRequestDTAfterOpen
    AfterPost = tbMaterialRequestDTAfterPost
    AfterScroll = tbMaterialRequestDTAfterScroll
    BeforeDelete = tbMaterialRequestDTBeforeDelete
    BeforePost = tbMaterialRequestDTBeforePost
    OnNewRecord = tbMaterialRequestDTNewRecord
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
        Name = 'TRX_TYPE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ITEM_CODE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ITEM_DESCS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'LOT_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PURCHASE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'QTY'
        DataType = ftFloat
      end
      item
        Name = 'UNIT_COST'
        DataType = ftFloat
      end
      item
        Name = 'UOM'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TOTAL_COST'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_ID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'USAGED_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ITEM_TYPE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ONHAND_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REF_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REF_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'ACCT_CD'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'PK_PL_REQ_DT'
        Fields = 
          'DOC_NO;DOC_DATE;TRX_TYPE;ITEM_CODE;LOT_NO;PURCHASE_DATE;GROUP_ID' +
          ';UOM;REF_NO;REF_DATE;ACCT_CD'
        Options = [ixUnique]
      end
      item
        Name = 'PL_REQ_DT_IDX1'
        Fields = 
          'DOC_NO;DOC_DATE;TRX_TYPE;GROUP_ID;LOT_NO;ITEM_CODE;PURCHASE_DATE' +
          ';REF_NO;REF_DATE;ACCT_CD'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'DOC_NO;DOC_DATE;TRX_TYPE'
    MasterFields = 'DOC_NO;DOC_DATE;TRX_TYPE'
    MasterSource = dsMaterialRequestHD
    StoreDefs = True
    TableName = 'PL_REQ_DT'
    Left = 200
    Top = 72
    object tbMaterialRequestDTLOT_NO: TIBStringField
      DisplayLabel = 'Purchase Order'
      DisplayWidth = 13
      FieldName = 'LOT_NO'
      Required = True
      OnChange = tbMaterialRequestDTLOT_NOChange
      Size = 15
    end
    object tbMaterialRequestDTITEM_CODE: TIBStringField
      DisplayLabel = 'Stock Code'
      DisplayWidth = 11
      FieldName = 'ITEM_CODE'
      Required = True
      OnChange = tbMaterialRequestDTITEM_CODEChange
      Size = 15
    end
    object tbMaterialRequestDTITEM_DESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 27
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbMaterialRequestDTUOM: TIBStringField
      DisplayWidth = 8
      FieldName = 'UOM'
      Required = True
      Size = 4
    end
    object tbMaterialRequestDTREF_NO: TIBStringField
      DisplayLabel = 'GRN No.'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Required = True
      OnChange = tbMaterialRequestDTREF_NOChange
      Size = 15
    end
    object tbMaterialRequestDTREF_DATE: TDateTimeField
      DisplayLabel = 'GRN Date'
      DisplayWidth = 12
      FieldName = 'REF_DATE'
      Required = True
    end
    object tbMaterialRequestDTUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Required = True
      DisplayFormat = '#,###.000'
    end
    object tbMaterialRequestDTONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 12
      FieldName = 'ONHAND_QTY'
    end
    object tbMaterialRequestDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Required = True
      OnChange = tbMaterialRequestDTQTYChange
      OnValidate = tbMaterialRequestDTQTYValidate
    end
    object tbMaterialRequestDTDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object tbMaterialRequestDTDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
      Visible = False
    end
    object tbMaterialRequestDTTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      Required = True
      Visible = False
      Size = 2
    end
    object tbMaterialRequestDTPURCHASE_DATE: TDateTimeField
      FieldName = 'PURCHASE_DATE'
      Required = True
      Visible = False
    end
    object tbMaterialRequestDTTOTAL_COST: TFloatField
      FieldName = 'TOTAL_COST'
      Required = True
      Visible = False
    end
    object tbMaterialRequestDTGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object tbMaterialRequestDTUSAGED_QTY: TFloatField
      FieldName = 'USAGED_QTY'
      Visible = False
    end
    object tbMaterialRequestDTITEM_TYPE: TIBStringField
      FieldName = 'ITEM_TYPE'
      Visible = False
      Size = 1
    end
    object tbMaterialRequestDTACCT_CD: TIBStringField
      FieldName = 'ACCT_CD'
      Required = True
      Visible = False
      Size = 10
    end
    object tbMaterialRequestDTStockName: TStringField
      FieldKind = fkLookup
      FieldName = 'StockName'
      LookupDataSet = tbStockMaster
      LookupKeyFields = 'STOCK_CD'
      LookupResultField = 'EN_DESCS'
      KeyFields = 'ITEM_CODE'
      Lookup = True
    end
  end
  object dsMaterialRequestHD: TDataSource
    DataSet = tbMaterialRequestHD
    Left = 316
    Top = 8
  end
  object dsMaterialRequestDT: TDataSource
    DataSet = tbMaterialRequestDT
    Left = 316
    Top = 80
  end
  object qryUnPostedMaterialRequest: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM V_MATERIAL_REQUEST'
      '')
    Left = 456
    Top = 8
    object qryUnPostedMaterialRequestDOC_NO: TIBStringField
      DisplayLabel = 'Document No'
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'DOC_NO'
      Origin = 'V_MATERIAL_REQUEST.DOC_NO'
      ReadOnly = True
      Size = 15
    end
    object qryUnPostedMaterialRequestDOC_DATE: TDateTimeField
      DisplayLabel = 'Document Date'
      DisplayWidth = 18
      FieldKind = fkInternalCalc
      FieldName = 'DOC_DATE'
      Origin = 'V_MATERIAL_REQUEST.DOC_DATE'
      ReadOnly = True
    end
    object qryUnPostedMaterialRequestREQ_BY: TIBStringField
      DisplayLabel = 'Request By'
      DisplayWidth = 60
      FieldKind = fkInternalCalc
      FieldName = 'REQ_BY'
      Origin = 'V_MATERIAL_REQUEST.REQ_BY'
      ReadOnly = True
      Size = 60
    end
    object qryUnPostedMaterialRequestISSUE_BY: TIBStringField
      DisplayLabel = 'Issue By'
      DisplayWidth = 60
      FieldKind = fkInternalCalc
      FieldName = 'ISSUE_BY'
      Origin = 'V_MATERIAL_REQUEST.ISSUE_BY'
      ReadOnly = True
      Size = 60
    end
    object qryUnPostedMaterialRequestMELT_NO: TIBStringField
      DisplayLabel = 'Melt No'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'MELT_NO'
      Origin = 'V_MATERIAL_REQUEST.MELT_NO'
      ReadOnly = True
      Size = 10
    end
    object qryUnPostedMaterialRequestSTATUS: TIBStringField
      DisplayWidth = 1
      FieldKind = fkInternalCalc
      FieldName = 'STATUS'
      Origin = 'V_MATERIAL_REQUEST.STATUS'
      ReadOnly = True
      Visible = False
      Size = 1
    end
  end
  object dsUnPostedMaterialRequest: TDataSource
    DataSet = qryUnPostedMaterialRequest
    Left = 600
    Top = 8
  end
  object qryUnClosedRawmaterialPlan: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    AfterScroll = qryUnClosedRawmaterialPlanAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM V_RAWMATERIAL_PLAN')
    Left = 456
    Top = 80
    object qryUnClosedRawmaterialPlanMELT_NO: TIBStringField
      DisplayLabel = 'MELT NO'
      FieldName = 'MELT_NO'
      Origin = '"V_RAWMATERIAL_PLAN"."MELT_NO"'
      Size = 10
    end
    object qryUnClosedRawmaterialPlanPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Origin = '"V_RAWMATERIAL_PLAN"."PLAN_DOC"'
      Size = 15
    end
    object qryUnClosedRawmaterialPlanPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
      Origin = '"V_RAWMATERIAL_PLAN"."PLAN_DATE"'
    end
    object qryUnClosedRawmaterialPlanITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = '"V_RAWMATERIAL_PLAN"."ITEM_CODE"'
      Size = 15
    end
  end
  object dsUnClosedRawmaterialPlan: TDataSource
    DataSet = qryUnClosedRawmaterialPlan
    Left = 608
    Top = 80
  end
  object spRequestDetailInsert: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'X_INS_PL_REQ_DT'
    Left = 32
    Top = 152
  end
  object qryStockOnhandDetail: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    AfterScroll = qryStockOnhandDetailAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM ic_mat_stk_dt_link'
      'WHERE ONHAND_QTY >0'
      'AND PURCHASE_DATE>'#39'1/1/2006'#39
      'AND GROUP_ID NOT IN ('#39'SG008'#39','#39'SG009'#39')')
    Left = 464
    Top = 168
    object qryStockOnhandDetailLOT_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT.LOT_CD'
      Required = True
      Size = 15
    end
    object qryStockOnhandDetailPURCHASE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_MAT_STK_DT.PURCHASE_DATE'
      Required = True
    end
    object qryStockOnhandDetailONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT.ONHAND_QTY'
      Required = True
    end
    object qryStockOnhandDetailSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_DT.STOCK_CD'
      Required = True
      Size = 15
    end
    object qryStockOnhandDetailGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_DT.GROUP_ID'
      Required = True
      Size = 10
    end
    object qryStockOnhandDetailUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_DT.UOM_CD'
      Required = True
      Size = 4
    end
    object qryStockOnhandDetailACCT_CODE: TIBStringField
      FieldName = 'ACCT_CODE'
      Origin = 'IC_MAT_STK_DT.ACCT_CODE'
      Required = True
      Size = 10
    end
  end
  object dsStockOnhandDetail: TDataSource
    DataSet = qryStockOnhandDetail
    Left = 608
    Top = 168
  end
  object qryStockOnhandDetailLink: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IC_MAT_STK_DT_LINK'
      'WHERE  LOT_CD=:LOT_CD'
      'AND ONHAND_QTY >0')
    Left = 464
    Top = 248
    ParamData = <
      item
        DataType = ftString
        Name = 'LOT_CD'
        ParamType = ptInput
      end>
    object qryStockOnhandDetailLinkREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'IC_MAT_STK_DT_LINK.REF_NO'
      Required = True
      Size = 15
    end
    object qryStockOnhandDetailLinkREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.REF_DATE'
      Required = True
    end
    object qryStockOnhandDetailLinkLOT_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT_LINK.LOT_CD'
      Required = True
      Size = 15
    end
    object qryStockOnhandDetailLinkONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.ONHAND_QTY'
      Required = True
    end
    object qryStockOnhandDetailLinkRESERVED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.RESERVED_QTY'
      Required = True
    end
    object qryStockOnhandDetailLinkUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_DT_LINK.UNIT_COST'
      Required = True
    end
  end
  object dsStockOnhandDetailLink: TDataSource
    DataSet = qryStockOnhandDetailLink
    Left = 616
    Top = 256
  end
  object qryAdhoc: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 32
    Top = 104
  end
  object spStockQualify: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'X_QUALIFY_STOCK'
    Left = 32
    Top = 224
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ONHAND_QTY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'RESERVED_QTY'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ASTOCK_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALOT_CD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AREF_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'AREF_DATE'
        ParamType = ptInput
      end>
  end
  object spStockReserved: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'X_UPD_STOCKRESERVE'
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'ASTOCK_CD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALOT_CD'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'APURCHASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AREF_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'AREF_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ADOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ADOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AUSER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AQTY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AMODE'
        ParamType = ptInput
      end>
  end
  object tbStockMaster: TIBTable
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'IC_MAT_STK_HD'
    Left = 200
    Top = 128
    object tbStockMasterSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Size = 15
    end
    object tbStockMasterEN_DESCS: TIBStringField
      FieldName = 'EN_DESCS'
      Size = 150
    end
    object tbStockMasterTH_DESCS: TIBStringField
      FieldName = 'TH_DESCS'
      Size = 150
    end
    object tbStockMasterUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbStockMasterGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
  end
  object dsStockMaster: TDataSource
    DataSet = tbStockMaster
    Left = 320
    Top = 128
  end
  object qryStockReserved: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IC_STOCK_RESERVED'
      'WHERE LOT_CD =:LOT_CD')
    Left = 456
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOT_CD'
        ParamType = ptUnknown
      end>
    object qryStockReservedDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'IC_STOCK_RESERVED.DOC_NO'
      Required = True
      Size = 15
    end
    object qryStockReservedDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'IC_STOCK_RESERVED.DOC_DATE'
      Required = True
    end
    object qryStockReservedLOT_CD: TIBStringField
      FieldName = 'LOT_CD'
      Origin = 'IC_STOCK_RESERVED.LOT_CD'
      Required = True
      Size = 15
    end
    object qryStockReservedPURCHASE_DATE: TDateTimeField
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_STOCK_RESERVED.PURCHASE_DATE'
      Required = True
    end
    object qryStockReservedREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'IC_STOCK_RESERVED.REF_NO'
      Required = True
      Size = 15
    end
    object qryStockReservedREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'IC_STOCK_RESERVED.REF_DATE'
      Required = True
    end
    object qryStockReservedSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Origin = 'IC_STOCK_RESERVED.STOCK_CD'
      Required = True
      Size = 15
    end
    object qryStockReservedGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Origin = 'IC_STOCK_RESERVED.GROUP_ID'
      Required = True
      Size = 10
    end
    object qryStockReservedUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Origin = 'IC_STOCK_RESERVED.UOM_CD'
      Required = True
      Size = 4
    end
    object qryStockReservedQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'IC_STOCK_RESERVED.QTY'
      Required = True
    end
    object qryStockReservedUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'IC_STOCK_RESERVED.UPDATE_USER'
      Size = 10
    end
    object qryStockReservedUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'IC_STOCK_RESERVED.UPDATE_DATE'
    end
  end
  object dsStockReserved: TDataSource
    DataSet = qryStockReserved
    Left = 608
    Top = 344
  end
  object tbUser: TIBTable
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SYS_USERS'
    Left = 200
    Top = 184
    object tbUserUSER_ID: TIBStringField
      FieldName = 'USER_ID'
      Size = 10
    end
    object tbUserUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Size = 60
    end
    object tbUserGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 4
    end
    object tbUserOLD_PASSWORD: TIBStringField
      FieldName = 'OLD_PASSWORD'
      Size = 10
    end
    object tbUserCURRENT_PASSWORD: TIBStringField
      FieldName = 'CURRENT_PASSWORD'
      Size = 10
    end
    object tbUserCONFIRM_PASSWORD: TIBStringField
      FieldName = 'CONFIRM_PASSWORD'
      Size = 10
    end
    object tbUserUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbUserUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbUserACTIVED: TIBStringField
      FieldName = 'ACTIVED'
      Size = 1
    end
  end
  object dsUser: TDataSource
    DataSet = tbUser
    Left = 320
    Top = 184
  end
  object qryStockOnhandLinkEnq: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IC_MAT_STK_DT_LINK'
      'WHERE  LOT_CD=:LOT_CD'
      'AND ONHAND_QTY >0')
    Left = 200
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'LOT_CD'
        ParamType = ptInput
      end>
    object IBStringField1: TIBStringField
      DisplayLabel = 'GRN No'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'IC_MAT_STK_DT_LINK.REF_NO'
      Required = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'GRN Date'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.REF_DATE'
      Required = True
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Unit Cost'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_DT_LINK.UNIT_COST'
      Required = True
      DisplayFormat = '#,##0.000'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Onhand Qty'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.ONHAND_QTY'
      Required = True
      DisplayFormat = '#,##0.000'
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT_LINK.LOT_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.RESERVED_QTY'
      Required = True
      Visible = False
      DisplayFormat = '#,##0.000'
    end
  end
  object spPostMaterialRequest: TIBStoredProc
    Database = IBDatabase
    Transaction = IBTransaction
    StoredProcName = 'X_POST_MATERIAL'
    Left = 32
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'ACCT_CD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UPDATE_USER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MODE'
        ParamType = ptInput
      end>
  end
end
