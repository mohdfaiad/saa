inherited MasterSetupDM: TMasterSetupDM
  OldCreateOrder = True
  Left = 522
  Top = 198
  Height = 545
  Width = 934
  object tbAPCreditor: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CREDITOR_ACCT'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CREDITOR_TYPE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
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
        Name = 'SHORT_NAME'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'CREDIT_TERM'
        Attributes = [faRequired]
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
        Attributes = [faRequired]
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
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROVINCE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'POSTCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
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
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'CREDITOR_ACCT;CURRENCY_CODE;CREDITOR_TYPE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XIF10AP_CREDITOR'
        Fields = 'CREDITOR_TYPE'
      end
      item
        Name = 'XPKAP_CREDITOR'
        Fields = 'CREDITOR_ACCT;CURRENCY_CODE;CREDITOR_TYPE'
        Options = [ixUnique]
      end
      item
        Name = 'IDX_NAME'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'AP_CREDITOR'
    Left = 48
    Top = 16
    object tbAPCreditorCREDITOR_ACCT: TIBStringField
      FieldName = 'CREDITOR_ACCT'
      Size = 10
    end
    object tbAPCreditorNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbAPCreditorCREDITOR_TYPE: TIBStringField
      FieldName = 'CREDITOR_TYPE'
      Size = 2
    end
    object tbAPCreditorADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbAPCreditorADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbAPCreditorADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbAPCreditorTELPHONE: TIBStringField
      FieldName = 'TELPHONE'
      Size = 30
    end
    object tbAPCreditorFAX_NO: TIBStringField
      FieldName = 'FAX_NO'
      Size = 30
    end
    object tbAPCreditorSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Size = 45
    end
    object tbAPCreditorCREDIT_TERM: TSmallintField
      FieldName = 'CREDIT_TERM'
    end
    object tbAPCreditorTAX_REGISTED_NO: TIBStringField
      FieldName = 'TAX_REGISTED_NO'
      Size = 15
    end
    object tbAPCreditorBALANCE_AMT: TFloatField
      FieldName = 'BALANCE_AMT'
    end
    object tbAPCreditorCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
    end
    object tbAPCreditorCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbAPCreditorMAILADDR1: TIBStringField
      FieldName = 'MAILADDR1'
      Size = 60
    end
    object tbAPCreditorMAILADDR2: TIBStringField
      FieldName = 'MAILADDR2'
      Size = 60
    end
    object tbAPCreditorMAILADDR3: TIBStringField
      FieldName = 'MAILADDR3'
      Size = 60
    end
    object tbAPCreditorUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbAPCreditorUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbAPCreditorTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbAPCreditorPROVINCE: TIBStringField
      FieldName = 'PROVINCE'
      Size = 30
    end
    object tbAPCreditorPOSTCODE: TIBStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object tbAPCreditorTH_ADDR1: TIBStringField
      FieldName = 'TH_ADDR1'
      Size = 60
    end
    object tbAPCreditorTH_ADDR2: TIBStringField
      FieldName = 'TH_ADDR2'
      Size = 60
    end
    object tbAPCreditorTH_ADDR3: TIBStringField
      FieldName = 'TH_ADDR3'
      Size = 60
    end
    object tbAPCreditorTH_NAME: TIBStringField
      FieldName = 'TH_NAME'
      Size = 150
    end
  end
  object tbArDebtor: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'DEBTOR_ACCT'
        Attributes = [faRequired]
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
        Attributes = [faRequired]
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
        Attributes = [faRequired]
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
        Attributes = [faRequired]
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
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'POSTCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROVINCE'
        Attributes = [faRequired]
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
      end
      item
        Name = 'ISHEADOFFICE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BRANCH_CODE'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'DEBTOR_ACCT;CURRENCY_CODE;DEBTOR_TYPE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'XIF61AR_DEBTOR'
        Fields = 'CURRENCY_CODE'
      end
      item
        Name = 'XIF8AR_DEBTOR'
        Fields = 'DEBTOR_TYPE'
      end
      item
        Name = 'XPKAR_DEBTOR'
        Fields = 'DEBTOR_ACCT;CURRENCY_CODE;DEBTOR_TYPE'
        Options = [ixUnique]
      end
      item
        Name = 'IDX_AR_NAME'
        Fields = 'NAME'
      end>
    IndexFieldNames = 'NAME'
    StoreDefs = True
    TableName = 'AR_DEBTOR'
    Left = 384
    Top = 24
    object tbArDebtorDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbArDebtorNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbArDebtorADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbArDebtorADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbArDebtorADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbArDebtorTELPHONE: TIBStringField
      FieldName = 'TELPHONE'
      Size = 30
    end
    object tbArDebtorFAX_NO: TIBStringField
      FieldName = 'FAX_NO'
      Size = 30
    end
    object tbArDebtorDEBTOR_TYPE: TIBStringField
      FieldName = 'DEBTOR_TYPE'
      Size = 2
    end
    object tbArDebtorSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Size = 45
    end
    object tbArDebtorCREDIT_TERM: TSmallintField
      FieldName = 'CREDIT_TERM'
    end
    object tbArDebtorTAX_REGISTED_NO: TIBStringField
      FieldName = 'TAX_REGISTED_NO'
      Size = 15
    end
    object tbArDebtorBALANCE_AMT: TFloatField
      FieldName = 'BALANCE_AMT'
    end
    object tbArDebtorCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
    end
    object tbArDebtorCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbArDebtorMAILADDR1: TIBStringField
      FieldName = 'MAILADDR1'
      Size = 60
    end
    object tbArDebtorMAILADDR2: TIBStringField
      FieldName = 'MAILADDR2'
      Size = 60
    end
    object tbArDebtorMAILADDR3: TIBStringField
      FieldName = 'MAILADDR3'
      Size = 60
    end
    object tbArDebtorUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbArDebtorUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbArDebtorTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbArDebtorPOSTCODE: TIBStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object tbArDebtorPROVINCE: TIBStringField
      FieldName = 'PROVINCE'
      Size = 30
    end
    object tbArDebtorTH_ADDR1: TIBStringField
      FieldName = 'TH_ADDR1'
      Size = 60
    end
    object tbArDebtorTH_ADDR2: TIBStringField
      FieldName = 'TH_ADDR2'
      Size = 60
    end
    object tbArDebtorTH_ADDR3: TIBStringField
      FieldName = 'TH_ADDR3'
      Size = 60
    end
    object tbArDebtorTH_NAME: TIBStringField
      FieldName = 'TH_NAME'
      Size = 150
    end
    object tbArDebtorISHEADOFFICE: TIBStringField
      FieldName = 'ISHEADOFFICE'
      Size = 1
    end
    object tbArDebtorBRANCH_CODE: TIBStringField
      FieldName = 'BRANCH_CODE'
      Size = 5
    end
  end
  object tbApCreditorType: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'AP_CREDITOR_TYPE'
    Left = 112
    Top = 16
    object tbApCreditorTypeCREDITOR_TYPE: TIBStringField
      FieldName = 'CREDITOR_TYPE'
      Size = 2
    end
    object tbApCreditorTypeDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbApCreditorTypeUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbApCreditorTypeUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbArDebtorType: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DEBTOR_TYPE'
    TableName = 'AR_DEBTOR_TYPE'
    Left = 432
    Top = 24
    object tbArDebtorTypeDEBTOR_TYPE: TIBStringField
      FieldName = 'DEBTOR_TYPE'
      Size = 2
    end
    object tbArDebtorTypeDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbArDebtorTypeUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbArDebtorTypeUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object dsArDebtorType: TDataSource
    DataSet = tbArDebtorType
    Left = 488
    Top = 24
  end
  object tbTax: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TAX_SCHEM_HD'
    Left = 48
    Top = 120
    object tbTaxSCHEME_CD: TIBStringField
      FieldName = 'SCHEME_CD'
      Size = 2
    end
    object tbTaxTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbTaxDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 45
    end
    object tbTaxTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object tbTaxUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbTaxUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbTaxINCL: TIBStringField
      FieldName = 'INCL'
      Size = 1
    end
  end
  object tbCurrency: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CURRENCY'
    Left = 128
    Top = 120
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
  object tbUOM: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'IC_UOM'
    Left = 48
    Top = 184
    object tbUOMUOM_CD: TIBStringField
      DisplayLabel = 'UOM CD'
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbUOMDESCS: TIBStringField
      DisplayWidth = 30
      FieldName = 'DESCS'
      Size = 30
    end
    object tbUOMUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbUOMUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbSaleItemHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbSaleItemHDAfterPost
    AfterScroll = tbSaleItemHDAfterScroll
    BeforePost = tbSaleItemHDBeforePost
    OnNewRecord = tbSaleItemHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CUST_CODE'
    MasterFields = 'DEBTOR_ACCT'
    MasterSource = dsCustomerView
    TableName = 'SO_SALES_ITEM_HD'
    Left = 328
    Top = 96
    object tbSaleItemHDITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbSaleItemHDDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Size = 60
    end
    object tbSaleItemHDCustomerName: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = tbCustomerLookup
      LookupKeyFields = 'CUSTOMER_CD'
      LookupResultField = 'NAME'
      KeyFields = 'CUST_CODE'
      Size = 60
      Lookup = True
    end
    object tbSaleItemHDREMARKS: TIBStringField
      DisplayWidth = 800
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbSaleItemHDUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbSaleItemHDSALE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'SALE_PRICE'
    end
    object tbSaleItemHDUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbSaleItemHDCUST_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbSaleItemHDUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbSaleItemHDUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
    end
    object tbSaleItemHDSTANDARD_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'STANDARD_PRICE'
    end
    object tbSaleItemHDCURRENT_ACTIVE: TIBStringField
      DisplayWidth = 1
      FieldName = 'CURRENT_ACTIVE'
      Size = 1
    end
  end
  object tbSaleItemReqSheet: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbSaleItemReqSheetAfterPost
    BeforeDelete = tbSaleItemReqSheetBeforeDelete
    BeforePost = tbSaleItemReqSheetBeforePost
    OnNewRecord = tbSaleItemReqSheetNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'ITEM_CODE;UOM_CD;CUST_CODE'
    MasterFields = 'ITEM_CODE;UOM_CD;CUST_CODE'
    MasterSource = dsSaleItemHD
    TableName = 'SO_SALES_ITEM_REQ_SHEET'
    Left = 328
    Top = 224
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
  object tbICElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbICElementBeforePost
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
    IndexFieldNames = 'RUN_NO;ELEMENT_CODE'
    StoreDefs = True
    TableName = 'IC_ELEMENT'
    Left = 248
    Top = 152
    object tbICElementRUN_NO: TSmallintField
      FieldName = 'RUN_NO'
    end
    object tbICElementELEMENT_CODE: TIBStringField
      FieldName = 'ELEMENT_CODE'
      Size = 4
    end
    object tbICElementNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbICElementUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbICElementUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbICElementELEMENT_LOCKED: TIBStringField
      FieldName = 'ELEMENT_LOCKED'
      Size = 1
    end
    object tbICElementELEMENT_ACTIVE: TIBStringField
      FieldName = 'ELEMENT_ACTIVE'
      Size = 1
    end
    object tbICElementELEMENT_CONTROLED: TIBStringField
      FieldName = 'ELEMENT_CONTROLED'
      Size = 1
    end
  end
  object tbICElementLabel: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'IC_ELEMENT_LABEL'
    Left = 248
    Top = 96
    object tbICElementLabelELABEL1: TIBStringField
      FieldName = 'ELABEL1'
      Size = 4
    end
    object tbICElementLabelELABEL2: TIBStringField
      FieldName = 'ELABEL2'
      Size = 4
    end
    object tbICElementLabelELABEL3: TIBStringField
      FieldName = 'ELABEL3'
      Size = 4
    end
    object tbICElementLabelELABEL4: TIBStringField
      FieldName = 'ELABEL4'
      Size = 4
    end
    object tbICElementLabelELABEL5: TIBStringField
      FieldName = 'ELABEL5'
      Size = 4
    end
    object tbICElementLabelELABEL6: TIBStringField
      FieldName = 'ELABEL6'
      Size = 4
    end
    object tbICElementLabelELABEL7: TIBStringField
      FieldName = 'ELABEL7'
      Size = 4
    end
    object tbICElementLabelELABEL8: TIBStringField
      FieldName = 'ELABEL8'
      Size = 4
    end
    object tbICElementLabelELABEL9: TIBStringField
      FieldName = 'ELABEL9'
      Size = 4
    end
    object tbICElementLabelELABEL10: TIBStringField
      FieldName = 'ELABEL10'
      Size = 4
    end
    object tbICElementLabelELABEL11: TIBStringField
      FieldName = 'ELABEL11'
      Size = 4
    end
    object tbICElementLabelELABEL12: TIBStringField
      FieldName = 'ELABEL12'
      Size = 4
    end
    object tbICElementLabelELABEL13: TIBStringField
      FieldName = 'ELABEL13'
      Size = 4
    end
    object tbICElementLabelELABEL14: TIBStringField
      FieldName = 'ELABEL14'
      Size = 4
    end
    object tbICElementLabelELABEL15: TIBStringField
      FieldName = 'ELABEL15'
      Size = 4
    end
    object tbICElementLabelELABEL16: TIBStringField
      FieldName = 'ELABEL16'
      Size = 4
    end
    object tbICElementLabelELABEL17: TIBStringField
      FieldName = 'ELABEL17'
      Size = 4
    end
    object tbICElementLabelELABEL18: TIBStringField
      FieldName = 'ELABEL18'
      Size = 4
    end
    object tbICElementLabelELABEL19: TIBStringField
      FieldName = 'ELABEL19'
      Size = 4
    end
    object tbICElementLabelELABEL20: TIBStringField
      FieldName = 'ELABEL20'
      Size = 4
    end
    object tbICElementLabelELABEL21: TIBStringField
      FieldName = 'ELABEL21'
      Size = 4
    end
    object tbICElementLabelELABEL22: TIBStringField
      FieldName = 'ELABEL22'
      Size = 4
    end
    object tbICElementLabelELABEL23: TIBStringField
      FieldName = 'ELABEL23'
      Size = 4
    end
    object tbICElementLabelELABEL24: TIBStringField
      FieldName = 'ELABEL24'
      Size = 4
    end
    object tbICElementLabelELABEL25: TIBStringField
      FieldName = 'ELABEL25'
      Size = 4
    end
  end
  object dsOrderHistory: TDataSource
    DataSet = tbOrderHistory
    Left = 424
    Top = 160
  end
  object dsSaleItemHD: TDataSource
    DataSet = tbSaleItemHD
    Left = 416
    Top = 96
  end
  object tbOrderHistory: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'STATUS='#39'A'#39
    Filtered = True
    IndexFieldNames = 'ITEM_CODE;CUST_CODE'
    MasterFields = 'ITEM_CODE;CUST_CODE'
    MasterSource = dsSaleItemHD
    TableName = 'SO_ORDER_DT'
    Left = 328
    Top = 160
    object tbOrderHistoryORDER_NO: TIBStringField
      FieldName = 'ORDER_NO'
      Size = 15
    end
    object tbOrderHistoryORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object tbOrderHistoryITEM_CODE: TIBStringField
      FieldName = 'ITEM_CODE'
      Size = 15
    end
    object tbOrderHistoryCUST_CODE: TIBStringField
      FieldName = 'CUST_CODE'
      Size = 10
    end
    object tbOrderHistoryLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
    end
    object tbOrderHistoryUOM: TIBStringField
      FieldName = 'UOM'
      Size = 4
    end
    object tbOrderHistoryITEM_DESCS: TIBStringField
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbOrderHistoryUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
    end
    object tbOrderHistoryTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
    end
    object tbOrderHistoryREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbOrderHistoryDISCS_AMT: TFloatField
      FieldName = 'DISCS_AMT'
    end
    object tbOrderHistoryTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbOrderHistoryBASE_AMT: TFloatField
      FieldName = 'BASE_AMT'
    end
    object tbOrderHistoryTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbOrderHistoryDISCS_CD: TIBStringField
      FieldName = 'DISCS_CD'
      Size = 2
    end
    object tbOrderHistoryQTY: TFloatField
      FieldName = 'QTY'
    end
    object tbOrderHistoryTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
    end
    object tbOrderHistorySTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbOrderHistoryDET_QTY: TFloatField
      FieldName = 'DET_QTY'
    end
    object tbOrderHistoryDELIVERY_DATE: TDateTimeField
      FieldName = 'DELIVERY_DATE'
    end
    object tbOrderHistoryURGENT_FLAG: TIBStringField
      FieldName = 'URGENT_FLAG'
      Size = 1
    end
    object tbOrderHistoryMARK_UP: TSmallintField
      FieldName = 'MARK_UP'
    end
    object tbOrderHistorySTOCK_USAGED_FLAG: TIBStringField
      FieldName = 'STOCK_USAGED_FLAG'
      Size = 1
    end
    object tbOrderHistorySTOCK_USAGED_QTY: TFloatField
      FieldName = 'STOCK_USAGED_QTY'
    end
  end
  object tbCustomerLookup: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SO_CUSTOMERS'
    Left = 432
    Top = 224
    object tbCustomerLookupCUSTOMER_CD: TIBStringField
      FieldName = 'CUSTOMER_CD'
      Size = 10
    end
    object tbCustomerLookupNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbCustomerLookupADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbCustomerLookupADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbCustomerLookupADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbCustomerLookupTELEPHONE: TIBStringField
      FieldName = 'TELEPHONE'
      Size = 30
    end
    object tbCustomerLookupFAX_NO: TIBStringField
      FieldName = 'FAX_NO'
      Size = 30
    end
    object tbCustomerLookupCONTRACT_PERSON: TIBStringField
      FieldName = 'CONTRACT_PERSON'
      Size = 60
    end
    object tbCustomerLookupUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbCustomerLookupUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbCustomerLookupDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbCustomerLookupTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbCustomerLookupPOSTCODE: TIBStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object tbCustomerLookupPROVINCE: TIBStringField
      FieldName = 'PROVINCE'
      Size = 30
    end
  end
  object dsCustomerLookup: TDataSource
    DataSet = tbCustomerLookup
    Left = 544
    Top = 224
  end
  object dsUom: TDataSource
    DataSet = tbUOM
    Left = 104
    Top = 192
  end
  object tbDiscount: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'DISCOUNT'
    Left = 48
    Top = 312
    object tbDiscountDISCS_CD: TIBStringField
      FieldName = 'DISCS_CD'
      Size = 2
    end
    object tbDiscountDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 18
    end
    object tbDiscountDISCS_DESCS: TIBStringField
      FieldName = 'DISCS_DESCS'
      Size = 60
    end
    object tbDiscountDISCS_RATE: TFloatField
      FieldName = 'DISCS_RATE'
    end
  end
  object tbMaterialGroup: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'IC_GROUP'
    Left = 48
    Top = 240
    object tbMaterialGroupGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbMaterialGroupDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbMaterialGroupREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 60
    end
    object tbMaterialGroupUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbMaterialGroupUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
  end
  object tbMaterialItemHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbMaterialItemHDBeforePost
    OnNewRecord = tbMaterialItemHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'STOCK_CD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EN_DESCS'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'TH_DESCS'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'SHORT_DESCS'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ONHAND_QTY'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'UNIT_COST'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_COST'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'UOM_CD'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'GROUP_ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RECOVERY'
        DataType = ftFloat
      end
      item
        Name = 'MARKED_UP'
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
      end
      item
        Name = 'DEFAULT_ELEMENT_DETAIL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONSUMEABLE_ITEM'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY29'
        Fields = 'STOCK_CD;GROUP_ID;UOM_CD'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IC_MAT_STK_HD_IDX1'
        Fields = 'STOCK_CD'
      end
      item
        Name = 'XIF17IC_MAT_STK_HD'
        Fields = 'UOM_CD'
      end
      item
        Name = 'XIF18IC_MAT_STK_HD'
        Fields = 'GROUP_ID'
      end
      item
        Name = 'XPKIC_MAT_STK_HD'
        Fields = 'STOCK_CD;GROUP_ID;UOM_CD'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'IC_MAT_STK_HD'
    Left = 144
    Top = 256
  end
  object dsApCreditorType: TDataSource
    DataSet = tbApCreditorType
    Left = 208
    Top = 16
  end
  object tbMaterialStockOnhandDetail: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'onhand_qty>0'
    Filtered = True
    IndexFieldNames = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterFields = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterSource = dsMaterialItemHD
    TableName = 'IC_MAT_STK_DT_LINK'
    Left = 336
    Top = 296
    object tbMaterialStockOnhandDetailSTOCK_CD: TIBStringField
      FieldName = 'STOCK_CD'
      Size = 15
    end
    object tbMaterialStockOnhandDetailGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 10
    end
    object tbMaterialStockOnhandDetailUOM_CD: TIBStringField
      FieldName = 'UOM_CD'
      Size = 4
    end
    object tbMaterialStockOnhandDetailLOT_CD: TIBStringField
      FieldName = 'LOT_CD'
      Size = 15
    end
    object tbMaterialStockOnhandDetailUNIT_COST: TFloatField
      FieldName = 'UNIT_COST'
    end
    object tbMaterialStockOnhandDetailLAST_PURCHASE_PRICE: TFloatField
      FieldName = 'LAST_PURCHASE_PRICE'
    end
    object tbMaterialStockOnhandDetailPURCHASE_DATE: TDateTimeField
      FieldName = 'PURCHASE_DATE'
    end
    object tbMaterialStockOnhandDetailONHAND_QTY: TFloatField
      FieldName = 'ONHAND_QTY'
    end
    object tbMaterialStockOnhandDetailRESERVED_QTY: TFloatField
      FieldName = 'RESERVED_QTY'
    end
    object tbMaterialStockOnhandDetailSTOCK_VALUE: TFloatField
      FieldName = 'STOCK_VALUE'
    end
    object tbMaterialStockOnhandDetailTOTAL_COST: TFloatField
      FieldName = 'TOTAL_COST'
    end
    object tbMaterialStockOnhandDetailACCT_CODE: TIBStringField
      FieldName = 'ACCT_CODE'
      Size = 10
    end
    object tbMaterialStockOnhandDetailORDER_LINE: TSmallintField
      FieldName = 'ORDER_LINE'
    end
    object tbMaterialStockOnhandDetailREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbMaterialStockOnhandDetailREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbMaterialStockOnhandDetailName: TStringField
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = tbAPCreditor
      LookupKeyFields = 'CREDITOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'ACCT_CODE'
      Lookup = True
    end
  end
  object dsMaterialItemHD: TDataSource
    DataSet = tbMaterialItemHD
    Left = 232
    Top = 256
  end
  object tbMaterialDefaultElement: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforeInsert = tbMaterialDefaultElementBeforeInsert
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterFields = 'STOCK_CD;GROUP_ID;UOM_CD'
    MasterSource = dsMaterialItemHD
    TableName = 'IC_MAT_DEFAULT_ELEMENT'
    Left = 344
    Top = 392
    object tbMaterialDefaultElementELE1_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE1_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE2_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE2_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE3_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE3_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE4_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE4_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE5_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE5_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE6_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE6_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE7_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE7_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE8_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE8_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE9_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE9_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE10_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE10_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE11_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE11_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE12_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE12_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE13_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE13_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE14_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE14_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE15_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE15_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE16_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE16_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE17_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE17_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE18_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE18_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE19_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE19_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE20_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE20_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE21_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE21_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE22_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE22_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE23_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE23_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE24_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE24_PERC'
      OnChange = tbMaterialDefaultElementELE1_PERCChange
    end
    object tbMaterialDefaultElementELE25_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'ELE25_PERC'
    end
    object tbMaterialDefaultElementSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Visible = False
      Size = 15
    end
    object tbMaterialDefaultElementGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Visible = False
      Size = 10
    end
    object tbMaterialDefaultElementUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Visible = False
      Size = 4
    end
  end
  object tbCustomerView: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'AR_DEBTOR'
    Left = 112
    Top = 408
    object tbCustomerViewDEBTOR_ACCT: TIBStringField
      FieldName = 'DEBTOR_ACCT'
      Size = 10
    end
    object tbCustomerViewNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbCustomerViewADDRESS1: TIBStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object tbCustomerViewADDRESS2: TIBStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object tbCustomerViewADDRESS3: TIBStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object tbCustomerViewTELPHONE: TIBStringField
      FieldName = 'TELPHONE'
      Size = 30
    end
    object tbCustomerViewFAX_NO: TIBStringField
      FieldName = 'FAX_NO'
      Size = 30
    end
    object tbCustomerViewDEBTOR_TYPE: TIBStringField
      FieldName = 'DEBTOR_TYPE'
      Size = 2
    end
    object tbCustomerViewSHORT_NAME: TIBStringField
      FieldName = 'SHORT_NAME'
      Size = 45
    end
    object tbCustomerViewCREDIT_TERM: TSmallintField
      FieldName = 'CREDIT_TERM'
    end
    object tbCustomerViewTAX_REGISTED_NO: TIBStringField
      FieldName = 'TAX_REGISTED_NO'
      Size = 15
    end
    object tbCustomerViewBALANCE_AMT: TFloatField
      FieldName = 'BALANCE_AMT'
    end
    object tbCustomerViewCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
    end
    object tbCustomerViewCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbCustomerViewMAILADDR1: TIBStringField
      FieldName = 'MAILADDR1'
      Size = 60
    end
    object tbCustomerViewMAILADDR2: TIBStringField
      FieldName = 'MAILADDR2'
      Size = 60
    end
    object tbCustomerViewMAILADDR3: TIBStringField
      FieldName = 'MAILADDR3'
      Size = 60
    end
    object tbCustomerViewUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbCustomerViewUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbCustomerViewTAX_CD: TIBStringField
      FieldName = 'TAX_CD'
      Size = 2
    end
    object tbCustomerViewPOSTCODE: TIBStringField
      FieldName = 'POSTCODE'
      Size = 10
    end
    object tbCustomerViewPROVINCE: TIBStringField
      FieldName = 'PROVINCE'
      Size = 30
    end
    object tbCustomerViewTH_ADDR1: TIBStringField
      FieldName = 'TH_ADDR1'
      Size = 60
    end
    object tbCustomerViewTH_ADDR2: TIBStringField
      FieldName = 'TH_ADDR2'
      Size = 60
    end
    object tbCustomerViewTH_ADDR3: TIBStringField
      FieldName = 'TH_ADDR3'
      Size = 60
    end
    object tbCustomerViewTH_NAME: TIBStringField
      FieldName = 'TH_NAME'
      Size = 150
    end
  end
  object dsCustomerView: TDataSource
    DataSet = tbCustomerView
    Left = 216
    Top = 416
  end
  object tbSaleComponentDetail: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'CUST_CODE;ITEM_CODE'
    MasterFields = 'CUST_CODE;ITEM_CODE'
    MasterSource = dsSaleItemHD
    TableName = 'SO_COMPONENTS_DETAIL'
    Left = 496
    Top = 408
  end
  object tbCompositionControl: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'COMPOSITIONCONTROL'
    Left = 672
    Top = 40
    object tbCompositionControlCOMPOSITIONCONTROLID: TSmallintField
      FieldName = 'COMPOSITIONCONTROLID'
    end
    object tbCompositionControlCOMPOSITIONCONTROLNAME: TIBStringField
      FieldName = 'COMPOSITIONCONTROLNAME'
      Size = 60
    end
    object tbCompositionControlCOMPOSITIONCONTROLSTARTINDEX: TSmallintField
      FieldName = 'COMPOSITIONCONTROLSTARTINDEX'
    end
    object tbCompositionControlCOMPOSITIONCONTROLENDINDEX: TSmallintField
      FieldName = 'COMPOSITIONCONTROLENDINDEX'
    end
    object tbCompositionControlCOMPOSITIONCONTROLCODE: TIBStringField
      FieldName = 'COMPOSITIONCONTROLCODE'
      Size = 4
    end
    object tbCompositionControlCOMPOSITIONACTIVE: TIBStringField
      FieldName = 'COMPOSITIONACTIVE'
      Size = 1
    end
    object tbCompositionControlREMELTRECOVERYPERCENTAGE: TFloatField
      FieldName = 'REMELTRECOVERYPERCENTAGE'
    end
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 688
    Top = 128
  end
  object spUpdateSaleComponentDetail: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_GET_SALEITEM_COMPONENTS'
    Left = 672
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'ACUST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AITEM_CODE'
        ParamType = ptInput
      end>
  end
end
