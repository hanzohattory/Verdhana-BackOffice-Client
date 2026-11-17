inherited frmReferralType: TfrmReferralType
  Caption = 'Referral Group'
  ClientHeight = 162
  ClientWidth = 544
  ExplicitWidth = 550
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 544
    Height = 72
    ExplicitWidth = 544
    ExplicitHeight = 72
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 142
      Top = 10
      DataBinding.DataField = 'REFERRAL_TYPE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 142
      Top = 37
      DataBinding.DataField = 'REFERRAL_TYPE_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 390
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [2]
      Left = 298
      Top = 10
      Ctl3D = False
      DataBinding.DataField = 'REFERRAL_GROUP'
      DataBinding.DataSource = dsSubject
      ParentCtl3D = False
      Properties.Columns = 2
      Properties.DefaultValue = 'E'
      Properties.Items = <
        item
          Caption = 'Internal'
          Value = 'I'
        end
        item
          Caption = 'Eksternal'
          Value = 'E'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsNone
      Style.Edges = []
      TabOrder = 1
      Height = 21
      Width = 185
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Referral Group'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Referral Group Description'
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
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Type'
      Parent = dxLayoutControl1Group1
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 93
    Width = 544
    ExplicitTop = 93
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
    Top = 142
    Width = 544
    ExplicitTop = 142
    ExplicitWidth = 544
  end
  inherited tabEditorData: TTabSet
    Top = 72
    Width = 544
    ExplicitTop = 72
    ExplicitWidth = 544
  end
  inherited dsSubject: TDataSource
    DataSet = cdsReferralType
  end
  object cdsReferralType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'REFERRAL_TYPE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryReferralType'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsReferralTypeBeforePost
    OnNewRecord = cdsReferralTypeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 112
    object cdsReferralTypeREFERRAL_TYPE_ID: TIntegerField
      FieldName = 'REFERRAL_TYPE_ID'
      Required = True
    end
    object cdsReferralTypeREFERRAL_TYPE: TStringField
      FieldName = 'REFERRAL_TYPE'
      Required = True
      Size = 10
    end
    object cdsReferralTypeREFERRAL_TYPE_DESC: TStringField
      FieldName = 'REFERRAL_TYPE_DESC'
      Required = True
      Size = 100
    end
    object cdsReferralTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReferralTypeMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsReferralTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReferralTypeAPPUI: TStringField
      FieldName = 'APPUI'
    end
    object cdsReferralTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReferralTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReferralTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReferralTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReferralTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsReferralTypeREFERRAL_GROUP: TStringField
      FieldName = 'REFERRAL_GROUP'
      Required = True
      Size = 1
    end
  end
end
