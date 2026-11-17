inherited frmCompanyCustody: TfrmCompanyCustody
  Caption = 'Company Custody'
  ClientHeight = 189
  ClientWidth = 534
  ExplicitWidth = 550
  ExplicitHeight = 228
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 534
    Height = 99
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 69
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CUSTODYTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 228
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'CUSTODYCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 69
      Top = 37
      DataBinding.DataField = 'CUSTODYACCNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 228
      Top = 37
      AutoSize = False
      DataBinding.DataField = 'CUSTODYACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 21
      Width = 292
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 69
      Top = 64
      TabStop = False
      DataBinding.DataField = 'CUSTODYBRANCH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Type'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account no'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 292
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Branch'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 120
    Width = 534
    inherited dbNavLog: TDBNavigator
      Left = 420
      Hints.Strings = ()
      ExplicitLeft = 420
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 169
    Width = 534
  end
  inherited tabEditorData: TTabSet
    Top = 99
    Width = 534
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCompanyCustody
    Left = 320
    Top = 120
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 320
    Top = 168
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCompanyCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CUSTODYID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryCompanyCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 120
    object cdsCompanyCustodyCUSTODYID: TIntegerField
      FieldName = 'CUSTODYID'
      Required = True
    end
    object cdsCompanyCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Required = True
      OnGetText = cdsCompanyCustodyCUSTODYTYPEGetText
      Size = 3
    end
    object cdsCompanyCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 10
    end
    object cdsCompanyCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Required = True
    end
    object cdsCompanyCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 150
    end
    object cdsCompanyCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 150
    end
    object cdsCompanyCustodySTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsCompanyCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCompanyCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCompanyCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCompanyCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCompanyCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCompanyCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCompanyCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCompanyCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCompanyCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
end
