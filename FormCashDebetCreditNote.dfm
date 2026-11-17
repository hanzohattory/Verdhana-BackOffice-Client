object frmCashCreditDebitNote: TfrmCashCreditDebitNote
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cash Credit/Debit Note'
  ClientHeight = 344
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 275
    Width = 555
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      Enabled = False
      LookAndFeel.SkinName = 'LiquidSky'
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
      OnClick = btnOKClick
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
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 324
    Width = 555
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
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 555
    Height = 275
    Align = alClient
    TabOrder = 2
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 68
      Top = 10
      DataBinding.DataField = 'CDBCRCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 292
      Top = 10
      RepositoryItem = dmGlobal.luJrnType
      DataBinding.DataField = 'JTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cxDBLookupComboBox1Exit
      Width = 200
    end
    object edAccount: TcxDBButtonEdit
      Left = 68
      Top = 37
      DataBinding.DataField = 'ACCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccountPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 203
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 333
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 143
      Top = 159
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 68
      Top = 64
      DataBinding.DataField = 'TRDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 224
      Top = 64
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 10
      Top = 91
      Caption = 'Debet / Credit'
      DataBinding.DataField = 'DC'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Debet'
          Value = 'D'
        end
        item
          Caption = 'Credit'
          Value = 'C'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Height = 62
      Width = 185
    end
    object cbCcy: TcxDBLookupComboBox
      Left = 68
      Top = 159
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.OnChange = cbCcyPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 60
    end
    object edExRate: TcxDBTextEdit
      Left = 68
      Top = 186
      DataBinding.DataField = 'EXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 68
      Top = 213
      DataBinding.DataField = 'AMOUNTFX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 68
      Top = 240
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 292
      Top = 186
      DataBinding.DataField = 'CURR_EXRATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 292
      Top = 213
      DataBinding.DataField = 'CURR_AMTFX'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Journal Type'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group1
      Control = edAccount
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Trans Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
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
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Amount'
      Parent = dxLayoutControl1Group4
      Control = cbCcy
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcExRate: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ex Rate'
      Parent = dxLayoutControl1Group5
      Control = edExRate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcAmountFx: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount Fx'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Remark'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Current Ex Rate'
      Parent = dxLayoutControl1Group5
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Current Amount Fx'
      Parent = dxLayoutControl1Group6
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashDCNote
    Left = 456
    Top = 48
  end
  object cdsCashDCNote: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CDBCRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashDCNote'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCashDCNoteNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 96
    object cdsCashDCNoteCDBCRID: TIntegerField
      FieldName = 'CDBCRID'
      Required = True
    end
    object cdsCashDCNoteCDBCRCODE: TStringField
      FieldName = 'CDBCRCODE'
      Required = True
    end
    object cdsCashDCNoteJTYPE: TStringField
      FieldName = 'JTYPE'
    end
    object cdsCashDCNoteACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashDCNoteTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDCNoteDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDCNoteDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashDCNoteCCY: TStringField
      FieldName = 'CCY'
      OnChange = cdsCashDCNoteCCYChange
      Size = 5
    end
    object cdsCashDCNoteAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      OnChange = cdsCashDCNoteAMOUNTChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteCCYFX: TStringField
      FieldName = 'CCYFX'
      Size = 5
    end
    object cdsCashDCNoteEXRATE: TFloatField
      FieldName = 'EXRATE'
      OnChange = cdsCashDCNoteAMOUNTChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteAMOUNTFX: TFloatField
      FieldName = 'AMOUNTFX'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object cdsCashDCNoteGLCDDB: TIntegerField
      FieldName = 'GLCDDB'
    end
    object cdsCashDCNoteGLCDCR: TIntegerField
      FieldName = 'GLCDCR'
    end
    object cdsCashDCNoteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCashDCNotePROCESSDATE: TDateTimeField
      FieldName = 'PROCESSDATE'
    end
    object cdsCashDCNoteCANCELDATE: TDateTimeField
      FieldName = 'CANCELDATE'
    end
    object cdsCashDCNoteACCCDATE: TDateTimeField
      FieldName = 'ACCCDATE'
    end
    object cdsCashDCNoteMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashDCNoteMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashDCNoteAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashDCNoteAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashDCNoteUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashDCNoteUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashDCNoteNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashDCNoteISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashDCNoteID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashDCNoteACCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCashDCNoteACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashDCNoteCURR_EXRATE: TFloatField
      FieldName = 'CURR_EXRATE'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashDCNoteCURR_AMTFX: TFloatField
      FieldName = 'CURR_AMTFX'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashDCNoteJRNHID: TLargeintField
      FieldName = 'JRNHID'
    end
    object cdsCashDCNoteJRN_POSTED: TStringField
      FieldName = 'JRN_POSTED'
      Size = 1
    end
  end
  object cdsExRateValue: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'FROM_CCY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TO_CCY'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryExRateValue'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 144
    object cdsExRateValueCCY_CODE_FROM: TStringField
      FieldName = 'CCY_CODE_FROM'
      Required = True
      Size = 5
    end
    object cdsExRateValueCCY_CODE_TO: TStringField
      FieldName = 'CCY_CODE_TO'
      Required = True
      Size = 5
    end
    object cdsExRateValueEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
      Required = True
    end
    object cdsExRateValueCONVERSION_VALUE: TFloatField
      FieldName = 'CONVERSION_VALUE'
      Required = True
    end
    object cdsExRateValueINVERSE_CONVERSION_VALUE: TFloatField
      FieldName = 'INVERSE_CONVERSION_VALUE'
      Required = True
    end
    object cdsExRateValueMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsExRateValueMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsExRateValueAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsExRateValueAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsExRateValueUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsExRateValueUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsExRateValueNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsExRateValueISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsExRateValueID: TLargeintField
      FieldName = 'ID'
    end
  end
end
