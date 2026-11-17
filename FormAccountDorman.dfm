inherited frmAccountDorman: TfrmAccountDorman
  Caption = 'Account Dorman'
  ClientHeight = 191
  ClientWidth = 550
  ExplicitWidth = 556
  ExplicitHeight = 220
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 550
    Height = 101
    ExplicitWidth = 550
    ExplicitHeight = 101
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 70
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ADNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 139
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [1]
      Left = 70
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 206
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 331
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 70
      Top = 64
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 467
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Dorman No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Account No'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 331
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Reason'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 122
    Width = 550
    ExplicitTop = 122
    ExplicitWidth = 550
    inherited dbNavLog: TDBNavigator
      Left = 436
      Hints.Strings = ()
      ExplicitLeft = 436
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 171
    Width = 550
    ExplicitTop = 171
    ExplicitWidth = 550
  end
  inherited tabEditorData: TTabSet
    Top = 101
    Width = 550
    ExplicitTop = 101
    ExplicitWidth = 550
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccountDorman
    Left = 472
    Top = 64
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 512
  end
  object cdsAccountDorman: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ADID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountDorman'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsAccountDormanBeforePost
    OnNewRecord = cdsAccountDormanNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 8
    object cdsAccountDormanADID: TLargeintField
      FieldName = 'ADID'
      Required = True
    end
    object cdsAccountDormanADNO: TStringField
      FieldName = 'ADNO'
      Size = 30
    end
    object cdsAccountDormanACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountDormanREMARK: TStringField
      FieldName = 'REMARK'
      Size = 255
    end
    object cdsAccountDormanREQ_DORMAN_DATE: TDateTimeField
      FieldName = 'REQ_DORMAN_DATE'
    end
    object cdsAccountDormanAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object cdsAccountDormanAPP_DORMAN_DATE: TDateTimeField
      FieldName = 'APP_DORMAN_DATE'
    end
    object cdsAccountDormanREQ_KSEI_ID: TStringField
      FieldName = 'REQ_KSEI_ID'
      Size = 4
    end
    object cdsAccountDormanREQ_KSEIID_DATE: TDateTimeField
      FieldName = 'REQ_KSEIID_DATE'
    end
    object cdsAccountDormanMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountDormanMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountDormanAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountDormanAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountDormanUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountDormanUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountDormanNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountDormanISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountDormanID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountDormanACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsAccountDormanACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNO'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsAccountDormanOLD_SUBREK001: TStringField
      FieldName = 'OLD_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanOLD_SUBREK004: TStringField
      FieldName = 'OLD_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanNEW_SUBREK001: TStringField
      FieldName = 'NEW_SUBREK001'
      Size = 30
    end
    object cdsAccountDormanNEW_SUBREK004: TStringField
      FieldName = 'NEW_SUBREK004'
      Size = 30
    end
    object cdsAccountDormanUPD_KSEI_DATE: TDateField
      FieldName = 'UPD_KSEI_DATE'
    end
  end
end
