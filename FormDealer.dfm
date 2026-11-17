inherited frmDealer: TfrmDealer
  Caption = 'Dealer'
  ClientHeight = 162
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 72
    ExplicitHeight = 68
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 42
      Top = 10
      DataBinding.DataField = 'DEALERCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 42
      Top = 37
      DataBinding.DataField = 'DEALERNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 471
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 93
    ExplicitTop = 89
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 142
    ExplicitTop = 138
  end
  inherited tabEditorData: TTabSet
    Top = 72
    ExplicitTop = 68
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDealer
    Left = 400
  end
  object cdsDealer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryDealer'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsDealerBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 16
    object cdsDealerDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealerDEALERCODE: TStringField
      FieldName = 'DEALERCODE'
      Required = True
      Size = 30
    end
    object cdsDealerDEALERNAME: TStringField
      FieldName = 'DEALERNAME'
      Size = 150
    end
    object cdsDealerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDealerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDealerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDealerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDealerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDealerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDealerID: TLargeintField
      FieldName = 'ID'
    end
  end
end
