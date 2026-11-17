inherited frmReferral: TfrmReferral
  Caption = 'Referral'
  ClientHeight = 159
  ClientWidth = 544
  ExplicitWidth = 550
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 544
    Height = 69
    ExplicitWidth = 544
    ExplicitHeight = 69
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 110
      Top = 10
      DataBinding.DataField = 'REFERRAL_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 313
      Top = 10
      RepositoryItem = dmGlobal.luReferralType
      DataBinding.DataField = 'REFERRAL_TYPE_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 110
      Top = 37
      DataBinding.DataField = 'REFERRAL_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 422
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Referral Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Referral Group'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Referral Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 90
    Width = 544
    ExplicitTop = 90
    ExplicitWidth = 544
    inherited dbNavLog: TDBNavigator
      Left = 430
      Hints.Strings = ()
      ExplicitLeft = 430
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
    Top = 139
    Width = 544
    ExplicitTop = 139
    ExplicitWidth = 544
  end
  inherited tabEditorData: TTabSet
    Top = 69
    Width = 544
    ExplicitTop = 69
    ExplicitWidth = 544
  end
  inherited dsSubject: TDataSource
    DataSet = cdsReferral
  end
  object cdsReferral: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'REFERRAL_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryReferral'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsReferralBeforePost
    OnNewRecord = cdsReferralNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 112
    object cdsReferralREFERRAL_ID: TIntegerField
      FieldName = 'REFERRAL_ID'
      Required = True
    end
    object cdsReferralREFERRAL_CODE: TStringField
      FieldName = 'REFERRAL_CODE'
      Required = True
      Size = 10
    end
    object cdsReferralREFERRAL_TYPE_ID: TIntegerField
      FieldName = 'REFERRAL_TYPE_ID'
      Required = True
    end
    object cdsReferralREFERRAL_DESC: TStringField
      FieldName = 'REFERRAL_DESC'
      Required = True
      Size = 100
    end
    object cdsReferralMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReferralMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsReferralAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReferralAPPUI: TStringField
      FieldName = 'APPUI'
    end
    object cdsReferralUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReferralUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReferralNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReferralISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReferralID: TLargeintField
      FieldName = 'ID'
    end
  end
end
