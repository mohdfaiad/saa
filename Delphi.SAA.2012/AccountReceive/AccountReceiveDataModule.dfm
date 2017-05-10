inherited AccountReceiveDM: TAccountReceiveDM
  OldCreateOrder = True
  Left = 502
  Top = 312
  Height = 510
  Width = 812
  object tbInvoiceHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterClose = tbInvoiceHDAfterClose
    AfterPost = tbInvoiceHDAfterPost
    BeforePost = tbInvoiceHDBeforePost
    OnNewRecord = tbInvoiceHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DEBTOR_ACCT'
        DataType = ftString
        Size = 10
      end
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
        Name = 'TAX_INV_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TAX_INV_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'DEBT_NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'REMARK'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RECEIPT_STATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DUE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'CREDIT_TERM'
        DataType = ftSmallint
      end
      item
        Name = 'NO_OF_PRINT'
        DataType = ftSmallint
      end
      item
        Name = 'UPDATE_USER'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UPDATE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'DESCS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BATHTEXT'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CURRENCY_RATE'
        DataType = ftFloat
      end>
    Filter = 'STATUS<>'#39'X'#39
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY11'
        Fields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKAR_INVOICE_HD'
        Fields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'AR_INVOICE_HD'
    Left = 48
    Top = 24
    object tbInvoiceHDDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      OnChange = tbInvoiceHDDEBTOR_ACCTChange
      Size = 10
    end
    object tbInvoiceHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbInvoiceHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbInvoiceHDTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      OnChange = tbInvoiceHDTRX_TYPEChange
      Size = 2
    end
    object tbInvoiceHDTAX_INV_NO: TIBStringField
      FieldName = 'TAX_INV_NO'
      Size = 15
    end
    object tbInvoiceHDTAX_INV_DATE: TDateTimeField
      FieldName = 'TAX_INV_DATE'
    end
    object tbInvoiceHDDEBT_NAME: TIBStringField
      FieldName = 'DEBT_NAME'
      Size = 60
    end
    object tbInvoiceHDREMARK: TIBStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object tbInvoiceHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbInvoiceHDRECEIPT_STATUS: TIBStringField
      FieldName = 'RECEIPT_STATUS'
      Size = 1
    end
    object tbInvoiceHDDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object tbInvoiceHDCREDIT_TERM: TSmallintField
      FieldName = 'CREDIT_TERM'
    end
    object tbInvoiceHDNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
    end
    object tbInvoiceHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 30
    end
    object tbInvoiceHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbInvoiceHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbInvoiceHDBATHTEXT: TStringField
      DisplayWidth = 255
      FieldName = 'BATHTEXT'
      Size = 255
    end
    object tbInvoiceHDDebtorName: TStringField
      FieldKind = fkLookup
      FieldName = 'DebtorName'
      LookupDataSet = qryDebtor
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'DEBTOR_ACCT'
      Lookup = True
    end
    object tbInvoiceHDCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbInvoiceHDCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object tbInvoiceHDREQUIRE_REFERENCE: TStringField
      DisplayWidth = 1
      FieldName = 'REQUIRE_REFERENCE'
      Size = 1
    end
  end
  object tbInvoiceDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbInvoiceDTAfterPost
    AfterScroll = tbInvoiceDTAfterScroll
    BeforePost = tbInvoiceDTBeforePost
    OnCalcFields = tbInvoiceDTCalcFields
    OnNewRecord = tbInvoiceDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DEBTOR_ACCT'
        DataType = ftString
        Size = 10
      end
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
        Name = 'DESCS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TAX_AMT'
        DataType = ftFloat
      end
      item
        Name = 'DOC_AMT'
        DataType = ftFloat
      end
      item
        Name = 'BASE_AMT'
        DataType = ftFloat
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
        Name = 'QTY'
        DataType = ftFloat
      end
      item
        Name = 'UNIT_COST'
        DataType = ftFloat
      end
      item
        Name = 'UNIT_DESCS'
        DataType = ftString
        Size = 45
      end
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
        Name = 'TAX_RATE'
        DataType = ftFloat
      end
      item
        Name = 'PURCHASE_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PURCHASE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'DELIVERY_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DELIVERY_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'TH_BAHT'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'UPDATE_USER'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UPDATE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'LINE_NO'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'PK_AR_INVOICE_DT'
        Fields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE;LINE_NO'
        Options = [ixUnique]
      end
      item
        Name = 'AR_INVOICE_DT_IDX1'
        Fields = 'DOC_NO;DOC_DATE;TRX_TYPE;LINE_NO;ORDER_NO;DELIVERY_NO'
      end>
    IndexFieldNames = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
    MasterFields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
    MasterSource = dsInvoiceHD
    StoreDefs = True
    TableName = 'AR_INVOICE_DT'
    Left = 48
    Top = 72
    object tbInvoiceDTLINE_NO: TSmallintField
      DisplayLabel = '#No'
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbInvoiceDTDELIVERY_NO: TIBStringField
      DisplayLabel = 'DELIVERY NO'
      DisplayWidth = 13
      FieldName = 'DELIVERY_NO'
      OnChange = tbInvoiceDTDELIVERY_NOChange
      Size = 15
    end
    object tbInvoiceDTDELIVERY_DATE: TDateTimeField
      DisplayLabel = 'DELIVERY DATE'
      DisplayWidth = 10
      FieldName = 'DELIVERY_DATE'
    end
    object tbInvoiceDTPURCHASE_NO: TIBStringField
      DisplayLabel = 'PURCHASE NO'
      DisplayWidth = 13
      FieldName = 'PURCHASE_NO'
      Required = True
      Size = 15
    end
    object tbInvoiceDTPURCHASE_DATE: TDateTimeField
      DisplayLabel = 'PURCHASE DATE'
      DisplayWidth = 14
      FieldName = 'PURCHASE_DATE'
      Required = True
    end
    object tbInvoiceDTORDER_NO: TIBStringField
      DisplayLabel = 'ORDER NO'
      DisplayWidth = 11
      FieldName = 'ORDER_NO'
      Required = True
      OnChange = tbInvoiceDTORDER_NOChange
      Size = 15
    end
    object tbInvoiceDTORDER_DATE: TDateTimeField
      DisplayLabel = 'ORDER DATE'
      DisplayWidth = 10
      FieldName = 'ORDER_DATE'
      Required = True
    end
    object tbInvoiceDTITEM_CODE: TIBStringField
      DisplayLabel = 'Alloy'
      DisplayWidth = 4
      FieldName = 'ITEM_CODE'
      Required = True
      Size = 15
    end
    object tbInvoiceDTITEM_DESCS: TIBStringField
      DisplayLabel = 'Alloy Spec.'
      DisplayWidth = 15
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbInvoiceDTDESCS: TIBStringField
      DisplayLabel = 'Remark'
      DisplayWidth = 18
      FieldName = 'DESCS'
      Size = 60
    end
    object tbInvoiceDTQTY: TFloatField
      DisplayLabel = 'Deliverd Qty'
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = tbInvoiceDTQTYChange
    end
    object tbInvoiceDTUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      OnChange = tbInvoiceDTQTYChange
    end
    object tbInvoiceDTBASE_AMT: TFloatField
      DisplayLabel = 'BASE AMT'
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      OnChange = tbInvoiceDTBASE_AMTChange
    end
    object tbInvoiceDTTAX_RATE: TFloatField
      DisplayLabel = 'TAX RATE'
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      OnChange = tbInvoiceDTTAX_RATEChange
    end
    object tbInvoiceDTTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      OnChange = tbInvoiceDTTAX_AMTChange
    end
    object tbInvoiceDTDOC_AMT: TFloatField
      DisplayLabel = 'DOC AMT'
      DisplayWidth = 15
      FieldName = 'DOC_AMT'
    end
    object tbInvoiceDTUNIT_DESCS: TIBStringField
      DisplayWidth = 45
      FieldName = 'UNIT_DESCS'
      Visible = False
      Size = 45
    end
    object tbInvoiceDTDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Required = True
      Visible = False
      Size = 10
    end
    object tbInvoiceDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object tbInvoiceDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Required = True
      Visible = False
    end
    object tbInvoiceDTTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Required = True
      Visible = False
      Size = 2
    end
    object tbInvoiceDTTH_BAHT: TIBStringField
      DisplayWidth = 500
      FieldName = 'TH_BAHT'
      Visible = False
      Size = 500
    end
    object tbInvoiceDTUPDATE_USER: TIBStringField
      DisplayWidth = 30
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 30
    end
    object tbInvoiceDTUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
  end
  object dsInvoiceHD: TDataSource
    DataSet = tbInvoiceHD
    Left = 144
    Top = 16
  end
  object dsInvoiceDT: TDataSource
    DataSet = tbInvoiceDT
    Left = 144
    Top = 64
  end
  object qryUnmatchedDeliveryOrder: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = qryUnmatchedDeliveryOrderAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM SO_DET_HD'
      'WHERE INVOICE_MATCHED='#39'N'#39
      'and cust_code =:PCUST_CODE')
    Left = 344
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCUST_CODE'
        ParamType = ptUnknown
      end>
    object qryUnmatchedDeliveryOrderDELIVERY_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Origin = 'SO_DET_HD.DELIVERY_NO'
      Required = True
      Size = 15
    end
    object qryUnmatchedDeliveryOrderDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Origin = 'SO_DET_HD.DELIVERY_DATE'
      Required = True
    end
    object qryUnmatchedDeliveryOrderCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Origin = 'SO_DET_HD.CUST_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryUnmatchedDeliveryOrderREMARKS: TIBStringField
      DisplayWidth = 800
      FieldName = 'REMARKS'
      Origin = 'SO_DET_HD.REMARKS'
      Visible = False
      Size = 800
    end
    object qryUnmatchedDeliveryOrderUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'SO_DET_HD.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryUnmatchedDeliveryOrderUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'SO_DET_HD.UPDATE_DATE'
      Visible = False
    end
    object qryUnmatchedDeliveryOrderSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'SO_DET_HD.STATUS'
      Visible = False
      Size = 1
    end
    object qryUnmatchedDeliveryOrderREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'SO_DET_HD.REF_NO'
      Visible = False
      Size = 15
    end
    object qryUnmatchedDeliveryOrderREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'SO_DET_HD.REF_DATE'
      Visible = False
    end
    object qryUnmatchedDeliveryOrderDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'SO_DET_HD.DESCS'
      Visible = False
      Size = 60
    end
    object qryUnmatchedDeliveryOrderINVOICE_MATCHED: TIBStringField
      DisplayWidth = 1
      FieldName = 'INVOICE_MATCHED'
      Origin = 'SO_DET_HD.INVOICE_MATCHED'
      Visible = False
      Size = 1
    end
  end
  object qryDebtor: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM AR_DEBTOR')
    Left = 176
    Top = 160
    object qryDebtorDEBTOR_ACCT: TIBStringField
      DisplayLabel = 'DEBTOR ACCT'
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Origin = 'AR_DEBTOR.DEBTOR_ACCT'
      Required = True
      Size = 10
    end
    object qryDebtorNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'AR_DEBTOR.NAME'
      Size = 60
    end
    object qryDebtorADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Origin = 'AR_DEBTOR.ADDRESS1'
      Visible = False
      Size = 60
    end
    object qryDebtorADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Origin = 'AR_DEBTOR.ADDRESS2'
      Visible = False
      Size = 60
    end
    object qryDebtorADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Origin = 'AR_DEBTOR.ADDRESS3'
      Visible = False
      Size = 60
    end
    object qryDebtorTELPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELPHONE'
      Origin = 'AR_DEBTOR.TELPHONE'
      Visible = False
      Size = 30
    end
    object qryDebtorFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Origin = 'AR_DEBTOR.FAX_NO'
      Visible = False
      Size = 30
    end
    object qryDebtorDEBTOR_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'DEBTOR_TYPE'
      Origin = 'AR_DEBTOR.DEBTOR_TYPE'
      Required = True
      Visible = False
      Size = 2
    end
    object qryDebtorSHORT_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_NAME'
      Origin = 'AR_DEBTOR.SHORT_NAME'
      Visible = False
      Size = 45
    end
    object qryDebtorCREDIT_TERM: TSmallintField
      DisplayWidth = 10
      FieldName = 'CREDIT_TERM'
      Origin = 'AR_DEBTOR.CREDIT_TERM'
      Required = True
      Visible = False
    end
    object qryDebtorTAX_REGISTED_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_REGISTED_NO'
      Origin = 'AR_DEBTOR.TAX_REGISTED_NO'
      Visible = False
      Size = 15
    end
    object qryDebtorBALANCE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BALANCE_AMT'
      Origin = 'AR_DEBTOR.BALANCE_AMT'
      Visible = False
    end
    object qryDebtorCREDIT_LIMIT: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDIT_LIMIT'
      Origin = 'AR_DEBTOR.CREDIT_LIMIT'
      Visible = False
    end
    object qryDebtorCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Origin = 'AR_DEBTOR.CURRENCY_CODE'
      Required = True
      Visible = False
      Size = 4
    end
    object qryDebtorMAILADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR1'
      Origin = 'AR_DEBTOR.MAILADDR1'
      Visible = False
      Size = 60
    end
    object qryDebtorMAILADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR2'
      Origin = 'AR_DEBTOR.MAILADDR2'
      Visible = False
      Size = 60
    end
    object qryDebtorMAILADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR3'
      Origin = 'AR_DEBTOR.MAILADDR3'
      Visible = False
      Size = 60
    end
    object qryDebtorUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'AR_DEBTOR.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryDebtorUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'AR_DEBTOR.UPDATE_DATE'
      Visible = False
    end
    object qryDebtorTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'AR_DEBTOR.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qryDebtorPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Origin = 'AR_DEBTOR.POSTCODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryDebtorPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Origin = 'AR_DEBTOR.PROVINCE'
      Required = True
      Visible = False
      Size = 30
    end
    object qryDebtorTH_ADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR1'
      Origin = 'AR_DEBTOR.TH_ADDR1'
      Visible = False
      Size = 60
    end
    object qryDebtorTH_ADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR2'
      Origin = 'AR_DEBTOR.TH_ADDR2'
      Visible = False
      Size = 60
    end
    object qryDebtorTH_ADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR3'
      Origin = 'AR_DEBTOR.TH_ADDR3'
      Visible = False
      Size = 60
    end
    object qryDebtorTH_NAME: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_NAME'
      Origin = 'AR_DEBTOR.TH_NAME'
      Visible = False
      Size = 150
    end
  end
  object qryDeliveryOrderItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select delivery_no,order_no,order_date,ITEM_CODE, max(DESCS) AS ' +
        'ITEM_DESCS, SUM(DET_QTY) AS QTY ,MAX(UNIT_COST) AS UNIT_COST FRO' +
        'M SO_DET_DT'
      'WHERE DELIVERY_NO =:PDELIVERY_NO'
      'GROUP BY delivery_no,order_no,order_date,ITEM_CODE')
    Left = 496
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PDELIVERY_NO'
        ParamType = ptUnknown
      end>
    object qryDeliveryOrderItemORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Required = True
      Size = 15
    end
    object qryDeliveryOrderItemORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Required = True
    end
    object qryDeliveryOrderItemQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'SO_DET_DT.DET_QTY'
      Required = True
    end
    object qryDeliveryOrderItemUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object qryDeliveryOrderItemITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object qryDeliveryOrderItemITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_DET_DT.ITEM_CODE'
      Required = True
      Visible = False
      Size = 15
    end
    object qryDeliveryOrderItemDELIVERY_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DELIVERY_NO'
      Origin = 'SO_DET_DT.DELIVERY_NO'
      Required = True
      Visible = False
      Size = 15
    end
  end
  object qryUnpostInvoice: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM AR_INVOICE_HD'
      'WHERE STATUS <>'#39'X'#39
      'ORDER BY DOC_NO')
    Left = 224
    Top = 16
    object qryUnpostInvoiceDOC_NO: TIBStringField
      DisplayLabel = 'Invoice No'
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'AR_INVOICE_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpostInvoiceDOC_DATE: TDateTimeField
      DisplayLabel = 'Invoice Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'AR_INVOICE_HD.DOC_DATE'
      Required = True
    end
    object qryUnpostInvoiceDESCS: TIBStringField
      DisplayWidth = 24
      FieldName = 'DESCS'
      Origin = 'AR_INVOICE_HD.DESCS'
      Size = 60
    end
    object qryUnpostInvoiceDEBT_NAME: TIBStringField
      DisplayLabel = 'DEBTOR  NAME'
      DisplayWidth = 31
      FieldName = 'DEBT_NAME'
      Origin = 'AR_INVOICE_HD.DEBT_NAME'
      Size = 60
    end
    object qryUnpostInvoiceCREDIT_TERM: TSmallintField
      DisplayLabel = 'CREDIT TERM'
      DisplayWidth = 12
      FieldName = 'CREDIT_TERM'
      Origin = 'AR_INVOICE_HD.CREDIT_TERM'
    end
    object qryUnpostInvoiceDUE_DATE: TDateTimeField
      DisplayLabel = 'DUE DATE'
      DisplayWidth = 12
      FieldName = 'DUE_DATE'
      Origin = 'AR_INVOICE_HD.DUE_DATE'
    end
    object qryUnpostInvoiceUPDATE_USER: TIBStringField
      DisplayLabel = 'UPDATE USER'
      DisplayWidth = 12
      FieldName = 'UPDATE_USER'
      Origin = 'AR_INVOICE_HD.UPDATE_USER'
      Size = 30
    end
    object qryUnpostInvoiceDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Origin = 'AR_INVOICE_HD.DEBTOR_ACCT'
      Required = True
      Visible = False
      Size = 10
    end
    object qryUnpostInvoiceTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Origin = 'AR_INVOICE_HD.TRX_TYPE'
      Required = True
      Visible = False
      Size = 2
    end
    object qryUnpostInvoiceTAX_INV_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_INV_NO'
      Origin = 'AR_INVOICE_HD.TAX_INV_NO'
      Visible = False
      Size = 15
    end
    object qryUnpostInvoiceTAX_INV_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'TAX_INV_DATE'
      Origin = 'AR_INVOICE_HD.TAX_INV_DATE'
      Visible = False
    end
    object qryUnpostInvoiceREMARK: TIBStringField
      DisplayWidth = 255
      FieldName = 'REMARK'
      Origin = 'AR_INVOICE_HD.REMARK'
      Visible = False
      Size = 255
    end
    object qryUnpostInvoiceSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'AR_INVOICE_HD.STATUS'
      Visible = False
      Size = 1
    end
    object qryUnpostInvoiceRECEIPT_STATUS: TIBStringField
      DisplayLabel = 'RECEIPT STATUS'
      DisplayWidth = 1
      FieldName = 'RECEIPT_STATUS'
      Origin = 'AR_INVOICE_HD.RECEIPT_STATUS'
      Visible = False
      Size = 1
    end
    object qryUnpostInvoiceNO_OF_PRINT: TSmallintField
      DisplayWidth = 10
      FieldName = 'NO_OF_PRINT'
      Origin = 'AR_INVOICE_HD.NO_OF_PRINT'
      Visible = False
    end
    object qryUnpostInvoiceUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'AR_INVOICE_HD.UPDATE_DATE'
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
    Left = 72
    Top = 320
  end
  object spPostInvoice: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_AR_POST_INVOICE'
    Left = 224
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'aDOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ADOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'aDEBTOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'aUPDATE_USER'
        ParamType = ptInput
      end>
  end
  object tbReceiptHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterClose = tbReceiptHDAfterClose
    AfterPost = tbReceiptHDAfterPost
    AfterScroll = tbReceiptHDAfterScroll
    BeforePost = tbReceiptHDBeforePost
    OnNewRecord = tbReceiptHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DOC_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DOC_DATE'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'DESCS'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BANK_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DEBTOR_ACCT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CHEQUE_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'REMARKS'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRINT_STATUS'
        DataType = ftString
        Size = 1
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
        Name = 'CURRENCY_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CURRENCY_RATE'
        DataType = ftFloat
      end>
    Filter = 'STATUS='#39'N'#39
    IndexDefs = <
      item
        Name = 'PK_AR_RECEIPT_HD'
        Fields = 'DOC_NO;DOC_DATE;DEBTOR_ACCT'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'AR_RECEIPT_HD'
    Left = 336
    Top = 24
    object tbReceiptHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Required = True
      Size = 15
    end
    object tbReceiptHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object tbReceiptHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbReceiptHDBANK_CODE: TIBStringField
      FieldName = 'BANK_CODE'
      Required = True
      Size = 4
    end
    object tbReceiptHDDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Required = True
      Size = 10
    end
    object tbReceiptHDCHEQUE_NO: TIBStringField
      FieldName = 'CHEQUE_NO'
      Required = True
      Size = 25
    end
    object tbReceiptHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 255
    end
    object tbReceiptHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbReceiptHDPRINT_STATUS: TIBStringField
      FieldName = 'PRINT_STATUS'
      Size = 1
    end
    object tbReceiptHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbReceiptHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbReceiptHDCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Required = True
      Size = 4
    end
    object tbReceiptHDCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object tbReceiptHDdebtorName: TStringField
      FieldKind = fkLookup
      FieldName = 'debtorName'
      LookupDataSet = qryDebtor
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'DEBTOR_ACCT'
      Lookup = True
    end
    object tbReceiptHDbankName: TStringField
      FieldKind = fkLookup
      FieldName = 'bankName'
      LookupDataSet = tbBank
      LookupKeyFields = 'BANK_CODE'
      LookupResultField = 'BANK_NAME'
      KeyFields = 'BANK_CODE'
      Lookup = True
    end
    object tbReceiptHDcurrencyCode: TStringField
      FieldKind = fkLookup
      FieldName = 'currencyCode'
      LookupDataSet = qryDebtor
      LookupKeyFields = 'DEBTOR_ACCT'
      LookupResultField = 'CURRENCY_CODE'
      KeyFields = 'DEBTOR_ACCT'
      Lookup = True
    end
    object tbReceiptHDcurrencyRate: TFloatField
      FieldKind = fkLookup
      FieldName = 'currencyRate'
      LookupDataSet = tbCurrency
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_RATE'
      KeyFields = 'currencyCode'
      Lookup = True
    end
    object tbReceiptHDBATHTEXT: TStringField
      FieldName = 'BATHTEXT'
      Size = 255
    end
    object tbReceiptHDTRX_TYPE: TStringField
      FieldName = 'TRX_TYPE'
      OnChange = tbReceiptHDTRX_TYPEChange
      Size = 2
    end
  end
  object tbReceiptDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbReceiptDTAfterPost
    AfterScroll = tbReceiptDTAfterScroll
    BeforeInsert = tbReceiptDTBeforeInsert
    OnNewRecord = tbReceiptDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;DEBTOR_ACCT'
    MasterFields = 'DOC_NO;DOC_DATE;DEBTOR_ACCT'
    MasterSource = dsReceiptHD
    TableName = 'AR_RECEIPT_DT'
    Left = 336
    Top = 80
    object tbReceiptDTLINE_NO: TSmallintField
      DisplayLabel = '#No'
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbReceiptDTINV_NO: TIBStringField
      DisplayLabel = 'Invoice No'
      DisplayWidth = 15
      FieldName = 'INV_NO'
      OnChange = tbReceiptDTINV_NOChange
      Size = 15
    end
    object tbReceiptDTINV_DATE: TDateField
      DisplayLabel = 'Invoice Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
    end
    object tbReceiptDTREF_NO: TStringField
      DisplayLabel = 'Order No'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbReceiptDTREF_DATE: TDateTimeField
      DisplayLabel = 'Order Date'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
    end
    object tbReceiptDTDUE_DATE: TDateTimeField
      DisplayLabel = 'Due Date'
      DisplayWidth = 18
      FieldName = 'DUE_DATE'
    end
    object tbReceiptDTinvoiceBaseAmount: TFloatField
      DisplayLabel = 'Invoice BaseAmount'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'invoiceBaseAmount'
      LookupDataSet = qryUnmatchedInvoice
      LookupKeyFields = 'DOC_NO'
      LookupResultField = 'BASEAMOUNT'
      KeyFields = 'INV_NO'
      Lookup = True
    end
    object tbReceiptDTinvoiceTaxAmount: TFloatField
      DisplayLabel = 'Invoice Tax'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'invoiceTaxAmount'
      LookupDataSet = qryUnmatchedInvoice
      LookupKeyFields = 'DOC_NO'
      LookupResultField = 'TAXAMOUNT'
      KeyFields = 'INV_NO'
      Lookup = True
    end
    object tbReceiptDTinvoiceTotalAmount: TFloatField
      DisplayLabel = 'Invoice Total Amount'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'invoiceTotalAmount'
      LookupDataSet = qryUnmatchedInvoice
      LookupKeyFields = 'DOC_NO'
      LookupResultField = 'TOTALAMOUNT'
      KeyFields = 'INV_NO'
      Lookup = True
    end
    object tbReceiptDTLINE_REMARK: TIBStringField
      DisplayLabel = 'Remark'
      DisplayWidth = 60
      FieldName = 'LINE_REMARK'
      Size = 60
    end
    object tbReceiptDTBASE_AMOUNT: TFloatField
      DisplayLabel = 'Base Amount'
      DisplayWidth = 10
      FieldName = 'BASE_AMOUNT'
    end
    object tbReceiptDTTAX_AMOUNT: TFloatField
      DisplayLabel = 'Tax'
      DisplayWidth = 10
      FieldName = 'TAX_AMOUNT'
    end
    object tbReceiptDTTRX_AMOUNT: TFloatField
      DisplayLabel = 'Receipt Amount'
      DisplayWidth = 10
      FieldName = 'TRX_AMOUNT'
    end
    object tbReceiptDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbReceiptDTDOC_DATE: TDateField
      DisplayWidth = 10
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbReceiptDTDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Visible = False
      Size = 10
    end
    object tbReceiptDTSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
  end
  object qryUnpostReceipt: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ''
      'SELECT * FROM AR_RECEIPT_HD   H , AR_DEBTOR R'
      'WHERE H.debtor_acct = R.debtor_acct'
      'AND H.STATUS ='#39'N'#39
      'ORDER BY H.doc_date')
    Left = 496
    Top = 32
    object qryUnpostReceiptDOC_NO: TIBStringField
      DisplayLabel = 'Receipt No'
      DisplayWidth = 17
      FieldName = 'DOC_NO'
      Origin = 'AR_RECEIPT_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpostReceiptDOC_DATE: TDateTimeField
      DisplayLabel = 'Receipt Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'AR_RECEIPT_HD.DOC_DATE'
      Required = True
    end
    object qryUnpostReceiptNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'AR_DEBTOR.NAME'
      Size = 60
    end
    object qryUnpostReceiptUPDATE_USER: TIBStringField
      DisplayLabel = 'Update User'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'AR_RECEIPT_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnpostReceiptDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 45
      FieldName = 'DESCS'
      Origin = 'AR_RECEIPT_HD.DESCS'
      Visible = False
      Size = 60
    end
    object qryUnpostReceiptBANK_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'BANK_CODE'
      Origin = 'AR_RECEIPT_HD.BANK_CODE'
      Required = True
      Visible = False
      Size = 4
    end
    object qryUnpostReceiptDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Origin = 'AR_RECEIPT_HD.DEBTOR_ACCT'
      Required = True
      Visible = False
      Size = 10
    end
    object qryUnpostReceiptCHEQUE_NO: TIBStringField
      DisplayWidth = 25
      FieldName = 'CHEQUE_NO'
      Origin = 'AR_RECEIPT_HD.CHEQUE_NO'
      Required = True
      Visible = False
      Size = 25
    end
    object qryUnpostReceiptREMARKS: TIBStringField
      DisplayWidth = 255
      FieldName = 'REMARKS'
      Origin = 'AR_RECEIPT_HD.REMARKS'
      Visible = False
      Size = 255
    end
    object qryUnpostReceiptSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'AR_RECEIPT_HD.STATUS'
      Visible = False
      Size = 1
    end
    object qryUnpostReceiptPRINT_STATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'PRINT_STATUS'
      Origin = 'AR_RECEIPT_HD.PRINT_STATUS'
      Visible = False
      Size = 1
    end
    object qryUnpostReceiptUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'AR_RECEIPT_HD.UPDATE_DATE'
      Visible = False
    end
    object qryUnpostReceiptCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Origin = 'AR_RECEIPT_HD.CURRENCY_CODE'
      Required = True
      Visible = False
      Size = 4
    end
    object qryUnpostReceiptCURRENCY_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'CURRENCY_RATE'
      Origin = 'AR_RECEIPT_HD.CURRENCY_RATE'
      Visible = False
    end
  end
  object dsReceiptHD: TDataSource
    DataSet = tbReceiptHD
    Left = 408
    Top = 24
  end
  object dsReceiptDT: TDataSource
    DataSet = tbReceiptDT
    Left = 408
    Top = 80
  end
  object spPostReceipt: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_AR_POST_RECEIPT'
    Left = 496
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'ADEBTOR'
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
        Name = 'AUPDATE_USER'
        ParamType = ptInput
      end>
  end
  object tbBank: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbBankBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'BANK_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BANK_NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BRANCH_NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'REMARKS'
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
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY15'
        Fields = 'BANK_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKBANK'
        Fields = 'BANK_CODE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'BANK'
    Left = 408
    Top = 256
    object tbBankBANK_CODE: TIBStringField
      DisplayLabel = 'BANK CODE'
      DisplayWidth = 10
      FieldName = 'BANK_CODE'
      Size = 4
    end
    object tbBankBANK_NAME: TIBStringField
      DisplayLabel = 'BANK NAME'
      DisplayWidth = 20
      FieldName = 'BANK_NAME'
      Size = 60
    end
    object tbBankBRANCH_NAME: TIBStringField
      DisplayLabel = 'BRANCH NAME'
      DisplayWidth = 22
      FieldName = 'BRANCH_NAME'
      Size = 60
    end
    object tbBankREMARKS: TIBStringField
      DisplayWidth = 38
      FieldName = 'REMARKS'
      Visible = False
      Size = 60
    end
    object tbBankUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Last Modified'
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbBankUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
  end
  object tbCurrency: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CURRENCY_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CURRENCY_RATE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DESCS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BASE_RATE'
        DataType = ftFloat
      end
      item
        Name = 'COMPARE_RATE'
        DataType = ftFloat
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
        Name = 'RDB$PRIMARY16'
        Fields = 'CURRENCY_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XPKCURRENCY'
        Fields = 'CURRENCY_CODE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'CURRENCY'
    Left = 496
    Top = 256
    object tbCurrencyCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbCurrencyCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object tbCurrencyDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 30
    end
    object tbCurrencyBASE_RATE: TFloatField
      FieldName = 'BASE_RATE'
    end
    object tbCurrencyCOMPARE_RATE: TFloatField
      FieldName = 'COMPARE_RATE'
    end
    object tbCurrencyUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbCurrencyUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object qryUnmatchedInvoice: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    ForcedRefresh = True
    BeforeOpen = qryUnmatchedInvoiceBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT HD.DOC_NO,HD.DOC_DATE,'
      'MAX(HD.DUE_DATE )AS DUE_DATE,'
      'SUM(DT.base_amt) AS BaseAmount,'
      'SUM(DT.tax_amt) as TaxAmount,'
      'SUM(DT.doc_amt) as TotalAmount  ,'
      'MAX(DT.item_code) AS ITEMCode,'
      'MAX(DT.item_descs) As ItemDescs,'
      'MAX(DT.order_no) AS ORDER_NO,'
      'MAX(DT.order_DATE) AS ORDER_DATE'
      'from ar_invoice_dt DT , AR_INVOICE_HD HD'
      'WHERE HD.DOC_NO =DT.DOC_NO'
      'AND HD.DOC_DATE = DT.DOC_DATE'
      'AND HD.DEBTOR_ACCT = DT.DEBTOR_ACCT'
      'AND HD.receipt_status ='#39'N'#39
      'AND HD.DEBTOR_ACCT=:PDEBTOR_ACCT'
      'GROUP BY  HD.DOC_NO,HD.DOC_DATE')
    Left = 288
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PDEBTOR_ACCT'
        ParamType = ptUnknown
      end>
    object qryUnmatchedInvoiceDOC_NO: TIBStringField
      DisplayLabel = 'Inv No.'
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnmatchedInvoiceDOC_DATE: TDateTimeField
      DisplayLabel = 'Inv Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Required = True
    end
    object qryUnmatchedInvoiceDUE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DUE_DATE'
    end
    object qryUnmatchedInvoiceBASEAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASEAMOUNT'
    end
    object qryUnmatchedInvoiceTAXAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAXAMOUNT'
    end
    object qryUnmatchedInvoiceTOTALAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTALAMOUNT'
    end
    object qryUnmatchedInvoiceORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object qryUnmatchedInvoiceORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object qryUnmatchedInvoiceITEMCODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEMCODE'
      Size = 15
    end
    object qryUnmatchedInvoiceITEMDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEMDESCS'
      Size = 60
    end
  end
  object tbTransactionType: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TRANSACTIONTYPE'
    Left = 496
    Top = 336
    object tbTransactionTypeTRX_TYPE: TIBStringField
      DisplayLabel = 'Trx Type'
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object tbTransactionTypeDESCRIPTION: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'DESCRIPTION'
      Size = 60
    end
    object tbTransactionTypeDEFAULT_MODULE: TIBStringField
      DisplayWidth = 60
      FieldName = 'DEFAULT_MODULE'
      Visible = False
      Size = 60
    end
    object tbTransactionTypeUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbTransactionTypeUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbTransactionTypeREQUIRE_REFERENCE: TIBStringField
      DisplayWidth = 1
      FieldName = 'REQUIRE_REFERENCE'
      Visible = False
      Size = 1
    end
    object tbTransactionTypeMODE: TStringField
      DisplayWidth = 1
      FieldName = 'MODE'
      Visible = False
      Size = 1
    end
  end
  object qryIndirectSaleOrderItem: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT HD.ORDER_NO, HD.ORDER_DATE, HD.REF_NO, HD.REF_DATE, DT.IT' +
        'EM_CODE, DT.ITEM_DESCS, DT.UNIT_COST, DT.QTY, DT.TOTAL_AMT'
      'FROM SO_ORDER_DT DT,'
      'SO_ORDER_HD HD'
      'WHERE '
      '   ('
      '      (HD.ORDER_NO = DT.ORDER_NO)'
      '   and '
      '      (DT.ORDER_DATE = HD.ORDER_DATE)'
      '   and '
      '      (DT.CUST_CODE = HD.CUST_CODE)'
      '   and '
      '      (HD.STATUS <> '#39'C'#39')'
      '  AND'
      '     (HD.CUST_CODE=:PCUST_CODE)'
      '   )')
    Left = 280
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PCUST_CODE'
        ParamType = ptUnknown
      end>
    object qryIndirectSaleOrderItemORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'SO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryIndirectSaleOrderItemORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'SO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryIndirectSaleOrderItemREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'SO_ORDER_HD.REF_NO'
      Size = 15
    end
    object qryIndirectSaleOrderItemREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'SO_ORDER_HD.REF_DATE'
    end
    object qryIndirectSaleOrderItemITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'SO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryIndirectSaleOrderItemITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'SO_ORDER_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryIndirectSaleOrderItemUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'SO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryIndirectSaleOrderItemQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'SO_ORDER_DT.QTY'
      Required = True
    end
    object qryIndirectSaleOrderItemTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'SO_ORDER_DT.TOTAL_AMT'
      Required = True
    end
  end
  object qryUnpostCreditNoteDebitNote: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM AR_CREDIT_NOTE_HD'
      'WHERE STATUS ='#39'N'#39
      'AND MODE =:PMODE')
    Left = 624
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMode'
        ParamType = ptUnknown
      end>
    object qryUnpostCreditNoteDebitNoteDOC_NO: TIBStringField
      DisplayLabel = 'Document No'
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'AR_CREDIT_NOTE_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpostCreditNoteDebitNoteDOC_DATE: TDateTimeField
      DisplayLabel = 'Document Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'AR_CREDIT_NOTE_HD.DOC_DATE'
      Required = True
    end
    object qryUnpostCreditNoteDebitNoteDESCS: TIBStringField
      DisplayLabel = 'Trx Description'
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'AR_CREDIT_NOTE_HD.DESCS'
      Size = 60
    end
    object qryUnpostCreditNoteDebitNoteDEBT_NAME: TIBStringField
      DisplayLabel = 'Debtor'
      DisplayWidth = 60
      FieldName = 'DEBT_NAME'
      Origin = 'AR_CREDIT_NOTE_HD.DEBT_NAME'
      Size = 60
    end
    object qryUnpostCreditNoteDebitNoteREMARK: TIBStringField
      DisplayWidth = 255
      FieldName = 'REMARK'
      Origin = 'AR_CREDIT_NOTE_HD.REMARK'
      Size = 255
    end
    object qryUnpostCreditNoteDebitNoteUPDATE_USER: TIBStringField
      DisplayLabel = 'Update User'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'AR_CREDIT_NOTE_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnpostCreditNoteDebitNoteUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Late Update'
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'AR_CREDIT_NOTE_HD.UPDATE_DATE'
    end
    object qryUnpostCreditNoteDebitNoteDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Origin = 'AR_CREDIT_NOTE_HD.DEBTOR_ACCT'
      Required = True
      Visible = False
      Size = 10
    end
    object qryUnpostCreditNoteDebitNoteTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Origin = 'AR_CREDIT_NOTE_HD.TRX_TYPE'
      Required = True
      Visible = False
      Size = 2
    end
    object qryUnpostCreditNoteDebitNoteNO_OF_PRINT: TSmallintField
      DisplayWidth = 10
      FieldName = 'NO_OF_PRINT'
      Origin = 'AR_CREDIT_NOTE_HD.NO_OF_PRINT'
      Visible = False
    end
    object qryUnpostCreditNoteDebitNoteBATHTEXT: TIBStringField
      DisplayWidth = 255
      FieldName = 'BATHTEXT'
      Origin = 'AR_CREDIT_NOTE_HD.BATHTEXT'
      Visible = False
      Size = 255
    end
    object qryUnpostCreditNoteDebitNoteCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Origin = 'AR_CREDIT_NOTE_HD.CURRENCY_CODE'
      Visible = False
      Size = 4
    end
    object qryUnpostCreditNoteDebitNoteCURRENCY_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'CURRENCY_RATE'
      Origin = 'AR_CREDIT_NOTE_HD.CURRENCY_RATE'
      Visible = False
    end
    object qryUnpostCreditNoteDebitNoteSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'AR_CREDIT_NOTE_HD.STATUS'
      Visible = False
      Size = 1
    end
    object qryUnpostCreditNoteDebitNoteMODE: TIBStringField
      DisplayWidth = 1
      FieldName = 'MODE'
      Origin = 'AR_CREDIT_NOTE_HD.MODE'
      Visible = False
      Size = 1
    end
  end
  object tbDebitNoteDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterInsert = tbDebitNoteDTAfterInsert
    AfterOpen = tbDebitNoteDTAfterOpen
    AfterPost = tbDebitNoteDTAfterPost
    OnNewRecord = tbDebitNoteDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DEBTOR_ACCT'
        DataType = ftString
        Size = 10
      end
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
        Name = 'LINE_NO'
        DataType = ftSmallint
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'INVOICE_DATE'
        DataType = ftDateTime
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
        Name = 'UOM_CD'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'UNIT_COST'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'TAX_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'VARIANT_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'BASE_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'QTY'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_AR_CREDIT_NOTE_DT'
        Fields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE;LINE_NO'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
    MasterFields = 'DEBTOR_ACCT;DOC_NO;DOC_DATE;TRX_TYPE'
    MasterSource = dsDebitNoteHD
    StoreDefs = True
    TableName = 'AR_CREDIT_NOTE_DT'
    Left = 632
    Top = 344
    object tbDebitNoteDTLINE_NO: TSmallintField
      DisplayLabel = '#'
      DisplayWidth = 3
      FieldName = 'LINE_NO'
    end
    object tbDebitNoteDTINVOICE_NO: TIBStringField
      DisplayWidth = 11
      FieldName = 'INVOICE_NO'
      OnChange = tbDebitNoteDTINVOICE_NOChange
      Size = 15
    end
    object tbDebitNoteDTINVOICE_DATE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'INVOICE_DATE'
    end
    object tbDebitNoteDTITEM_CODE: TIBStringField
      DisplayWidth = 9
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbDebitNoteDTITEM_DESCS: TIBStringField
      DisplayWidth = 30
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbDebitNoteDTUOM_CD: TIBStringField
      DisplayWidth = 7
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbDebitNoteDTINVOICE_AMOUNT: TFloatField
      DisplayWidth = 15
      FieldName = 'INVOICE_AMOUNT'
    end
    object tbDebitNoteDTQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      OnChange = tbDebitNoteDTQTYChange
    end
    object tbDebitNoteDTUNIT_COST: TFloatField
      DisplayWidth = 9
      FieldName = 'UNIT_COST'
      OnChange = tbDebitNoteDTQTYChange
    end
    object tbDebitNoteDTBASE_AMOUNT: TFloatField
      DisplayLabel = 'Issue Amount'
      DisplayWidth = 11
      FieldName = 'BASE_AMOUNT'
      OnChange = tbDebitNoteDTBASE_AMOUNTChange
    end
    object tbDebitNoteDTTAX_AMOUNT: TFloatField
      DisplayWidth = 11
      FieldName = 'TAX_AMOUNT'
    end
    object tbDebitNoteDTTOTAL_AMOUNT: TFloatField
      DisplayWidth = 13
      FieldName = 'TOTAL_AMOUNT'
    end
    object tbDebitNoteDTVARIANT_AMOUNT: TFloatField
      DisplayWidth = 15
      FieldName = 'VARIANT_AMOUNT'
    end
    object tbDebitNoteDTDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Visible = False
      Size = 10
    end
    object tbDebitNoteDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbDebitNoteDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbDebitNoteDTTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Visible = False
      Size = 2
    end
  end
  object dsDebitNoteHD: TDataSource
    DataSet = tbCNHD
    Left = 720
    Top = 280
  end
  object dsDebitNoteDT: TDataSource
    DataSet = tbDebitNoteDT
    Left = 728
    Top = 352
  end
  object tbCNHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterOpen = tbCNHDAfterOpen
    AfterPost = tbCNHDAfterPost
    BeforePost = tbCNHDBeforePost
    OnNewRecord = tbCNHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'AR_CREDIT_NOTE_HD'
    Left = 632
    Top = 288
    object tbCNHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbCNHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbCNHDDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      OnChange = tbCNHDDEBTOR_ACCTChange
      Size = 10
    end
    object tbCNHDTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      OnChange = tbCNHDTRX_TYPEChange
      OnValidate = tbCNHDTRX_TYPEValidate
      Size = 2
    end
    object tbCNHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbCNHDDEBT_NAME: TIBStringField
      FieldName = 'DEBT_NAME'
      Size = 60
    end
    object tbCNHDREMARK: TIBStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object tbCNHDNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
    end
    object tbCNHDBATHTEXT: TIBStringField
      FieldName = 'BATHTEXT'
      Size = 255
    end
    object tbCNHDCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbCNHDCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object tbCNHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbCNHDMODE: TIBStringField
      FieldName = 'MODE'
      Size = 1
    end
    object tbCNHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbCNHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbDebtor: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    MasterFields = 'NAME'
    TableName = 'AR_DEBTOR'
    Left = 56
    Top = 152
    object tbDebtorNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 60
    end
    object tbDebtorDEBTOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbDebtorTH_NAME: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_NAME'
      Size = 150
    end
    object tbDebtorADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Visible = False
      Size = 60
    end
    object tbDebtorADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 60
    end
    object tbDebtorADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 60
    end
    object tbDebtorTELPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELPHONE'
      Visible = False
      Size = 30
    end
    object tbDebtorFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Visible = False
      Size = 30
    end
    object tbDebtorDEBTOR_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'DEBTOR_TYPE'
      Visible = False
      Size = 2
    end
    object tbDebtorSHORT_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_NAME'
      Visible = False
      Size = 45
    end
    object tbDebtorCREDIT_TERM: TSmallintField
      DisplayWidth = 10
      FieldName = 'CREDIT_TERM'
      Visible = False
    end
    object tbDebtorTAX_REGISTED_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_REGISTED_NO'
      Visible = False
      Size = 15
    end
    object tbDebtorBALANCE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BALANCE_AMT'
      Visible = False
    end
    object tbDebtorCREDIT_LIMIT: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDIT_LIMIT'
      Visible = False
    end
    object tbDebtorCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Visible = False
      Size = 4
    end
    object tbDebtorMAILADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR1'
      Visible = False
      Size = 60
    end
    object tbDebtorMAILADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR2'
      Visible = False
      Size = 60
    end
    object tbDebtorMAILADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR3'
      Visible = False
      Size = 60
    end
    object tbDebtorUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbDebtorUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbDebtorTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbDebtorPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Visible = False
      Size = 10
    end
    object tbDebtorPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Visible = False
      Size = 30
    end
    object tbDebtorTH_ADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR1'
      Visible = False
      Size = 60
    end
    object tbDebtorTH_ADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR2'
      Visible = False
      Size = 60
    end
    object tbDebtorTH_ADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR3'
      Visible = False
      Size = 60
    end
  end
  object qryUnpaidInvoice: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT cast(HD.DOC_NO as varchar(15)) as DOC_NO,'
      'HD.DOC_DATE,'
      'hd.debtor_acct,'
      'MAX(HD.DUE_DATE )AS DUE_DATE,'
      'SUM(DT.base_amt) AS BaseAmount,'
      'SUM(DT.tax_amt) as TaxAmount,'
      'SUM(DT.doc_amt) as TotalAmount  ,'
      'MAX(DT.item_code) AS ITEMCode,'
      'MAX(DT.item_descs) AS ItemDescs,'
      'max(ITEM.uom_cd) as UOM_CD,'
      'MAX(DT.order_no) AS ORDER_NO,'
      'MAX(DT.order_DATE) AS ORDER_DATE,'
      'MAX(DT.UNIT_COST) AS UNITCOST,'
      'max(dt.qty) as QTY'
      
        'from ar_invoice_dt DT , AR_INVOICE_HD HD   , so_sales_item_hd IT' +
        'EM'
      'WHERE HD.DOC_NO =DT.DOC_NO'
      'AND HD.DOC_DATE = DT.DOC_DATE'
      'AND HD.DEBTOR_ACCT = DT.DEBTOR_ACCT'
      'AND HD.receipt_status ='#39'N'#39
      'and hd.status ='#39'X'#39' --ONLY POSTED'
      'AND DT.item_code = ITEM.item_code'
      'AND DT.debtor_acct = ITEM.cust_code'
      'AND HD.DEBTOR_ACCT=:PDEBTOR_ACCT'
      'GROUP BY  hd.debtor_acct,HD.DOC_NO,HD.DOC_DATE,DT.ITEM_CODE')
    Left = 160
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PDEBTOR_ACCT'
        ParamType = ptUnknown
      end>
    object qryUnpaidInvoiceDOC_NO: TIBStringField
      DisplayLabel = 'Invoice '
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpaidInvoiceDOC_DATE: TDateTimeField
      DisplayLabel = 'Invoice Date'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Required = True
    end
    object qryUnpaidInvoiceORDER_NO: TIBStringField
      DisplayLabel = 'OrderNo'
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object qryUnpaidInvoiceITEMCODE: TIBStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'ITEMCODE'
      Size = 15
    end
    object qryUnpaidInvoiceUNITCOST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNITCOST'
    end
    object qryUnpaidInvoiceITEMDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'ITEMDESCS'
      Size = 60
    end
    object qryUnpaidInvoiceBASEAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASEAMOUNT'
    end
    object qryUnpaidInvoiceDUE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DUE_DATE'
      Visible = False
    end
    object qryUnpaidInvoiceTAXAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAXAMOUNT'
      Visible = False
    end
    object qryUnpaidInvoiceTOTALAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTALAMOUNT'
      Visible = False
    end
    object qryUnpaidInvoiceORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Visible = False
    end
    object qryUnpaidInvoiceUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
    object qryUnpaidInvoiceDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Required = True
      Size = 10
    end
    object qryUnpaidInvoiceQTY: TFloatField
      FieldName = 'QTY'
    end
  end
  object qryCreditNoteSummary: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(base_amount) as base_amount ,'
      'sum(tax_amount) as tax_amount,'
      'sum(total_amount) as total_amount'
      'from ar_credit_note_dt'
      'where doc_no=:pdoc_no'
      'and doc_date =:pdoc_date'
      'and debtor_acct =:pdebtor_acct'
      '')
    Left = 632
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdoc_no'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdoc_date'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdebtor_acct'
        ParamType = ptUnknown
      end>
    object qryCreditNoteSummaryBASE_AMOUNT: TFloatField
      FieldName = 'BASE_AMOUNT'
    end
    object qryCreditNoteSummaryTAX_AMOUNT: TFloatField
      FieldName = 'TAX_AMOUNT'
    end
    object qryCreditNoteSummaryTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
    end
  end
  object spPostCreditNote: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_AR_POST_CREDIT_NOTE'
    Left = 168
    Top = 360
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
        Name = 'ADEBTOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AUPDATE_USER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AMODE'
        ParamType = ptInput
      end>
  end
end
