inherited ProductionDM: TProductionDM
  OldCreateOrder = True
  Left = 457
  Top = 201
  Height = 728
  Width = 1279
  object tbProplanHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbProplanHDBeforePost
    OnNewRecord = tbProplanHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_PRO_PLAN_HD'
    Left = 40
    Top = 24
    object tbProplanHDPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
    end
    object tbProplanHDPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Size = 15
    end
    object tbProplanHDISSUE_BY: TIBStringField
      FieldName = 'ISSUE_BY'
      Size = 60
    end
    object tbProplanHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbProplanHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbProplanHDSTART_MELT_NO: TSmallintField
      FieldName = 'START_MELT_NO'
    end
    object tbProplanHDEND_MELT_NO: TSmallintField
      FieldName = 'END_MELT_NO'
    end
    object tbProplanHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbProplanHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbProplanHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbProplanHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbProplanHDTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object t: TIBStringField
      FieldName = 'MELT_PREFIX'
      Size = 4
    end
    object tbProplanHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 255
    end
    object tbProplanHDDIST_TO: TIBStringField
      FieldName = 'DIST_TO'
      Size = 60
    end
    object tbProplanHDWORK_START_TIME: TDateTimeField
      FieldName = 'WORK_START_TIME'
    end
    object tbProplanHDUPDATE_MELT_NO: TSmallintField
      FieldName = 'UPDATE_MELT_NO'
    end
    object tbProplanHDORDER_REMARKS: TIBStringField
      FieldName = 'ORDER_REMARKS'
      Size = 800
    end
    object tbProplanHDPYEAR: TSmallintField
      FieldName = 'PYEAR'
    end
    object tbProplanHDPMONTH: TSmallintField
      FieldName = 'PMONTH'
    end
    object tbProplanHDCAPACITY: TFloatField
      FieldName = 'CAPACITY'
    end
  end
  object tbProplanDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbProplanDTAfterDelete
    BeforeDelete = tbProplanDTBeforeDelete
    BeforeInsert = tbProplanDTBeforeInsert
    BeforePost = tbProplanDTBeforePost
    OnNewRecord = tbProplanDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'PLAN_DATE;PLAN_DOC;MELT_NO'
    MasterFields = 'PLAN_DATE;PLAN_DOC'
    MasterSource = dsProplanHD
    TableName = 'PL_PRO_PLAN_DT'
    Left = 216
    Top = 24
    object tbProplanDTLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbProplanDTEND_MELT_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'END_MELT_FLAG'
      Size = 1
    end
    object tbProplanDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      OnChange = tbProplanDTMELT_NOChange
      Size = 10
    end
    object tbProplanDTSTOCK_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_FLAG'
      Size = 1
    end
    object tbProplanDTSTOCK_ITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_ITEM_CODE'
      OnChange = tbProplanDTSTOCK_ITEM_CODEChange
      Size = 15
    end
    object tbProplanDTORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      OnChange = tbProplanDTORDER_NOChange
      Size = 15
    end
    object tbProplanDTORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object tbProplanDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbProplanDTITEM_DESCS: TIBStringField
      DisplayWidth = 45
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbProplanDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      OnChange = tbProplanDTCUST_CODEChange
      Size = 10
    end
    object tbProplanDTCUST_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'CUST_NAME'
      Size = 60
    end
    object tbProplanDTESTIMATED_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTIMATED_WEIGHT'
    end
    object tbProplanDTREMARKS: TIBStringField
      DisplayWidth = 30
      FieldName = 'REMARKS'
      Size = 255
    end
    object tbProplanDTSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
    object tbProplanDTSCHEDULE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'SCHEDULE_DATE'
      Visible = False
    end
    object tbProplanDTName: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = tbCustomer
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'CUST_CODE'
      Visible = False
      Size = 60
      Lookup = True
    end
    object tbProplanDTItemDescs: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ItemDescs'
      LookupDataSet = qryActiveSaleItem
      LookupKeyFields = 'ITEM_CODE'
      LookupResultField = 'DESCS'
      KeyFields = 'ITEM_CODE'
      Visible = False
      Size = 60
      Lookup = True
    end
    object tbProplanDTPLAN_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PLAN_DATE'
      Visible = False
    end
    object tbProplanDTPLAN_DOC: TIBStringField
      DisplayWidth = 15
      FieldName = 'PLAN_DOC'
      Visible = False
      Size = 15
    end
    object tbProplanDTTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Visible = False
      Size = 2
    end
    object tbProplanDTCAL_TO_TIME: TDateTimeField
      DisplayWidth = 18
      FieldName = 'CAL_TO_TIME'
      Visible = False
    end
    object tbProplanDTFOR_TIME: TTimeField
      DisplayWidth = 10
      FieldName = 'FOR_TIME'
      Visible = False
    end
    object tbProplanDTSTIME: TDateTimeField
      DisplayWidth = 18
      FieldName = 'STIME'
      Visible = False
    end
    object tbProplanDTATTIME: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ATTIME'
      Visible = False
    end
    object tbProplanDTPRIOR_ATIME: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PRIOR_ATIME'
      Visible = False
    end
    object tbProplanDTPRIOR_STIME: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PRIOR_STIME'
      Visible = False
    end
    object tbProplanDTPRIOR_FOR_TIME: TTimeField
      DisplayWidth = 10
      FieldName = 'PRIOR_FOR_TIME'
      Visible = False
    end
    object tbProplanDTUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
  end
  object dsProplanHD: TDataSource
    DataSet = tbProplanHD
    Left = 120
    Top = 24
  end
  object qryunPostProductionPlan: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  * FROM PL_PRO_PLAN_HD'
      'WHERE STATUS <>'#39'X'#39)
    Left = 344
    Top = 24
    object qryunPostProductionPlanPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DATE'
      Required = True
    end
    object qryunPostProductionPlanPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DOC'
      Required = True
      Size = 15
    end
    object qryunPostProductionPlanISSUE_BY: TIBStringField
      FieldName = 'ISSUE_BY'
      Origin = 'PL_PRO_PLAN_HD.ISSUE_BY'
      Required = True
      Size = 60
    end
    object qryunPostProductionPlanREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'PL_PRO_PLAN_HD.REF_NO'
      Size = 15
    end
    object qryunPostProductionPlanDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'PL_PRO_PLAN_HD.DESCS'
      Size = 60
    end
    object qryunPostProductionPlanSTART_MELT_NO: TSmallintField
      FieldName = 'START_MELT_NO'
      Origin = 'PL_PRO_PLAN_HD.START_MELT_NO'
      Required = True
    end
    object qryunPostProductionPlanEND_MELT_NO: TSmallintField
      FieldName = 'END_MELT_NO'
      Origin = 'PL_PRO_PLAN_HD.END_MELT_NO'
      Required = True
    end
    object qryunPostProductionPlanUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'PL_PRO_PLAN_HD.UPDATE_USER'
      Size = 10
    end
    object qryunPostProductionPlanUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_PRO_PLAN_HD.UPDATE_DATE'
      Required = True
    end
    object qryunPostProductionPlanSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PL_PRO_PLAN_HD.STATUS'
      Required = True
      Size = 1
    end
    object qryunPostProductionPlanREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'PL_PRO_PLAN_HD.REF_DATE'
    end
    object qryunPostProductionPlanTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      Origin = 'PL_PRO_PLAN_HD.TRX_TYPE'
      Required = True
      Size = 2
    end
    object qryunPostProductionPlanMELT_PREFIX: TIBStringField
      FieldName = 'MELT_PREFIX'
      Origin = 'PL_PRO_PLAN_HD.MELT_PREFIX'
      Size = 4
    end
    object qryunPostProductionPlanREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'PL_PRO_PLAN_HD.REMARKS'
      Size = 255
    end
    object qryunPostProductionPlanDIST_TO: TIBStringField
      FieldName = 'DIST_TO'
      Origin = 'PL_PRO_PLAN_HD.DIST_TO'
      Size = 60
    end
    object qryunPostProductionPlanWORK_START_TIME: TDateTimeField
      FieldName = 'WORK_START_TIME'
      Origin = 'PL_PRO_PLAN_HD.WORK_START_TIME'
    end
    object qryunPostProductionPlanUPDATE_MELT_NO: TSmallintField
      FieldName = 'UPDATE_MELT_NO'
      Origin = 'PL_PRO_PLAN_HD.UPDATE_MELT_NO'
      Required = True
    end
    object qryunPostProductionPlanORDER_REMARKS: TIBStringField
      FieldName = 'ORDER_REMARKS'
      Origin = 'PL_PRO_PLAN_HD.ORDER_REMARKS'
      Size = 800
    end
    object qryunPostProductionPlanPYEAR: TSmallintField
      FieldName = 'PYEAR'
      Origin = 'PL_PRO_PLAN_HD.PYEAR'
    end
    object qryunPostProductionPlanPMONTH: TSmallintField
      FieldName = 'PMONTH'
      Origin = 'PL_PRO_PLAN_HD.PMONTH'
    end
  end
  object qryActiveSaleItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM so_sales_item_hd s, ar_debtor r'
      'where s.cust_code = r.debtor_acct'
      'ORDER BY S.CUST_CODE,S.ITEM_CODE')
    Left = 456
    Top = 24
    object qryActiveSaleItemITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_SALES_ITEM_HD.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryActiveSaleItemDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'SO_SALES_ITEM_HD.DESCS'
      Required = True
      Size = 60
    end
    object qryActiveSaleItemCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_SALES_ITEM_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryActiveSaleItemNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'AR_DEBTOR.NAME'
      Size = 60
    end
    object qryActiveSaleItemREMARKS: TIBStringField
      DisplayWidth = 800
      FieldName = 'REMARKS'
      Origin = 'SO_SALES_ITEM_HD.REMARKS'
      Visible = False
      Size = 800
    end
    object qryActiveSaleItemUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_SALES_ITEM_HD.UNIT_COST'
      Visible = False
    end
    object qryActiveSaleItemSALE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'SALE_PRICE'
      Origin = 'SO_SALES_ITEM_HD.SALE_PRICE'
      Visible = False
    end
    object qryActiveSaleItemUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'SO_SALES_ITEM_HD.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryActiveSaleItemUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'SO_SALES_ITEM_HD.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryActiveSaleItemUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_SALES_ITEM_HD.UPDATE_DATE'
      Visible = False
    end
    object qryActiveSaleItemSTANDARD_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'STANDARD_PRICE'
      Origin = 'SO_SALES_ITEM_HD.STANDARD_PRICE'
      Visible = False
    end
    object qryActiveSaleItemCURRENT_ACTIVE: TIBStringField
      DisplayWidth = 1
      FieldName = 'CURRENT_ACTIVE'
      Origin = 'SO_SALES_ITEM_HD.CURRENT_ACTIVE'
      Visible = False
      Size = 1
    end
  end
  object qryActiveOrderLookup: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT SO_ORDER_HD.CUST_CODE,'
      'SO_ORDER_HD.name,'
      
        ' SO_ORDER_HD.ORDER_NO, SO_ORDER_HD.ORDER_DATE, SO_ORDER_DT.ITEM_' +
        'CODE, SO_ORDER_DT.LINE_NO, SO_ORDER_DT.UOM, SO_ORDER_DT.ITEM_DES' +
        'CS, SO_ORDER_DT.UNIT_COST, SO_ORDER_DT.TOTAL_AMT, SO_ORDER_DT.QT' +
        'Y'
      'FROM SO_ORDER_HD'
      
        '   INNER JOIN SO_ORDER_DT ON (SO_ORDER_HD.ORDER_NO = SO_ORDER_DT' +
        '.ORDER_NO) AND (SO_ORDER_HD.ORDER_DATE = SO_ORDER_DT.ORDER_DATE)' +
        ' AND (SO_ORDER_HD.CUST_CODE = SO_ORDER_DT.CUST_CODE)'
      'WHERE '
      '   ('
      '      (SO_ORDER_HD.STATUS = '#39'A'#39')'
      '   )'
      'ORDER BY SO_ORDER_HD.CUST_CODE, SO_ORDER_HD.ORDER_DATE')
    Left = 456
    Top = 80
    object qryActiveOrderLookupORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryActiveOrderLookupORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryActiveOrderLookupCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_ORDER_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryActiveOrderLookupNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'SO_ORDER_HD.NAME'
      Size = 60
    end
    object qryActiveOrderLookupITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryActiveOrderLookupLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Origin = 'SO_ORDER_DT.LINE_NO'
      Required = True
    end
    object qryActiveOrderLookupUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Origin = 'SO_ORDER_DT.UOM'
      Required = True
      Size = 4
    end
    object qryActiveOrderLookupITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'SO_ORDER_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryActiveOrderLookupUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryActiveOrderLookupTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'SO_ORDER_DT.TOTAL_AMT'
      Required = True
    end
    object qryActiveOrderLookupQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'SO_ORDER_DT.QTY'
      Required = True
    end
  end
  object spGenerateMelt: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_PL_GET_MELT'
    Left = 64
    Top = 152
    ParamData = <
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
        Name = 'AMELT_SUFFIX'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ASTART_MELT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ATOTAL_MELT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACAP'
        ParamType = ptInput
      end>
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 136
    Top = 160
  end
  object tbCustomer: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'AR_DEBTOR'
    Left = 40
    Top = 88
    object tbCustomerNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 60
    end
    object tbCustomerDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbCustomerADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Visible = False
      Size = 60
    end
    object tbCustomerADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 60
    end
    object tbCustomerADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 60
    end
    object tbCustomerTELPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELPHONE'
      Visible = False
      Size = 30
    end
    object tbCustomerFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Visible = False
      Size = 30
    end
    object tbCustomerDEBTOR_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'DEBTOR_TYPE'
      Visible = False
      Size = 2
    end
    object tbCustomerSHORT_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_NAME'
      Visible = False
      Size = 45
    end
    object tbCustomerCREDIT_TERM: TSmallintField
      DisplayWidth = 10
      FieldName = 'CREDIT_TERM'
      Visible = False
    end
    object tbCustomerTAX_REGISTED_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_REGISTED_NO'
      Visible = False
      Size = 15
    end
    object tbCustomerBALANCE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BALANCE_AMT'
      Visible = False
    end
    object tbCustomerCREDIT_LIMIT: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDIT_LIMIT'
      Visible = False
    end
    object tbCustomerCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Visible = False
      Size = 4
    end
    object tbCustomerMAILADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR1'
      Visible = False
      Size = 60
    end
    object tbCustomerMAILADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR2'
      Visible = False
      Size = 60
    end
    object tbCustomerMAILADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR3'
      Visible = False
      Size = 60
    end
    object tbCustomerUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbCustomerUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbCustomerTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbCustomerPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Visible = False
      Size = 10
    end
    object tbCustomerPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Visible = False
      Size = 30
    end
    object tbCustomerTH_ADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR1'
      Visible = False
      Size = 60
    end
    object tbCustomerTH_ADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR2'
      Visible = False
      Size = 60
    end
    object tbCustomerTH_ADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR3'
      Visible = False
      Size = 60
    end
    object tbCustomerTH_NAME: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_NAME'
      Visible = False
      Size = 150
    end
  end
  object qryProPlanItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT PL_PRO_PLAN_DT.MELT_NO, PL_PRO_PLAN_DT.ITEM_CODE, PL_PRO_' +
        'PLAN_DT.ORDER_NO, PL_PRO_PLAN_DT.CUST_CODE, PL_PRO_PLAN_DT.ORDER' +
        '_DATE, PL_PRO_PLAN_DT.LINE_NO, PL_PRO_PLAN_DT.ITEM_DESCS, PL_PRO' +
        '_PLAN_DT.UOM_CD, PL_PRO_PLAN_DT.CUST_NAME'
      'FROM PL_PRO_PLAN_DT'
      'WHERE PLAN_DOC=:PPLANDOC'
      'AND'
      'MELT_NO = :PMELTNO')
    Left = 256
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pPlanDoc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pMeltNo'
        ParamType = ptUnknown
      end>
  end
  object tbMaterialSheetHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbMaterialSheetHDBeforePost
    OnCalcFields = tbMaterialSheetHDCalcFields
    OnNewRecord = tbMaterialSheetHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'PLAN_DOC='#39'ML20P10'#39
    Filtered = True
    TableName = 'PL_RAWMAT_SHEET_HD'
    Left = 56
    Top = 320
    object tbMaterialSheetHDPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
    end
    object tbMaterialSheetHDPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Size = 15
    end
    object tbMaterialSheetHDMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      OnChange = tbMaterialSheetHDMELT_NOChange
      Size = 10
    end
    object tbMaterialSheetHDITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbMaterialSheetHDCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbMaterialSheetHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 60
    end
    object tbMaterialSheetHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbMaterialSheetHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbMaterialSheetHDFLB1: TFloatField
      FieldName = 'FLB1'
    end
    object tbMaterialSheetHDFLB2: TFloatField
      FieldName = 'FLB2'
    end
    object tbMaterialSheetHDFLB3: TFloatField
      FieldName = 'FLB3'
    end
    object tbMaterialSheetHDFLB4: TFloatField
      FieldName = 'FLB4'
    end
    object tbMaterialSheetHDFLB5: TFloatField
      FieldName = 'FLB5'
    end
    object tbMaterialSheetHDFLB6: TFloatField
      FieldName = 'FLB6'
    end
    object tbMaterialSheetHDFLB7: TFloatField
      FieldName = 'FLB7'
    end
    object tbMaterialSheetHDFLB8: TFloatField
      FieldName = 'FLB8'
    end
    object tbMaterialSheetHDFLB9: TFloatField
      FieldName = 'FLB9'
    end
    object tbMaterialSheetHDFLB10: TFloatField
      FieldName = 'FLB10'
    end
    object tbMaterialSheetHDFLB11: TFloatField
      FieldName = 'FLB11'
    end
    object tbMaterialSheetHDFLB12: TFloatField
      FieldName = 'FLB12'
    end
    object tbMaterialSheetHDFLB13: TFloatField
      FieldName = 'FLB13'
    end
    object tbMaterialSheetHDTOTAL_CHARGED_WEIGHT: TFloatField
      FieldName = 'TOTAL_CHARGED_WEIGHT'
    end
    object tbMaterialSheetHDTOTAL_RECOVERY_WEIGHT: TFloatField
      FieldName = 'TOTAL_RECOVERY_WEIGHT'
    end
    object tbMaterialSheetHDTOTAL_COST: TFloatField
      FieldName = 'TOTAL_COST'
    end
    object tbMaterialSheetHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbMaterialSheetHDCUST_NAME: TIBStringField
      FieldName = 'CUST_NAME'
      Size = 60
    end
    object tbMaterialSheetHDITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbMaterialSheetHDTAP_REMARK: TIBStringField
      FieldName = 'TAP_REMARK'
      Size = 60
    end
    object tbMaterialSheetHDISSUE_BY: TIBStringField
      FieldName = 'ISSUE_BY'
      Size = 60
    end
    object tbMaterialSheetHDTOTAL_DROSS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_DROSS'
      Calculated = True
    end
    object tbMaterialSheetHDCostPerUnit: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostPerUnit'
      Calculated = True
    end
    object tbMaterialSheetHDRECOVERYPERCENTAGE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RECOVERYPERCENTAGE'
      Calculated = True
    end
    object tbMaterialSheetHDFLB14: TFloatField
      FieldName = 'FLB14'
    end
    object tbMaterialSheetHDFLB15: TFloatField
      FieldName = 'FLB15'
    end
    object tbMaterialSheetHDFLB16: TFloatField
      FieldName = 'FLB16'
    end
    object tbMaterialSheetHDFLB17: TFloatField
      FieldName = 'FLB17'
    end
    object tbMaterialSheetHDFLB18: TFloatField
      FieldName = 'FLB18'
    end
    object tbMaterialSheetHDFLB19: TFloatField
      FieldName = 'FLB19'
    end
    object tbMaterialSheetHDFLB20: TFloatField
      FieldName = 'FLB20'
    end
    object tbMaterialSheetHDFLB21: TFloatField
      FieldName = 'FLB21'
    end
    object tbMaterialSheetHDFLB22: TFloatField
      FieldName = 'FLB22'
    end
    object tbMaterialSheetHDFLB23: TFloatField
      FieldName = 'FLB23'
    end
    object tbMaterialSheetHDFLB24: TFloatField
      FieldName = 'FLB24'
    end
    object tbMaterialSheetHDFLB25: TFloatField
      FieldName = 'FLB25'
    end
  end
  object tbMaterialSheetDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbMaterialSheetDTAfterDelete
    AfterOpen = tbMaterialSheetDTAfterOpen
    AfterPost = tbMaterialSheetDTAfterPost
    AfterScroll = tbMaterialSheetDTAfterScroll
    BeforeInsert = tbMaterialSheetDTBeforeInsert
    BeforePost = tbMaterialSheetDTBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 
      'PLAN_DOC;PLAN_DATE;MELT_NO;ITEM_CODE;CUST_CODE;CHECK_PLATE_GROUP' +
      '_ID;LINE_NO'
    MasterFields = 'PLAN_DOC;PLAN_DATE;MELT_NO;ITEM_CODE;CUST_CODE'
    MasterSource = dsMaterialSheetHD
    TableName = 'PL_RAWMAT_SHEET_DT'
    Left = 304
    Top = 320
    object tbMaterialSheetDTCHECK_PLATE_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'CHECK_PLATE_FLAG'
      Size = 1
    end
    object tbMaterialSheetDTCHECK_PLATE_GROUP_ID: TSmallintField
      DisplayWidth = 10
      FieldName = 'CHECK_PLATE_GROUP_ID'
    end
    object tbMaterialSheetDTLAST_MELT_ITEM: TIBStringField
      DisplayLabel = 'Is Last Melt'
      DisplayWidth = 1
      FieldName = 'LAST_MELT_ITEM'
      OnChange = tbMaterialSheetDTLAST_MELT_ITEMChange
      Size = 1
    end
    object tbMaterialSheetDTLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbMaterialSheetDTREF_MELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'REF_MELT_NO'
      OnChange = tbMaterialSheetDTREF_MELT_NOChange
      Size = 10
    end
    object tbMaterialSheetDTSTOCK_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CODE'
      OnChange = tbMaterialSheetDTSTOCK_CODEChange
      Size = 15
    end
    object tbMaterialSheetDTGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbMaterialSheetDTLOT_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      OnChange = tbMaterialSheetDTLOT_NOChange
      Size = 15
    end
    object tbMaterialSheetDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbMaterialSheetDTPURCHASE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
    end
    object tbMaterialSheetDTSUPPLIER_CD: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPPLIER_CD'
      Size = 10
    end
    object tbMaterialSheetDTELE_PERC1: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC1'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC2: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC2'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC3: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC3'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC4: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC4'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC5: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC5'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC6: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC6'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC7: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC7'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC8: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC8'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC9: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC9'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC10: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC10'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC11: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC11'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC12: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC12'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC13: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC13'
      OnChange = tbMaterialSheetDTELE_PERC1Change
    end
    object tbMaterialSheetDTELE_PERC14: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC14'
    end
    object tbMaterialSheetDTELE_PERC15: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC15'
    end
    object tbMaterialSheetDTELE_PERC16: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC16'
    end
    object tbMaterialSheetDTELE_PERC17: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC17'
    end
    object tbMaterialSheetDTELE_PERC18: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC18'
    end
    object tbMaterialSheetDTELE_PERC19: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC19'
    end
    object tbMaterialSheetDTELE_PERC20: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC20'
    end
    object tbMaterialSheetDTELE_PERC21: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC21'
    end
    object tbMaterialSheetDTELE_PERC22: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC22'
    end
    object tbMaterialSheetDTELE_PERC23: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC23'
    end
    object tbMaterialSheetDTELE_PERC24: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC24'
    end
    object tbMaterialSheetDTELE_PERC25: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC25'
    end
    object tbMaterialSheetDTUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      OnChange = tbMaterialSheetDTUNIT_COSTChange
    end
    object tbMaterialSheetDTRECOVERY_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'RECOVERY_PERC'
      OnChange = tbMaterialSheetDTUNIT_COSTChange
    end
    object tbMaterialSheetDTCHARGED_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'CHARGED_WEIGHT'
      OnChange = tbMaterialSheetDTUNIT_COSTChange
    end
    object tbMaterialSheetDTRECOVERY_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'RECOVERY_WEIGHT'
    end
    object tbMaterialSheetDTTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
    end
    object tbMaterialSheetDTDESCS: TIBStringField
      DisplayLabel = 'Remark'
      DisplayWidth = 60
      FieldName = 'DESCS'
      OnChange = tbMaterialSheetDTDESCSChange
      Size = 150
    end
    object tbMaterialSheetDTREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Visible = False
      Size = 15
    end
    object tbMaterialSheetDTREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Visible = False
    end
    object tbMaterialSheetDTONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Visible = False
    end
    object tbMaterialSheetDTORDER_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
      Visible = False
    end
    object tbMaterialSheetDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbMaterialSheetDTACTUAL_CHARGED_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'ACTUAL_CHARGED_WEIGHT'
      Visible = False
    end
    object tbMaterialSheetDTACTUAL_RECOVERY_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'ACTUAL_RECOVERY_WEIGHT'
      Visible = False
    end
    object tbMaterialSheetDTPLAN_DOC: TIBStringField
      DisplayWidth = 15
      FieldName = 'PLAN_DOC'
      Visible = False
      Size = 15
    end
    object tbMaterialSheetDTPLAN_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PLAN_DATE'
      Visible = False
    end
    object tbMaterialSheetDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Visible = False
      Size = 10
    end
    object tbMaterialSheetDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Visible = False
      Size = 15
    end
  end
  object dsMaterialSheetHD: TDataSource
    DataSet = tbMaterialSheetHD
    Left = 156
    Top = 320
  end
  object qryProplanHeaderItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT PLAN_DOC,PLAN_DATE'
      'FROM PL_PRO_PLAN_HD'
      'WHERE PLAN_DOC =:PPLANDOC')
    Left = 264
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pPlanDoc'
        ParamType = ptUnknown
      end>
    object qryProplanHeaderItemPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DOC'
      Required = True
      Size = 15
    end
    object qryProplanHeaderItemPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DATE'
      Required = True
    end
  end
  object qryUnPostMeltSheet: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pl_rawmat_sheet_hd'
      'where status ='#39'N'#39)
    Left = 440
    Top = 320
    object qryUnPostMeltSheetPLAN_DATE: TDateTimeField
      FieldName = 'PLAN_DATE'
      Origin = 'PL_RAWMAT_SHEET_HD.PLAN_DATE'
      Required = True
    end
    object qryUnPostMeltSheetPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Origin = 'PL_RAWMAT_SHEET_HD.PLAN_DOC'
      Required = True
      Size = 15
    end
    object qryUnPostMeltSheetMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Origin = 'PL_RAWMAT_SHEET_HD.MELT_NO'
      Required = True
      Size = 10
    end
    object qryUnPostMeltSheetITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = 'PL_RAWMAT_SHEET_HD.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryUnPostMeltSheetCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'PL_RAWMAT_SHEET_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryUnPostMeltSheetREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'PL_RAWMAT_SHEET_HD.REMARKS'
      Size = 60
    end
    object qryUnPostMeltSheetUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'PL_RAWMAT_SHEET_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnPostMeltSheetUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_RAWMAT_SHEET_HD.UPDATE_DATE'
    end
    object qryUnPostMeltSheetFLB1: TFloatField
      FieldName = 'FLB1'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB1'
    end
    object qryUnPostMeltSheetFLB2: TFloatField
      FieldName = 'FLB2'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB2'
    end
    object qryUnPostMeltSheetFLB3: TFloatField
      FieldName = 'FLB3'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB3'
    end
    object qryUnPostMeltSheetFLB4: TFloatField
      FieldName = 'FLB4'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB4'
    end
    object qryUnPostMeltSheetFLB5: TFloatField
      FieldName = 'FLB5'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB5'
    end
    object qryUnPostMeltSheetFLB6: TFloatField
      FieldName = 'FLB6'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB6'
    end
    object qryUnPostMeltSheetFLB7: TFloatField
      FieldName = 'FLB7'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB7'
    end
    object qryUnPostMeltSheetFLB8: TFloatField
      FieldName = 'FLB8'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB8'
    end
    object qryUnPostMeltSheetFLB9: TFloatField
      FieldName = 'FLB9'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB9'
    end
    object qryUnPostMeltSheetFLB10: TFloatField
      FieldName = 'FLB10'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB10'
    end
    object qryUnPostMeltSheetFLB11: TFloatField
      FieldName = 'FLB11'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB11'
    end
    object qryUnPostMeltSheetFLB12: TFloatField
      FieldName = 'FLB12'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB12'
    end
    object qryUnPostMeltSheetFLB13: TFloatField
      FieldName = 'FLB13'
      Origin = 'PL_RAWMAT_SHEET_HD.FLB13'
    end
    object qryUnPostMeltSheetTOTAL_CHARGED_WEIGHT: TFloatField
      FieldName = 'TOTAL_CHARGED_WEIGHT'
      Origin = 'PL_RAWMAT_SHEET_HD.TOTAL_CHARGED_WEIGHT'
    end
    object qryUnPostMeltSheetTOTAL_RECOVERY_WEIGHT: TFloatField
      FieldName = 'TOTAL_RECOVERY_WEIGHT'
      Origin = 'PL_RAWMAT_SHEET_HD.TOTAL_RECOVERY_WEIGHT'
    end
    object qryUnPostMeltSheetTOTAL_COST: TFloatField
      FieldName = 'TOTAL_COST'
      Origin = 'PL_RAWMAT_SHEET_HD.TOTAL_COST'
    end
    object qryUnPostMeltSheetSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PL_RAWMAT_SHEET_HD.STATUS'
      Size = 1
    end
    object qryUnPostMeltSheetCUST_NAME: TIBStringField
      FieldName = 'CUST_NAME'
      Origin = 'PL_RAWMAT_SHEET_HD.CUST_NAME'
      Size = 60
    end
    object qryUnPostMeltSheetITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Origin = 'PL_RAWMAT_SHEET_HD.ITEM_DESCS'
      Size = 60
    end
    object qryUnPostMeltSheetTAP_REMARK: TIBStringField
      FieldName = 'TAP_REMARK'
      Origin = 'PL_RAWMAT_SHEET_HD.TAP_REMARK'
      Size = 60
    end
    object qryUnPostMeltSheetISSUE_BY: TIBStringField
      FieldName = 'ISSUE_BY'
      Origin = 'PL_RAWMAT_SHEET_HD.ISSUE_BY'
      Size = 60
    end
  end
  object tbElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'RUN_NO'
        DataType = ftSmallint
      end
      item
        Name = 'ELEMENT_CODE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NAME'
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
        Name = 'ELEMENT_LOCKED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELEMENT_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELEMENT_CONTROLED'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY23'
        Fields = 'RUN_NO;ELEMENT_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKIC_ELEMENT'
        Fields = 'RUN_NO;ELEMENT_CODE'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'RUN_NO'
    StoreDefs = True
    TableName = 'IC_ELEMENT'
    Left = 48
    Top = 376
    object tbElementRUN_NO: TSmallintField
      FieldName = 'RUN_NO'
    end
    object tbElementELEMENT_CODE: TIBStringField
      FieldName = 'ELEMENT_CODE'
      Size = 4
    end
    object tbElementNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbElementUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbElementUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbElementELEMENT_LOCKED: TIBStringField
      FieldName = 'ELEMENT_LOCKED'
      Size = 1
    end
    object tbElementELEMENT_ACTIVE: TIBStringField
      FieldName = 'ELEMENT_ACTIVE'
      Size = 1
    end
    object tbElementELEMENT_CONTROLED: TIBStringField
      FieldName = 'ELEMENT_CONTROLED'
      Size = 1
    end
  end
  object qryActiveMeltNo: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  DT.melt_no,DT.line_no,H.plan_doc,H.plan_date , DT.cust_c' +
        'ode, DT.cust_name,'
      
        'DT.item_code,DT.item_descs,DT.estimated_weight from pl_pro_plan_' +
        'dt  DT , PL_PRO_PLAN_HD     H'
      'WHERE DT.STATUS ='#39'P'#39
      'AND H.status ='#39'P'#39
      'AND H.plan_doc = DT.plan_doc'
      'AND H.plan_date = DT.plan_date'
      'ORDER BY H.PLAN_DATE DESC, DT.PLAN_DOC ASC,DT.line_no ASC')
    Left = 296
    Top = 400
    object qryActiveMeltNoMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'PL_PRO_PLAN_DT.MELT_NO'
      Required = True
      Size = 10
    end
    object qryActiveMeltNoITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'PL_PRO_PLAN_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryActiveMeltNoPLAN_DOC: TIBStringField
      DisplayWidth = 15
      FieldName = 'PLAN_DOC'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DOC'
      Required = True
      Size = 15
    end
    object qryActiveMeltNoITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'PL_PRO_PLAN_DT.ITEM_DESCS'
      Size = 60
    end
    object qryActiveMeltNoPLAN_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PLAN_DATE'
      Origin = 'PL_PRO_PLAN_HD.PLAN_DATE'
      Required = True
    end
    object qryActiveMeltNoCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'PL_PRO_PLAN_DT.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryActiveMeltNoCUST_NAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'CUST_NAME'
      Origin = 'PL_PRO_PLAN_DT.CUST_NAME'
      Size = 60
    end
    object qryActiveMeltNoESTIMATED_WEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTIMATED_WEIGHT'
      Origin = 'PL_PRO_PLAN_DT.ESTIMATED_WEIGHT'
    end
    object qryActiveMeltNoLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Origin = 'PL_PRO_PLAN_DT.LINE_NO'
      Required = True
      Visible = False
    end
  end
  object tbSaleItemReqSheet: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ITEM_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UOM_CD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CUST_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MAX_ELE1'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE2'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE3'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE4'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE5'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE6'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE7'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE8'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE9'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE10'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE11'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE12'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE13'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE14'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE15'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE1'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE2'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE3'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE4'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE5'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE6'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE7'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE8'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE9'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE10'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE11'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE12'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE13'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE14'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE15'
        DataType = ftFloat
      end
      item
        Name = 'ELABEL1'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL2'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL3'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL4'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL5'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL6'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL7'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL8'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL9'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL10'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL11'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL12'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL13'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL14'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL15'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MIN_FLOAT_POINT1'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT2'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT3'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT4'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT5'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT6'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT7'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT8'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT9'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT10'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT11'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT12'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT13'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT1'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT2'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT3'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT4'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT5'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT6'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT7'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT8'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT9'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT10'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT11'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT12'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT13'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_MASK1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK3'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK4'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK5'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK6'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK7'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK8'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK9'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK10'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK11'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK12'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK13'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK3'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK4'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK5'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK6'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK7'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK8'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK9'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK10'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK11'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK12'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK13'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CUST_NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MIN_ELE16'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE17'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE18'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE19'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE20'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE21'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE22'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE23'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE24'
        DataType = ftFloat
      end
      item
        Name = 'MIN_ELE25'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE16'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE17'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE18'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE19'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE20'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE21'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE22'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE23'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE24'
        DataType = ftFloat
      end
      item
        Name = 'MAX_ELE25'
        DataType = ftFloat
      end
      item
        Name = 'ELABEL16'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL17'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL18'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL19'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL20'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL21'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL22'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL23'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL24'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELABEL25'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ELE1_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE2_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE3_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE4_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE5_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE6_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE7_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE8_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE9_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE10_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE11_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE12_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE13_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE14_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE15_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE16_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE17_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE18_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE19_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE20_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE21_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE22_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE23_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE24_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ELE25_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MIN_FLOAT_POINT14'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT15'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT16'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT17'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT18'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT19'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT20'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT21'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT22'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT23'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT24'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_FLOAT_POINT25'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT14'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT15'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT16'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT17'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT18'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT19'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT20'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT21'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT22'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT23'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT24'
        DataType = ftSmallint
      end
      item
        Name = 'MAX_FLOAT_POINT25'
        DataType = ftSmallint
      end
      item
        Name = 'MIN_MASK14'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK15'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK16'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK17'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK18'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK19'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK20'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK21'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK22'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK23'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK24'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MIN_MASK25'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK14'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK15'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK16'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK17'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK18'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK19'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK20'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK21'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK22'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK23'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK24'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MAX_MASK25'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PELE1_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE2_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE3_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE4_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE5_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE6_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE7_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE8_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE9_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE10_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE11_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE12_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE13_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE14_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE15_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE16_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE17_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE18_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE19_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE20_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE21_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE22_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE23_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE24_ACTIVE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PELE25_ACTIVE'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY93'
        Fields = 'ITEM_CODE;UOM_CD;CUST_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKSO_SALES_ITEM_REQ_SHEET'
        Fields = 'ITEM_CODE;UOM_CD;CUST_CODE'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ITEM_CODE;CUST_CODE'
    MasterFields = 'ITEM_CODE;CUST_CODE'
    MasterSource = dsMaterialSheetHD
    StoreDefs = True
    TableName = 'SO_SALES_ITEM_REQ_SHEET'
    Left = 48
    Top = 456
    object tbSaleItemReqSheetITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbSaleItemReqSheetUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbSaleItemReqSheetCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbSaleItemReqSheetMAX_ELE1: TFloatField
      FieldName = 'MAX_ELE1'
    end
    object tbSaleItemReqSheetMAX_ELE2: TFloatField
      FieldName = 'MAX_ELE2'
    end
    object tbSaleItemReqSheetMAX_ELE3: TFloatField
      FieldName = 'MAX_ELE3'
    end
    object tbSaleItemReqSheetMAX_ELE4: TFloatField
      FieldName = 'MAX_ELE4'
    end
    object tbSaleItemReqSheetMAX_ELE5: TFloatField
      FieldName = 'MAX_ELE5'
    end
    object tbSaleItemReqSheetMAX_ELE6: TFloatField
      FieldName = 'MAX_ELE6'
    end
    object tbSaleItemReqSheetMAX_ELE7: TFloatField
      FieldName = 'MAX_ELE7'
    end
    object tbSaleItemReqSheetMAX_ELE8: TFloatField
      FieldName = 'MAX_ELE8'
    end
    object tbSaleItemReqSheetMAX_ELE9: TFloatField
      FieldName = 'MAX_ELE9'
    end
    object tbSaleItemReqSheetMAX_ELE10: TFloatField
      FieldName = 'MAX_ELE10'
    end
    object tbSaleItemReqSheetMAX_ELE11: TFloatField
      FieldName = 'MAX_ELE11'
    end
    object tbSaleItemReqSheetMAX_ELE12: TFloatField
      FieldName = 'MAX_ELE12'
    end
    object tbSaleItemReqSheetMAX_ELE13: TFloatField
      FieldName = 'MAX_ELE13'
    end
    object tbSaleItemReqSheetMAX_ELE14: TFloatField
      FieldName = 'MAX_ELE14'
    end
    object tbSaleItemReqSheetMAX_ELE15: TFloatField
      FieldName = 'MAX_ELE15'
    end
    object tbSaleItemReqSheetMIN_ELE1: TFloatField
      FieldName = 'MIN_ELE1'
    end
    object tbSaleItemReqSheetMIN_ELE2: TFloatField
      FieldName = 'MIN_ELE2'
    end
    object tbSaleItemReqSheetMIN_ELE3: TFloatField
      FieldName = 'MIN_ELE3'
    end
    object tbSaleItemReqSheetMIN_ELE4: TFloatField
      FieldName = 'MIN_ELE4'
    end
    object tbSaleItemReqSheetMIN_ELE5: TFloatField
      FieldName = 'MIN_ELE5'
    end
    object tbSaleItemReqSheetMIN_ELE6: TFloatField
      FieldName = 'MIN_ELE6'
    end
    object tbSaleItemReqSheetMIN_ELE7: TFloatField
      FieldName = 'MIN_ELE7'
    end
    object tbSaleItemReqSheetMIN_ELE8: TFloatField
      FieldName = 'MIN_ELE8'
    end
    object tbSaleItemReqSheetMIN_ELE9: TFloatField
      FieldName = 'MIN_ELE9'
    end
    object tbSaleItemReqSheetMIN_ELE10: TFloatField
      FieldName = 'MIN_ELE10'
    end
    object tbSaleItemReqSheetMIN_ELE11: TFloatField
      FieldName = 'MIN_ELE11'
    end
    object tbSaleItemReqSheetMIN_ELE12: TFloatField
      FieldName = 'MIN_ELE12'
    end
    object tbSaleItemReqSheetMIN_ELE13: TFloatField
      FieldName = 'MIN_ELE13'
    end
    object tbSaleItemReqSheetMIN_ELE14: TFloatField
      FieldName = 'MIN_ELE14'
    end
    object tbSaleItemReqSheetMIN_ELE15: TFloatField
      FieldName = 'MIN_ELE15'
    end
    object tbSaleItemReqSheetELABEL1: TIBStringField
      FieldName = 'ELABEL1'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL2: TIBStringField
      FieldName = 'ELABEL2'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL3: TIBStringField
      FieldName = 'ELABEL3'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL4: TIBStringField
      FieldName = 'ELABEL4'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL5: TIBStringField
      FieldName = 'ELABEL5'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL6: TIBStringField
      FieldName = 'ELABEL6'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL7: TIBStringField
      FieldName = 'ELABEL7'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL8: TIBStringField
      FieldName = 'ELABEL8'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL9: TIBStringField
      FieldName = 'ELABEL9'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL10: TIBStringField
      FieldName = 'ELABEL10'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL11: TIBStringField
      FieldName = 'ELABEL11'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL12: TIBStringField
      FieldName = 'ELABEL12'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL13: TIBStringField
      FieldName = 'ELABEL13'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL14: TIBStringField
      FieldName = 'ELABEL14'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL15: TIBStringField
      FieldName = 'ELABEL15'
      Size = 4
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT1: TSmallintField
      FieldName = 'MIN_FLOAT_POINT1'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT2: TSmallintField
      FieldName = 'MIN_FLOAT_POINT2'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT3: TSmallintField
      FieldName = 'MIN_FLOAT_POINT3'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT4: TSmallintField
      FieldName = 'MIN_FLOAT_POINT4'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT5: TSmallintField
      FieldName = 'MIN_FLOAT_POINT5'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT6: TSmallintField
      FieldName = 'MIN_FLOAT_POINT6'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT7: TSmallintField
      FieldName = 'MIN_FLOAT_POINT7'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT8: TSmallintField
      FieldName = 'MIN_FLOAT_POINT8'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT9: TSmallintField
      FieldName = 'MIN_FLOAT_POINT9'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT10: TSmallintField
      FieldName = 'MIN_FLOAT_POINT10'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT11: TSmallintField
      FieldName = 'MIN_FLOAT_POINT11'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT12: TSmallintField
      FieldName = 'MIN_FLOAT_POINT12'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT13: TSmallintField
      FieldName = 'MIN_FLOAT_POINT13'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT1: TSmallintField
      FieldName = 'MAX_FLOAT_POINT1'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT2: TSmallintField
      FieldName = 'MAX_FLOAT_POINT2'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT3: TSmallintField
      FieldName = 'MAX_FLOAT_POINT3'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT4: TSmallintField
      FieldName = 'MAX_FLOAT_POINT4'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT5: TSmallintField
      FieldName = 'MAX_FLOAT_POINT5'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT6: TSmallintField
      FieldName = 'MAX_FLOAT_POINT6'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT7: TSmallintField
      FieldName = 'MAX_FLOAT_POINT7'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT8: TSmallintField
      FieldName = 'MAX_FLOAT_POINT8'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT9: TSmallintField
      FieldName = 'MAX_FLOAT_POINT9'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT10: TSmallintField
      FieldName = 'MAX_FLOAT_POINT10'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT11: TSmallintField
      FieldName = 'MAX_FLOAT_POINT11'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT12: TSmallintField
      FieldName = 'MAX_FLOAT_POINT12'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT13: TSmallintField
      FieldName = 'MAX_FLOAT_POINT13'
    end
    object tbSaleItemReqSheetMIN_MASK1: TIBStringField
      FieldName = 'MIN_MASK1'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK2: TIBStringField
      FieldName = 'MIN_MASK2'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK3: TIBStringField
      FieldName = 'MIN_MASK3'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK4: TIBStringField
      FieldName = 'MIN_MASK4'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK5: TIBStringField
      FieldName = 'MIN_MASK5'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK6: TIBStringField
      FieldName = 'MIN_MASK6'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK7: TIBStringField
      FieldName = 'MIN_MASK7'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK8: TIBStringField
      FieldName = 'MIN_MASK8'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK9: TIBStringField
      FieldName = 'MIN_MASK9'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK10: TIBStringField
      FieldName = 'MIN_MASK10'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK11: TIBStringField
      FieldName = 'MIN_MASK11'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK12: TIBStringField
      FieldName = 'MIN_MASK12'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK13: TIBStringField
      FieldName = 'MIN_MASK13'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK1: TIBStringField
      FieldName = 'MAX_MASK1'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK2: TIBStringField
      FieldName = 'MAX_MASK2'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK3: TIBStringField
      FieldName = 'MAX_MASK3'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK4: TIBStringField
      FieldName = 'MAX_MASK4'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK5: TIBStringField
      FieldName = 'MAX_MASK5'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK6: TIBStringField
      FieldName = 'MAX_MASK6'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK7: TIBStringField
      FieldName = 'MAX_MASK7'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK8: TIBStringField
      FieldName = 'MAX_MASK8'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK9: TIBStringField
      FieldName = 'MAX_MASK9'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK10: TIBStringField
      FieldName = 'MAX_MASK10'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK11: TIBStringField
      FieldName = 'MAX_MASK11'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK12: TIBStringField
      FieldName = 'MAX_MASK12'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK13: TIBStringField
      FieldName = 'MAX_MASK13'
      Size = 30
    end
    object tbSaleItemReqSheetCUST_NAME: TIBStringField
      FieldName = 'CUST_NAME'
      Size = 60
    end
    object tbSaleItemReqSheetMIN_ELE16: TFloatField
      FieldName = 'MIN_ELE16'
    end
    object tbSaleItemReqSheetMIN_ELE17: TFloatField
      FieldName = 'MIN_ELE17'
    end
    object tbSaleItemReqSheetMIN_ELE18: TFloatField
      FieldName = 'MIN_ELE18'
    end
    object tbSaleItemReqSheetMIN_ELE19: TFloatField
      FieldName = 'MIN_ELE19'
    end
    object tbSaleItemReqSheetMIN_ELE20: TFloatField
      FieldName = 'MIN_ELE20'
    end
    object tbSaleItemReqSheetMIN_ELE21: TFloatField
      FieldName = 'MIN_ELE21'
    end
    object tbSaleItemReqSheetMIN_ELE22: TFloatField
      FieldName = 'MIN_ELE22'
    end
    object tbSaleItemReqSheetMIN_ELE23: TFloatField
      FieldName = 'MIN_ELE23'
    end
    object tbSaleItemReqSheetMIN_ELE24: TFloatField
      FieldName = 'MIN_ELE24'
    end
    object tbSaleItemReqSheetMIN_ELE25: TFloatField
      FieldName = 'MIN_ELE25'
    end
    object tbSaleItemReqSheetMAX_ELE16: TFloatField
      FieldName = 'MAX_ELE16'
    end
    object tbSaleItemReqSheetMAX_ELE17: TFloatField
      FieldName = 'MAX_ELE17'
    end
    object tbSaleItemReqSheetMAX_ELE18: TFloatField
      FieldName = 'MAX_ELE18'
    end
    object tbSaleItemReqSheetMAX_ELE19: TFloatField
      FieldName = 'MAX_ELE19'
    end
    object tbSaleItemReqSheetMAX_ELE20: TFloatField
      FieldName = 'MAX_ELE20'
    end
    object tbSaleItemReqSheetMAX_ELE21: TFloatField
      FieldName = 'MAX_ELE21'
    end
    object tbSaleItemReqSheetMAX_ELE22: TFloatField
      FieldName = 'MAX_ELE22'
    end
    object tbSaleItemReqSheetMAX_ELE23: TFloatField
      FieldName = 'MAX_ELE23'
    end
    object tbSaleItemReqSheetMAX_ELE24: TFloatField
      FieldName = 'MAX_ELE24'
    end
    object tbSaleItemReqSheetMAX_ELE25: TFloatField
      FieldName = 'MAX_ELE25'
    end
    object tbSaleItemReqSheetELABEL16: TIBStringField
      FieldName = 'ELABEL16'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL17: TIBStringField
      FieldName = 'ELABEL17'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL18: TIBStringField
      FieldName = 'ELABEL18'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL19: TIBStringField
      FieldName = 'ELABEL19'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL20: TIBStringField
      FieldName = 'ELABEL20'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL21: TIBStringField
      FieldName = 'ELABEL21'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL22: TIBStringField
      FieldName = 'ELABEL22'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL23: TIBStringField
      FieldName = 'ELABEL23'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL24: TIBStringField
      FieldName = 'ELABEL24'
      Size = 4
    end
    object tbSaleItemReqSheetELABEL25: TIBStringField
      FieldName = 'ELABEL25'
      Size = 4
    end
    object tbSaleItemReqSheetELE1_ACTIVE: TIBStringField
      FieldName = 'ELE1_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE2_ACTIVE: TIBStringField
      FieldName = 'ELE2_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE3_ACTIVE: TIBStringField
      FieldName = 'ELE3_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE4_ACTIVE: TIBStringField
      FieldName = 'ELE4_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE5_ACTIVE: TIBStringField
      FieldName = 'ELE5_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE6_ACTIVE: TIBStringField
      FieldName = 'ELE6_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE7_ACTIVE: TIBStringField
      FieldName = 'ELE7_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE8_ACTIVE: TIBStringField
      FieldName = 'ELE8_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE9_ACTIVE: TIBStringField
      FieldName = 'ELE9_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE10_ACTIVE: TIBStringField
      FieldName = 'ELE10_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE11_ACTIVE: TIBStringField
      FieldName = 'ELE11_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE12_ACTIVE: TIBStringField
      FieldName = 'ELE12_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE13_ACTIVE: TIBStringField
      FieldName = 'ELE13_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE14_ACTIVE: TIBStringField
      FieldName = 'ELE14_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE15_ACTIVE: TIBStringField
      FieldName = 'ELE15_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE16_ACTIVE: TIBStringField
      FieldName = 'ELE16_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE17_ACTIVE: TIBStringField
      FieldName = 'ELE17_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE18_ACTIVE: TIBStringField
      FieldName = 'ELE18_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE19_ACTIVE: TIBStringField
      FieldName = 'ELE19_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE20_ACTIVE: TIBStringField
      FieldName = 'ELE20_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE21_ACTIVE: TIBStringField
      FieldName = 'ELE21_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE22_ACTIVE: TIBStringField
      FieldName = 'ELE22_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE23_ACTIVE: TIBStringField
      FieldName = 'ELE23_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE24_ACTIVE: TIBStringField
      FieldName = 'ELE24_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetELE25_ACTIVE: TIBStringField
      FieldName = 'ELE25_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT14: TSmallintField
      FieldName = 'MIN_FLOAT_POINT14'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT15: TSmallintField
      FieldName = 'MIN_FLOAT_POINT15'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT16: TSmallintField
      FieldName = 'MIN_FLOAT_POINT16'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT17: TSmallintField
      FieldName = 'MIN_FLOAT_POINT17'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT18: TSmallintField
      FieldName = 'MIN_FLOAT_POINT18'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT19: TSmallintField
      FieldName = 'MIN_FLOAT_POINT19'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT20: TSmallintField
      FieldName = 'MIN_FLOAT_POINT20'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT21: TSmallintField
      FieldName = 'MIN_FLOAT_POINT21'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT22: TSmallintField
      FieldName = 'MIN_FLOAT_POINT22'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT23: TSmallintField
      FieldName = 'MIN_FLOAT_POINT23'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT24: TSmallintField
      FieldName = 'MIN_FLOAT_POINT24'
    end
    object tbSaleItemReqSheetMIN_FLOAT_POINT25: TSmallintField
      FieldName = 'MIN_FLOAT_POINT25'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT14: TSmallintField
      FieldName = 'MAX_FLOAT_POINT14'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT15: TSmallintField
      FieldName = 'MAX_FLOAT_POINT15'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT16: TSmallintField
      FieldName = 'MAX_FLOAT_POINT16'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT17: TSmallintField
      FieldName = 'MAX_FLOAT_POINT17'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT18: TSmallintField
      FieldName = 'MAX_FLOAT_POINT18'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT19: TSmallintField
      FieldName = 'MAX_FLOAT_POINT19'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT20: TSmallintField
      FieldName = 'MAX_FLOAT_POINT20'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT21: TSmallintField
      FieldName = 'MAX_FLOAT_POINT21'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT22: TSmallintField
      FieldName = 'MAX_FLOAT_POINT22'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT23: TSmallintField
      FieldName = 'MAX_FLOAT_POINT23'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT24: TSmallintField
      FieldName = 'MAX_FLOAT_POINT24'
    end
    object tbSaleItemReqSheetMAX_FLOAT_POINT25: TSmallintField
      FieldName = 'MAX_FLOAT_POINT25'
    end
    object tbSaleItemReqSheetMIN_MASK14: TIBStringField
      FieldName = 'MIN_MASK14'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK15: TIBStringField
      FieldName = 'MIN_MASK15'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK16: TIBStringField
      FieldName = 'MIN_MASK16'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK17: TIBStringField
      FieldName = 'MIN_MASK17'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK18: TIBStringField
      FieldName = 'MIN_MASK18'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK19: TIBStringField
      FieldName = 'MIN_MASK19'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK20: TIBStringField
      FieldName = 'MIN_MASK20'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK21: TIBStringField
      FieldName = 'MIN_MASK21'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK22: TIBStringField
      FieldName = 'MIN_MASK22'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK23: TIBStringField
      FieldName = 'MIN_MASK23'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK24: TIBStringField
      FieldName = 'MIN_MASK24'
      Size = 30
    end
    object tbSaleItemReqSheetMIN_MASK25: TIBStringField
      FieldName = 'MIN_MASK25'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK14: TIBStringField
      FieldName = 'MAX_MASK14'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK15: TIBStringField
      FieldName = 'MAX_MASK15'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK16: TIBStringField
      FieldName = 'MAX_MASK16'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK17: TIBStringField
      FieldName = 'MAX_MASK17'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK18: TIBStringField
      FieldName = 'MAX_MASK18'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK19: TIBStringField
      FieldName = 'MAX_MASK19'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK20: TIBStringField
      FieldName = 'MAX_MASK20'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK21: TIBStringField
      FieldName = 'MAX_MASK21'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK22: TIBStringField
      FieldName = 'MAX_MASK22'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK23: TIBStringField
      FieldName = 'MAX_MASK23'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK24: TIBStringField
      FieldName = 'MAX_MASK24'
      Size = 30
    end
    object tbSaleItemReqSheetMAX_MASK25: TIBStringField
      FieldName = 'MAX_MASK25'
      Size = 30
    end
    object tbSaleItemReqSheetPELE1_ACTIVE: TIBStringField
      FieldName = 'PELE1_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE2_ACTIVE: TIBStringField
      FieldName = 'PELE2_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE3_ACTIVE: TIBStringField
      FieldName = 'PELE3_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE4_ACTIVE: TIBStringField
      FieldName = 'PELE4_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE5_ACTIVE: TIBStringField
      FieldName = 'PELE5_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE6_ACTIVE: TIBStringField
      FieldName = 'PELE6_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE7_ACTIVE: TIBStringField
      FieldName = 'PELE7_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE8_ACTIVE: TIBStringField
      FieldName = 'PELE8_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE9_ACTIVE: TIBStringField
      FieldName = 'PELE9_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE10_ACTIVE: TIBStringField
      FieldName = 'PELE10_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE11_ACTIVE: TIBStringField
      FieldName = 'PELE11_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE12_ACTIVE: TIBStringField
      FieldName = 'PELE12_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE13_ACTIVE: TIBStringField
      FieldName = 'PELE13_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE14_ACTIVE: TIBStringField
      FieldName = 'PELE14_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE15_ACTIVE: TIBStringField
      FieldName = 'PELE15_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE16_ACTIVE: TIBStringField
      FieldName = 'PELE16_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE17_ACTIVE: TIBStringField
      FieldName = 'PELE17_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE18_ACTIVE: TIBStringField
      FieldName = 'PELE18_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE19_ACTIVE: TIBStringField
      FieldName = 'PELE19_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE20_ACTIVE: TIBStringField
      FieldName = 'PELE20_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE21_ACTIVE: TIBStringField
      FieldName = 'PELE21_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE22_ACTIVE: TIBStringField
      FieldName = 'PELE22_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE23_ACTIVE: TIBStringField
      FieldName = 'PELE23_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE24_ACTIVE: TIBStringField
      FieldName = 'PELE24_ACTIVE'
      Size = 1
    end
    object tbSaleItemReqSheetPELE25_ACTIVE: TIBStringField
      FieldName = 'PELE25_ACTIVE'
      Size = 1
    end
  end
  object qrySaleItemReqSheet: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from so_sales_item_req_sheet'
      'where cust_code =:pcust_code'
      'and item_code =:pitem_code')
    Left = 440
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcust_code'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pitem_code'
        ParamType = ptUnknown
      end>
    object qrySaleItemReqSheetITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qrySaleItemReqSheetUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.UOM_CD'
      Required = True
      Size = 4
    end
    object qrySaleItemReqSheetCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.CUST_CODE'
      Required = True
      Size = 10
    end
    object qrySaleItemReqSheetMAX_ELE1: TFloatField
      FieldName = 'MAX_ELE1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE1'
    end
    object qrySaleItemReqSheetMAX_ELE2: TFloatField
      FieldName = 'MAX_ELE2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE2'
    end
    object qrySaleItemReqSheetMAX_ELE3: TFloatField
      FieldName = 'MAX_ELE3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE3'
    end
    object qrySaleItemReqSheetMAX_ELE4: TFloatField
      FieldName = 'MAX_ELE4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE4'
    end
    object qrySaleItemReqSheetMAX_ELE5: TFloatField
      FieldName = 'MAX_ELE5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE5'
    end
    object qrySaleItemReqSheetMAX_ELE6: TFloatField
      FieldName = 'MAX_ELE6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE6'
    end
    object qrySaleItemReqSheetMAX_ELE7: TFloatField
      FieldName = 'MAX_ELE7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE7'
    end
    object qrySaleItemReqSheetMAX_ELE8: TFloatField
      FieldName = 'MAX_ELE8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE8'
    end
    object qrySaleItemReqSheetMAX_ELE9: TFloatField
      FieldName = 'MAX_ELE9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE9'
    end
    object qrySaleItemReqSheetMAX_ELE10: TFloatField
      FieldName = 'MAX_ELE10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE10'
    end
    object qrySaleItemReqSheetMAX_ELE11: TFloatField
      FieldName = 'MAX_ELE11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE11'
    end
    object qrySaleItemReqSheetMAX_ELE12: TFloatField
      FieldName = 'MAX_ELE12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE12'
    end
    object qrySaleItemReqSheetMAX_ELE13: TFloatField
      FieldName = 'MAX_ELE13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE13'
    end
    object qrySaleItemReqSheetMAX_ELE14: TFloatField
      FieldName = 'MAX_ELE14'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE14'
    end
    object qrySaleItemReqSheetMAX_ELE15: TFloatField
      FieldName = 'MAX_ELE15'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_ELE15'
    end
    object qrySaleItemReqSheetMIN_ELE1: TFloatField
      FieldName = 'MIN_ELE1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE1'
    end
    object qrySaleItemReqSheetMIN_ELE2: TFloatField
      FieldName = 'MIN_ELE2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE2'
    end
    object qrySaleItemReqSheetMIN_ELE3: TFloatField
      FieldName = 'MIN_ELE3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE3'
    end
    object qrySaleItemReqSheetMIN_ELE4: TFloatField
      FieldName = 'MIN_ELE4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE4'
    end
    object qrySaleItemReqSheetMIN_ELE5: TFloatField
      FieldName = 'MIN_ELE5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE5'
    end
    object qrySaleItemReqSheetMIN_ELE6: TFloatField
      FieldName = 'MIN_ELE6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE6'
    end
    object qrySaleItemReqSheetMIN_ELE7: TFloatField
      FieldName = 'MIN_ELE7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE7'
    end
    object qrySaleItemReqSheetMIN_ELE8: TFloatField
      FieldName = 'MIN_ELE8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE8'
    end
    object qrySaleItemReqSheetMIN_ELE9: TFloatField
      FieldName = 'MIN_ELE9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE9'
    end
    object qrySaleItemReqSheetMIN_ELE10: TFloatField
      FieldName = 'MIN_ELE10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE10'
    end
    object qrySaleItemReqSheetMIN_ELE11: TFloatField
      FieldName = 'MIN_ELE11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE11'
    end
    object qrySaleItemReqSheetMIN_ELE12: TFloatField
      FieldName = 'MIN_ELE12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE12'
    end
    object qrySaleItemReqSheetMIN_ELE13: TFloatField
      FieldName = 'MIN_ELE13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE13'
    end
    object qrySaleItemReqSheetMIN_ELE14: TFloatField
      FieldName = 'MIN_ELE14'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE14'
    end
    object qrySaleItemReqSheetMIN_ELE15: TFloatField
      FieldName = 'MIN_ELE15'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_ELE15'
    end
    object qrySaleItemReqSheetELABEL1: TIBStringField
      FieldName = 'ELABEL1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL1'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL2: TIBStringField
      FieldName = 'ELABEL2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL2'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL3: TIBStringField
      FieldName = 'ELABEL3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL3'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL4: TIBStringField
      FieldName = 'ELABEL4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL4'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL5: TIBStringField
      FieldName = 'ELABEL5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL5'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL6: TIBStringField
      FieldName = 'ELABEL6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL6'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL7: TIBStringField
      FieldName = 'ELABEL7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL7'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL8: TIBStringField
      FieldName = 'ELABEL8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL8'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL9: TIBStringField
      FieldName = 'ELABEL9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL9'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL10: TIBStringField
      FieldName = 'ELABEL10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL10'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL11: TIBStringField
      FieldName = 'ELABEL11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL11'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL12: TIBStringField
      FieldName = 'ELABEL12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL12'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL13: TIBStringField
      FieldName = 'ELABEL13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL13'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL14: TIBStringField
      FieldName = 'ELABEL14'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL14'
      Size = 4
    end
    object qrySaleItemReqSheetELABEL15: TIBStringField
      FieldName = 'ELABEL15'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.ELABEL15'
      Size = 4
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT1: TSmallintField
      FieldName = 'MIN_FLOAT_POINT1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT1'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT2: TSmallintField
      FieldName = 'MIN_FLOAT_POINT2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT2'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT3: TSmallintField
      FieldName = 'MIN_FLOAT_POINT3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT3'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT4: TSmallintField
      FieldName = 'MIN_FLOAT_POINT4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT4'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT5: TSmallintField
      FieldName = 'MIN_FLOAT_POINT5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT5'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT6: TSmallintField
      FieldName = 'MIN_FLOAT_POINT6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT6'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT7: TSmallintField
      FieldName = 'MIN_FLOAT_POINT7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT7'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT8: TSmallintField
      FieldName = 'MIN_FLOAT_POINT8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT8'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT9: TSmallintField
      FieldName = 'MIN_FLOAT_POINT9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT9'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT10: TSmallintField
      FieldName = 'MIN_FLOAT_POINT10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT10'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT11: TSmallintField
      FieldName = 'MIN_FLOAT_POINT11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT11'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT12: TSmallintField
      FieldName = 'MIN_FLOAT_POINT12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT12'
    end
    object qrySaleItemReqSheetMIN_FLOAT_POINT13: TSmallintField
      FieldName = 'MIN_FLOAT_POINT13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_FLOAT_POINT13'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT1: TSmallintField
      FieldName = 'MAX_FLOAT_POINT1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT1'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT2: TSmallintField
      FieldName = 'MAX_FLOAT_POINT2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT2'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT3: TSmallintField
      FieldName = 'MAX_FLOAT_POINT3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT3'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT4: TSmallintField
      FieldName = 'MAX_FLOAT_POINT4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT4'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT5: TSmallintField
      FieldName = 'MAX_FLOAT_POINT5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT5'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT6: TSmallintField
      FieldName = 'MAX_FLOAT_POINT6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT6'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT7: TSmallintField
      FieldName = 'MAX_FLOAT_POINT7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT7'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT8: TSmallintField
      FieldName = 'MAX_FLOAT_POINT8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT8'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT9: TSmallintField
      FieldName = 'MAX_FLOAT_POINT9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT9'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT10: TSmallintField
      FieldName = 'MAX_FLOAT_POINT10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT10'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT11: TSmallintField
      FieldName = 'MAX_FLOAT_POINT11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT11'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT12: TSmallintField
      FieldName = 'MAX_FLOAT_POINT12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT12'
    end
    object qrySaleItemReqSheetMAX_FLOAT_POINT13: TSmallintField
      FieldName = 'MAX_FLOAT_POINT13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_FLOAT_POINT13'
    end
    object qrySaleItemReqSheetMIN_MASK1: TIBStringField
      FieldName = 'MIN_MASK1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK1'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK2: TIBStringField
      FieldName = 'MIN_MASK2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK2'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK3: TIBStringField
      FieldName = 'MIN_MASK3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK3'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK4: TIBStringField
      FieldName = 'MIN_MASK4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK4'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK5: TIBStringField
      FieldName = 'MIN_MASK5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK5'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK6: TIBStringField
      FieldName = 'MIN_MASK6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK6'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK7: TIBStringField
      FieldName = 'MIN_MASK7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK7'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK8: TIBStringField
      FieldName = 'MIN_MASK8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK8'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK9: TIBStringField
      FieldName = 'MIN_MASK9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK9'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK10: TIBStringField
      FieldName = 'MIN_MASK10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK10'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK11: TIBStringField
      FieldName = 'MIN_MASK11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK11'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK12: TIBStringField
      FieldName = 'MIN_MASK12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK12'
      Size = 30
    end
    object qrySaleItemReqSheetMIN_MASK13: TIBStringField
      FieldName = 'MIN_MASK13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MIN_MASK13'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK1: TIBStringField
      FieldName = 'MAX_MASK1'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK1'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK2: TIBStringField
      FieldName = 'MAX_MASK2'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK2'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK3: TIBStringField
      FieldName = 'MAX_MASK3'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK3'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK4: TIBStringField
      FieldName = 'MAX_MASK4'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK4'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK5: TIBStringField
      FieldName = 'MAX_MASK5'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK5'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK6: TIBStringField
      FieldName = 'MAX_MASK6'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK6'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK7: TIBStringField
      FieldName = 'MAX_MASK7'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK7'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK8: TIBStringField
      FieldName = 'MAX_MASK8'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK8'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK9: TIBStringField
      FieldName = 'MAX_MASK9'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK9'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK10: TIBStringField
      FieldName = 'MAX_MASK10'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK10'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK11: TIBStringField
      FieldName = 'MAX_MASK11'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK11'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK12: TIBStringField
      FieldName = 'MAX_MASK12'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK12'
      Size = 30
    end
    object qrySaleItemReqSheetMAX_MASK13: TIBStringField
      FieldName = 'MAX_MASK13'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.MAX_MASK13'
      Size = 30
    end
    object qrySaleItemReqSheetCUST_NAME: TIBStringField
      FieldName = 'CUST_NAME'
      Origin = 'SO_SALES_ITEM_REQ_SHEET.CUST_NAME'
      Size = 60
    end
  end
  object tbPurchaseOrderDetail: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'STATUS ='#39'A'#39
    Filtered = True
    IndexFieldNames = 'ITEM_CODE;ORDER_DATE'
    MasterFields = 'STOCK_CD'
    MasterSource = dsMaterial
    TableName = 'PO_ORDER_DT'
    Left = 64
    Top = 544
    object tbPurchaseOrderDetailITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbPurchaseOrderDetailLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbPurchaseOrderDetailORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbPurchaseOrderDetailSUPP_CODE: TIBStringField
      FieldName = 'SUPP_CODE'
      Size = 10
    end
    object tbPurchaseOrderDetailUOM: TIBStringField
      FieldName = 'UOM'
      Size = 4
    end
    object tbPurchaseOrderDetailORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbPurchaseOrderDetailITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbPurchaseOrderDetailUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
    end
    object tbPurchaseOrderDetailTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
    end
    object tbPurchaseOrderDetailREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 60
    end
    object tbPurchaseOrderDetailDISCS_AMT: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object tbPurchaseOrderDetailTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbPurchaseOrderDetailBASE_AMT: TFloatField
      FieldName = 'BASE_AMT'
    end
    object tbPurchaseOrderDetailTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbPurchaseOrderDetailDISCS_CD: TIBStringField
      FieldName = 'DISCS_CD'
      Size = 2
    end
    object tbPurchaseOrderDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object tbPurchaseOrderDetailTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object tbPurchaseOrderDetailSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbPurchaseOrderDetailGRN_QTY: TFloatField
      FieldName = 'GRN_QTY'
    end
    object tbPurchaseOrderDetailLOT_NO: TIBStringField
      FieldName = 'LOT_NO'
      Size = 15
    end
    object tbPurchaseOrderDetailGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbPurchaseOrderDetailMARKUP: TSmallintField
      FieldName = 'MARKUP'
    end
    object tbPurchaseOrderDetailDISCS_RATE: TFloatField
      FieldName = 'DISCS_RATE'
    end
    object tbPurchaseOrderDetailUPDATE_PRICE: TFloatField
      FieldName = 'UPDATE_PRICE'
    end
    object tbPurchaseOrderDetailUPDATE_TOTAL_AMT: TFloatField
      FieldName = 'UPDATE_TOTAL_AMT'
    end
    object tbPurchaseOrderDetailSTOCK_EMPTY: TIBStringField
      FieldName = 'STOCK_EMPTY'
      Size = 1
    end
  end
  object qryMaterial: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_mat_stk_hd'
      'where group_id not in ('#39'SG008'#39','#39'SG009'#39')'
      'order by group_id,'
      'stock_cd')
    Left = 296
    Top = 464
    object qryMaterialSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_HD.STOCK_CD'
      Required = True
      Size = 15
    end
    object qryMaterialGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_HD.GROUP_ID'
      Required = True
      Size = 10
    end
    object qryMaterialEN_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'EN_DESCS'
      Origin = 'IC_MAT_STK_HD.EN_DESCS'
      Size = 150
    end
    object qryMaterialTH_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_DESCS'
      Origin = 'IC_MAT_STK_HD.TH_DESCS'
      Size = 150
    end
    object qryMaterialUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_HD.UNIT_COST'
      Required = True
    end
    object qryMaterialRECOVERY: TFloatField
      DisplayWidth = 10
      FieldName = 'RECOVERY'
      Origin = 'IC_MAT_STK_HD.RECOVERY'
    end
    object qryMaterialSHORT_DESCS: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_DESCS'
      Origin = 'IC_MAT_STK_HD.SHORT_DESCS'
      Visible = False
      Size = 45
    end
    object qryMaterialONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_HD.ONHAND_QTY'
      Required = True
      Visible = False
    end
    object qryMaterialTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'IC_MAT_STK_HD.TOTAL_COST'
      Required = True
      Visible = False
    end
    object qryMaterialUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_HD.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryMaterialMARKED_UP: TFloatField
      DisplayWidth = 10
      FieldName = 'MARKED_UP'
      Origin = 'IC_MAT_STK_HD.MARKED_UP'
      Visible = False
    end
    object qryMaterialUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'IC_MAT_STK_HD.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryMaterialUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'IC_MAT_STK_HD.UPDATE_DATE'
      Visible = False
    end
    object qryMaterialDEFAULT_ELEMENT_DETAIL: TIBStringField
      DisplayWidth = 1
      FieldName = 'DEFAULT_ELEMENT_DETAIL'
      Origin = 'IC_MAT_STK_HD.DEFAULT_ELEMENT_DETAIL'
      Visible = False
      Size = 1
    end
    object qryMaterialCONSUMEABLE_ITEM: TIBStringField
      DisplayWidth = 1
      FieldName = 'CONSUMEABLE_ITEM'
      Origin = 'IC_MAT_STK_HD.CONSUMEABLE_ITEM'
      Visible = False
      Size = 1
    end
  end
  object dsMaterial: TDataSource
    DataSet = qryMaterial
    Left = 384
    Top = 464
  end
  object tbMaterialElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'STOCK_CD;LOT_CD'
    MasterFields = 'ITEM_CODE;ORDER_NO'
    MasterSource = dsActiveMeltSheetStock
    TableName = 'IC_MAT_ELEMENT'
    Left = 440
    Top = 552
    object tbMaterialElementSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Size = 15
    end
    object tbMaterialElementGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbMaterialElementUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbMaterialElementLOT_CD: TIBStringField
      FieldName = 'LOT_CD'
      Size = 15
    end
    object tbMaterialElementPURCHASE_DATE: TDateTimeField
      FieldName = 'PURCHASE_DATE'
    end
    object tbMaterialElementELE1_PERC: TFloatField
      FieldName = 'ELE1_PERC'
    end
    object tbMaterialElementELE2_PERC: TFloatField
      FieldName = 'ELE2_PERC'
    end
    object tbMaterialElementELE3_PERC: TFloatField
      FieldName = 'ELE3_PERC'
    end
    object tbMaterialElementELE4_PERC: TFloatField
      FieldName = 'ELE4_PERC'
    end
    object tbMaterialElementELE5_PERC: TFloatField
      FieldName = 'ELE5_PERC'
    end
    object tbMaterialElementELE6_PERC: TFloatField
      FieldName = 'ELE6_PERC'
    end
    object tbMaterialElementELE7_PERC: TFloatField
      FieldName = 'ELE7_PERC'
    end
    object tbMaterialElementELE8_PERC: TFloatField
      FieldName = 'ELE8_PERC'
    end
    object tbMaterialElementELE9_PERC: TFloatField
      FieldName = 'ELE9_PERC'
    end
    object tbMaterialElementELE10_PERC: TFloatField
      FieldName = 'ELE10_PERC'
    end
    object tbMaterialElementELE11_PERC: TFloatField
      FieldName = 'ELE11_PERC'
    end
    object tbMaterialElementELE12_PERC: TFloatField
      FieldName = 'ELE12_PERC'
    end
    object tbMaterialElementELE13_PERC: TFloatField
      FieldName = 'ELE13_PERC'
    end
    object tbMaterialElementACCT_CD: TIBStringField
      FieldName = 'ACCT_CD'
      Size = 10
    end
    object tbMaterialElementREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbMaterialElementREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbMaterialElementLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbMaterialElementELE14_PERC: TFloatField
      FieldName = 'ELE14_PERC'
    end
    object tbMaterialElementELE15_PERC: TFloatField
      FieldName = 'ELE15_PERC'
    end
    object tbMaterialElementELE16_PERC: TFloatField
      FieldName = 'ELE16_PERC'
    end
    object tbMaterialElementELE17_PERC: TFloatField
      FieldName = 'ELE17_PERC'
    end
    object tbMaterialElementELE18_PERC: TFloatField
      FieldName = 'ELE18_PERC'
    end
    object tbMaterialElementELE19_PERC: TFloatField
      FieldName = 'ELE19_PERC'
    end
    object tbMaterialElementELE20_PERC: TFloatField
      FieldName = 'ELE20_PERC'
    end
    object tbMaterialElementELE21_PERC: TFloatField
      FieldName = 'ELE21_PERC'
    end
    object tbMaterialElementELE22_PERC: TFloatField
      FieldName = 'ELE22_PERC'
    end
    object tbMaterialElementELE23_PERC: TFloatField
      FieldName = 'ELE23_PERC'
    end
    object tbMaterialElementELE24_PERC: TFloatField
      FieldName = 'ELE24_PERC'
    end
    object tbMaterialElementELE25_PERC: TFloatField
      FieldName = 'ELE25_PERC'
    end
  end
  object qryMeltSheetFinalResult: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '               select'
      
        'sum(dt.ele_perc1*DT.recovery_weight)/sum(DT.recovery_weight)  as' +
        ' e1,'
      
        'sum(dt.ele_perc2*DT.recovery_weight)/sum(DT.recovery_weight)  as' +
        ' e2,'
      
        'sum(dt.ele_perc3*DT.recovery_weight)/sum(DT.recovery_weight)  as' +
        ' e3,'
      
        'sum(dt.ele_perc4*DT.recovery_weight)/sum(DT.recovery_weight)  as' +
        ' e4 ,'
      
        'sum(dt.ele_perc5*DT.recovery_weight)/sum(DT.recovery_weight) as ' +
        'e5,'
      
        'sum(dt.ele_perc6*DT.recovery_weight)/sum(DT.recovery_weight) as ' +
        'e6,'
      
        'sum(dt.ele_perc7*DT.recovery_weight)/sum(DT.recovery_weight) as ' +
        'e7,'
      
        'sum(dt.ele_perc8*DT.recovery_weight)/sum(DT.recovery_weight) as ' +
        'e8,'
      
        'sum(dt.ele_perc9*DT.recovery_weight)/sum(DT.recovery_weight)  as' +
        ' e9,'
      
        'sum(dt.ele_perc10*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e10,'
      
        'sum(dt.ele_perc11*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e11,'
      
        'sum(dt.ele_perc12*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e12,'
      
        'sum(dt.ele_perc13*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e13,'
      
        'sum(dt.ele_perc14*DT.recovery_weight)/sum(DT.recovery_weight)  a' +
        's e14 ,'
      
        'sum(dt.ele_perc15*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e15,'
      
        'sum(dt.ele_perc16*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e16,'
      
        'sum(dt.ele_perc17*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e17,'
      
        'sum(dt.ele_perc18*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e18,'
      
        'sum(dt.ele_perc19*DT.recovery_weight)/sum(DT.recovery_weight)  a' +
        's e19,'
      
        'sum(dt.ele_perc20*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e20,'
      
        'sum(dt.ele_perc21*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e21,'
      
        'sum(dt.ele_perc22*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e22,'
      
        'sum(dt.ele_perc23*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e23,'
      
        'sum(dt.ele_perc24*DT.recovery_weight)/sum(DT.recovery_weight) as' +
        ' e24,'
      'avg(dt.recovery_perc) as recovery_percentage,'
      'sum(dt.charged_weight)as total_charged,'
      'sum(dt.recovery_weight)as total_recovered,'
      'sum(dt.total_cost)as total_cost'
      ' from  pl_rawmat_sheet_dt dt'
      'where plan_doc =:pplandoc'
      'and melt_no =:pmeltno')
    Left = 288
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pplandoc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pmeltno'
        ParamType = ptUnknown
      end>
    object qryMeltSheetFinalResultE1: TFloatField
      FieldName = 'E1'
    end
    object qryMeltSheetFinalResultE2: TFloatField
      FieldName = 'E2'
    end
    object qryMeltSheetFinalResultE3: TFloatField
      FieldName = 'E3'
    end
    object qryMeltSheetFinalResultE4: TFloatField
      FieldName = 'E4'
    end
    object qryMeltSheetFinalResultE5: TFloatField
      FieldName = 'E5'
    end
    object qryMeltSheetFinalResultE6: TFloatField
      FieldName = 'E6'
    end
    object qryMeltSheetFinalResultE7: TFloatField
      FieldName = 'E7'
    end
    object qryMeltSheetFinalResultE8: TFloatField
      FieldName = 'E8'
    end
    object qryMeltSheetFinalResultE9: TFloatField
      FieldName = 'E9'
    end
    object qryMeltSheetFinalResultE10: TFloatField
      FieldName = 'E10'
    end
    object qryMeltSheetFinalResultE11: TFloatField
      FieldName = 'E11'
    end
    object qryMeltSheetFinalResultE12: TFloatField
      FieldName = 'E12'
    end
    object qryMeltSheetFinalResultE13: TFloatField
      FieldName = 'E13'
    end
    object qryMeltSheetFinalResultRECOVERY_PERCENTAGE: TFloatField
      FieldName = 'RECOVERY_PERCENTAGE'
    end
    object qryMeltSheetFinalResultTOTAL_CHARGED: TFloatField
      FieldName = 'TOTAL_CHARGED'
    end
    object qryMeltSheetFinalResultTOTAL_RECOVERED: TFloatField
      FieldName = 'TOTAL_RECOVERED'
    end
    object qryMeltSheetFinalResultTOTAL_COST: TFloatField
      FieldName = 'TOTAL_COST'
    end
    object qryMeltSheetFinalResultE14: TFloatField
      FieldName = 'E14'
    end
    object qryMeltSheetFinalResultE15: TFloatField
      FieldName = 'E15'
    end
    object qryMeltSheetFinalResultE16: TFloatField
      FieldName = 'E16'
    end
    object qryMeltSheetFinalResultE17: TFloatField
      FieldName = 'E17'
    end
    object qryMeltSheetFinalResultE18: TFloatField
      FieldName = 'E18'
    end
    object qryMeltSheetFinalResultE19: TFloatField
      FieldName = 'E19'
    end
    object qryMeltSheetFinalResultE20: TFloatField
      FieldName = 'E20'
    end
    object qryMeltSheetFinalResultE21: TFloatField
      FieldName = 'E21'
    end
    object qryMeltSheetFinalResultE22: TFloatField
      FieldName = 'E22'
    end
    object qryMeltSheetFinalResultE23: TFloatField
      FieldName = 'E23'
    end
    object qryMeltSheetFinalResultE24: TFloatField
      FieldName = 'E24'
    end
  end
  object tbPLElementTemplate: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = tbPLElementTemplateAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_MELT_TEMPLATE'
    Left = 600
    Top = 344
    object tbPLElementTemplateITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbPLElementTemplateUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbPLElementTemplateCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbPLElementTemplateMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Size = 10
    end
    object tbPLElementTemplateELE_PERC1: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC1'
    end
    object tbPLElementTemplateELE_PERC2: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC2'
    end
    object tbPLElementTemplateELE_PERC3: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC3'
    end
    object tbPLElementTemplateELE_PERC4: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC4'
    end
    object tbPLElementTemplateELE_PERC5: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC5'
    end
    object tbPLElementTemplateELE_PERC6: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC6'
    end
    object tbPLElementTemplateELE_PERC7: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC7'
    end
    object tbPLElementTemplateELE_PERC8: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC8'
    end
    object tbPLElementTemplateELE_PERC9: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC9'
    end
    object tbPLElementTemplateELE_PERC10: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC10'
    end
    object tbPLElementTemplateELE_PERC11: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC11'
    end
    object tbPLElementTemplateELE_PERC12: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC12'
    end
    object tbPLElementTemplateELE_PERC13: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC13'
    end
    object tbPLElementTemplateELE_PERC14: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC14'
    end
    object tbPLElementTemplateELE_PERC15: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC15'
    end
    object tbPLElementTemplateELE_PERC16: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC16'
    end
    object tbPLElementTemplateELE_PERC17: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC17'
    end
    object tbPLElementTemplateELE_PERC18: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC18'
    end
    object tbPLElementTemplateELE_PERC19: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC19'
    end
    object tbPLElementTemplateELE_PERC20: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC20'
    end
    object tbPLElementTemplateELE_PERC21: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC21'
    end
    object tbPLElementTemplateELE_PERC22: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC22'
    end
    object tbPLElementTemplateELE_PERC23: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC23'
    end
    object tbPLElementTemplateELE_PERC24: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC24'
    end
    object tbPLElementTemplateELE_PERC25: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE_PERC25'
    end
    object tbPLElementTemplateRECOVERY_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'RECOVERY_PERC'
    end
    object tbPLElementTemplateUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbPLElementTemplateUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbPLElementTemplateUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbDefaultElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterFields = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterSource = dsMaterial
    TableName = 'IC_MAT_DEFAULT_ELEMENT'
    Left = 280
    Top = 624
    object tbDefaultElementSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Size = 15
    end
    object tbDefaultElementGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbDefaultElementUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbDefaultElementELE1_PERC: TFloatField
      FieldName = 'ELE1_PERC'
    end
    object tbDefaultElementELE2_PERC: TFloatField
      FieldName = 'ELE2_PERC'
    end
    object tbDefaultElementELE3_PERC: TFloatField
      FieldName = 'ELE3_PERC'
    end
    object tbDefaultElementELE4_PERC: TFloatField
      FieldName = 'ELE4_PERC'
    end
    object tbDefaultElementELE5_PERC: TFloatField
      FieldName = 'ELE5_PERC'
    end
    object tbDefaultElementELE6_PERC: TFloatField
      FieldName = 'ELE6_PERC'
    end
    object tbDefaultElementELE7_PERC: TFloatField
      FieldName = 'ELE7_PERC'
    end
    object tbDefaultElementELE8_PERC: TFloatField
      FieldName = 'ELE8_PERC'
    end
    object tbDefaultElementELE9_PERC: TFloatField
      FieldName = 'ELE9_PERC'
    end
    object tbDefaultElementELE10_PERC: TFloatField
      FieldName = 'ELE10_PERC'
    end
    object tbDefaultElementELE11_PERC: TFloatField
      FieldName = 'ELE11_PERC'
    end
    object tbDefaultElementELE12_PERC: TFloatField
      FieldName = 'ELE12_PERC'
    end
    object tbDefaultElementELE13_PERC: TFloatField
      FieldName = 'ELE13_PERC'
    end
    object tbDefaultElementELE14_PERC: TFloatField
      FieldName = 'ELE14_PERC'
    end
    object tbDefaultElementELE15_PERC: TFloatField
      FieldName = 'ELE15_PERC'
    end
    object tbDefaultElementELE16_PERC: TFloatField
      FieldName = 'ELE16_PERC'
    end
    object tbDefaultElementELE17_PERC: TFloatField
      FieldName = 'ELE17_PERC'
    end
    object tbDefaultElementELE18_PERC: TFloatField
      FieldName = 'ELE18_PERC'
    end
    object tbDefaultElementELE19_PERC: TFloatField
      FieldName = 'ELE19_PERC'
    end
    object tbDefaultElementELE20_PERC: TFloatField
      FieldName = 'ELE20_PERC'
    end
    object tbDefaultElementELE21_PERC: TFloatField
      FieldName = 'ELE21_PERC'
    end
    object tbDefaultElementELE22_PERC: TFloatField
      FieldName = 'ELE22_PERC'
    end
    object tbDefaultElementELE23_PERC: TFloatField
      FieldName = 'ELE23_PERC'
    end
    object tbDefaultElementELE24_PERC: TFloatField
      FieldName = 'ELE24_PERC'
    end
    object tbDefaultElementELE25_PERC: TFloatField
      FieldName = 'ELE25_PERC'
    end
  end
  object qryQAInspect: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = qryQAInspectAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select lot_cd ,UOM_CD,purchase_date,ref_no,ref_date,stock_cd,gro' +
        'up_id,acct_code,sum(onhand_qty) as onhand_qty from ic_mat_stk_dt' +
        '_link'
      'where onhand_qty >0'
      'AND group_id not in ('#39'SG008'#39','#39'SG009'#39')'
      
        'group by lot_cd,UOM_CD ,purchase_date,ref_no,ref_date,stock_cd,g' +
        'roup_id   ,acct_code')
    Left = 616
    Top = 32
    object qryQAInspectLOT_CD: TIBStringField
      FieldName = 'LOT_CD'
      Required = True
      Size = 15
    end
    object qryQAInspectPURCHASE_DATE: TDateTimeField
      FieldName = 'PURCHASE_DATE'
      Required = True
    end
    object qryQAInspectREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Required = True
      Size = 15
    end
    object qryQAInspectREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Required = True
    end
    object qryQAInspectSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Required = True
      Size = 15
    end
    object qryQAInspectGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 10
    end
    object qryQAInspectACCT_CODE: TIBStringField
      FieldName = 'ACCT_CODE'
      Required = True
      Size = 10
    end
    object qryQAInspectONHAND_QTY: TFloatField
      FieldName = 'ONHAND_QTY'
    end
    object qryQAInspectUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Required = True
      Size = 4
    end
  end
  object dsQAInspect: TDataSource
    DataSet = qryQAInspect
    Left = 704
    Top = 32
  end
  object tbQAElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = tbQAElementAfterOpen
    BeforePost = tbQAElementBeforePost
    OnNewRecord = tbQAElementNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'LOT_CD'
    MasterFields = 'LOT_CD'
    MasterSource = dsQAInspect
    TableName = 'IC_MAT_ELEMENT'
    Left = 616
    Top = 96
    object tbQAElementSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Visible = False
      Size = 15
    end
    object tbQAElementGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Visible = False
      Size = 10
    end
    object tbQAElementUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object tbQAElementACCT_CD: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CD'
      Visible = False
      Size = 10
    end
    object tbQAElementLOT_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Size = 15
    end
    object tbQAElementPURCHASE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
    end
    object tbQAElementLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbQAElementREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object tbQAElementREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbQAElementELE1_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE1_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE2_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE2_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE3_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE3_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE4_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE4_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE5_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE5_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE6_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE6_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE7_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE7_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE8_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE8_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE9_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE9_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE10_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE10_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE11_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE11_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE12_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE12_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE13_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE13_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE14_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE14_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE15_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE15_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE16_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE16_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE17_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE17_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE18_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE18_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE19_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE19_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE20_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE20_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE21_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE21_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE22_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE22_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE23_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE23_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE24_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE24_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAElementELE25_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE25_PERC'
    end
  end
  object qryQAMeltInspect: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = qryQAInspectAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select lot_cd ,UOM_CD,purchase_date,ref_no,ref_date,stock_cd,gro' +
        'up_id,acct_code,sum(onhand_qty) as onhand_qty from ic_mat_stk_dt' +
        '_link'
      'where onhand_qty >0'
      'AND group_id not in ('#39'SG008'#39','#39'SG009'#39')'
      'AND LOT_CD =:PLOT_CD'
      
        'group by lot_cd ,purchase_date,ref_no,ref_date,stock_cd,group_id' +
        '   ,UOM_CD,acct_code')
    Left = 616
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'PLOT_CD'
        ParamType = ptUnknown
        Value = 'PC021/11'
      end>
    object IBStringField1: TIBStringField
      FieldName = 'LOT_CD'
      Required = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'PURCHASE_DATE'
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'REF_NO'
      Required = True
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'REF_DATE'
      Required = True
    end
    object IBStringField3: TIBStringField
      FieldName = 'STOCK_CD'
      Required = True
      Size = 15
    end
    object IBStringField4: TIBStringField
      FieldName = 'GROUP_ID'
      Required = True
      Size = 10
    end
    object IBStringField5: TIBStringField
      FieldName = 'ACCT_CODE'
      Required = True
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'ONHAND_QTY'
    end
    object qryQAMeltInspectUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Required = True
      Size = 4
    end
  end
  object dsQAMeltInspect: TDataSource
    DataSet = qryQAMeltInspect
    Left = 704
    Top = 168
  end
  object tbQAMeltInspect: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = tbQAElementAfterOpen
    BeforePost = tbQAMeltInspectBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'STOCK_CD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'GROUP_ID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UOM_CD'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'LOT_CD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PURCHASE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'ELE1_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE2_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE3_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE4_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE5_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE6_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE7_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE8_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE9_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE10_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE11_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE12_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE13_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ACCT_CD'
        DataType = ftString
        Size = 10
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
        Name = 'LINE_NO'
        DataType = ftSmallint
      end
      item
        Name = 'ELE14_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE15_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE16_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE17_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE18_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE19_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE20_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE21_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE22_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE23_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE24_PERC'
        DataType = ftFloat
      end
      item
        Name = 'ELE25_PERC'
        DataType = ftFloat
      end>
    Filter = 'LOT_CD ='#39'PC203/08'#39
    Filtered = True
    IndexDefs = <
      item
        Name = 'INTEG_845'
        Fields = 'STOCK_CD;GROUP_ID;UOM_CD;LOT_CD;PURCHASE_DATE;LINE_NO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'IC_MAT_ELEMENT'
    Left = 616
    Top = 224
    object IBStringField6: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
    end
    object SmallintField1: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object DateTimeField4: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object IBStringField7: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE1_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE2_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField4: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE3_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField5: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE4_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField6: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE5_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField7: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE6_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField8: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE7_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE8_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField10: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE9_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField11: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE10_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField12: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE11_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField13: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE12_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE13_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE14_PERC: TFloatField
      FieldName = 'ELE14_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE15_PERC: TFloatField
      FieldName = 'ELE15_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE16_PERC: TFloatField
      FieldName = 'ELE16_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE17_PERC: TFloatField
      FieldName = 'ELE17_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE18_PERC: TFloatField
      FieldName = 'ELE18_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE19_PERC: TFloatField
      FieldName = 'ELE19_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE20_PERC: TFloatField
      FieldName = 'ELE20_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE21_PERC: TFloatField
      FieldName = 'ELE21_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE22_PERC: TFloatField
      FieldName = 'ELE22_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE23_PERC: TFloatField
      FieldName = 'ELE23_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE24_PERC: TFloatField
      FieldName = 'ELE24_PERC'
      OnChange = tbQAElementELE1_PERCChange
    end
    object tbQAMeltInspectELE25_PERC: TFloatField
      FieldName = 'ELE25_PERC'
    end
    object IBStringField8: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Visible = False
      Size = 15
    end
    object IBStringField9: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Visible = False
      Size = 10
    end
    object IBStringField10: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object IBStringField11: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CD'
      Visible = False
      Size = 10
    end
  end
  object tbFNGReceiveHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbFNGReceiveHDBeforePost
    OnNewRecord = tbFNGReceiveHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_FN_RECEIVE_HD'
    Left = 880
    Top = 40
    object tbFNGReceiveHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbFNGReceiveHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbFNGReceiveHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbFNGReceiveHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbFNGReceiveHDMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      OnChange = tbFNGReceiveHDMELT_NOChange
      Size = 10
    end
    object tbFNGReceiveHDITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbFNGReceiveHDMARKUP_WEIGHT1: TFloatField
      FieldName = 'MARKUP_WEIGHT1'
    end
    object tbFNGReceiveHDMARKUP_WEIGHT2: TFloatField
      FieldName = 'MARKUP_WEIGHT2'
    end
    object tbFNGReceiveHDBUNDLE_QTY: TSmallintField
      FieldName = 'BUNDLE_QTY'
    end
    object tbFNGReceiveHDBY_PRODUCTED_ITEM: TIBStringField
      FieldName = 'BY_PRODUCTED_ITEM'
      Size = 1
    end
    object tbFNGReceiveHDUNKNOW_MELT_FLAG: TIBStringField
      FieldName = 'UNKNOW_MELT_FLAG'
      Size = 1
    end
    object tbFNGReceiveHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbFNGReceiveHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
  end
  object tbFNGReceiveDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    OnNewRecord = tbFNGReceiveDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;ITEM_CODE;MELT_NO'
    MasterFields = 'DOC_NO;DOC_DATE;ITEM_CODE;MELT_NO'
    MasterSource = dsFNGReceiveHD
    TableName = 'PL_FN_RECEIVE_DT'
    Left = 880
    Top = 104
    object tbFNGReceiveDTREMELT_ITEM_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'REMELT_ITEM_FLAG'
      OnChange = tbFNGReceiveDTREMELT_ITEM_FLAGChange
      Size = 1
    end
    object tbFNGReceiveDTLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbFNGReceiveDTWEIGHT_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT_QTY'
      OnChange = tbFNGReceiveDTWEIGHT_QTYChange
    end
    object tbFNGReceiveDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
    end
    object tbFNGReceiveDTGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbFNGReceiveDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbFNGReceiveDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbFNGReceiveDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Visible = False
      Size = 15
    end
    object tbFNGReceiveDTUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object tbFNGReceiveDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Visible = False
      Size = 10
    end
  end
  object dsFNGReceiveHD: TDataSource
    DataSet = tbFNGReceiveHD
    Left = 984
    Top = 40
  end
  object qryFNGReceiveUnpost: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PL_FN_RECEIVE_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 1112
    Top = 40
    object qryFNGReceiveUnpostDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'PL_FN_RECEIVE_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryFNGReceiveUnpostDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'PL_FN_RECEIVE_HD.DOC_DATE'
      Required = True
    end
    object qryFNGReceiveUnpostDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'PL_FN_RECEIVE_HD.DESCS'
      Size = 60
    end
    object qryFNGReceiveUnpostUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'PL_FN_RECEIVE_HD.UPDATE_USER'
      Size = 10
    end
    object qryFNGReceiveUnpostUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_FN_RECEIVE_HD.UPDATE_DATE'
    end
    object qryFNGReceiveUnpostSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PL_FN_RECEIVE_HD.STATUS'
      Size = 1
    end
    object qryFNGReceiveUnpostMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Origin = 'PL_FN_RECEIVE_HD.MELT_NO'
      Required = True
      Size = 10
    end
    object qryFNGReceiveUnpostITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = 'PL_FN_RECEIVE_HD.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryFNGReceiveUnpostMARKUP_WEIGHT1: TFloatField
      FieldName = 'MARKUP_WEIGHT1'
      Origin = 'PL_FN_RECEIVE_HD.MARKUP_WEIGHT1'
    end
    object qryFNGReceiveUnpostMARKUP_WEIGHT2: TFloatField
      FieldName = 'MARKUP_WEIGHT2'
      Origin = 'PL_FN_RECEIVE_HD.MARKUP_WEIGHT2'
    end
    object qryFNGReceiveUnpostBUNDLE_QTY: TSmallintField
      FieldName = 'BUNDLE_QTY'
      Origin = 'PL_FN_RECEIVE_HD.BUNDLE_QTY'
      Required = True
    end
    object qryFNGReceiveUnpostBY_PRODUCTED_ITEM: TIBStringField
      FieldName = 'BY_PRODUCTED_ITEM'
      Origin = 'PL_FN_RECEIVE_HD.BY_PRODUCTED_ITEM'
      Size = 1
    end
    object qryFNGReceiveUnpostUNKNOW_MELT_FLAG: TIBStringField
      FieldName = 'UNKNOW_MELT_FLAG'
      Origin = 'PL_FN_RECEIVE_HD.UNKNOW_MELT_FLAG'
      Size = 1
    end
  end
  object tbFNGAdjustHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbFNGAdjustHDBeforePost
    OnNewRecord = tbFNGAdjustHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_FNG_ADJ_HD'
    Left = 872
    Top = 192
    object tbFNGAdjustHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbFNGAdjustHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbFNGAdjustHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbFNGAdjustHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbFNGAdjustHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbFNGAdjustHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbFNGAdjustHDDESCS1: TIBStringField
      FieldName = 'DESCS1'
      Size = 60
    end
  end
  object tbFNGAdjustDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    OnNewRecord = tbFNGAdjustDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE'
    MasterFields = 'DOC_NO;DOC_DATE'
    MasterSource = dsFNGAdjustHD
    TableName = 'PL_FNG_ADJ_DT'
    Left = 864
    Top = 296
    object tbFNGAdjustDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      OnChange = tbFNGAdjustDTMELT_NOChange
      Size = 10
    end
    object tbFNGAdjustDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbFNGAdjustDTUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbFNGAdjustDTONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
    end
    object tbFNGAdjustDTQTY: TFloatField
      DisplayLabel = 'ADJ +/-QTY'
      DisplayWidth = 10
      FieldName = 'QTY'
    end
    object tbFNGAdjustDTONHAND_BUNDLE_QTY: TFloatField
      DisplayLabel = 'ONHAND BUNDLE'
      DisplayWidth = 10
      FieldName = 'ONHAND_BUNDLE_QTY'
    end
    object tbFNGAdjustDTBUNDLE_QTY: TFloatField
      DisplayLabel = 'ADJ +/- BUNDLE_QTY'
      DisplayWidth = 10
      FieldName = 'BUNDLE_QTY'
    end
    object tbFNGAdjustDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbFNGAdjustDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbFNGAdjustDTUNKNOW_MELT_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'UNKNOW_MELT_FLAG'
      Visible = False
      Size = 1
    end
  end
  object dsFNGAdjustHD: TDataSource
    DataSet = tbFNGAdjustHD
    Left = 992
    Top = 192
  end
  object qryFNGAdjustUnpost: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PL_FNG_ADJ_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 1120
    Top = 192
    object qryFNGAdjustUnpostDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'PL_FNG_ADJ_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryFNGAdjustUnpostDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'PL_FNG_ADJ_HD.DOC_DATE'
      Required = True
    end
    object qryFNGAdjustUnpostSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PL_FNG_ADJ_HD.STATUS'
      Size = 1
    end
    object qryFNGAdjustUnpostDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'PL_FNG_ADJ_HD.DESCS'
      Size = 60
    end
    object qryFNGAdjustUnpostUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'PL_FNG_ADJ_HD.UPDATE_USER'
      Size = 10
    end
    object qryFNGAdjustUnpostUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_FNG_ADJ_HD.UPDATE_DATE'
    end
    object qryFNGAdjustUnpostDESCS1: TIBStringField
      FieldName = 'DESCS1'
      Origin = 'PL_FNG_ADJ_HD.DESCS1'
      Size = 60
    end
  end
  object qryFNGStockItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from so_sales_item_stock'
      'where onhand_qty >0')
    Left = 984
    Top = 296
    object qryFNGStockItemMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'SO_SALES_ITEM_STOCK.MELT_NO'
      Required = True
      Size = 10
    end
    object qryFNGStockItemITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_SALES_ITEM_STOCK.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryFNGStockItemUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'SO_SALES_ITEM_STOCK.UOM_CD'
      Required = True
      Size = 4
    end
    object qryFNGStockItemONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.ONHAND_QTY'
    end
    object qryFNGStockItemRESERVED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.RESERVED_QTY'
    end
    object qryFNGStockItemCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_SALES_ITEM_STOCK.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryFNGStockItemDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'SO_SALES_ITEM_STOCK.DOC_NO'
      Required = True
      Size = 15
    end
    object qryFNGStockItemDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'SO_SALES_ITEM_STOCK.DOC_DATE'
      Required = True
    end
    object qryFNGStockItemUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_SALES_ITEM_STOCK.UNIT_COST'
    end
    object qryFNGStockItemTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'SO_SALES_ITEM_STOCK.TOTAL_COST'
    end
    object qryFNGStockItemBUNDLE_QTY: TSmallintField
      DisplayWidth = 10
      FieldName = 'BUNDLE_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.BUNDLE_QTY'
      Required = True
    end
  end
  object tbFNGReturnHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbFNGReturnHDBeforePost
    OnNewRecord = tbFNGReturnHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PL_FNG_RET_HD'
    Left = 864
    Top = 400
    object tbFNGReturnHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbFNGReturnHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbFNGReturnHDCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbFNGReturnHDMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      OnChange = tbFNGReturnHDMELT_NOChange
      Size = 10
    end
    object tbFNGReturnHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbFNGReturnHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbFNGReturnHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbFNGReturnHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbFNGReturnHDBUNDLE_QTY: TFloatField
      FieldName = 'BUNDLE_QTY'
    end
    object tbFNGReturnHDITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbFNGReturnHDCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = tbCustomer
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'CUST_CODE'
      Size = 60
      Lookup = True
    end
  end
  object tbFNGReturnDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    OnNewRecord = tbFNGReturnDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;CUST_CODE;MELT_NO;ITEM_CODE'
    MasterFields = 'DOC_NO;DOC_DATE;CUST_CODE;MELT_NO;ITEM_CODE'
    MasterSource = dsFNGReturnHD
    TableName = 'PL_FNG_RET_DT'
    Left = 864
    Top = 472
    object tbFNGReturnDTREMELT_ITEM_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'REMELT_ITEM_FLAG'
      OnChange = tbFNGReturnDTREMELT_ITEM_FLAGChange
      Size = 1
    end
    object tbFNGReturnDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
    end
    object tbFNGReturnDTGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbFNGReturnDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbFNGReturnDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbFNGReturnDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbFNGReturnDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Visible = False
      Size = 10
    end
    object tbFNGReturnDTUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object tbFNGReturnDTITEM_CODE: TIBStringField
      DisplayWidth = 30
      FieldName = 'ITEM_CODE'
      Visible = False
      Size = 30
    end
  end
  object qryFNGReturnUnpost: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PL_FNG_RET_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 1136
    Top = 400
    object qryFNGReturnUnpostDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'PL_FNG_RET_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryFNGReturnUnpostDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'PL_FNG_RET_HD.DOC_DATE'
      Required = True
    end
    object qryFNGReturnUnpostCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'PL_FNG_RET_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryFNGReturnUnpostMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Origin = 'PL_FNG_RET_HD.MELT_NO'
      Required = True
      Size = 10
    end
    object qryFNGReturnUnpostSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'PL_FNG_RET_HD.STATUS'
      Size = 1
    end
    object qryFNGReturnUnpostDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'PL_FNG_RET_HD.DESCS'
      Size = 60
    end
    object qryFNGReturnUnpostUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'PL_FNG_RET_HD.UPDATE_USER'
      Size = 10
    end
    object qryFNGReturnUnpostUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_FNG_RET_HD.UPDATE_DATE'
    end
    object qryFNGReturnUnpostBUNDLE_QTY: TFloatField
      FieldName = 'BUNDLE_QTY'
      Origin = 'PL_FNG_RET_HD.BUNDLE_QTY'
    end
    object qryFNGReturnUnpostITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = 'PL_FNG_RET_HD.ITEM_CODE'
      Required = True
      Size = 15
    end
  end
  object dsFNGReturnHD: TDataSource
    DataSet = tbFNGReturnHD
    Left = 992
    Top = 400
  end
  object qryUnplanOrder: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT SO_ORDER_DT.ORDER_NO, SO_ORDER_DT.ORDER_DATE, SO_ORDER_DT' +
        '.ITEM_CODE, SO_ORDER_DT.CUST_CODE, SO_ORDER_DT.ITEM_DESCS, SO_OR' +
        'DER_DT.UNIT_COST, SO_ORDER_DT.QTY, SO_ORDER_DT.DET_QTY, SO_ORDER' +
        '_DT.STATUS, PL_PRO_PLAN_DT.PLAN_DOC, PL_PRO_PLAN_DT.MELT_NO, PL_' +
        'PRO_PLAN_DT.LINE_NO'
      'FROM PL_PRO_PLAN_DT'
      
        '   RIGHT OUTER JOIN SO_ORDER_DT ON (PL_PRO_PLAN_DT.ORDER_NO = SO' +
        '_ORDER_DT.ORDER_NO) AND (PL_PRO_PLAN_DT.ORDER_DATE = SO_ORDER_DT' +
        '.ORDER_DATE) AND (PL_PRO_PLAN_DT.ITEM_CODE = SO_ORDER_DT.ITEM_CO' +
        'DE)'
      'WHERE '
      '   ('
      '      (SO_ORDER_DT.STATUS = '#39'A'#39')'
      '      AND'
      '      (PL_PRO_PLAN_DT.plan_doc IS NULL)'
      '   )'
      
        'ORDER BY SO_ORDER_DT.CUST_CODE, SO_ORDER_DT.ORDER_DATE, SO_ORDER' +
        '_DT.ORDER_NO')
    Left = 440
    Top = 616
    object qryUnplanOrderORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_DT.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryUnplanOrderORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_DT.ORDER_DATE'
      Required = True
    end
    object qryUnplanOrderITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Origin = 'SO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryUnplanOrderCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_ORDER_DT.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryUnplanOrderITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Origin = 'SO_ORDER_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryUnplanOrderUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
      Origin = 'SO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryUnplanOrderQTY: TFloatField
      FieldName = 'QTY'
      Origin = 'SO_ORDER_DT.QTY'
      Required = True
    end
    object qryUnplanOrderDET_QTY: TFloatField
      FieldName = 'DET_QTY'
      Origin = 'SO_ORDER_DT.DET_QTY'
      Required = True
    end
    object qryUnplanOrderSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_ORDER_DT.STATUS'
      Required = True
      Size = 1
    end
    object qryUnplanOrderPLAN_DOC: TIBStringField
      FieldName = 'PLAN_DOC'
      Origin = 'PL_PRO_PLAN_DT.PLAN_DOC'
      Size = 15
    end
    object qryUnplanOrderMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Origin = 'PL_PRO_PLAN_DT.MELT_NO'
      Size = 10
    end
    object qryUnplanOrderLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
      Origin = 'PL_PRO_PLAN_DT.LINE_NO'
    end
  end
  object qryActiveMeltSheetStock: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ''
      '--New order'
      'SELECT ORDER_NO,ORDER_DATE,SUPP_CODE,ITEM_CODE,QTY,unit_cost'
      'FROM PO_ORDER_DT'
      'WHERE STATUS ='#39'A'#39
      'AND ITEM_CODE=:PSTOCK_CD'
      '--ON STOCK ITEM'
      'UNION'
      'SELECT'
      'LOT_CD , PURCHASE_DATE,ACCT_CODE,STOCK_CD,ONHAND_QTY,UNIT_COST'
      'FROM IC_MAT_STK_DT_LINK'
      'WHERE ONHAND_QTY >0'
      'AND STOCK_CD =:PSTOCK_CD')
    Left = 592
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PSTOCK_CD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PSTOCK_CD'
        ParamType = ptUnknown
      end>
    object qryActiveMeltSheetStockORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Required = True
      Size = 15
    end
    object qryActiveMeltSheetStockORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Required = True
    end
    object qryActiveMeltSheetStockSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Required = True
      Size = 10
    end
    object qryActiveMeltSheetStockITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryActiveMeltSheetStockQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Required = True
    end
    object qryActiveMeltSheetStockUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Required = True
    end
  end
  object dsActiveMeltSheetStock: TDataSource
    DataSet = qryActiveMeltSheetStock
    Left = 736
    Top = 408
  end
  object tbCustomerRequirementNote: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterClose = tbCustomerRequirementNoteAfterClose
    AfterOpen = tbCustomerRequirementNoteAfterOpen
    BeforePost = tbCustomerRequirementNoteBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CUST_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'REQUIREMENTNOTE'
        DataType = ftString
        Size = 2500
      end
      item
        Name = 'UPDATE_USER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UPDATE_DATE'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'PK_CUSTOMER_REQUIREMENT'
        Fields = 'CUST_CODE'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'CUST_CODE'
    MasterFields = 'DEBTOR_ACCT'
    MasterSource = dsCustomer
    StoreDefs = True
    TableName = 'CUSTOMER_REQUIREMENT'
    Left = 680
    Top = 600
    object tbCustomerRequirementNoteCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbCustomerRequirementNoteREQUIREMENTNOTE: TIBStringField
      FieldName = 'REQUIREMENTNOTE'
      Size = 2500
    end
    object tbCustomerRequirementNoteUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbCustomerRequirementNoteUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object qryCustomer: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM AR_DEBTOR')
    Left = 792
    Top = 600
    object qryCustomerDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Origin = 'AR_DEBTOR.DEBTOR_ACCT'
      Required = True
      Size = 10
    end
    object qryCustomerNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'AR_DEBTOR.NAME'
      Size = 60
    end
    object qryCustomerTH_NAME: TIBStringField
      FieldName = 'TH_NAME'
      Origin = 'AR_DEBTOR.TH_NAME'
      Size = 150
    end
  end
  object dsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 864
    Top = 600
  end
  object qryCustRequirementView: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CUSTOMER_REQUIREMENT'
      'ORDER BY CUST_CODE')
    Left = 808
    Top = 664
    object qryCustRequirementViewCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'CUSTOMER_REQUIREMENT.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryCustRequirementViewREQUIREMENTNOTE: TIBStringField
      FieldName = 'REQUIREMENTNOTE'
      Origin = 'CUSTOMER_REQUIREMENT.REQUIREMENTNOTE'
      Size = 2500
    end
    object qryCustRequirementViewUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'CUSTOMER_REQUIREMENT.UPDATE_USER'
      Size = 10
    end
    object qryCustRequirementViewUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'CUSTOMER_REQUIREMENT.UPDATE_DATE'
    end
  end
  object spGenMeltSummaryReport2012: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_GET_MELT_SUMMARY_REV2012 '
    Left = 72
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'ADOC_NO'
        ParamType = ptInput
        Value = 'PL12/02/00'
      end
      item
        DataType = ftString
        Name = 'FROM_MELT'
        ParamType = ptInput
        Value = '01R01'
      end
      item
        DataType = ftString
        Name = 'TO_MELT'
        ParamType = ptInput
        Value = '03R01'
      end>
  end
end
