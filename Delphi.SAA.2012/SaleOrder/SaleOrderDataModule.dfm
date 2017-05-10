inherited SaleOrderDataManager: TSaleOrderDataManager
  OldCreateOrder = True
  Left = 88
  Top = 236
  Height = 608
  Width = 1278
  object qryUnApproveOrder: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = qryUnApproveOrderAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SO_ORDER_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 64
    Top = 8
    object qryUnApproveOrderCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_ORDER_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryUnApproveOrderORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryUnApproveOrderORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryUnApproveOrderREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'SO_ORDER_HD.REF_NO'
      Size = 15
    end
    object qryUnApproveOrderREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'SO_ORDER_HD.REF_DATE'
    end
    object qryUnApproveOrderUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'SO_ORDER_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnApproveOrderUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_ORDER_HD.UPDATE_DATE'
    end
    object qryUnApproveOrderSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_ORDER_HD.STATUS'
      Required = True
      Size = 1
    end
    object qryUnApproveOrderORDER_AMT: TFloatField
      FieldName = 'ORDER_AMT'
      Origin = 'SO_ORDER_HD.ORDER_AMT'
      Required = True
    end
    object qryUnApproveOrderDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'SO_ORDER_HD.DESCS'
      Size = 60
    end
    object qryUnApproveOrderSCHEDULE_DATE: TDateTimeField
      FieldName = 'SCHEDULE_DATE'
      Origin = 'SO_ORDER_HD.SCHEDULE_DATE'
    end
    object qryUnApproveOrderREQUIRED_SPEC_SHEET: TIBStringField
      FieldName = 'REQUIRED_SPEC_SHEET'
      Origin = 'SO_ORDER_HD.REQUIRED_SPEC_SHEET'
      Size = 1
    end
    object qryUnApproveOrderREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'SO_ORDER_HD.REMARKS'
      Size = 1500
    end
    object qryUnApproveOrderFAX_TO: TIBStringField
      FieldName = 'FAX_TO'
      Origin = 'SO_ORDER_HD.FAX_TO'
      Size = 60
    end
    object qryUnApproveOrderCC_TO: TIBStringField
      FieldName = 'CC_TO'
      Origin = 'SO_ORDER_HD.CC_TO'
      Size = 60
    end
    object qryUnApproveOrderNEW_ORDER_FLAG: TIBStringField
      FieldName = 'NEW_ORDER_FLAG'
      Origin = 'SO_ORDER_HD.NEW_ORDER_FLAG'
      Size = 1
    end
    object qryUnApproveOrderNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
      Origin = 'SO_ORDER_HD.NO_OF_PRINT'
    end
    object qryUnApproveOrderVALIDITY: TDateTimeField
      FieldName = 'VALIDITY'
      Origin = 'SO_ORDER_HD.VALIDITY'
    end
    object qryUnApproveOrderTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
      Origin = 'SO_ORDER_HD.TAX_AMT'
    end
    object qryUnApproveOrderCURRENCY_CD: TIBStringField
      FieldName = 'CURRENCY_CD'
      Origin = 'SO_ORDER_HD.CURRENCY_CD'
      Required = True
      Size = 4
    end
    object qryUnApproveOrderNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SO_ORDER_HD.NAME'
      Size = 60
    end
    object qryUnApproveOrderADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Origin = 'SO_ORDER_HD.ADDRESS1'
      Size = 60
    end
    object qryUnApproveOrderADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Origin = 'SO_ORDER_HD.ADDRESS2'
      Size = 60
    end
    object qryUnApproveOrderADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Origin = 'SO_ORDER_HD.ADDRESS3'
      Size = 60
    end
    object qryUnApproveOrderCURRENCY_DESCS: TIBStringField
      FieldName = 'CURRENCY_DESCS'
      Origin = 'SO_ORDER_HD.CURRENCY_DESCS'
      Size = 30
    end
    object qryUnApproveOrderSTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Origin = 'SO_ORDER_HD.STOCK_USAGED_FLAG'
      Size = 1
    end
    object qryUnApproveOrderTERM_OF_PAYMENT: TSmallintField
      FieldName = 'TERM_OF_PAYMENT'
      Origin = 'SO_ORDER_HD.TERM_OF_PAYMENT'
    end
  end
  object tbSaleOrderHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbSaleOrderHDAfterScroll
    BeforePost = tbSaleOrderHDBeforePost
    OnNewRecord = tbSaleOrderHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SO_ORDER_HD'
    Left = 360
    Top = 216
    object tbSaleOrderHDCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      OnChange = tbSaleOrderHDCUST_CODEChange
      Size = 10
    end
    object tbSaleOrderHDORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbSaleOrderHDORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbSaleOrderHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbSaleOrderHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbSaleOrderHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbSaleOrderHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbSaleOrderHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbSaleOrderHDORDER_AMT: TFloatField
      FieldName = 'ORDER_AMT'
    end
    object tbSaleOrderHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbSaleOrderHDSCHEDULE_DATE: TDateTimeField
      FieldName = 'SCHEDULE_DATE'
    end
    object tbSaleOrderHDREQUIRED_SPEC_SHEET: TIBStringField
      FieldName = 'REQUIRED_SPEC_SHEET'
      Size = 1
    end
    object tbSaleOrderHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 1500
    end
    object tbSaleOrderHDFAX_TO: TIBStringField
      FieldName = 'FAX_TO'
      Size = 60
    end
    object tbSaleOrderHDCC_TO: TIBStringField
      FieldName = 'CC_TO'
      Size = 60
    end
    object tbSaleOrderHDNEW_ORDER_FLAG: TIBStringField
      FieldName = 'NEW_ORDER_FLAG'
      Size = 1
    end
    object tbSaleOrderHDNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
    end
    object tbSaleOrderHDVALIDITY: TDateTimeField
      FieldName = 'VALIDITY'
    end
    object tbSaleOrderHDTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbSaleOrderHDCURRENCY_CD: TIBStringField
      FieldName = 'CURRENCY_CD'
      Size = 4
    end
    object tbSaleOrderHDNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbSaleOrderHDADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbSaleOrderHDADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbSaleOrderHDADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbSaleOrderHDCURRENCY_DESCS: TIBStringField
      FieldName = 'CURRENCY_DESCS'
      Size = 30
    end
    object tbSaleOrderHDSTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Size = 1
    end
    object tbSaleOrderHDTERM_OF_PAYMENT: TSmallintField
      FieldName = 'TERM_OF_PAYMENT'
    end
  end
  object tbSaleOrderDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbSaleOrderDTAfterScroll
    OnNewRecord = tbSaleOrderDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'ORDER_NO;ORDER_DATE;CUST_CODE'
    MasterFields = 'ORDER_NO;ORDER_DATE;CUST_CODE'
    MasterSource = dsSaleOrderHD
    TableName = 'SO_ORDER_DT'
    Left = 504
    Top = 216
    object tbSaleOrderDTLINE_NO: TSmallintField
      DisplayLabel = 'NO#'
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbSaleOrderDTITEM_CODE: TIBStringField
      DisplayLabel = 'ITEM CODE'
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      OnChange = tbSaleOrderDTITEM_CODEChange
      Size = 15
    end
    object tbSaleOrderDTITEM_DESCS: TIBStringField
      DisplayLabel = 'DESCS'
      DisplayWidth = 45
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbSaleOrderDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbSaleOrderDTTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      OnChange = tbSaleOrderDTTAX_RATEChange
    end
    object tbSaleOrderDTMARK_UP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
    end
    object tbSaleOrderDTUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      OnChange = tbSaleOrderDTUNIT_COSTChange
    end
    object tbSaleOrderDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = tbSaleOrderDTUNIT_COSTChange
    end
    object tbSaleOrderDTBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      OnChange = tbSaleOrderDTBASE_AMTChange
    end
    object tbSaleOrderDTDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      OnChange = tbSaleOrderDTBASE_AMTChange
    end
    object tbSaleOrderDTTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object tbSaleOrderDTTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
    end
    object tbSaleOrderDTREMARKS: TIBStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 60
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbSaleOrderDTORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Visible = False
      Size = 15
    end
    object tbSaleOrderDTORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Visible = False
    end
    object tbSaleOrderDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbSaleOrderDTTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbSaleOrderDTDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Visible = False
      Size = 2
    end
    object tbSaleOrderDTSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
    object tbSaleOrderDTDET_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'DET_QTY'
      Visible = False
    end
    object tbSaleOrderDTDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Visible = False
    end
    object tbSaleOrderDTURGENT_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'URGENT_FLAG'
      Visible = False
      Size = 1
    end
    object tbSaleOrderDTSTOCK_USAGED_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_USAGED_FLAG'
      Visible = False
      Size = 1
    end
    object tbSaleOrderDTSTOCK_USAGED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'STOCK_USAGED_QTY'
      Visible = False
    end
  end
  object tbSaleQuoteHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbSaleQuoteHDAfterScroll
    BeforePost = tbSaleQuoteHDBeforePost
    OnNewRecord = tbSaleQuoteHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SO_QUOTATION_HD'
    Left = 360
    Top = 288
    object tbSaleQuoteHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbSaleQuoteHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbSaleQuoteHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbSaleQuoteHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbSaleQuoteHDCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      OnChange = tbSaleQuoteHDCUST_CODEChange
      Size = 10
    end
    object tbSaleQuoteHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbSaleQuoteHDDOC_AMT: TFloatField
      FieldName = 'DOC_AMT'
    end
    object tbSaleQuoteHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbSaleQuoteHDVALIDITY: TDateTimeField
      FieldName = 'VALIDITY'
    end
    object tbSaleQuoteHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbSaleQuoteHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbSaleQuoteHDPREPARE_PERSON: TIBStringField
      FieldName = 'PREPARE_PERSON'
      Size = 60
    end
    object tbSaleQuoteHDDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbSaleQuoteHDREQUIRED_SPEC_SHEET: TIBStringField
      FieldName = 'REQUIRED_SPEC_SHEET'
      Size = 1
    end
    object tbSaleQuoteHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbSaleQuoteHDFAX_TO: TIBStringField
      FieldName = 'FAX_TO'
      Size = 60
    end
    object tbSaleQuoteHDCC_TO: TIBStringField
      FieldName = 'CC_TO'
      Size = 60
    end
    object tbSaleQuoteHDNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
    end
    object tbSaleQuoteHDTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbSaleQuoteHDCURRENCY_CD: TIBStringField
      FieldName = 'CURRENCY_CD'
      Size = 4
    end
    object tbSaleQuoteHDCURRENCY_DESCS: TIBStringField
      FieldName = 'CURRENCY_DESCS'
      Size = 30
    end
    object tbSaleQuoteHDADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbSaleQuoteHDADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbSaleQuoteHDADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbSaleQuoteHDNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbSaleQuoteHDTERM_OF_PAYMENT: TSmallintField
      FieldName = 'TERM_OF_PAYMENT'
    end
  end
  object tbSaleQuoteDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbSaleQuoteDTAfterScroll
    OnNewRecord = tbSaleQuoteDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;CUST_CODE'
    MasterFields = 'DOC_NO;DOC_DATE;CUST_CODE'
    MasterSource = dsSaleQuoteHD
    TableName = 'SO_QUOTATION_DT'
    Left = 504
    Top = 296
    object tbSaleQuoteDTLINE_NO: TSmallintField
      DisplayLabel = '#NO'
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbSaleQuoteDTITEM_CODE: TIBStringField
      DisplayLabel = 'ITEM CODE'
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      OnChange = tbSaleQuoteDTITEM_CODEChange
      Size = 15
    end
    object tbSaleQuoteDTITEM_DESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbSaleQuoteDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbSaleQuoteDTTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      OnChange = tbSaleQuoteDTTAX_RATEChange
    end
    object tbSaleQuoteDTMARK_UP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
    end
    object tbSaleQuoteDTUNIT_COST: TFloatField
      DisplayLabel = 'OfferPrice'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      OnChange = tbSaleQuoteDTUNIT_COSTChange
    end
    object tbSaleQuoteDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = tbSaleQuoteDTUNIT_COSTChange
    end
    object tbSaleQuoteDTBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
    end
    object tbSaleQuoteDTTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object tbSaleQuoteDTDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      OnChange = tbSaleQuoteDTDISCS_AMTChange
    end
    object tbSaleQuoteDTREMARKS: TIBStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 15
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbSaleQuoteDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbSaleQuoteDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbSaleQuoteDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbSaleQuoteDTTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Visible = False
    end
    object tbSaleQuoteDTTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbSaleQuoteDTDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Visible = False
      Size = 2
    end
    object tbSaleQuoteDTSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
  end
  object dsSaleOrderHD: TDataSource
    DataSet = tbSaleOrderHD
    Left = 424
    Top = 216
  end
  object dsSaleQuoteHD: TDataSource
    DataSet = tbSaleQuoteHD
    Left = 424
    Top = 288
  end
  object tbContract: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CUST_CODE'
    MasterFields = 'CUST_CODE'
    MasterSource = dsSaleQuoteHD
    TableName = 'SO_CONTRACT'
    Left = 544
    Top = 16
    object tbContractCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbContractCONTRACT_PERSON1: TIBStringField
      FieldName = 'CONTRACT_PERSON1'
      Size = 60
    end
    object tbContractCONTRACT_PERSON2: TIBStringField
      FieldName = 'CONTRACT_PERSON2'
      Size = 60
    end
    object tbContractLAST_USED_DOC_NO: TIBStringField
      FieldName = 'LAST_USED_DOC_NO'
      Size = 15
    end
    object tbContractLAST_USED_DOC_DATE: TDateTimeField
      FieldName = 'LAST_USED_DOC_DATE'
    end
    object tbContractUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbContractUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbCustomerLookup: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DEBTOR_ACCT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ADDRESS1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ADDRESS2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ADDRESS3'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TELPHONE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FAX_NO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DEBTOR_TYPE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SHORT_NAME'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CREDIT_TERM'
        DataType = ftSmallint
      end
      item
        Name = 'TAX_REGISTED_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BALANCE_AMT'
        DataType = ftFloat
      end
      item
        Name = 'CREDIT_LIMIT'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MAILADDR1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MAILADDR2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MAILADDR3'
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
        Name = 'TAX_CD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'POSTCODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROVINCE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TH_ADDR1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TH_ADDR2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TH_ADDR3'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TH_NAME'
        DataType = ftString
        Size = 150
      end>
    StoreDefs = True
    TableName = 'AR_DEBTOR'
    Left = 304
    Top = 24
    object tbCustomerLookupNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 60
    end
    object tbCustomerLookupDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbCustomerLookupADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupTELPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELPHONE'
      Visible = False
      Size = 30
    end
    object tbCustomerLookupFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Visible = False
      Size = 30
    end
    object tbCustomerLookupDEBTOR_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'DEBTOR_TYPE'
      Visible = False
      Size = 2
    end
    object tbCustomerLookupSHORT_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_NAME'
      Visible = False
      Size = 45
    end
    object tbCustomerLookupCREDIT_TERM: TSmallintField
      DisplayWidth = 10
      FieldName = 'CREDIT_TERM'
      Visible = False
    end
    object tbCustomerLookupTAX_REGISTED_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_REGISTED_NO'
      Visible = False
      Size = 15
    end
    object tbCustomerLookupBALANCE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BALANCE_AMT'
      Visible = False
    end
    object tbCustomerLookupCREDIT_LIMIT: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDIT_LIMIT'
      Visible = False
    end
    object tbCustomerLookupCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Visible = False
      Size = 4
    end
    object tbCustomerLookupMAILADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR1'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupMAILADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR2'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupMAILADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR3'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbCustomerLookupUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbCustomerLookupTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbCustomerLookupPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Visible = False
      Size = 10
    end
    object tbCustomerLookupPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Visible = False
      Size = 30
    end
    object tbCustomerLookupTH_ADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR1'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupTH_ADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR2'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupTH_ADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR3'
      Visible = False
      Size = 60
    end
    object tbCustomerLookupTH_NAME: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_NAME'
      Visible = False
      Size = 150
    end
  end
  object qryUnApproveQuote: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = qryUnApproveQuoteAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SO_QUOTATION_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 56
    Top = 64
    object qryUnApproveQuoteDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'SO_QUOTATION_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnApproveQuoteDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'SO_QUOTATION_HD.DOC_DATE'
      Required = True
    end
    object qryUnApproveQuoteREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'SO_QUOTATION_HD.REF_NO'
      Size = 15
    end
    object qryUnApproveQuoteDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'SO_QUOTATION_HD.DESCS'
      Required = True
      Size = 60
    end
    object qryUnApproveQuoteCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_QUOTATION_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryUnApproveQuoteREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'SO_QUOTATION_HD.REF_DATE'
    end
    object qryUnApproveQuoteDOC_AMT: TFloatField
      FieldName = 'DOC_AMT'
      Origin = 'SO_QUOTATION_HD.DOC_AMT'
      Required = True
    end
    object qryUnApproveQuoteSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_QUOTATION_HD.STATUS'
      Required = True
      Size = 1
    end
    object qryUnApproveQuoteVALIDITY: TDateTimeField
      FieldName = 'VALIDITY'
      Origin = 'SO_QUOTATION_HD.VALIDITY'
    end
    object qryUnApproveQuoteUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'SO_QUOTATION_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnApproveQuoteUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_QUOTATION_HD.UPDATE_DATE'
    end
    object qryUnApproveQuotePREPARE_PERSON: TIBStringField
      FieldName = 'PREPARE_PERSON'
      Origin = 'SO_QUOTATION_HD.PREPARE_PERSON'
      Size = 60
    end
    object qryUnApproveQuoteDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
      Origin = 'SO_QUOTATION_HD.DELIVERY_DATE'
    end
    object qryUnApproveQuoteREQUIRED_SPEC_SHEET: TIBStringField
      FieldName = 'REQUIRED_SPEC_SHEET'
      Origin = 'SO_QUOTATION_HD.REQUIRED_SPEC_SHEET'
      Size = 1
    end
    object qryUnApproveQuoteREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'SO_QUOTATION_HD.REMARKS'
      Size = 800
    end
    object qryUnApproveQuoteFAX_TO: TIBStringField
      FieldName = 'FAX_TO'
      Origin = 'SO_QUOTATION_HD.FAX_TO'
      Size = 60
    end
    object qryUnApproveQuoteCC_TO: TIBStringField
      FieldName = 'CC_TO'
      Origin = 'SO_QUOTATION_HD.CC_TO'
      Size = 60
    end
    object qryUnApproveQuoteNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
      Origin = 'SO_QUOTATION_HD.NO_OF_PRINT'
    end
    object qryUnApproveQuoteTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
      Origin = 'SO_QUOTATION_HD.TAX_AMT'
    end
    object qryUnApproveQuoteCURRENCY_CD: TIBStringField
      FieldName = 'CURRENCY_CD'
      Origin = 'SO_QUOTATION_HD.CURRENCY_CD'
      Required = True
      Size = 4
    end
    object qryUnApproveQuoteCURRENCY_DESCS: TIBStringField
      FieldName = 'CURRENCY_DESCS'
      Origin = 'SO_QUOTATION_HD.CURRENCY_DESCS'
      Size = 30
    end
    object qryUnApproveQuoteADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Origin = 'SO_QUOTATION_HD.ADDRESS1'
      Size = 60
    end
    object qryUnApproveQuoteADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Origin = 'SO_QUOTATION_HD.ADDRESS2'
      Size = 60
    end
    object qryUnApproveQuoteADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Origin = 'SO_QUOTATION_HD.ADDRESS3'
      Size = 60
    end
    object qryUnApproveQuoteNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SO_QUOTATION_HD.NAME'
      Size = 60
    end
    object qryUnApproveQuoteTERM_OF_PAYMENT: TSmallintField
      FieldName = 'TERM_OF_PAYMENT'
      Origin = 'SO_QUOTATION_HD.TERM_OF_PAYMENT'
    end
  end
  object tbSaleItemLookup: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SO_SALES_ITEM_HD'
    Left = 304
    Top = 88
    object tbSaleItemLookupDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Size = 60
    end
    object tbSaleItemLookupITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbSaleItemLookupREMARKS: TIBStringField
      DisplayWidth = 800
      FieldName = 'REMARKS'
      Visible = False
      Size = 800
    end
    object tbSaleItemLookupUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Visible = False
    end
    object tbSaleItemLookupSALE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'SALE_PRICE'
      Visible = False
    end
    object tbSaleItemLookupUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbSaleItemLookupCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbSaleItemLookupUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object tbSaleItemLookupUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbSaleItemLookupSTANDARD_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'STANDARD_PRICE'
      Visible = False
    end
    object tbSaleItemLookupCURRENT_ACTIVE: TIBStringField
      DisplayWidth = 1
      FieldName = 'CURRENT_ACTIVE'
      Visible = False
      Size = 1
    end
  end
  object spGetSaleComponetDetail: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_GET_SALEITEM_COMPONENTS'
    Left = 1296
    Top = 16
  end
  object tbComponentDetailLookup: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforeDelete = tbComponentDetailLookupBeforeDelete
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CUST_CODE;ITEM_CODE'
    MasterFields = 'CUST_CODE;ITEM_CODE'
    MasterSource = dsSaleQuoteDT
    TableName = 'SO_COMPONENTS_DETAIL'
    Left = 544
    Top = 88
    object tbComponentDetailLookupCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbComponentDetailLookupITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbComponentDetailLookupLINE1: TIBStringField
      FieldName = 'LINE1'
      Size = 150
    end
    object tbComponentDetailLookupLINE2: TIBStringField
      FieldName = 'LINE2'
      Size = 150
    end
    object tbComponentDetailLookupLINE3: TIBStringField
      FieldName = 'LINE3'
      Size = 150
    end
  end
  object dsSaleQuoteDT: TDataSource
    DataSet = tbSaleQuoteDT
    Left = 656
    Top = 88
  end
  object qryQuotSummary: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(base_amt) as base_amt,sum(tax_amt) as tax_amt,'
      'sum(discs_amt) as discs_amt,sum(total_amt) as total_amt'
      'from so_quotation_dt'
      'where  doc_no =:pDocNo'
      'and cust_CODE =:PCustCode')
    Left = 184
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pDocNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCustCode'
        ParamType = ptUnknown
      end>
    object qryQuotSummaryBASE_AMT: TFloatField
      FieldName = 'BASE_AMT'
    end
    object qryQuotSummaryTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object qryQuotSummaryDISCS_AMT: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object qryQuotSummaryTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
    end
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 56
    Top = 200
  end
  object dsCustomerLookup: TDataSource
    DataSet = tbCustomerLookup
    Left = 408
    Top = 24
  end
  object qryOrderSummary: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(base_amt) as base_amt,sum(tax_amt) as tax_amt,'
      'sum(discs_amt) as discs_amt,sum(total_amt) as total_amt'
      'from so_order_dt'
      'where  order_no =:pDocNo'
      'and cust_CODE =:PCustCode')
    Left = 176
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pDocNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCustCode'
        ParamType = ptUnknown
      end>
    object FloatField1: TFloatField
      FieldName = 'BASE_AMT'
    end
    object FloatField2: TFloatField
      FieldName = 'TAX_AMT'
    end
    object FloatField3: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object FloatField4: TFloatField
      FieldName = 'TOTAL_AMT'
    end
  end
  object dsSaleOrderDT: TDataSource
    DataSet = tbSaleOrderDT
    Left = 656
    Top = 24
  end
  object tbRevisionHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbRevisionHDAfterScroll
    BeforePost = tbRevisionHDBeforePost
    OnNewRecord = tbRevisionHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DOC_DATE'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'DOC_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NO_OF_REVISION'
        DataType = ftSmallint
      end
      item
        Name = 'FROM_ORDER_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'TO_ORDER_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'REVISION_BY'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DISTRIBUTE_TO'
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
        Name = 'REMARKS'
        DataType = ftString
        Size = 800
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY88'
        Fields = 'DOC_DATE;DOC_NO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKSO_ORDER_REVISION_HD'
        Fields = 'DOC_DATE;DOC_NO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'SO_ORDER_REVISION_HD'
    Left = 296
    Top = 360
    object tbRevisionHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbRevisionHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbRevisionHDNO_OF_REVISION: TSmallintField
      FieldName = 'NO_OF_REVISION'
      OnChange = tbRevisionHDNO_OF_REVISIONChange
    end
    object tbRevisionHDFROM_ORDER_DATE: TDateTimeField
      FieldName = 'FROM_ORDER_DATE'
    end
    object tbRevisionHDTO_ORDER_DATE: TDateTimeField
      FieldName = 'TO_ORDER_DATE'
    end
    object tbRevisionHDREVISION_BY: TIBStringField
      FieldName = 'REVISION_BY'
      Size = 60
    end
    object tbRevisionHDDISTRIBUTE_TO: TIBStringField
      FieldName = 'DISTRIBUTE_TO'
      Size = 60
    end
    object tbRevisionHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbRevisionHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbRevisionHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbRevisionHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object tbRevisionDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = tbRevisionDTAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ORDER_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ORDER_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'ITEM_CODE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CUST_CODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DOC_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'DOC_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LINE_NO'
        DataType = ftSmallint
      end
      item
        Name = 'UOM'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'UNIT_COST'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_AMT'
        DataType = ftFloat
      end
      item
        Name = 'NEW_ORDER_FLAG'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QTY'
        DataType = ftFloat
      end
      item
        Name = 'REMARKS'
        DataType = ftString
        Size = 800
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
        Name = 'STATUS'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY87'
        Fields = 'CUST_CODE;ORDER_NO;ORDER_DATE;ITEM_CODE;DOC_DATE;DOC_NO;LINE_NO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XIF36SO_ORDER_REVISION_DT'
        Fields = 'DOC_DATE;DOC_NO'
      end
      item
        Name = 'XPKSO_ORDER_REVISION_DT'
        Fields = 'CUST_CODE;ORDER_NO;ORDER_DATE;ITEM_CODE;DOC_DATE;DOC_NO;LINE_NO'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'DOC_NO;DOC_DATE'
    MasterFields = 'DOC_NO;DOC_DATE'
    MasterSource = dsRevisionHD
    StoreDefs = True
    TableName = 'SO_ORDER_REVISION_DT'
    Left = 416
    Top = 360
    object tbRevisionDTORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbRevisionDTORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object tbRevisionDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbRevisionDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbRevisionDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbRevisionDTUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbRevisionDTTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object tbRevisionDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
    end
    object tbRevisionDTREMARKS: TIBStringField
      DisplayWidth = 10
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbRevisionDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbRevisionDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbRevisionDTLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Visible = False
    end
    object tbRevisionDTREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Visible = False
      Size = 15
    end
    object tbRevisionDTREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Visible = False
    end
    object tbRevisionDTNEW_ORDER_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'NEW_ORDER_FLAG'
      Size = 1
    end
    object tbRevisionDTSTATUS: TIBStringField
      DisplayLabel = 'New Order'
      FieldName = 'STATUS'
      Size = 1
    end
    object tbRevisionDTName: TStringField
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = tbCustomerLookup
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'CUST_CODE'
      Lookup = True
    end
  end
  object tbRevisionSchedule: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CUST_CODE;ORDER_NO;ORDER_DATE;ITEM_CODE;LINE_NO;UOM'
    MasterFields = 'CUST_CODE;ORDER_NO;ORDER_DATE;ITEM_CODE;LINE_NO;UOM'
    MasterSource = dsRevisionDT
    TableName = 'SO_ORDER_SCH_DT'
    Left = 568
    Top = 360
    object tbRevisionScheduleCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbRevisionScheduleORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbRevisionScheduleORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbRevisionScheduleITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbRevisionScheduleLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbRevisionScheduleSCHEDULE_DATE: TDateTimeField
      FieldName = 'SCHEDULE_DATE'
    end
    object tbRevisionScheduleSCHEDULE_QTY: TFloatField
      FieldName = 'SCHEDULE_QTY'
    end
    object tbRevisionScheduleREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbRevisionScheduleUOM: TIBStringField
      FieldName = 'UOM'
      Size = 4
    end
  end
  object qryUnApproveRevision: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM  SO_ORDER_REVISION_HD'
      'WHERE STATUS ='#39'N'#39)
    Left = 64
    Top = 152
    object qryUnApproveRevisionDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'SO_ORDER_REVISION_HD.DOC_DATE'
      Required = True
    end
    object qryUnApproveRevisionDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'SO_ORDER_REVISION_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnApproveRevisionNO_OF_REVISION: TSmallintField
      FieldName = 'NO_OF_REVISION'
      Origin = 'SO_ORDER_REVISION_HD.NO_OF_REVISION'
    end
    object qryUnApproveRevisionFROM_ORDER_DATE: TDateTimeField
      FieldName = 'FROM_ORDER_DATE'
      Origin = 'SO_ORDER_REVISION_HD.FROM_ORDER_DATE'
    end
    object qryUnApproveRevisionTO_ORDER_DATE: TDateTimeField
      FieldName = 'TO_ORDER_DATE'
      Origin = 'SO_ORDER_REVISION_HD.TO_ORDER_DATE'
    end
    object qryUnApproveRevisionREVISION_BY: TIBStringField
      FieldName = 'REVISION_BY'
      Origin = 'SO_ORDER_REVISION_HD.REVISION_BY'
      Size = 60
    end
    object qryUnApproveRevisionDISTRIBUTE_TO: TIBStringField
      FieldName = 'DISTRIBUTE_TO'
      Origin = 'SO_ORDER_REVISION_HD.DISTRIBUTE_TO'
      Size = 60
    end
    object qryUnApproveRevisionUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'SO_ORDER_REVISION_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnApproveRevisionUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_ORDER_REVISION_HD.UPDATE_DATE'
    end
    object qryUnApproveRevisionREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'SO_ORDER_REVISION_HD.REMARKS'
      Size = 800
    end
    object qryUnApproveRevisionSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_ORDER_REVISION_HD.STATUS'
      Size = 1
    end
  end
  object qryApprovedOrder: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM  SO_ORDER_HD'
      'WHERE STATUS ='#39'A'#39)
    Left = 184
    Top = 152
    object qryApprovedOrderCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_ORDER_HD.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryApprovedOrderORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryApprovedOrderORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryApprovedOrderREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'SO_ORDER_HD.REF_NO'
      Size = 15
    end
    object qryApprovedOrderREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'SO_ORDER_HD.REF_DATE'
    end
    object qryApprovedOrderUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'SO_ORDER_HD.UPDATE_USER'
      Size = 10
    end
    object qryApprovedOrderUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_ORDER_HD.UPDATE_DATE'
    end
    object qryApprovedOrderSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_ORDER_HD.STATUS'
      Required = True
      Size = 1
    end
    object qryApprovedOrderORDER_AMT: TFloatField
      FieldName = 'ORDER_AMT'
      Origin = 'SO_ORDER_HD.ORDER_AMT'
      Required = True
    end
    object qryApprovedOrderDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'SO_ORDER_HD.DESCS'
      Size = 60
    end
    object qryApprovedOrderSCHEDULE_DATE: TDateTimeField
      FieldName = 'SCHEDULE_DATE'
      Origin = 'SO_ORDER_HD.SCHEDULE_DATE'
    end
    object qryApprovedOrderREQUIRED_SPEC_SHEET: TIBStringField
      FieldName = 'REQUIRED_SPEC_SHEET'
      Origin = 'SO_ORDER_HD.REQUIRED_SPEC_SHEET'
      Size = 1
    end
    object qryApprovedOrderREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Origin = 'SO_ORDER_HD.REMARKS'
      Size = 1500
    end
    object qryApprovedOrderFAX_TO: TIBStringField
      FieldName = 'FAX_TO'
      Origin = 'SO_ORDER_HD.FAX_TO'
      Size = 60
    end
    object qryApprovedOrderCC_TO: TIBStringField
      FieldName = 'CC_TO'
      Origin = 'SO_ORDER_HD.CC_TO'
      Size = 60
    end
    object qryApprovedOrderNEW_ORDER_FLAG: TIBStringField
      FieldName = 'NEW_ORDER_FLAG'
      Origin = 'SO_ORDER_HD.NEW_ORDER_FLAG'
      Size = 1
    end
    object qryApprovedOrderNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
      Origin = 'SO_ORDER_HD.NO_OF_PRINT'
    end
    object qryApprovedOrderVALIDITY: TDateTimeField
      FieldName = 'VALIDITY'
      Origin = 'SO_ORDER_HD.VALIDITY'
    end
    object qryApprovedOrderTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
      Origin = 'SO_ORDER_HD.TAX_AMT'
    end
    object qryApprovedOrderCURRENCY_CD: TIBStringField
      FieldName = 'CURRENCY_CD'
      Origin = 'SO_ORDER_HD.CURRENCY_CD'
      Required = True
      Size = 4
    end
    object qryApprovedOrderNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'SO_ORDER_HD.NAME'
      Size = 60
    end
    object qryApprovedOrderADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Origin = 'SO_ORDER_HD.ADDRESS1'
      Size = 60
    end
    object qryApprovedOrderADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Origin = 'SO_ORDER_HD.ADDRESS2'
      Size = 60
    end
    object qryApprovedOrderADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Origin = 'SO_ORDER_HD.ADDRESS3'
      Size = 60
    end
    object qryApprovedOrderCURRENCY_DESCS: TIBStringField
      FieldName = 'CURRENCY_DESCS'
      Origin = 'SO_ORDER_HD.CURRENCY_DESCS'
      Size = 30
    end
    object qryApprovedOrderSTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Origin = 'SO_ORDER_HD.STOCK_USAGED_FLAG'
      Size = 1
    end
    object qryApprovedOrderTERM_OF_PAYMENT: TSmallintField
      FieldName = 'TERM_OF_PAYMENT'
      Origin = 'SO_ORDER_HD.TERM_OF_PAYMENT'
    end
  end
  object spCleanUpOrderRevision: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_CLEAN_ORDERREVISION'
    Left = 1296
    Top = 152
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'ADATE'
        ParamType = ptInput
      end>
  end
  object qryGetRevisionInfo: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select max(no_of_Revision) as Revision_No, max(revision_by) as r' +
        'evision_by,'
      'max(distribute_to) as distribute_to from so_order_revision_hd'
      'where no_of_revision = ('
      'select max(no_of_Revision)'
      
        'from so_order_revision_hd where extract(year from doc_date) = ex' +
        'tract(year from current_date))')
    Left = 184
    Top = 200
    object qryGetRevisionInfoREVISION_NO: TSmallintField
      FieldName = 'REVISION_NO'
    end
    object qryGetRevisionInfoREVISION_BY: TIBStringField
      FieldName = 'REVISION_BY'
      Size = 60
    end
    object qryGetRevisionInfoDISTRIBUTE_TO: TIBStringField
      FieldName = 'DISTRIBUTE_TO'
      Size = 60
    end
  end
  object dsRevisionHD: TDataSource
    DataSet = tbRevisionHD
    Left = 336
    Top = 360
  end
  object spGenRevisionDT: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_SO_GEN_REVISION_DT  '
    Left = 1288
    Top = 80
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
        DataType = ftDateTime
        Name = 'AFROM_DATE'
        ParamType = ptInput
      end>
  end
  object dsRevisionDT: TDataSource
    DataSet = tbRevisionDT
    Left = 488
    Top = 360
  end
  object dsUnApproveOrder: TDataSource
    DataSet = qryUnApproveOrder
    Left = 184
    Top = 8
  end
  object tbSaleOrderDTView: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'ORDER_NO;ORDER_DATE;CUST_CODE'
    MasterFields = 'ORDER_NO;ORDER_DATE;CUST_CODE'
    MasterSource = dsUnApproveOrder
    TableName = 'SO_ORDER_DT'
    Left = 192
    Top = 72
    object tbSaleOrderDTViewORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbSaleOrderDTViewORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbSaleOrderDTViewITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbSaleOrderDTViewCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbSaleOrderDTViewLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbSaleOrderDTViewUOM: TIBStringField
      FieldName = 'UOM'
      Size = 4
    end
    object tbSaleOrderDTViewITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbSaleOrderDTViewUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
    end
    object tbSaleOrderDTViewTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
    end
    object tbSaleOrderDTViewREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbSaleOrderDTViewDISCS_AMT: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object tbSaleOrderDTViewTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbSaleOrderDTViewBASE_AMT: TFloatField
      FieldName = 'BASE_AMT'
    end
    object tbSaleOrderDTViewTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbSaleOrderDTViewDISCS_CD: TIBStringField
      FieldName = 'DISCS_CD'
      Size = 2
    end
    object tbSaleOrderDTViewQTY: TFloatField
      FieldName = 'QTY'
    end
    object tbSaleOrderDTViewTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object tbSaleOrderDTViewSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbSaleOrderDTViewDET_QTY: TFloatField
      FieldName = 'DET_QTY'
    end
    object tbSaleOrderDTViewDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbSaleOrderDTViewURGENT_FLAG: TIBStringField
      FieldName = 'URGENT_FLAG'
      Size = 1
    end
    object tbSaleOrderDTViewMARK_UP: TSmallintField
      FieldName = 'MARK_UP'
    end
    object tbSaleOrderDTViewSTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Size = 1
    end
    object tbSaleOrderDTViewSTOCK_USAGED_QTY: TFloatField
      FieldName = 'STOCK_USAGED_QTY'
    end
  end
  object tbSaleQuoteDTView: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;CUST_CODE'
    MasterFields = 'DOC_NO;DOC_DATE;CUST_CODE'
    MasterSource = dsUnapproveQuote
    TableName = 'SO_QUOTATION_DT'
    Left = 192
    Top = 112
  end
  object dsUnapproveQuote: TDataSource
    DataSet = qryUnApproveQuote
    Left = 144
    Top = 64
  end
  object tbUnapproveOrderDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'ORDER_NO;CUST_CODE'
    MasterFields = 'ORDER_NO;CUST_CODE'
    MasterSource = dsApprovedOrder
    TableName = 'SO_ORDER_DT'
    Left = 424
    Top = 152
    object tbUnapproveOrderDTORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbUnapproveOrderDTORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbUnapproveOrderDTITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbUnapproveOrderDTCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbUnapproveOrderDTLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbUnapproveOrderDTUOM: TIBStringField
      FieldName = 'UOM'
      Size = 4
    end
    object tbUnapproveOrderDTITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbUnapproveOrderDTUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
    end
    object tbUnapproveOrderDTTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
    end
    object tbUnapproveOrderDTREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbUnapproveOrderDTDISCS_AMT: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object tbUnapproveOrderDTTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbUnapproveOrderDTBASE_AMT: TFloatField
      FieldName = 'BASE_AMT'
    end
    object tbUnapproveOrderDTTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbUnapproveOrderDTDISCS_CD: TIBStringField
      FieldName = 'DISCS_CD'
      Size = 2
    end
    object tbUnapproveOrderDTQTY: TFloatField
      FieldName = 'QTY'
    end
    object tbUnapproveOrderDTTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object tbUnapproveOrderDTSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbUnapproveOrderDTDET_QTY: TFloatField
      FieldName = 'DET_QTY'
    end
    object tbUnapproveOrderDTDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbUnapproveOrderDTURGENT_FLAG: TIBStringField
      FieldName = 'URGENT_FLAG'
      Size = 1
    end
    object tbUnapproveOrderDTMARK_UP: TSmallintField
      FieldName = 'MARK_UP'
    end
    object tbUnapproveOrderDTSTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Size = 1
    end
    object tbUnapproveOrderDTSTOCK_USAGED_QTY: TFloatField
      FieldName = 'STOCK_USAGED_QTY'
    end
  end
  object dsApprovedOrder: TDataSource
    DataSet = qryApprovedOrder
    Left = 288
    Top = 160
  end
  object tbDeliveryHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbDeliveryHDAfterScroll
    BeforePost = tbDeliveryHDBeforePost
    OnNewRecord = tbDeliveryHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SO_DET_HD'
    Left = 784
    Top = 24
    object tbDeliveryHDDELIVERY_NO: TIBStringField
      FieldName = 'DELIVERY_NO'
      Size = 15
    end
    object tbDeliveryHDDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbDeliveryHDCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbDeliveryHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbDeliveryHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbDeliveryHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbDeliveryHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbDeliveryHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbDeliveryHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbDeliveryHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbDeliveryHDINVOICE_MATCHED: TIBStringField
      FieldName = 'INVOICE_MATCHED'
      Size = 1
    end
    object tbDeliveryHDNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'NAME'
      LookupDataSet = tbCustomerLookup
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'CUST_CODE'
      Size = 60
      Lookup = True
    end
  end
  object tbDeliveryDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE;BUNDLE_NO'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE'
    MasterSource = dsDeliveryHD
    TableName = 'SO_DET_DT'
    Left = 784
    Top = 96
    object tbDeliveryDTBUNDLE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'BUNDLE_NO'
    end
    object tbDeliveryDTORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbDeliveryDTORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object tbDeliveryDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbDeliveryDTDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Size = 60
    end
    object tbDeliveryDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbDeliveryDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Size = 10
    end
    object tbDeliveryDTREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbDeliveryDTREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object tbDeliveryDTDET_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'DET_QTY'
    end
    object tbDeliveryDTUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbDeliveryDTTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object tbDeliveryDTDELIVERY_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Visible = False
      Size = 15
    end
    object tbDeliveryDTDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Visible = False
    end
    object tbDeliveryDTCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object tbDeliveryDTTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Visible = False
    end
    object tbDeliveryDTTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbDeliveryDTORDER_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
      Visible = False
    end
    object tbDeliveryDTONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Visible = False
    end
    object tbDeliveryDTMARK_UP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
      Visible = False
    end
    object tbDeliveryDTMARK_UP_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'MARK_UP_QTY'
      Visible = False
    end
  end
  object tbDeliveryDTLink: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbDeliveryDTLinkAfterDelete
    AfterPost = tbDeliveryDTLinkAfterPost
    BeforeDelete = tbDeliveryDTLinkBeforeDelete
    BeforePost = tbDeliveryDTLinkBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 
      'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;MELT_NO;REF_NO;REF_DATE;BUNDL' +
      'E_NO'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;MELT_NO;REF_NO;REF_DATE'
    MasterSource = dsDeliveryMelt
    TableName = 'SO_DET_DT_LINK'
    Left = 976
    Top = 160
    object tbDeliveryDTLinkDELIVERY_NO: TIBStringField
      FieldName = 'DELIVERY_NO'
      Size = 15
    end
    object tbDeliveryDTLinkDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbDeliveryDTLinkBATCH_NO: TIntegerField
      FieldName = 'BATCH_NO'
    end
    object tbDeliveryDTLinkMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Size = 10
    end
    object tbDeliveryDTLinkREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbDeliveryDTLinkREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbDeliveryDTLinkBUNDLE_NO: TSmallintField
      FieldName = 'BUNDLE_NO'
    end
    object tbDeliveryDTLinkQTY: TFloatField
      FieldName = 'QTY'
    end
  end
  object dsDeliveryHD: TDataSource
    DataSet = tbDeliveryHD
    Left = 856
    Top = 24
  end
  object qryUnapproveDelivery: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT  H.delivery_no,H.delivery_date,H.REF_NO,H.REF_DATE, H.des' +
        'cs,DB.name,h.cust_code,H.status'
      'FROM SO_DET_HD H , AR_DEBTOR dB'
      'WHERE H.cust_code = DB.debtor_acct'
      'AND H.STATUS ='#39'N'#39
      'ORDER BY H.DELIVERY_DATE')
    Left = 952
    Top = 32
    object qryUnapproveDeliveryDELIVERY_NO: TIBStringField
      FieldName = 'DELIVERY_NO'
      Origin = 'SO_DET_HD.DELIVERY_NO'
      Required = True
      Size = 15
    end
    object qryUnapproveDeliveryDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
      Origin = 'SO_DET_HD.DELIVERY_DATE'
      Required = True
    end
    object qryUnapproveDeliveryREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'SO_DET_HD.REF_NO'
      Size = 15
    end
    object qryUnapproveDeliveryREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'SO_DET_HD.REF_DATE'
    end
    object qryUnapproveDeliveryDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'SO_DET_HD.DESCS'
      Size = 60
    end
    object qryUnapproveDeliveryNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'AR_DEBTOR.NAME'
      Size = 60
    end
    object qryUnapproveDeliverySTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'SO_DET_HD.STATUS'
      Size = 1
    end
    object qryUnapproveDeliveryCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Origin = 'SO_DET_HD.CUST_CODE'
      Required = True
      Size = 10
    end
  end
  object tbDeliveryDTMelt: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbDeliveryDTMeltAfterDelete
    BeforeDelete = tbDeliveryDTMeltBeforeDelete
    OnCalcFields = tbDeliveryDTMeltCalcFields
    OnNewRecord = tbDeliveryDTMeltNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;START_BUNDLE'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;BATCH_NO'
    MasterSource = dsDeliveryDTOrder
    TableName = 'SO_DET_DT_MELT'
    Left = 784
    Top = 160
    object tbDeliveryDTMeltMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      OnChange = tbDeliveryDTMeltMELT_NOChange
      Size = 10
    end
    object tbDeliveryDTMeltREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbDeliveryDTMeltREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object tbDeliveryDTMeltSTART_BUNDLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'START_BUNDLE'
    end
    object tbDeliveryDTMeltTOTAL_BUNDLE: TSmallintField
      CustomConstraint = '>=0'
      ConstraintErrorMessage = 'Value can not be nagative'
      DisplayWidth = 10
      FieldName = 'TOTAL_BUNDLE'
      DisplayFormat = '#,###.00'
    end
    object tbDeliveryDTMeltONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
    end
    object tbDeliveryDTMeltTOTAL_CHARGED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_CHARGED_QTY'
    end
    object tbDeliveryDTMeltPostOnhand: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PostOnhand'
      Visible = False
      Calculated = True
    end
    object tbDeliveryDTMeltDELIVERY_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Visible = False
      Size = 15
    end
    object tbDeliveryDTMeltDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Visible = False
    end
    object tbDeliveryDTMeltBATCH_NO: TIntegerField
      DisplayWidth = 10
      FieldName = 'BATCH_NO'
      Visible = False
    end
  end
  object tbDeliveryDTOrder: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbDeliveryDTOrderAfterScroll
    BeforeDelete = tbDeliveryDTOrderBeforeDelete
    BeforePost = tbDeliveryDTOrderBeforePost
    OnCalcFields = tbDeliveryDTOrderCalcFields
    OnNewRecord = tbDeliveryDTOrderNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE'
    MasterSource = dsDeliveryHD
    TableName = 'SO_DET_DT_ORDER'
    Left = 960
    Top = 96
    object tbDeliveryDTOrderORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      OnChange = tbDeliveryDTOrderORDER_NOChange
      Size = 15
    end
    object tbDeliveryDTOrderORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object tbDeliveryDTOrderITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      OnChange = tbDeliveryDTOrderITEM_CODEChange
      Size = 15
    end
    object tbDeliveryDTOrderUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object tbDeliveryDTOrderBATCH_NO: TIntegerField
      DisplayWidth = 10
      FieldName = 'BATCH_NO'
    end
    object tbDeliveryDTOrderORDER_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
    end
    object tbDeliveryDTOrderMARKUP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARKUP'
    end
    object tbDeliveryDTOrderDET_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'DET_QTY'
    end
    object tbDeliveryDTOrderUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbDeliveryDTOrdermarkupqty: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'markupqty'
      Calculated = True
    end
    object tbDeliveryDTOrderDELIVERY_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Visible = False
      Size = 15
    end
    object tbDeliveryDTOrderDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Visible = False
    end
    object tbDeliveryDTOrderCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
  end
  object dsDeliveryDT: TDataSource
    Left = 856
    Top = 96
  end
  object dsDeliveryDTOrder: TDataSource
    DataSet = tbDeliveryDTOrder
    Left = 1064
    Top = 88
  end
  object dsDeliveryMelt: TDataSource
    DataSet = tbDeliveryDTMelt
    Left = 840
    Top = 144
  end
  object qryDOActiveOrderItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SO_ORDER_DT    , SO_ORDER_HD'
      'WHERE SO_ORDER_HD.STATUS ='#39'A'#39
      'AND SO_ORDER_HD.ORDER_NO = SO_ORDER_DT.ORDER_NO'
      'AND SO_ORDER_HD.ORDER_DATE = SO_ORDER_DT.ORDER_DATE'
      'AND SO_ORDER_HD.CUST_CODE =SO_ORDER_DT.CUST_CODE'
      'and SO_ORDER_HD.cust_code =:acustcode')
    Left = 808
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'acustcode'
        ParamType = ptUnknown
      end>
    object qryDOActiveOrderItemORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_DT.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryDOActiveOrderItemORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_DT.ORDER_DATE'
      Required = True
    end
    object qryDOActiveOrderItemITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryDOActiveOrderItemITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'SO_ORDER_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryDOActiveOrderItemUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryDOActiveOrderItemTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'SO_ORDER_DT.TOTAL_AMT'
      Required = True
    end
    object qryDOActiveOrderItemQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'SO_ORDER_DT.QTY'
      Required = True
    end
    object qryDOActiveOrderItemDET_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'DET_QTY'
      Origin = 'SO_ORDER_DT.DET_QTY'
      Required = True
    end
    object qryDOActiveOrderItemMARK_UP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
      Origin = 'SO_ORDER_DT.MARK_UP'
      Required = True
    end
    object qryDOActiveOrderItemCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_ORDER_DT.CUST_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryDOActiveOrderItemLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Origin = 'SO_ORDER_DT.LINE_NO'
      Required = True
      Visible = False
    end
    object qryDOActiveOrderItemUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Origin = 'SO_ORDER_DT.UOM'
      Required = True
      Visible = False
      Size = 4
    end
    object qryDOActiveOrderItemREMARKS: TIBStringField
      DisplayWidth = 800
      FieldName = 'REMARKS'
      Origin = 'SO_ORDER_DT.REMARKS'
      Visible = False
      Size = 800
    end
    object qryDOActiveOrderItemDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Origin = 'SO_ORDER_DT.DISCS_AMT'
      Required = True
      Visible = False
    end
    object qryDOActiveOrderItemTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Origin = 'SO_ORDER_DT.TAX_AMT'
      Required = True
      Visible = False
    end
    object qryDOActiveOrderItemBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      Origin = 'SO_ORDER_DT.BASE_AMT'
      Required = True
      Visible = False
    end
    object qryDOActiveOrderItemTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'SO_ORDER_DT.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qryDOActiveOrderItemDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Origin = 'SO_ORDER_DT.DISCS_CD'
      Visible = False
      Size = 2
    end
    object qryDOActiveOrderItemTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      Origin = 'SO_ORDER_DT.TAX_RATE'
      Required = True
      Visible = False
    end
    object qryDOActiveOrderItemSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'SO_ORDER_DT.STATUS'
      Required = True
      Visible = False
      Size = 1
    end
    object qryDOActiveOrderItemDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Origin = 'SO_ORDER_DT.DELIVERY_DATE'
      Visible = False
    end
    object qryDOActiveOrderItemURGENT_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'URGENT_FLAG'
      Origin = 'SO_ORDER_DT.URGENT_FLAG'
      Visible = False
      Size = 1
    end
    object qryDOActiveOrderItemSTOCK_USAGED_FLAG: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_USAGED_FLAG'
      Origin = 'SO_ORDER_DT.STOCK_USAGED_FLAG'
      Visible = False
      Size = 1
    end
    object qryDOActiveOrderItemSTOCK_USAGED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'STOCK_USAGED_QTY'
      Origin = 'SO_ORDER_DT.STOCK_USAGED_QTY'
      Visible = False
    end
  end
  object GEN_DO_BATCH_NO: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  GEN_ID (gen_do_batch_no ,1) FROM RDB$DATABASE;')
    Left = 808
    Top = 296
  end
  object qryDOStock: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM so_sales_item_stock'
      'where (onhand_qty >0)'
      'and '
      '(item_code =:aItemCode)')
    Left = 960
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'aItemCode'
        ParamType = ptUnknown
        Value = ''
      end>
    object qryDOStockMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'SO_SALES_ITEM_STOCK.MELT_NO'
      Required = True
      Size = 10
    end
    object qryDOStockITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_SALES_ITEM_STOCK.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryDOStockUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'SO_SALES_ITEM_STOCK.UOM_CD'
      Required = True
      Size = 4
    end
    object qryDOStockONHAND_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.ONHAND_QTY'
    end
    object qryDOStockRESERVED_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.RESERVED_QTY'
    end
    object qryDOStockCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_SALES_ITEM_STOCK.CUST_CODE'
      Required = True
      Size = 10
    end
    object qryDOStockDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'SO_SALES_ITEM_STOCK.DOC_NO'
      Required = True
      Size = 15
    end
    object qryDOStockDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'SO_SALES_ITEM_STOCK.DOC_DATE'
      Required = True
    end
    object qryDOStockUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_SALES_ITEM_STOCK.UNIT_COST'
    end
    object qryDOStockTOTAL_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'SO_SALES_ITEM_STOCK.TOTAL_COST'
    end
    object qryDOStockBUNDLE_QTY: TSmallintField
      DisplayWidth = 10
      FieldName = 'BUNDLE_QTY'
      Origin = 'SO_SALES_ITEM_STOCK.BUNDLE_QTY'
      Required = True
    end
  end
  object tbDeliveryDTLinkClone: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 
      'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;MELT_NO;REF_NO;REF_DATE;BUNDL' +
      'E_NO'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;MELT_NO;REF_NO;REF_DATE'
    MasterSource = dsDeliveryMelt
    TableName = 'SO_DET_DT_LINK'
    Left = 1104
    Top = 168
    object IBStringField1: TIBStringField
      FieldName = 'DELIVERY_NO'
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'BATCH_NO'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MELT_NO'
      Size = 10
    end
    object IBStringField3: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object SmallintField1: TSmallintField
      FieldName = 'BUNDLE_NO'
    end
    object FloatField5: TFloatField
      FieldName = 'QTY'
    end
  end
  object tbDeliveryDTClone: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE;CUST_CODE'
    MasterSource = dsDeliveryHD
    TableName = 'SO_DET_DT'
    Left = 1064
    Top = 16
    object SmallintField2: TSmallintField
      DisplayWidth = 10
      FieldName = 'BUNDLE_NO'
    end
    object IBStringField4: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object IBStringField5: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object IBStringField6: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Size = 60
    end
    object IBStringField7: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Size = 4
    end
    object IBStringField8: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Size = 10
    end
    object IBStringField9: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object DateTimeField4: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object FloatField6: TFloatField
      DisplayWidth = 10
      FieldName = 'DET_QTY'
    end
    object FloatField7: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object FloatField8: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object IBStringField10: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Visible = False
      Size = 15
    end
    object DateTimeField5: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Visible = False
    end
    object IBStringField11: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Visible = False
      Size = 10
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Visible = False
    end
    object IBStringField12: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object FloatField10: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
      Visible = False
    end
    object FloatField11: TFloatField
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Visible = False
    end
    object SmallintField3: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
      Visible = False
    end
    object FloatField12: TFloatField
      DisplayWidth = 10
      FieldName = 'MARK_UP_QTY'
      Visible = False
    end
  end
  object tbDeliveryDTLinkAll: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DELIVERY_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DELIVERY_DATE'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'BATCH_NO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MELT_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'REF_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REF_DATE'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'BUNDLE_NO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'QTY'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_SO_DET_DT_LINK'
        Fields = 
          'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;MELT_NO;REF_NO;REF_DATE;BUNDL' +
          'E_NO'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'DELIVERY_NO;DELIVERY_DATE;BATCH_NO;BUNDLE_NO'
    MasterFields = 'DELIVERY_NO;DELIVERY_DATE'
    MasterSource = dsDeliveryMelt
    StoreDefs = True
    TableName = 'SO_DET_DT_LINK'
    Left = 1128
    Top = 264
    object IBStringField13: TIBStringField
      FieldName = 'DELIVERY_NO'
      Size = 15
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object IntegerField2: TIntegerField
      FieldName = 'BATCH_NO'
    end
    object IBStringField14: TIBStringField
      FieldName = 'MELT_NO'
      Size = 10
    end
    object IBStringField15: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object SmallintField4: TSmallintField
      FieldName = 'BUNDLE_NO'
    end
    object FloatField13: TFloatField
      FieldName = 'QTY'
    end
  end
  object qryDeliveryDTMeltSummary: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select max(delivery_no) as delivery_no,max(batch_No) as batch_no' +
        ',sum(total_charged_qty) as total_charged_qty ,sum(total_bundle) ' +
        'as total_bundle'
      'from so_det_dt_melt'
      'where delivery_no =:pDeliveryNo')
    Left = 824
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pDeliveryNo'
        ParamType = ptUnknown
      end>
    object qryDeliveryDTMeltSummaryDELIVERY_NO: TIBStringField
      FieldName = 'DELIVERY_NO'
      Size = 15
    end
    object qryDeliveryDTMeltSummaryBATCH_NO: TIntegerField
      FieldName = 'BATCH_NO'
    end
    object qryDeliveryDTMeltSummaryTOTAL_CHARGED_QTY: TFloatField
      FieldName = 'TOTAL_CHARGED_QTY'
    end
    object qryDeliveryDTMeltSummaryTOTAL_BUNDLE: TLargeintField
      FieldName = 'TOTAL_BUNDLE'
    end
  end
  object spPostDelivery: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_POST_DET'
    Left = 1408
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'VDOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VDOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VCUST_CODE'
        ParamType = ptInput
      end>
  end
end
