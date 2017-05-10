inherited LicenseManagerDM: TLicenseManagerDM
  OldCreateOrder = True
  Left = 211
  Top = 202
  Height = 228
  Width = 282
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 48
    Top = 24
  end
  object tbDBVersion: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 48
    Top = 88
  end
end
