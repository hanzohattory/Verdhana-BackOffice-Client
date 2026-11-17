object frmSOPMovement: TfrmSOPMovement
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SOP Movement'
  ClientHeight = 193
  ClientWidth = 621
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
    Top = 0
    Width = 621
    Height = 124
    Align = alClient
    TabOrder = 0
    ExplicitTop = 6
    ExplicitHeight = 334
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 94
      Top = 37
      DataBinding.DataField = 'SOPCODE'
      DataBinding.DataSource = dsSOP
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 105
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 214
      Top = 37
      DataBinding.DataField = 'SOPDESC'
      DataBinding.DataSource = dsSOP
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 395
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 94
      Top = 64
      DataBinding.DataField = 'ACCSOPID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCSOPID'
      Properties.ListColumns = <
        item
          FieldName = 'ACC_CUSTCODE'
        end
        item
          FieldName = 'NIK'
        end
        item
          FieldName = 'NAME'
        end>
      Properties.ListSource = dsSOPMember
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 105
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 214
      Top = 64
      DataBinding.DataField = 'SOPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 395
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 94
      Top = 91
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 105
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 214
      Top = 91
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 395
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 94
      Top = 10
      DataBinding.DataField = 'REQCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 105
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 214
      Top = 10
      DataBinding.DataField = 'REQDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'SOP'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'SOP Account'
      Parent = dxLayoutGroup2
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Regular Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
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
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group5
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 124
    Width = 621
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitLeft = -265
    ExplicitTop = 352
    ExplicitWidth = 939
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup5
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup5
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 173
    Width = 621
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = -265
    ExplicitTop = 381
    ExplicitWidth = 939
  end
  object cdsSOPMov: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'REQID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qrySOPMov'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 88
    object cdsSOPMovREQID: TIntegerField
      FieldName = 'REQID'
      Required = True
    end
    object cdsSOPMovREQCODE: TStringField
      FieldName = 'REQCODE'
      Required = True
      Size = 30
    end
    object cdsSOPMovREQDATE: TDateField
      FieldName = 'REQDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSOPMovSOPID: TIntegerField
      FieldName = 'SOPID'
      Required = True
    end
    object cdsSOPMovACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsSOPMovACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSOPMovSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
    object cdsSOPMovMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSOPMovMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSOPMovAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSOPMovAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSOPMovUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSOPMovUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSOPMovNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSOPMovISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSOPMovID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSOPMovSOPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SOPNAME'
      LookupDataSet = cdsSOPMember
      LookupKeyFields = 'ACCSOPID'
      LookupResultField = 'NAME'
      KeyFields = 'ACCSOPID'
      Size = 150
      Lookup = True
    end
    object cdsSOPMovACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
  end
  object cdsSOP: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SOPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qrySOP'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 88
    object cdsSOPSOPID: TIntegerField
      FieldName = 'SOPID'
      Required = True
    end
    object cdsSOPSOPCODE: TStringField
      FieldName = 'SOPCODE'
      Required = True
    end
    object cdsSOPSOPTYPE: TStringField
      FieldName = 'SOPTYPE'
      Size = 1
    end
    object cdsSOPSOPDESC: TStringField
      FieldName = 'SOPDESC'
      Size = 250
    end
    object cdsSOPSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsSOPACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsSOPREGDATE: TDateField
      FieldName = 'REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSOPSTARTDATE: TDateField
      FieldName = 'STARTDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSOPENDDATE: TDateField
      FieldName = 'ENDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSOPMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSOPMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSOPAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSOPAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSOPUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSOPUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSOPNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSOPISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSOPID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSOPACCOCDE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCOCDE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsSOPACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 250
      Lookup = True
    end
    object cdsSOPSTOCKCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKCODE'
      LookupDataSet = dmLookup.cdsLuInstrument
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'LOCALCODE'
      KeyFields = 'STOCKID'
      Size = 30
      Lookup = True
    end
    object cdsSOPSTOCKNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'STOCKNAME'
      LookupDataSet = dmLookup.cdsLuInstrument
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'STOCKID'
      Size = 150
      Lookup = True
    end
  end
  object cdsSOPMember: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SOPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qrySOPMember'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 139
    object cdsSOPMemberACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsSOPMemberSOPID: TIntegerField
      FieldName = 'SOPID'
      Required = True
    end
    object cdsSOPMemberNIK: TStringField
      DisplayWidth = 15
      FieldName = 'NIK'
      Size = 30
    end
    object cdsSOPMemberNAME: TStringField
      DisplayLabel = 'Name'
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 150
    end
    object cdsSOPMemberBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsSOPMemberBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsSOPMemberBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsSOPMemberMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSOPMemberMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSOPMemberAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSOPMemberAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSOPMemberUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSOPMemberUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSOPMemberNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSOPMemberISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSOPMemberID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSOPMemberBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsSOPMemberACC_CUSTCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 15
      FieldName = 'ACC_CUSTCODE'
      Size = 30
    end
    object cdsSOPMemberSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsSOPMemberBIRTH_PLACE: TStringField
      DisplayLabel = 'Birth Place'
      FieldName = 'BIRTH_PLACE'
      Size = 50
    end
    object cdsSOPMemberBIRTH_DATE: TDateTimeField
      DisplayLabel = 'Birth Date'
      FieldName = 'BIRTH_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSOPMemberIDNO: TStringField
      DisplayLabel = 'ID No.'
      FieldName = 'IDNO'
      Size = 50
    end
    object cdsSOPMemberNPWPNO: TStringField
      DisplayLabel = 'NPWP No.'
      FieldName = 'NPWPNO'
      Size = 50
    end
    object cdsSOPMemberDEPOSIT_QTY: TIntegerField
      DisplayLabel = 'Deposit Qty'
      FieldName = 'DEPOSIT_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSOPMemberREG_ACCID: TIntegerField
      FieldName = 'REG_ACCID'
    end
    object cdsSOPMemberREG_ACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'REG_ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'REG_ACCID'
      Size = 30
      Lookup = True
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsSOPMov
    Left = 416
    Top = 40
  end
  object dsSOP: TDataSource
    DataSet = cdsSOP
    Left = 504
    Top = 88
  end
  object dsSOPMember: TDataSource
    DataSet = cdsSOPMember
    Left = 504
    Top = 136
  end
end
