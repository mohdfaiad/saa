object StockEnquriyDM: TStockEnquriyDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1436
  Top = 201
  Height = 484
  Width = 623
  object qryStockMain: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM IC_MAT_STK_HD'
      'where stock_cd ='#39'A008'#39)
    Left = 72
    Top = 48
  end
  object qryPurchaseDetail: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from po_order_dt'
      'WHERE ORDER_NO=:ORDER_NO'
      '')
    Left = 72
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'ORDER_NO'
        ParamType = ptInput
      end>
    object qryPurchaseDetailORDER_NO: TIBStringField
      DisplayLabel = 'ORDER NO'
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'PO_ORDER_DT.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryPurchaseDetailORDER_DATE: TDateTimeField
      DisplayLabel = 'ORDER DATE'
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'PO_ORDER_DT.ORDER_DATE'
      Required = True
    end
    object qryPurchaseDetailITEM_CODE: TIBStringField
      DisplayLabel = 'ITEM CODE'
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'PO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryPurchaseDetailITEM_DESCS: TIBStringField
      DisplayLabel = 'ITEM DESCS'
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'PO_ORDER_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryPurchaseDetailUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Origin = 'PO_ORDER_DT.UOM'
      Required = True
      Size = 4
    end
    object qryPurchaseDetailQTY: TFloatField
      DisplayLabel = 'Order Qty'
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'PO_ORDER_DT.QTY'
      Required = True
    end
    object qryPurchaseDetailGRN_QTY: TFloatField
      DisplayLabel = 'GRN QTY'
      DisplayWidth = 10
      FieldName = 'GRN_QTY'
      Origin = 'PO_ORDER_DT.GRN_QTY'
      Required = True
    end
    object qryPurchaseDetailUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'PO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryPurchaseDetailTOTAL_AMT: TFloatField
      DisplayLabel = 'TOTAL COST'
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'PO_ORDER_DT.TOTAL_AMT'
      Required = True
    end
    object qryPurchaseDetailLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Origin = 'PO_ORDER_DT.LINE_NO'
      Required = True
      Visible = False
    end
    object qryPurchaseDetailSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_ORDER_DT.SUPP_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryPurchaseDetailREMARKS: TIBStringField
      DisplayWidth = 60
      FieldName = 'REMARKS'
      Origin = 'PO_ORDER_DT.REMARKS'
      Required = True
      Visible = False
      Size = 60
    end
    object qryPurchaseDetailDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Origin = 'PO_ORDER_DT.DISCS_AMT'
      Visible = False
    end
    object qryPurchaseDetailTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Origin = 'PO_ORDER_DT.TAX_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseDetailBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      Origin = 'PO_ORDER_DT.BASE_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseDetailTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'PO_ORDER_DT.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qryPurchaseDetailDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Origin = 'PO_ORDER_DT.DISCS_CD'
      Visible = False
      Size = 2
    end
    object qryPurchaseDetailTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      Origin = 'PO_ORDER_DT.TAX_RATE'
      Required = True
      Visible = False
    end
    object qryPurchaseDetailSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'PO_ORDER_DT.STATUS'
      Visible = False
      Size = 1
    end
    object qryPurchaseDetailLOT_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      Origin = 'PO_ORDER_DT.LOT_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object qryPurchaseDetailGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'PO_ORDER_DT.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryPurchaseDetailMARKUP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARKUP'
      Origin = 'PO_ORDER_DT.MARKUP'
      Visible = False
    end
    object qryPurchaseDetailDISCS_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_RATE'
      Origin = 'PO_ORDER_DT.DISCS_RATE'
      Visible = False
    end
    object qryPurchaseDetailUPDATE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'UPDATE_PRICE'
      Origin = 'PO_ORDER_DT.UPDATE_PRICE'
      Visible = False
    end
    object qryPurchaseDetailUPDATE_TOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'UPDATE_TOTAL_AMT'
      Origin = 'PO_ORDER_DT.UPDATE_TOTAL_AMT'
      Visible = False
    end
    object qryPurchaseDetailSTOCK_EMPTY: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_EMPTY'
      Origin = 'PO_ORDER_DT.STOCK_EMPTY'
      Visible = False
      Size = 1
    end
  end
  object qryGRN: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from po_grn_dt'
      'WHERE ORDER_NO =:ORDER_NO'
      '')
    Left = 72
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'ORDER_NO'
        ParamType = ptInput
      end>
    object qryGRNORDER_NO: TIBStringField
      DisplayLabel = 'ORDER NO'
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'PO_GRN_DT.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryGRNORDER_DATE: TDateTimeField
      DisplayLabel = 'ORDER DATE'
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'PO_GRN_DT.ORDER_DATE'
      Required = True
    end
    object qryGRNGRN_NO: TIBStringField
      DisplayLabel = 'GRN NO'
      DisplayWidth = 15
      FieldName = 'GRN_NO'
      Origin = 'PO_GRN_DT.GRN_NO'
      Required = True
      Size = 15
    end
    object qryGRNGRN_DATE: TDateTimeField
      DisplayLabel = 'GRN DATE'
      DisplayWidth = 18
      FieldName = 'GRN_DATE'
      Origin = 'PO_GRN_DT.GRN_DATE'
      Required = True
    end
    object qryGRNITEM_CODE: TIBStringField
      DisplayLabel = 'ITEM CODE'
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'PO_GRN_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryGRNITEM_DESCS: TIBStringField
      DisplayLabel = 'ITEM DESCS'
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'PO_GRN_DT.ITEM_DESCS'
      Required = True
      Size = 60
    end
    object qryGRNGRN_QTY: TFloatField
      DisplayLabel = 'GRN QTY'
      DisplayWidth = 10
      FieldName = 'GRN_QTY'
      Origin = 'PO_GRN_DT.GRN_QTY'
      Required = True
    end
    object qryGRNUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'PO_GRN_DT.UNIT_COST'
      Required = True
    end
    object qryGRNTOTAL_AMT: TFloatField
      DisplayLabel = 'TOTAL COST'
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'PO_GRN_DT.TOTAL_AMT'
      Required = True
    end
    object qryGRNORDER_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'ORDER_LINE'
      Origin = 'PO_GRN_DT.ORDER_LINE'
      Required = True
      Visible = False
    end
    object qryGRNSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_GRN_DT.SUPP_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryGRNUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Origin = 'PO_GRN_DT.UOM'
      Required = True
      Visible = False
      Size = 4
    end
    object qryGRNREMARKS: TIBStringField
      DisplayWidth = 60
      FieldName = 'REMARKS'
      Origin = 'PO_GRN_DT.REMARKS'
      Visible = False
      Size = 60
    end
    object qryGRNDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Origin = 'PO_GRN_DT.DISCS_AMT'
      Visible = False
    end
    object qryGRNTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Origin = 'PO_GRN_DT.TAX_AMT'
      Required = True
      Visible = False
    end
    object qryGRNBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      Origin = 'PO_GRN_DT.BASE_AMT'
      Required = True
      Visible = False
    end
    object qryGRNTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'PO_GRN_DT.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qryGRNGRN_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'GRN_LINE'
      Origin = 'PO_GRN_DT.GRN_LINE'
      Required = True
      Visible = False
    end
    object qryGRNDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Origin = 'PO_GRN_DT.DISCS_CD'
      Visible = False
      Size = 2
    end
    object qryGRNORDER_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
      Origin = 'PO_GRN_DT.ORDER_QTY'
      Required = True
      Visible = False
    end
    object qryGRNTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      Origin = 'PO_GRN_DT.TAX_RATE'
      Required = True
      Visible = False
    end
    object qryGRNSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'PO_GRN_DT.STATUS'
      Visible = False
      Size = 1
    end
    object qryGRNGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'PO_GRN_DT.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryGRNLOT_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      Origin = 'PO_GRN_DT.LOT_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object qryGRNMARK_UP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARK_UP'
      Origin = 'PO_GRN_DT.MARK_UP'
      Visible = False
    end
  end
  object qryIssue: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_stockcard'
      'WHERE LOT_CD=:ORDER_NO'
      ''
      'AND TRX_TYPE <>'#39'GR'#39)
    Left = 72
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORDER_NO'
        ParamType = ptUnknown
      end>
  end
  object qryOnhand: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * from ic_mat_stk_dt_link'
      'WHERE LOT_CD=:ORDER_NO'
      ''
      '')
    Left = 272
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORDER_NO'
        ParamType = ptInput
      end>
    object qryOnhandLOT_CD: TIBStringField
      DisplayLabel = 'LOT CD'
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_MAT_STK_DT_LINK.LOT_CD'
      Required = True
      Size = 15
    end
    object qryOnhandPURCHASE_DATE: TDateTimeField
      DisplayLabel = 'PURCHASE DATE'
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.PURCHASE_DATE'
      Required = True
    end
    object qryOnhandREF_NO: TIBStringField
      DisplayLabel = 'GRN NO'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'IC_MAT_STK_DT_LINK.REF_NO'
      Required = True
      Size = 15
    end
    object qryOnhandREF_DATE: TDateTimeField
      DisplayLabel = 'GRN DATE'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'IC_MAT_STK_DT_LINK.REF_DATE'
      Required = True
    end
    object qryOnhandUNIT_COST: TFloatField
      DisplayLabel = 'UNIT COST'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'IC_MAT_STK_DT_LINK.UNIT_COST'
      Required = True
    end
    object qryOnhandONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.ONHAND_QTY'
      Required = True
    end
    object qryOnhandRESERVED_QTY: TFloatField
      DisplayLabel = 'RESERVED QTY'
      DisplayWidth = 10
      FieldName = 'RESERVED_QTY'
      Origin = 'IC_MAT_STK_DT_LINK.RESERVED_QTY'
      Required = True
    end
    object qryOnhandTOTAL_COST: TFloatField
      DisplayLabel = 'TOTAL COST'
      DisplayWidth = 10
      FieldName = 'TOTAL_COST'
      Origin = 'IC_MAT_STK_DT_LINK.TOTAL_COST'
    end
    object qryOnhandSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_MAT_STK_DT_LINK.STOCK_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object qryOnhandGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_MAT_STK_DT_LINK.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_MAT_STK_DT_LINK.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
    object qryOnhandLAST_PURCHASE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'LAST_PURCHASE_PRICE'
      Origin = 'IC_MAT_STK_DT_LINK.LAST_PURCHASE_PRICE'
      Required = True
      Visible = False
    end
    object qryOnhandSTOCK_VALUE: TFloatField
      DisplayWidth = 10
      FieldName = 'STOCK_VALUE'
      Origin = 'IC_MAT_STK_DT_LINK.STOCK_VALUE'
      Visible = False
    end
    object qryOnhandACCT_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'ACCT_CODE'
      Origin = 'IC_MAT_STK_DT_LINK.ACCT_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryOnhandORDER_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'ORDER_LINE'
      Origin = 'IC_MAT_STK_DT_LINK.ORDER_LINE'
      Required = True
      Visible = False
    end
  end
  object qryReserved: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ic_stock_reserved'
      'WHERE LOT_CD=:ORDER_NO'
      '')
    Left = 72
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'ORDER_NO'
        ParamType = ptInput
      end>
    object qryReservedDOC_NO: TIBStringField
      DisplayLabel = 'Reserved Doc'
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Origin = 'IC_STOCK_RESERVED.DOC_NO'
      Required = True
      Size = 15
    end
    object qryReservedDOC_DATE: TDateTimeField
      DisplayLabel = 'Reserved DocDate'
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Origin = 'IC_STOCK_RESERVED.DOC_DATE'
      Required = True
    end
    object qryReservedLOT_CD: TIBStringField
      DisplayLabel = 'LOT CD'
      DisplayWidth = 15
      FieldName = 'LOT_CD'
      Origin = 'IC_STOCK_RESERVED.LOT_CD'
      Required = True
      Size = 15
    end
    object qryReservedPURCHASE_DATE: TDateTimeField
      DisplayLabel = 'PURCHASE DATE'
      DisplayWidth = 18
      FieldName = 'PURCHASE_DATE'
      Origin = 'IC_STOCK_RESERVED.PURCHASE_DATE'
      Required = True
    end
    object qryReservedREF_NO: TIBStringField
      DisplayLabel = 'GRN NO'
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'IC_STOCK_RESERVED.REF_NO'
      Required = True
      Size = 15
    end
    object qryReservedREF_DATE: TDateTimeField
      DisplayLabel = 'GRN DATE'
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'IC_STOCK_RESERVED.REF_DATE'
      Required = True
    end
    object qryReservedQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'IC_STOCK_RESERVED.QTY'
      Required = True
    end
    object qryReservedUPDATE_USER: TIBStringField
      DisplayLabel = 'Reserved User'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'IC_STOCK_RESERVED.UPDATE_USER'
      Size = 10
    end
    object qryReservedUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Reserved Date'
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'IC_STOCK_RESERVED.UPDATE_DATE'
    end
    object qryReservedSTOCK_CD: TIBStringField
      DisplayWidth = 15
      FieldName = 'STOCK_CD'
      Origin = 'IC_STOCK_RESERVED.STOCK_CD'
      Required = True
      Visible = False
      Size = 15
    end
    object qryReservedGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'IC_STOCK_RESERVED.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryReservedUOM_CD: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM_CD'
      Origin = 'IC_STOCK_RESERVED.UOM_CD'
      Required = True
      Visible = False
      Size = 4
    end
  end
  object qryPurchaseHeader: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = qryPurchaseHeaderAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select po_order_hd.order_no, '
      'po_order_hd.order_date,'
      'po_order_hd.delivery_date,'
      'po_order_hd.supp_code,name '
      'from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd  '
      'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '
      ' AND PO_ORDER_HD.status<>'#39'C'#39
      ' and po_order_dt.order_no = po_order_hd.order_no '
      ' and po_order_dt.supp_code = po_supplier.supplier_cd '
      ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '
      ' and ic_mat_stk_hd.en_descs like '#39'%Ingot%'#39
      ' and po_supplier.name like '#39'%Cha%'#39
      ' and po_order_hd.order_date >='#39'5/10/2008'#39)
    Left = 72
    Top = 112
    object qryPurchaseHeaderORDER_NO: TIBStringField
      DisplayLabel = 'ORDER NO'
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'PO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryPurchaseHeaderORDER_DATE: TDateTimeField
      DisplayLabel = 'ORDER DATE'
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'PO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryPurchaseHeaderDELIVERY_DATE: TDateTimeField
      DisplayLabel = 'DELIVERY DATE'
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Origin = 'PO_ORDER_HD.DELIVERY_DATE'
      Required = True
    end
    object qryPurchaseHeaderSUPP_CODE: TIBStringField
      DisplayLabel = 'SUPP CODE'
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_ORDER_HD.SUPP_CODE'
      Required = True
      Size = 10
    end
    object qryPurchaseHeaderNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'PO_SUPPLIER.NAME'
      Required = True
      Size = 60
    end
  end
end
