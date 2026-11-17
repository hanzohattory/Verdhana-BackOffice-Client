object frmAccountDormanUpdate: TfrmAccountDormanUpdate
  Left = 0
  Top = 0
  Caption = 'Update KSEI Sub REK'
  ClientHeight = 202
  ClientWidth = 492
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 153
    Width = 492
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 122
    ExplicitWidth = 550
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
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 492
    Height = 153
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 550
    ExplicitHeight = 101
    object cxDBLabel1: TcxDBLabel
      Left = 70
      Top = 10
      DataBinding.DataField = 'ADNO'
      DataBinding.DataSource = dsAccountDorman
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      Height = 21
      Width = 147
    end
    object cxDBLabel2: TcxDBLabel
      Left = 70
      Top = 37
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsAccountDorman
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
    end
    object cxDBLabel3: TcxDBLabel
      Left = 206
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsAccountDorman
      ParentFont = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 275
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 87
      Top = 82
      DataBinding.DataField = 'NEW_SUBREK001'
      DataBinding.DataSource = dsAccountDorman
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 382
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 87
      Top = 109
      DataBinding.DataField = 'NEW_SUBREK004'
      DataBinding.DataSource = dsAccountDorman
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 382
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Dorman No'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account No'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 275
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'New KSEI Sub Rek'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Sub Rek 001'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Sub Rek 004'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
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
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 384
    Top = 96
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
  object dsAccountDorman: TDataSource
    DataSet = cdsAccountDorman
    Left = 384
    Top = 152
  end
end
