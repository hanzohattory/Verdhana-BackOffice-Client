object frmCOBBankLinkLedger: TfrmCOBBankLinkLedger
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Bank Link to Ledger Account'
  ClientHeight = 459
  ClientWidth = 784
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
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 784
    Height = 360
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid6: TcxGrid
      Left = 0
      Top = 185
      Width = 784
      Height = 175
      Align = alClient
      TabOrder = 0
      object gvwCustody: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsCOBAccountCustody
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwCustodyACCCUSTODYID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCCUSTODYID'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyACCID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyCUSTODYCODE: TcxGridDBColumn
          Caption = 'Custody Code'
          DataBinding.FieldName = 'CUSTODYCODE'
          RepositoryItem = dmGlobal.luCustody
          Width = 74
        end
        object gvwCustodyCUSTODYTYPE: TcxGridDBColumn
          Caption = 'Custody Type'
          DataBinding.FieldName = 'CUSTODYTYPE'
          RepositoryItem = dmGlobal.luCustudyType
          Width = 85
        end
        object gvwCustodyCUSTODYACCNO: TcxGridDBColumn
          Caption = 'Custody Account No.'
          DataBinding.FieldName = 'CUSTODYACCNO'
          Width = 108
        end
        object gvwCustodyCUSTODYACCNAME: TcxGridDBColumn
          Caption = 'Custody Account Name'
          DataBinding.FieldName = 'CUSTODYACCNAME'
        end
        object gvwCustodyCUSTODYBRANCH: TcxGridDBColumn
          Caption = 'Custody Branch'
          DataBinding.FieldName = 'CUSTODYBRANCH'
          Width = 94
        end
        object gvwCustodyACTLED_SEQID: TcxGridDBColumn
          Caption = 'Ledger Account'
          DataBinding.FieldName = 'ACTLED_SEQID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.GridMode = True
          Properties.KeyFieldNames = 'SEQID'
          Properties.ListColumns = <
            item
              Caption = 'Ledger Code'
              FieldName = 'ALCODE'
            end
            item
              Caption = 'Description'
              Width = 300
              FieldName = 'ALDESCRIPTION'
            end
            item
              Caption = 'Ledger Type'
              FieldName = 'ALTYPE'
            end>
          Properties.ListSource = dsCOBAccLedgerLookup
          Width = 100
        end
        object gvwCustodyMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          VisibleForCustomization = False
        end
        object gvwCustodyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cxGridLevel6: TcxGridLevel
        GridView = gvwCustody
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 784
      Height = 185
      Align = alTop
      TabOrder = 1
      object gvwBank: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsCOBAccountBank
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwBankBNCODE: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE'
          RepositoryItem = dmGlobal.luBank
          Width = 100
        end
        object gvwBankBANKACCNO: TcxGridDBColumn
          Caption = 'Bank Account No.'
          DataBinding.FieldName = 'BANKACCNO'
          Width = 91
        end
        object gvwBankBANKACCNAME: TcxGridDBColumn
          Caption = 'Bank Account Name'
          DataBinding.FieldName = 'BANKACCNAME'
          Width = 205
        end
        object gvwBankBANKBRANCH: TcxGridDBColumn
          Caption = 'Bank Branch'
          DataBinding.FieldName = 'BANKBRANCH'
          Visible = False
          Width = 92
        end
        object gvwBankCCYCODE: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 50
        end
        object gvwBankISRDN: TcxGridDBColumn
          Caption = 'RDN'
          DataBinding.FieldName = 'ISRDN'
          RepositoryItem = dmGlobal.chkStandard
          Width = 27
        end
        object gvwBankBNCHGSTYPE: TcxGridDBColumn
          Caption = 'Bank Charge Type'
          DataBinding.FieldName = 'BNCHGSTYPE'
          RepositoryItem = dmGlobal.luBankChargeType
          Visible = False
          Width = 106
        end
        object gvwBankACTLED_SEQID: TcxGridDBColumn
          Caption = 'Ledger Account'
          DataBinding.FieldName = 'ACTLED_SEQID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'SEQID'
          Properties.ListColumns = <
            item
              Caption = 'Ledg Code'
              FieldName = 'ALCODE'
            end
            item
              Caption = 'Description'
              Width = 300
              FieldName = 'ALDESCRIPTION'
            end
            item
              Caption = 'Ledger Type'
              FieldName = 'ALTYPE'
            end>
          Properties.ListSource = dsCOBAccLedgerLookup
          Width = 93
        end
        object gvwBankACCBANKID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCBANKID'
          Visible = False
        end
        object gvwBankACCID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
        end
        object gvwBankMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwBankMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwBankAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwBankAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwBankUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwBankUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwBankNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwBankISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwBankID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gvwBankACCBANKCODE: TcxGridDBColumn
          DataBinding.FieldName = 'ACCBANKCODE'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwBank
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 409
    Width = 784
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
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
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  object LayoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 784
    Height = 49
    Align = alTop
    BevelKind = bkTile
    TabOrder = 2
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 73
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 200
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 345
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'A/C Number'
      Parent = dxLayoutGroup4
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 124
    Top = 111
  end
  object cdsCOBAccountBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBAccBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Left = 200
    Top = 64
    object cdsCOBAccountBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsCOBAccountBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCOBAccountBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsCOBAccountBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsCOBAccountBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsCOBAccountBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsCOBAccountBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsCOBAccountBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsCOBAccountBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCOBAccountBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCOBAccountBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCOBAccountBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCOBAccountBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCOBAccountBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCOBAccountBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCOBAccountBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCOBAccountBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCOBAccountBankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCOBAccountBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCOBAccountBankACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
  end
  object dsCOBAccountBank: TDataSource
    DataSet = cdsCOBAccountBank
    Left = 200
    Top = 120
  end
  object dsCOBAccountCustody: TDataSource
    DataSet = cdsCOBAccountCustody
    Left = 392
    Top = 120
  end
  object cdsCOBAccountCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBAccountCustody'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Left = 312
    Top = 88
    object cdsCOBAccountCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsCOBAccountCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCOBAccountCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsCOBAccountCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsCOBAccountCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsCOBAccountCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsCOBAccountCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsCOBAccountCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCOBAccountCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCOBAccountCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCOBAccountCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCOBAccountCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCOBAccountCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCOBAccountCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCOBAccountCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCOBAccountCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCOBAccountCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCOBAccLedgerLookup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBAccLedgerLookup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 512
    Top = 72
    object cdsCOBAccLedgerLookupSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCOBAccLedgerLookupACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCOBAccLedgerLookupALCODE: TStringField
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsCOBAccLedgerLookupALDESCRIPTION: TStringField
      FieldName = 'ALDESCRIPTION'
      ReadOnly = True
      Size = 80
    end
    object cdsCOBAccLedgerLookupALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
  end
  object dsCOBAccLedgerLookup: TDataSource
    DataSet = cdsCOBAccLedgerLookup
    Left = 512
    Top = 128
  end
end
