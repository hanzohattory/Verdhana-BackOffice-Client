inherited frmAccountCompany: TfrmAccountCompany
  Caption = 'Company Account'
  ClientHeight = 583
  ClientWidth = 751
  ExplicitWidth = 757
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 751
    Height = 101
    Align = alTop
    ExplicitWidth = 751
    ExplicitHeight = 101
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 84
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 311
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 274
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [3]
      Left = 84
      Top = 64
      RepositoryItem = dmGlobal.luCompanyAccountSubType
      DataBinding.DataField = 'ACCSUBTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 189
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account No.'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Init'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
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
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sub Type'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 514
    Width = 751
    ExplicitTop = 514
    ExplicitWidth = 751
    inherited dbNavLog: TDBNavigator
      Left = 637
      Hints.Strings = ()
      ExplicitLeft = 637
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
    Top = 563
    Width = 751
    ExplicitTop = 563
    ExplicitWidth = 751
  end
  inherited tabEditorData: TTabSet
    Top = 493
    Width = 751
    ExplicitTop = 493
    ExplicitWidth = 751
  end
  object pageAccount: TcxPageControl [4]
    Left = 0
    Top = 101
    Width = 751
    Height = 392
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 388
    ClientRectLeft = 4
    ClientRectRight = 747
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Info'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 743
        Height = 364
        Align = alClient
        TabOrder = 0
        object cxGroupBox2: TcxGroupBox
          Left = 10
          Top = 10
          Caption = 'Indicators'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 0
          Height = 95
          Width = 295
          object dxLayoutControl5: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 291
            Height = 75
            Align = alClient
            TabOrder = 0
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 10
              Top = 10
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Trading Account'
              DataBinding.DataField = 'ISTRDACCOUNT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 10
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Omnibus Trade'
              DataBinding.DataField = 'OMNIBUSTRADE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl5Item3: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox4'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group2
              Control = cxDBCheckBox4
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group2: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutGroup4
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item2: TdxLayoutItem
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group2
              Control = cxDBCheckBox1
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxGroupBox2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group2
          Control = cxGroupBox2
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tabContact: TcxTabSheet
      Caption = 'Contact'
      ImageIndex = 5
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 364
        Align = alClient
        TabOrder = 0
        object gvwContact: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsContact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.BandMoving = False
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end
            item
              Caption = 'Notification By'
            end>
          object gvwContactCUSGID: TcxGridDBBandedColumn
            Caption = 'Contact Usage'
            DataBinding.FieldName = 'CUSGID'
            RepositoryItem = dmGlobal.luContactUsage
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwContactCOUNTCODE: TcxGridDBBandedColumn
            Caption = 'Country Code'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwContactCONTNAME: TcxGridDBBandedColumn
            Caption = 'Contact Name'
            DataBinding.FieldName = 'CONTNAME'
            Width = 178
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwContactCONTPHONE: TcxGridDBBandedColumn
            Caption = 'Phone'
            DataBinding.FieldName = 'CONTPHONE'
            Width = 142
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwContactCONTMOBILE: TcxGridDBBandedColumn
            Caption = 'Mobile'
            DataBinding.FieldName = 'CONTMOBILE'
            Width = 136
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwContactCONTADDRESS: TcxGridDBBandedColumn
            Caption = 'Address'
            DataBinding.FieldName = 'CONTADDRESS'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 367
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwContactCONTEMAIL: TcxGridDBBandedColumn
            Caption = 'Email'
            DataBinding.FieldName = 'CONTEMAIL'
            Width = 164
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwContactCONTFAX: TcxGridDBBandedColumn
            Caption = 'Fax'
            DataBinding.FieldName = 'CONTFAX'
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwContactIDCARDTYPE: TcxGridDBBandedColumn
            Caption = 'ID Card Type'
            DataBinding.FieldName = 'IDCARDTYPE'
            RepositoryItem = dmGlobal.luIDType
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwContactIDCARDNO: TcxGridDBBandedColumn
            Caption = 'ID Card No.'
            DataBinding.FieldName = 'IDCARDNO'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwContactIDCARDEXPIRE: TcxGridDBBandedColumn
            Caption = 'ID Card Expired'
            DataBinding.FieldName = 'IDCARDEXPIRE'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwContactSENDBYEMAIL: TcxGridDBBandedColumn
            Caption = 'Email'
            DataBinding.FieldName = 'SENDBYEMAIL'
            RepositoryItem = dmGlobal.chkStandard
            Width = 35
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwContactSENDBYFAX: TcxGridDBBandedColumn
            Caption = 'Fax'
            DataBinding.FieldName = 'SENDBYFAX'
            RepositoryItem = dmGlobal.chkStandard
            Width = 36
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwContactSENDBYSMS: TcxGridDBBandedColumn
            Caption = 'Sms'
            DataBinding.FieldName = 'SENDBYSMS'
            RepositoryItem = dmGlobal.chkStandard
            Width = 37
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwContactSENDBYPOSTMAIL: TcxGridDBBandedColumn
            Caption = 'Post Mail'
            DataBinding.FieldName = 'SENDBYPOSTMAIL'
            RepositoryItem = dmGlobal.chkStandard
            Width = 48
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwContactUPDSTS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UPDSTS'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = gvwContact
        end
      end
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 2
      object grdCharge: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 364
        Align = alClient
        TabOrder = 0
        object gvwCharge: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsCharge
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
          object gvwChargeMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
          end
          object gvwChargeCHARGE_ID: TcxGridDBColumn
            Caption = 'Charge Code'
            DataBinding.FieldName = 'CHARGE_ID'
            RepositoryItem = dmGlobal.luCharge
            Width = 69
          end
          object gvwChargeDESCRIPTION: TcxGridDBColumn
            Caption = 'Charge Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 314
          end
          object gvwChargeISUSED: TcxGridDBColumn
            Caption = 'Use'
            DataBinding.FieldName = 'ISUSED'
            RepositoryItem = dmGlobal.chkStandard
            Width = 24
          end
        end
        object grdChargeLevel1: TcxGridLevel
          GridView = gvwCharge
        end
      end
    end
    object tabBank: TcxTabSheet
      Caption = 'Bank | Custody'
      ImageIndex = 3
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 185
        Align = alTop
        TabOrder = 0
        object gvwBank: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsBank
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
            Width = 92
          end
          object gvwBankCCYCODE: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Width = 62
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
            VisibleForCustomization = False
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
                FieldName = 'ALTYPE'
              end
              item
                FieldName = 'ALCODE'
              end
              item
                FieldName = 'INSTRUCTIONTYPE'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsLedgerAcc
            Width = 93
          end
          object gvwBankBN_CHGMODE: TcxGridDBColumn
            Caption = 'Bank Charge Mode'
            DataBinding.FieldName = 'BN_CHGMODE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Remiter'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'Beneficiary'
                Value = 'B'
              end>
            Width = 96
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwBank
        end
      end
      object cxGrid6: TcxGrid
        Left = 0
        Top = 185
        Width = 743
        Height = 179
        Align = alClient
        TabOrder = 1
        object gvwCustody: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsCustody
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
                FieldName = 'ALTYPE'
              end
              item
                FieldName = 'ALCODE'
              end
              item
                FieldName = 'INSTRUCTIONTYPE'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsLedgerAcc
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
    end
    object tabLedgerAcc: TcxTabSheet
      Caption = 'Ledger Account'
      ImageIndex = 4
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 364
        Align = alClient
        TabOrder = 0
        object gvwLedgerAcc: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsLedgerAcc
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
          object gvwLedgerAccALTYPE: TcxGridDBColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'ALTYPE'
            RepositoryItem = dmGlobal.luActLedgerType
            Width = 158
          end
          object gvwLedgerAccALCODE: TcxGridDBColumn
            Caption = 'Ledger Code'
            DataBinding.FieldName = 'ALCODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 159
          end
          object gvwLedgerAccBANKCODE: TcxGridDBColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
            Visible = False
            VisibleForCustomization = False
            Width = 88
          end
          object gvwLedgerAccBANKACCNO: TcxGridDBColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
            Visible = False
            VisibleForCustomization = False
            Width = 111
          end
          object gvwLedgerAccBANKACCNAME: TcxGridDBColumn
            Caption = 'Bank Account Name'
            DataBinding.FieldName = 'BANKACCNAME'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwLedgerAccBANKBRANCH: TcxGridDBColumn
            Caption = 'Bank Branch'
            DataBinding.FieldName = 'BANKBRANCH'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwLedgerAccCALCINTEREST: TcxGridDBColumn
            Caption = 'Calc Interest'
            DataBinding.FieldName = 'CALCINTEREST'
            RepositoryItem = dmGlobal.chkStandard
            Width = 78
          end
          object gvwLedgerAccINTERESTCODE: TcxGridDBColumn
            Caption = 'Interest Code'
            DataBinding.FieldName = 'INTERESTCODE'
            RepositoryItem = dmGlobal.luInterest
            Width = 84
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwLedgerAcc
        end
      end
    end
    object tabTransSetting: TcxTabSheet
      Caption = 'Transaction Setting'
      ImageIndex = 4
      TabVisible = False
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 743
        Height = 364
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsTransLedger
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
          object cxGridDBTableView1TRANSTYPE_CODE: TcxGridDBColumn
            Caption = 'Transaction Type'
            DataBinding.FieldName = 'TRANSTYPE_CODE'
            RepositoryItem = dmGlobal.luTransType
            Width = 89
          end
          object cxGridDBTableView1ACTLED_SEQID: TcxGridDBColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'ACTLED_SEQID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'SEQID'
            Properties.ListColumns = <
              item
                FieldName = 'ALTYPE'
              end
              item
                FieldName = 'ALCODE'
              end
              item
                FieldName = 'INSTRUCTIONTYPE'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsLedgerAcc
            Width = 99
          end
          object cxGridDBTableView1DC: TcxGridDBColumn
            Caption = 'D / C'
            DataBinding.FieldName = 'DC'
            RepositoryItem = dmGlobal.luDebetCredit
            Width = 41
          end
          object cxGridDBTableView1INSTRUCTION_TYPE: TcxGridDBColumn
            Caption = 'Instruction Type'
            DataBinding.FieldName = 'INSTRUCTION_TYPE'
            RepositoryItem = dmGlobal.luInstructionType
            Width = 85
          end
          object cxGridDBTableView1BROKER_ACCID: TcxGridDBColumn
            Caption = 'Counter Part Account'
            DataBinding.FieldName = 'BROKER_ACCID'
            RepositoryItem = dmGlobal.luCompanyAccount
            Width = 110
          end
          object cxGridDBTableView1BROKER_ACTLED_SEQID: TcxGridDBColumn
            Caption = 'Counter Part Ledger Account'
            DataBinding.FieldName = 'BROKER_ACTLED_SEQID'
            RepositoryItem = dmGlobal.luLedgerAccByAccount
            Width = 146
          end
          object cxGridDBTableView1USE_INSTRUCTION: TcxGridDBColumn
            Caption = 'Use Instruction'
            DataBinding.FieldName = 'USE_INSTRUCTION'
            RepositoryItem = dmGlobal.chkStandard
            Width = 91
          end
          object cxGridDBTableView1ACCBANKID: TcxGridDBColumn
            Caption = 'Bank Account'
            DataBinding.FieldName = 'ACCBANKID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'ACCBANKID'
            Properties.ListColumns = <
              item
                FieldName = 'BNCODE'
              end
              item
                FieldName = 'BANKACCNO'
              end
              item
                FieldName = 'BANKACCNAME'
              end
              item
                FieldName = 'BANKBRANCH'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsBank
            Width = 71
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccCompany
    Left = 224
    Top = 280
  end
  object dsCharge: TDataSource
    DataSet = cdsAccCompCharge
    Left = 296
    Top = 280
  end
  object dsLedgerAcc: TDataSource
    DataSet = cdsAccCompLedger
    Left = 392
    Top = 280
  end
  object dsTransLedger: TDataSource
    DataSet = cdsAccCompTransLedger
    Left = 488
    Top = 280
  end
  object dsBank: TDataSource
    DataSet = cdsAccCompBank
    Left = 88
    Top = 280
  end
  object dsCustody: TDataSource
    DataSet = cdsAccCompCustody
    Left = 160
    Top = 280
  end
  object dsContact: TDataSource
    DataSet = cdsAccCompContact
    Left = 576
    Top = 280
  end
  object cdsAccCompany: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsAccCompanyNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 64
    Top = 352
    object cdsAccCompanyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompanyENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccCompanyACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccCompanyACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccCompanyACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsAccCompanyACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccCompanyACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccCompanyBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsAccCompanyINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccCompanyBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsAccCompanyTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccCompanyPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccCompanyA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccCompanyAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccCompanyOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccCompanyCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccCompanySTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccCompanyISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccCompanyWAPUVALUE: TFloatField
      FieldName = 'WAPUVALUE'
    end
    object cdsAccCompanyISAVGPRICE: TStringField
      FieldName = 'ISAVGPRICE'
      Size = 1
    end
    object cdsAccCompanyISDEBETINTEREST: TStringField
      FieldName = 'ISDEBETINTEREST'
      Size = 1
    end
    object cdsAccCompanyISCREDITINTEREST: TStringField
      FieldName = 'ISCREDITINTEREST'
      Size = 1
    end
    object cdsAccCompanyISPENALTY: TStringField
      FieldName = 'ISPENALTY'
      Size = 1
    end
    object cdsAccCompanyISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccCompanyISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccCompanyISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccCompanySALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsAccCompanyACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccCompanyOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccCompanyOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccCompanyOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccCompanyOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccCompanyOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccCompanyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompanyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompanyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompanyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompanyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompanyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompanyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompanyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompanyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccCompanyISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsAccCompanySI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsAccCompanyALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsAccCompanyTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsAccCompanyLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsAccCompanyCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccCompanyCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsAccCompanyCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccCompanyBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccCompanySELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccCompanyqryAccountCustody: TDataSetField
      FieldName = 'qryAccountCustody'
    end
    object cdsAccCompanyqryAccountContact: TDataSetField
      FieldName = 'qryAccountContact'
    end
    object cdsAccCompanyqryAccountExtRef: TDataSetField
      FieldName = 'qryAccountExtRef'
    end
    object cdsAccCompanyqryAccountTransLedger: TDataSetField
      FieldName = 'qryAccountTransLedger'
    end
    object cdsAccCompanyqryAccountBank: TDataSetField
      FieldName = 'qryAccountBank'
    end
    object cdsAccCompanyqryAccountLedger: TDataSetField
      FieldName = 'qryAccountLedger'
    end
    object cdsAccCompanyqryAccountCharge: TDataSetField
      FieldName = 'qryAccountCharge'
    end
    object cdsAccCompanyqryAccountComm: TDataSetField
      FieldName = 'qryAccountComm'
    end
  end
  object cdsAccCompCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountCharge
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 352
    object cdsAccCompChargeACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompChargeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsAccCompChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsAccCompChargeISUSED: TStringField
      FieldName = 'ISUSED'
      Size = 1
    end
    object cdsAccCompChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompChargeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCompLedger: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountLedger
    Params = <>
    BeforePost = cdsAccCompLedgerBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 352
    object cdsAccCompLedgerACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompLedgerSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsAccCompLedgerALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsAccCompLedgerALCODE: TStringField
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsAccCompLedgerALDESC: TStringField
      FieldName = 'ALDESC'
      Size = 100
    end
    object cdsAccCompLedgerUSE_CLIENTACC: TStringField
      FieldName = 'USE_CLIENTACC'
      Size = 1
    end
    object cdsAccCompLedgerBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 30
    end
    object cdsAccCompLedgerBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccCompLedgerBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccCompLedgerBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccCompLedgerCALCINTEREST: TStringField
      FieldName = 'CALCINTEREST'
      Size = 1
    end
    object cdsAccCompLedgerINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsAccCompLedgerGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
    end
    object cdsAccCompLedgerCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAccCompLedgerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompLedgerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompLedgerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompLedgerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompLedgerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompLedgerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompLedgerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompLedgerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompLedgerID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCompTransLedger: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountTransLedger
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 352
    object cdsAccCompTransLedgerACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompTransLedgerTRANSTYPE_CODE: TStringField
      FieldName = 'TRANSTYPE_CODE'
      Required = True
      Size = 5
    end
    object cdsAccCompTransLedgerACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
      Required = True
    end
    object cdsAccCompTransLedgerDC: TStringField
      FieldName = 'DC'
      Required = True
      Size = 1
    end
    object cdsAccCompTransLedgerACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsAccCompTransLedgerUSE_CPCLIENTACC: TStringField
      FieldName = 'USE_CPCLIENTACC'
      Size = 1
    end
    object cdsAccCompTransLedgerBROKER_ACCID: TIntegerField
      FieldName = 'BROKER_ACCID'
    end
    object cdsAccCompTransLedgerBROKER_ACTLED_SEQID: TIntegerField
      FieldName = 'BROKER_ACTLED_SEQID'
    end
    object cdsAccCompTransLedgerUSE_INSTRUCTION: TStringField
      FieldName = 'USE_INSTRUCTION'
      Size = 1
    end
    object cdsAccCompTransLedgerINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsAccCompTransLedgerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompTransLedgerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompTransLedgerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompTransLedgerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompTransLedgerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompTransLedgerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompTransLedgerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompTransLedgerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompTransLedgerID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCompBank: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountBank
    Params = <>
    BeforePost = cdsAccCompBankBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 352
    object cdsAccCompBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccCompBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsAccCompBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccCompBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccCompBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccCompBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccCompBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccCompBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccCompBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompBankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccCompBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsAccCompBankBN_CHGMODE: TStringField
      FieldName = 'BN_CHGMODE'
      Required = True
      Size = 1
    end
  end
  object cdsAccCompCustody: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountCustody
    Params = <>
    BeforePost = cdsAccCompCustodyBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 664
    Top = 352
    object cdsAccCompCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccCompCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsAccCompCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsAccCompCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsAccCompCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsAccCompCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsAccCompCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccCompCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompCustodyID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCompContact: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccCompanyqryAccountContact
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 456
    object cdsAccCompContactACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCompContactCUSGID: TIntegerField
      FieldName = 'CUSGID'
      Required = True
    end
    object cdsAccCompContactCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 10
    end
    object cdsAccCompContactCONTNAME: TStringField
      FieldName = 'CONTNAME'
      Size = 30
    end
    object cdsAccCompContactCONTPHONE: TStringField
      FieldName = 'CONTPHONE'
      Size = 30
    end
    object cdsAccCompContactCONTMOBILE: TStringField
      FieldName = 'CONTMOBILE'
      Size = 30
    end
    object cdsAccCompContactCONTADDRESS: TStringField
      FieldName = 'CONTADDRESS'
      Size = 150
    end
    object cdsAccCompContactCONTEMAIL: TStringField
      FieldName = 'CONTEMAIL'
      Size = 150
    end
    object cdsAccCompContactCONTFAX: TStringField
      FieldName = 'CONTFAX'
      Size = 30
    end
    object cdsAccCompContactIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsAccCompContactIDCARDNO: TStringField
      FieldName = 'IDCARDNO'
      Size = 30
    end
    object cdsAccCompContactIDCARDEXPIRE: TDateField
      FieldName = 'IDCARDEXPIRE'
    end
    object cdsAccCompContactSENDBYEMAIL: TStringField
      FieldName = 'SENDBYEMAIL'
      Size = 1
    end
    object cdsAccCompContactSENDBYFAX: TStringField
      FieldName = 'SENDBYFAX'
      Size = 1
    end
    object cdsAccCompContactSENDBYSMS: TStringField
      FieldName = 'SENDBYSMS'
      Size = 1
    end
    object cdsAccCompContactSENDBYPOSTMAIL: TStringField
      FieldName = 'SENDBYPOSTMAIL'
      Size = 1
    end
    object cdsAccCompContactMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCompContactMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCompContactAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCompContactAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCompContactUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCompContactUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCompContactNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCompContactISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCompContactID: TLargeintField
      FieldName = 'ID'
    end
  end
end
