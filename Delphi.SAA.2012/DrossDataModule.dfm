inherited DROSSDM: TDROSSDM
  OldCreateOrder = True
  Left = 1380
  Top = 205
  Height = 503
  Width = 663
  object tbDrossReceiveHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterClose = tbDrossReceiveHDAfterClose
    AfterDelete = tbDrossReceiveHDAfterDelete
    AfterPost = tbDrossReceiveHDAfterPost
    BeforePost = tbDrossReceiveHDBeforePost
    OnNewRecord = tbDrossReceiveHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    Filter = 'STATUS<>'#39'X'#39
    TableName = 'PL_DROSS_HD'
    Left = 240
    Top = 24
    object tbDrossReceiveHDMELT_NO: TIBStringField
      FieldName = 'MELT_NO'
      Size = 10
    end
    object tbDrossReceiveHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 255
    end
    object tbDrossReceiveHDRECEIVE_DATE: TDateTimeField
      FieldName = 'RECEIVE_DATE'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object tbDrossReceiveHDRECEIVE_DOC: TIBStringField
      FieldName = 'RECEIVE_DOC'
      Size = 15
    end
    object tbDrossReceiveHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbDrossReceiveHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbDrossReceiveHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object tbDrossReceiveDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterDelete = tbDrossReceiveDTAfterDelete
    AfterPost = tbDrossReceiveDTAfterPost
    BeforePost = tbDrossReceiveDTBeforePost
    OnNewRecord = tbDrossReceiveDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'MELT_NO;RECEIVE_DOC;RECEIVE_DATE'
    MasterFields = 'MELT_NO;RECEIVE_DOC;RECEIVE_DATE'
    MasterSource = dsDrossReceiveHD
    TableName = 'PL_DROSS_DT'
    Left = 240
    Top = 112
    object tbDrossReceiveDTDROSS_TYPE: TSmallintField
      DisplayLabel = 'DROSS TYPE'
      DisplayWidth = 10
      FieldName = 'DROSS_TYPE'
    end
    object tbDrossReceiveDTDESCS: TIBStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 45
      FieldName = 'DESCS'
      Size = 45
    end
    object tbDrossReceiveDTNET_WEIGHT: TFloatField
      DisplayLabel = 'NET WEIGHT'
      DisplayWidth = 10
      FieldName = 'NET_WEIGHT'
    end
    object tbDrossReceiveDTWEIGHT: TFloatField
      DisplayWidth = 10
      FieldName = 'WEIGHT'
      Visible = False
    end
    object tbDrossReceiveDTMELT_NO: TIBStringField
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Visible = False
      Size = 10
    end
    object tbDrossReceiveDTRECEIVE_DOC: TIBStringField
      DisplayWidth = 15
      FieldName = 'RECEIVE_DOC'
      Visible = False
      Size = 15
    end
    object tbDrossReceiveDTRECEIVE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'RECEIVE_DATE'
      Visible = False
    end
  end
  object spPostDrossReceive: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_POST_DROSS_RECEIVE'
    Left = 80
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'AMELT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ARECEIVE_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AUSERID'
        ParamType = ptInput
      end>
  end
  object qryUnClosedRawmaterialPlan: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM V_RAWMATERIAL_PLAN')
    Left = 80
    Top = 32
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
  object dsDrossReceiveHD: TDataSource
    DataSet = tbDrossReceiveHD
    Left = 352
    Top = 24
  end
  object dsDrossReceiveDT: TDataSource
    DataSet = tbDrossReceiveDT
    Left = 360
    Top = 112
  end
  object qryUnpostDross: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pl_dross_hd'
      'where status ='#39'N'#39)
    Left = 72
    Top = 192
    object qryUnpostDrossMELT_NO: TIBStringField
      DisplayLabel = 'MELT NO'
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'PL_DROSS_HD.MELT_NO'
      Required = True
      Size = 10
    end
    object qryUnpostDrossDESCS: TIBStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 45
      FieldName = 'DESCS'
      Origin = 'PL_DROSS_HD.DESCS'
      Size = 255
    end
    object qryUnpostDrossRECEIVE_DATE: TDateTimeField
      DisplayLabel = 'Receive Date'
      DisplayWidth = 10
      FieldName = 'RECEIVE_DATE'
      Origin = 'PL_DROSS_HD.RECEIVE_DATE'
      Required = True
    end
    object qryUnpostDrossRECEIVE_DOC: TIBStringField
      DisplayLabel = 'Receive No'
      DisplayWidth = 15
      FieldName = 'RECEIVE_DOC'
      Origin = 'PL_DROSS_HD.RECEIVE_DOC'
      Required = True
      Size = 15
    end
    object qryUnpostDrossUPDATE_USER: TIBStringField
      DisplayLabel = 'Created By'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'PL_DROSS_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnpostDrossUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Create Date'
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'PL_DROSS_HD.UPDATE_DATE'
    end
    object qryUnpostDrossSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'PL_DROSS_HD.STATUS'
      Visible = False
      Size = 1
    end
  end
  object tbDross: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexName = 'PK_PL_DROSS_TYPE'
    TableName = 'PL_DROSS_TYPE'
    Left = 240
    Top = 192
    object tbDrossDROSS_TYPE: TSmallintField
      DisplayLabel = 'DROSS TYPE'
      DisplayWidth = 10
      FieldName = 'DROSS_TYPE'
    end
    object tbDrossDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 30
      FieldName = 'DESCS'
      Size = 30
    end
  end
  object qryDrossBalance: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from pl_dross_balance b , pl_dross_type  t'
      'where  b.dross_type =t.dross_type'
      'and  b.melt_no LIKE :MELT_NO')
    Left = 72
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'melt_no'
        ParamType = ptInput
      end>
    object qryDrossBalanceMELT_NO: TIBStringField
      DisplayLabel = 'MELT NO'
      DisplayWidth = 10
      FieldName = 'MELT_NO'
      Origin = 'PL_DROSS_BALANCE.MELT_NO'
      Required = True
      Size = 10
    end
    object qryDrossBalanceDROSS_TYPE: TSmallintField
      DisplayLabel = 'DROSS TYPE'
      DisplayWidth = 10
      FieldName = 'DROSS_TYPE'
      Origin = 'PL_DROSS_BALANCE.DROSS_TYPE'
      Required = True
    end
    object qryDrossBalanceONHAND_QTY: TFloatField
      DisplayLabel = 'ONHAND QTY'
      DisplayWidth = 10
      FieldName = 'ONHAND_QTY'
      Origin = 'PL_DROSS_BALANCE.ONHAND_QTY'
      Required = True
    end
    object qryDrossBalanceDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 30
      FieldName = 'DESCS'
      Origin = 'PL_DROSS_TYPE.DESCS'
      Size = 30
    end
    object qryDrossBalanceDROSS_TYPE1: TSmallintField
      DisplayLabel = 'DROSS TYPE1'
      DisplayWidth = 10
      FieldName = 'DROSS_TYPE1'
      Origin = 'PL_DROSS_TYPE.DROSS_TYPE'
      Required = True
      Visible = False
    end
  end
end
