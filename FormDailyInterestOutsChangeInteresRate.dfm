object frmDailyInteresOutsChangeInterestRate: TfrmDailyInteresOutsChangeInterestRate
  Left = 0
  Top = 0
  Caption = 'Daily Interest Oustanding Change Rate'
  ClientHeight = 202
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 151
    Width = 682
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOk: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Ok'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancel: TcxButton
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
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 682
    Height = 151
    Align = alClient
    TabOrder = 1
    object cxDBLabel1: TcxDBLabel
      Left = 91
      Top = 10
      DataBinding.DataField = 'TransactionNo'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 187
    end
    object cxDBLabel2: TcxDBLabel
      Left = 91
      Top = 37
      DataBinding.DataField = 'account'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 435
    end
    object cxDBLabel3: TcxDBLabel
      Left = 91
      Top = 64
      DataBinding.DataField = 'TransactionDate'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 121
    end
    object cxDBLabel4: TcxDBLabel
      Left = 297
      Top = 64
      DataBinding.DataField = 'DueDate'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 130
    end
    object cxDBLabel5: TcxDBLabel
      Left = 518
      Top = 64
      DataBinding.DataField = 'MaturityDate'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 130
    end
    object cxDBLabel6: TcxDBLabel
      Left = 91
      Top = 91
      DataBinding.DataField = 'OriginalAmount'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 121
      AnchorX = 212
    end
    object cxDBLabel7: TcxDBLabel
      Left = 297
      Top = 91
      DataBinding.DataField = 'Settled_Amount'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 130
      AnchorX = 427
    end
    object cxDBLabel8: TcxDBLabel
      Left = 518
      Top = 91
      DataBinding.DataField = 'Unsettle_Amount'
      DataBinding.DataSource = dsChangeInterestRate
      Properties.Alignment.Horz = taRightJustify
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 130
      AnchorX = 648
    end
    object edInterestCode: TcxLookupComboBox
      Left = 91
      Top = 118
      RepositoryItem = dmGlobal.luInterest
      Properties.ListColumns = <>
      Properties.OnChange = edInterestCodePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 78
    end
    object lbInterestCode: TcxLabel
      Left = 175
      Top = 118
      AutoSize = False
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 21
      Width = 495
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction No.'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 435
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trans. date'
      Control = cxDBLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Due Date'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Original Amount'
      Control = cxDBLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Settled Amount'
      Control = cxDBLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Unsettle Amount'
      Control = cxDBLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Interest Code'
      Control = edInterestCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lbInterestCode
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 495
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
  end
  object cdsChangeInterestRate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'transactionID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFinance_qryDailyInterestOuts'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 160
    object cdsChangeInterestRateAccountID: TIntegerField
      FieldName = 'AccountID'
      Required = True
    end
    object cdsChangeInterestRateAccountCode: TStringField
      FieldName = 'AccountCode'
      Required = True
      Size = 30
    end
    object cdsChangeInterestRateAccountName: TStringField
      FieldName = 'AccountName'
      Size = 150
    end
    object cdsChangeInterestRateAccountType: TStringField
      FieldName = 'AccountType'
      Size = 5
    end
    object cdsChangeInterestRateAccountTypeDesc: TStringField
      FieldName = 'AccountTypeDesc'
      ReadOnly = True
      Size = 30
    end
    object cdsChangeInterestRateTransactionID: TLargeintField
      FieldName = 'TransactionID'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRateTransactionNo: TStringField
      FieldName = 'TransactionNo'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRateTransType: TStringField
      FieldName = 'TransType'
      ReadOnly = True
      Size = 2
    end
    object cdsChangeInterestRateTransTypeDesc: TStringField
      FieldName = 'TransTypeDesc'
      ReadOnly = True
      Size = 100
    end
    object cdsChangeInterestRateTransactionDate: TDateField
      FieldName = 'TransactionDate'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsChangeInterestRateDueDate: TDateField
      FieldName = 'DueDate'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsChangeInterestRateMaturityDate: TDateField
      FieldName = 'MaturityDate'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsChangeInterestRateOriginalAmount: TFloatField
      FieldName = 'OriginalAmount'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsChangeInterestRateSettled_Amount: TFloatField
      FieldName = 'Settled_Amount'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsChangeInterestRateUnsettle_Amount: TFloatField
      FieldName = 'Unsettle_Amount'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsChangeInterestRateAccrruedInterest: TFloatField
      FieldName = 'AccrruedInterest'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRatePrincipalizeInterest: TFloatField
      FieldName = 'PrincipalizeInterest'
      ReadOnly = True
    end
    object cdsChangeInterestRateInterestDays: TIntegerField
      FieldName = 'InterestDays'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRateInterestRate: TFloatField
      FieldName = 'InterestRate'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRatePenaltyInterest: TFloatField
      FieldName = 'PenaltyInterest'
      ReadOnly = True
    end
    object cdsChangeInterestRatePenaltyInterestDay: TIntegerField
      FieldName = 'PenaltyInterestDay'
      ReadOnly = True
    end
    object cdsChangeInterestRateWaiveInterest: TFloatField
      FieldName = 'WaiveInterest'
      ReadOnly = True
    end
    object cdsChangeInterestRateAccrruedPenalty: TFloatField
      FieldName = 'AccrruedPenalty'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRatePrincipalizePenalty: TFloatField
      FieldName = 'PrincipalizePenalty'
      ReadOnly = True
    end
    object cdsChangeInterestRatePenaltyDays: TIntegerField
      FieldName = 'PenaltyDays'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRatePenaltyRate: TFloatField
      FieldName = 'PenaltyRate'
      ReadOnly = True
      Required = True
    end
    object cdsChangeInterestRateWaivePenalty: TFloatField
      FieldName = 'WaivePenalty'
      ReadOnly = True
    end
    object cdsChangeInterestRateaccount: TStringField
      FieldName = 'account'
      ReadOnly = True
      Size = 183
    end
  end
  object dsChangeInterestRate: TDataSource
    DataSet = cdsChangeInterestRate
    Left = 304
    Top = 160
  end
end
