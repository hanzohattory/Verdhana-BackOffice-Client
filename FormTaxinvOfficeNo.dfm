inherited frmTaxInvOfficeNo: TfrmTaxInvOfficeNo
  Caption = 'Tax Invoice Office Number'
  ClientHeight = 192
  ClientWidth = 382
  ExplicitWidth = 388
  ExplicitHeight = 221
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 382
    Height = 102
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 53
      Top = 10
      DataBinding.DataField = 'TAXNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 53
      Top = 64
      DataBinding.DataField = 'START_TAXNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 150
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 218
      Top = 64
      DataBinding.DataField = 'END_TAXNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 150
    end
    object cxDBDateEdit1: TcxDBDateEdit [3]
      Left = 53
      Top = 37
      DataBinding.DataField = 'TAX_NODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'No.'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Tax No.'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutGroup1
      Control = cxDBDateEdit1
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
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 123
    Width = 382
    inherited dbNavLog: TDBNavigator
      Left = 268
      Hints.Strings = ()
      ExplicitLeft = 268
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
    Top = 172
    Width = 382
  end
  inherited tabEditorData: TTabSet
    Top = 102
    Width = 382
  end
  inherited dsSubject: TDataSource
    DataSet = cdsTaxOffice
    Left = 208
    Top = 8
  end
  object cdsTaxOffice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TAXNO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryTaxInvOfficeNo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 282
    Top = 6
    object cdsTaxOfficeTAXNO: TIntegerField
      FieldName = 'TAXNO'
      Required = True
    end
    object cdsTaxOfficeTAX_NODATE: TDateField
      FieldName = 'TAX_NODATE'
      Required = True
    end
    object cdsTaxOfficeSTART_TAXNO: TStringField
      FieldName = 'START_TAXNO'
    end
    object cdsTaxOfficeEND_TAXNO: TStringField
      FieldName = 'END_TAXNO'
    end
    object cdsTaxOfficeTOTAL_TAXNO: TIntegerField
      FieldName = 'TOTAL_TAXNO'
    end
    object cdsTaxOfficeUSED_TAXNO: TIntegerField
      FieldName = 'USED_TAXNO'
    end
    object cdsTaxOfficeLAST_TAXNO: TStringField
      FieldName = 'LAST_TAXNO'
    end
    object cdsTaxOfficeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTaxOfficeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTaxOfficeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTaxOfficeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTaxOfficeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTaxOfficeID: TLargeintField
      FieldName = 'ID'
    end
  end
end
