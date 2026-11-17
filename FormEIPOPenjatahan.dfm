object frmEIPOAlloted: TfrmEIPOAlloted
  Left = 0
  Top = 0
  Caption = 'e-IPO Alloted'
  ClientHeight = 326
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 267
    Width = 501
    Height = 59
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 240
    ExplicitWidth = 635
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 31
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 31
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 501
    Height = 267
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 56
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 71
      Top = 10
      TabStop = False
      DataBinding.DataField = 'IPOCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 196
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 71
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SHARE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 127
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 204
      Top = 37
      TabStop = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 282
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 71
      Top = 64
      TabStop = False
      DataBinding.DataField = 'CLIENTACC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 127
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 204
      Top = 64
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 21
      Width = 282
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 69
      Top = 109
      TabStop = False
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 224
      Top = 109
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'PRICE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 69
      Top = 136
      TabStop = False
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 276
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 69
      Top = 193
      DataBinding.DataField = 'ALLOTEDQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Left = 224
      Top = 193
      AutoSize = False
      DataBinding.DataField = 'ALLOTEDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Left = 69
      Top = 220
      TabStop = False
      DataBinding.DataField = 'ALLOTEDAMOUNT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 276
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'e-IPO Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit5'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'Pemesanan'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'Penjatahan'
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 276
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 276
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object cdsSubject: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryEIPOAllotment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 160
    object cdsSubjectIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsSubjectIPOCODE: TStringField
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsSubjectINSTTYPE: TStringField
      FieldName = 'INSTTYPE'
      Required = True
      Size = 10
    end
    object cdsSubjectEXTREF: TStringField
      FieldName = 'EXTREF'
      Size = 30
    end
    object cdsSubjectSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsSubjectSHARE: TStringField
      FieldName = 'SHARE'
      Required = True
    end
    object cdsSubjectTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
      Required = True
    end
    object cdsSubjectACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSubjectCLIENTACC: TStringField
      FieldName = 'CLIENTACC'
      Required = True
    end
    object cdsSubjectSENT_TO_FROM: TStringField
      FieldName = 'SENT_TO_FROM'
      Size = 10
    end
    object cdsSubjectNOTEDESC: TStringField
      FieldName = 'NOTEDESC'
      Size = 30
    end
    object cdsSubjectQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsSubjectREASON: TStringField
      FieldName = 'REASON'
      Size = 1
    end
    object cdsSubjectALLOTEDQTY: TFloatField
      FieldName = 'ALLOTEDQTY'
      OnChange = cdsSubjectALLOTEDQTYChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectALLOTEDPRICE: TFloatField
      FieldName = 'ALLOTEDPRICE'
      OnChange = cdsSubjectALLOTEDPRICEChange
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectALLOTEDAMOUNT: TFloatField
      FieldName = 'ALLOTEDAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsSubjectSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object cdsSubjectSTAT_IPO: TStringField
      FieldName = 'STAT_IPO'
      Size = 1
    end
    object cdsSubjectINSDATE: TDateTimeField
      FieldName = 'INSDATE'
    end
    object cdsSubjectINSTIME: TDateTimeField
      FieldName = 'INSTIME'
    end
    object cdsSubjectINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsSubjectAPPDATE: TDateTimeField
      FieldName = 'APPDATE'
    end
    object cdsSubjectAPPTIME: TDateTimeField
      FieldName = 'APPTIME'
    end
    object cdsSubjectAPPUI: TStringField
      FieldName = 'APPUI'
    end
    object cdsSubjectALLDATE: TDateTimeField
      FieldName = 'ALLDATE'
    end
    object cdsSubjectALLTIME: TDateTimeField
      FieldName = 'ALLTIME'
    end
    object cdsSubjectALLUI: TStringField
      FieldName = 'ALLUI'
    end
    object cdsSubjectDISDATE: TDateTimeField
      FieldName = 'DISDATE'
    end
    object cdsSubjectDISTIME: TDateTimeField
      FieldName = 'DISTIME'
    end
    object cdsSubjectDISUI: TStringField
      FieldName = 'DISUI'
    end
    object cdsSubjectCCLDATE: TDateTimeField
      FieldName = 'CCLDATE'
    end
    object cdsSubjectCCLTIME: TDateTimeField
      FieldName = 'CCLTIME'
    end
    object cdsSubjectCCLUI: TStringField
      FieldName = 'CCLUI'
    end
    object cdsSubjectACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Lookup = True
    end
    object cdsSubjectSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrumentAll
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Lookup = True
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsSubject
    Left = 456
    Top = 216
  end
end
