inherited LogicDM: TLogicDM
  OldCreateOrder = True
  Left = 276
  Top = 275
  Height = 214
  Width = 326
  object ActionManager: TActionManager
    Left = 40
    Top = 16
    StyleName = 'XP Style'
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 80
    Top = 16
  end
end
