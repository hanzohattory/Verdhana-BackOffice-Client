object frmSurvailanceSetting: TfrmSurvailanceSetting
  Left = 0
  Top = 0
  Caption = 'Survailance Setting'
  ClientHeight = 354
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 302
    Width = 422
    Height = 52
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Save'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 116
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
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
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 422
    Height = 302
    Align = alClient
    TabOrder = 1
    object edFDSAmendCount: TcxSpinEdit
      Left = 189
      Top = 28
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 85
    end
    object edFRBigRelOrder: TcxSpinEdit
      Left = 189
      Top = 85
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 85
    end
    object edFRRangeTime: TcxSpinEdit
      Left = 189
      Top = 112
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 85
    end
    object edMTCStartTime: TcxTimeEdit
      Left = 76
      Top = 196
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Height = 21
      Width = 94
    end
    object edMTCMinimalOrd: TcxSpinEdit
      Left = 189
      Top = 169
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 85
    end
    object edMTCEndTime: TcxTimeEdit
      Left = 185
      Top = 196
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Height = 21
      Width = 89
    end
    object edUMVTransCount: TcxSpinEdit
      Left = 189
      Top = 253
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.ImmediatePost = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 85
    end
    object chWSSID: TcxCheckBox
      Left = 304
      Top = 28
      Caption = 'SID'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
    end
    object chWSNPWP: TcxCheckBox
      Left = 304
      Top = 51
      Caption = 'NPWP'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
    end
    object chWSContactPerson: TcxCheckBox
      Left = 304
      Top = 74
      Caption = 'Contact Person'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
    end
    object chWSHomeAddress: TcxCheckBox
      Left = 304
      Top = 97
      Caption = 'Home Address'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
    end
    object chWSOfficeAddress: TcxCheckBox
      Left = 304
      Top = 120
      Caption = 'Office Address'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
    end
    object chWSSpouse: TcxCheckBox
      Left = 304
      Top = 143
      Caption = 'Spouse'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
    end
    object chWSBankAccount: TcxCheckBox
      Left = 304
      Top = 166
      Caption = 'Bank Account'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
    end
    object chWSEmail: TcxCheckBox
      Left = 304
      Top = 189
      Caption = 'Email'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fake Demand Supply'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Front Running'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      CaptionOptions.Text = 'Marking The Close'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      CaptionOptions.Text = 'Unusual Market Volume'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'Wash Sale'
      ButtonOptions.Buttons = <>
      ItemIndex = 7
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amend Count'
      Control = edFDSAmendCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Big Release Order Qty (in Shares)'
      Control = edFRBigRelOrder
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Range Time (in Minute)'
      Control = edFRRangeTime
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Time Start'
      Control = edMTCStartTime
      ControlOptions.AutoControlAreaAlignment = False
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Minimal Order Qty (In Shares)'
      Control = edMTCMinimalOrd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = edMTCEndTime
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Transaction Count'
      Control = edUMVTransCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chWSSID
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = chWSNPWP
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = chWSContactPerson
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox4'
      CaptionOptions.Visible = False
      Control = chWSHomeAddress
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox5'
      CaptionOptions.Visible = False
      Control = chWSOfficeAddress
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox6'
      CaptionOptions.Visible = False
      Control = chWSSpouse
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox7'
      CaptionOptions.Visible = False
      Control = chWSBankAccount
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chWSEmail
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 42
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 1
    end
  end
  object cdsSurvailanceSetting: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRMID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSurveilance_qrySurvailanceSetting'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 224
    object cdsSurvailanceSettingPRMID: TStringField
      FieldName = 'PRMID'
      Required = True
    end
    object cdsSurvailanceSettingPRMNAME: TStringField
      FieldName = 'PRMNAME'
      Size = 50
    end
    object cdsSurvailanceSettingPRMTY: TStringField
      FieldName = 'PRMTY'
      Size = 1
    end
    object cdsSurvailanceSettingAPPTYPE: TStringField
      FieldName = 'APPTYPE'
      Size = 1
    end
    object cdsSurvailanceSettingINTVAL: TIntegerField
      FieldName = 'INTVAL'
    end
    object cdsSurvailanceSettingFLOATVAL: TFloatField
      FieldName = 'FLOATVAL'
    end
    object cdsSurvailanceSettingSTRVAL: TStringField
      FieldName = 'STRVAL'
      Size = 250
    end
    object cdsSurvailanceSettingDATEVAL: TDateTimeField
      FieldName = 'DATEVAL'
    end
    object cdsSurvailanceSettingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSurvailanceSettingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSurvailanceSettingINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsSurvailanceSettingINSUI: TStringField
      FieldName = 'INSUI'
      Size = 30
    end
    object cdsSurvailanceSettingSHOW: TStringField
      FieldName = 'SHOW'
      Size = 1
    end
    object cdsSurvailanceSettingEDIT: TStringField
      FieldName = 'EDIT'
      Size = 1
    end
    object cdsSurvailanceSettingAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSurvailanceSettingAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSurvailanceSettingUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSurvailanceSettingUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSurvailanceSettingNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSurvailanceSettingISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSurvailanceSettingID: TLargeintField
      FieldName = 'ID'
    end
  end
end
