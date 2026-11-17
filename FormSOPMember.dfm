object frmSOPMember: TfrmSOPMember
  Left = 0
  Top = 0
  Caption = 'SOP Member'
  ClientHeight = 443
  ClientWidth = 721
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
    Width = 721
    Height = 185
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 939
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 68
      Top = 10
      DataBinding.DataField = 'SOPCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 68
      Top = 37
      DataBinding.DataField = 'SOPDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 68
      Top = 64
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 105
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 188
      Top = 64
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 421
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 68
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
      TabOrder = 5
      Width = 105
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 188
      Top = 91
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 421
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 68
      Top = 118
      DataBinding.DataField = 'REGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 281
      Top = 118
      DataBinding.DataField = 'STARTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 488
      Top = 118
      DataBinding.DataField = 'ENDDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 223
      Top = 10
      RepositoryItem = dmGlobal.luSOPType
      DataBinding.DataField = 'SOPTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'MSOP'
          ImageIndex = 0
          Value = 'M'
        end
        item
          Description = 'ESOP'
          Value = 'E'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object btnImportXls: TcxButton
      Left = 10
      Top = 145
      Width = 143
      Height = 25
      Caption = 'Import From Excel Files'
      TabOrder = 10
      OnClick = btnImportXlsClick
    end
    object cxButton1: TcxButton
      Left = 159
      Top = 145
      Width = 151
      Height = 25
      Caption = 'Import Deposit Quantity'
      TabOrder = 11
      OnClick = cxButton1Click
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
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Account'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Reg Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Start Order Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'End Order Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnImportXls
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 374
    Width = 721
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 425
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
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 423
    Width = 721
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
    ExplicitTop = 474
    ExplicitWidth = 939
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 185
    Width = 721
    Height = 189
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 3
    ExplicitWidth = 939
    ExplicitHeight = 240
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsSOPMember
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Member Of Stock Option Program'
        end>
      object gvwMasterNIK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NIK'
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterNAME: TcxGridDBBandedColumn
        Caption = 'Name'
        DataBinding.FieldName = 'NAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        RepositoryItem = dmGlobal.luBank
        Visible = False
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BANKACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BANKACCNAME'
        Visible = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterDEPOSIT_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEPOSIT_QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBANKBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Branch'
        DataBinding.FieldName = 'BANKBRANCH'
        Visible = False
        Width = 122
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACC_CUSTCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACC_CUSTCODE'
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNPWPNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NPWPNO'
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmSOPList.cdsSOP
    Left = 504
    Top = 16
  end
  object dsSOPMember: TDataSource
    DataSet = frmSOPList.cdsSOPMember
    Left = 292
    Top = 234
  end
  object XLS: TXLSReadWriteII5
    ComponentVersion = '6.00.20a'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 161
    Top = 230
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xls'
    Left = 225
    Top = 233
  end
  object PopupMenu1: TPopupMenu
    Left = 291
    Top = 285
    object AddBank1: TMenuItem
      Caption = 'Add SOP Bank'
      OnClick = AddBank1Click
    end
  end
  object cdsAccSOPBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftSmallint
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBankSOP'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsAccSOPBankNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 291
    Top = 333
    object cdsAccSOPBankACCSOPID: TIntegerField
      FieldName = 'ACCSOPID'
      Required = True
    end
    object cdsAccSOPBankMSOP_BANKID: TLargeintField
      FieldName = 'MSOP_BANKID'
      Required = True
    end
    object cdsAccSOPBankACCBANKCODE: TStringField
      DisplayLabel = 'Account Bank Code'
      FieldName = 'ACCBANKCODE'
      Size = 30
    end
    object cdsAccSOPBankBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsAccSOPBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccSOPBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsAccSOPBankBANKBRANCH: TStringField
      DisplayLabel = 'Bank Branch'
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccSOPBankREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsAccSOPBankASDEFAULT: TStringField
      DisplayLabel = 'As Default'
      FieldName = 'ASDEFAULT'
      Size = 1
    end
    object cdsAccSOPBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccSOPBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccSOPBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccSOPBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccSOPBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccSOPBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccSOPBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccSOPBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccSOPBankID: TLargeintField
      FieldName = 'ID'
    end
  end
end
