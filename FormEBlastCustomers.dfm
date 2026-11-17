inherited frmEBlastCustomers: TfrmEBlastCustomers
  Caption = 'Email Blast Customers'
  ClientHeight = 219
  ClientWidth = 576
  ExplicitWidth = 582
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 576
    Height = 129
    ExplicitTop = -6
    ExplicitWidth = 1009
    ExplicitHeight = 406
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 92
      Top = 10
      DataBinding.DataField = 'EBLAST_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [1]
      Left = 92
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 117
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 224
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 337
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 92
      Top = 64
      RepositoryItem = dmGlobal.luAccType
      DataBinding.DataField = 'ACCTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit [4]
      Left = 92
      Top = 91
      DataBinding.DataField = 'SIDNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 264
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Email Blast Type'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 337
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account Type'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'SID No'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 264
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 150
    Width = 576
    inherited dbNavLog: TDBNavigator
      Left = 462
      Hints.Strings = ()
      ExplicitLeft = 462
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 199
    Width = 576
  end
  inherited tabEditorData: TTabSet
    Top = 129
    Width = 576
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEBCustomers
    Left = 456
    Top = 48
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 456
    Top = 96
  end
  object cdsEBCustomers: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryEBlast_Account'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    object cdsEBCustomersEBACCID: TLargeintField
      FieldName = 'EBACCID'
      Required = True
    end
    object cdsEBCustomersEBLAST_ID: TLargeintField
      FieldName = 'EBLAST_ID'
      Required = True
    end
    object cdsEBCustomersACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsEBCustomersMODDA: TDateField
      FieldName = 'MODDA'
    end
    object cdsEBCustomersMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEBCustomersUPPDA: TDateField
      FieldName = 'UPPDA'
    end
    object cdsEBCustomersUPPUI: TStringField
      FieldName = 'UPPUI'
      Size = 30
    end
    object cdsEBCustomersID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEBCustomersACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsEBCustomersACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsEBCustomersACCTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCTYPE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCTYPE'
      KeyFields = 'ACCID'
      Size = 10
      Lookup = True
    end
    object cdsEBCustomersSIDNO: TStringField
      FieldKind = fkLookup
      FieldName = 'SIDNO'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'KSEI_SID'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
  end
end
