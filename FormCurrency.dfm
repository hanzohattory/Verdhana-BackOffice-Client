inherited frmCurrency: TfrmCurrency
  Caption = 'Currency'
  ClientHeight = 243
  ClientWidth = 455
  ExplicitWidth = 461
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 455
    Height = 153
    ExplicitWidth = 517
    ExplicitHeight = 143
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 119
      Top = 10
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 82
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 119
      Top = 37
      DataBinding.DataField = 'CCYNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 322
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 119
      Top = 64
      RepositoryItem = dmGlobal.luGLAccountTrxNo
      DataBinding.DataField = 'SPCONACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 103
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 119
      Top = 91
      RepositoryItem = dmGlobal.luGLAccountTrxNo
      DataBinding.DataField = 'SPPOSACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 103
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [4]
      Left = 119
      Top = 118
      RepositoryItem = dmGlobal.luGLAccountTrxNo
      DataBinding.DataField = 'CCY_REVALGLID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 103
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 228
      Top = 64
      TabStop = False
      DataBinding.DataField = 'SPCONNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 213
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 228
      Top = 91
      TabStop = False
      DataBinding.DataField = 'SPPOSNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 213
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 228
      Top = 118
      TabStop = False
      DataBinding.DataField = 'CCY_REVALNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 213
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 322
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Spot Control Account'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Spot Position Account'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Unrealize Gain/Loss'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit4'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 174
    Width = 455
    ExplicitTop = 164
    ExplicitWidth = 517
    inherited dbNavLog: TDBNavigator
      Left = 341
      Hints.Strings = ()
      ExplicitLeft = 341
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 223
    Width = 455
    ExplicitTop = 213
    ExplicitWidth = 517
  end
  inherited tabEditorData: TTabSet
    Top = 153
    Width = 455
    ExplicitTop = 143
    ExplicitWidth = 517
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCcy
    Left = 352
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 224
    Top = 0
  end
  object cdsCcy: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CCYCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryCcy'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    object cdsCcyCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCcyCCYNAME: TStringField
      FieldName = 'CCYNAME'
      Size = 50
    end
    object cdsCcySPCONACC: TStringField
      FieldName = 'SPCONACC'
    end
    object cdsCcySPPOSACC: TStringField
      FieldName = 'SPPOSACC'
    end
    object cdsCcyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCcyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCcyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCcyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCcyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCcyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCcySPCONACCID: TLargeintField
      FieldName = 'SPCONACCID'
    end
    object cdsCcySPPOSACCID: TLargeintField
      FieldName = 'SPPOSACCID'
    end
    object cdsCcyCCY_REVALGLID: TLargeintField
      FieldName = 'CCY_REVALGLID'
    end
    object cdsCcySPCONNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SPCONNAME'
      LookupDataSet = dmLookup.cdsLuGLAccountTrx
      LookupKeyFields = 'GLACCOUNTID'
      LookupResultField = 'GLACCOUNTNAME'
      KeyFields = 'SPCONACCID'
      Size = 200
      Lookup = True
    end
    object cdsCcySPPOSNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SPPOSNAME'
      LookupDataSet = dmLookup.cdsLuGLAccountTrx
      LookupKeyFields = 'GLACCOUNTID'
      LookupResultField = 'GLACCOUNTNAME'
      KeyFields = 'SPPOSACCID'
      Size = 200
      Lookup = True
    end
    object cdsCcyCCY_REVALNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY_REVALNAME'
      LookupDataSet = dmLookup.cdsLuGLAccountTrx
      LookupKeyFields = 'GLACCOUNTID'
      LookupResultField = 'GLACCOUNTNAME'
      KeyFields = 'CCY_REVALGLID'
      Size = 200
      Lookup = True
    end
  end
end
