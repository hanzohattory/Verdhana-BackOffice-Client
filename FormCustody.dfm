inherited frmCustody: TfrmCustody
  Caption = 'Custody'
  ClientHeight = 298
  ClientWidth = 525
  ExplicitWidth = 531
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 525
    Height = 208
    ExplicitWidth = 525
    ExplicitHeight = 208
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 89
      Top = 10
      DataBinding.DataField = 'CUSTODYCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 89
      Top = 37
      DataBinding.DataField = 'CUSTODYNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 424
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 89
      Top = 64
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 424
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 89
      Top = 91
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 424
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 89
      Top = 118
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 424
    end
    object cxDBTextEdit6: TcxDBTextEdit [5]
      Left = 89
      Top = 145
      DataBinding.DataField = 'TELP'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [6]
      Left = 239
      Top = 145
      DataBinding.DataField = 'FAX'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [7]
      Left = 89
      Top = 172
      DataBinding.DataField = 'CONTACTPERSON'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 424
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custody Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Custody Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Address'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' '
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Phone'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Fax'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contact Person'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 229
    Width = 525
    ExplicitTop = 229
    ExplicitWidth = 525
    inherited dbNavLog: TDBNavigator
      Left = 411
      Hints.Strings = ()
      ExplicitLeft = 411
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
    Top = 278
    Width = 525
    ExplicitTop = 278
    ExplicitWidth = 525
  end
  inherited tabEditorData: TTabSet
    Top = 208
    Width = 525
    ExplicitTop = 208
    ExplicitWidth = 525
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCustody
    Top = 88
  end
  object cdsCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CUSTODYCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 136
    object cdsCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 10
    end
    object cdsCustodyCUSTODYNAME: TStringField
      FieldName = 'CUSTODYNAME'
      Size = 50
    end
    object cdsCustodyADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsCustodyADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsCustodyADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsCustodyTELP: TStringField
      FieldName = 'TELP'
      Size = 15
    end
    object cdsCustodyFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsCustodyCONTACTPERSON: TStringField
      FieldName = 'CONTACTPERSON'
      Size = 50
    end
    object cdsCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
end
