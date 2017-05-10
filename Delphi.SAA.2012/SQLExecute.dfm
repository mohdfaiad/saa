inherited SQLExecuteForm: TSQLExecuteForm
  Left = 331
  Top = 256
  Width = 527
  Caption = 'SQLExecuteForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Width = 511
  end
  object IBSQL1: TIBSQL
    ParamCheck = True
    Left = 88
    Top = 56
  end
  object IBSQLMonitor1: TIBSQLMonitor
    TraceFlags = [tfQPrepare, tfQExecute, tfQFetch, tfError, tfStmt, tfConnect, tfTransact, tfBlob, tfService, tfMisc]
    Left = 192
    Top = 64
  end
end
