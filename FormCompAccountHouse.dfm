inherited frmCompAccountHouse: TfrmCompAccountHouse
  Caption = 'Company House Account'
  ClientHeight = 455
  ClientWidth = 650
  ExplicitWidth = 656
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 650
    Height = 97
    Align = alTop
    ExplicitWidth = 650
    ExplicitHeight = 97
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
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
      Width = 344
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [2]
      Left = 283
      Top = 10
      RepositoryItem = dmGlobal.luAccountStatus
      DataBinding.DataField = 'ACC_STS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object cxDBImageComboBox5: TcxDBImageComboBox [3]
      Left = 283
      Top = 64
      RepositoryItem = dmGlobal.luAccountSubType
      DataBinding.DataField = 'ACCSUBTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object luAccType: TcxDBLookupComboBox [4]
      Left = 84
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
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox3
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
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sub type'
      Parent = dxLayoutControl1Group2
      Control = cxDBImageComboBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Acc Type'
      Parent = dxLayoutControl1Group2
      Control = luAccType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 386
    Width = 650
    ExplicitTop = 386
    ExplicitWidth = 650
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
  end
  inherited StatusBar: TdxStatusBar
    Top = 435
    Width = 650
    ExplicitTop = 435
    ExplicitWidth = 650
  end
  inherited tabEditorData: TTabSet
    Top = 365
    Width = 650
    ExplicitTop = 365
    ExplicitWidth = 650
  end
  object pageAccount: TcxPageControl [4]
    Left = 0
    Top = 97
    Width = 650
    Height = 268
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 264
    ClientRectLeft = 4
    ClientRectRight = 646
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Info'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 642
        Height = 240
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 153
          Top = 10
          DataBinding.DataField = 'CASH_CBEST_DEP_ACC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 153
          Top = 37
          DataBinding.DataField = 'CASH_CBEST_COLL_ACC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 153
          Top = 64
          DataBinding.DataField = 'SEC_CBEST_DEP_ACC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 153
          Top = 91
          DataBinding.DataField = 'SEC_CBEST_COLL_ACC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 432
          Top = 10
          DataBinding.DataField = 'ALCASHREC'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 145
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 432
          Top = 37
          DataBinding.DataField = 'ALCASHPAY'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 145
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 432
          Top = 64
          DataBinding.DataField = 'ALSTOCKREC'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 145
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 432
          Top = 91
          DataBinding.DataField = 'ALSTOCKDEL'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 145
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash C-Best Account 01'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash C-Best Account 04'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Securities C-Best Account 01'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Securities C-Best Account 04'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Ledger Cash Receive'
          Parent = dxLayoutControl3Group1
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Ledger Cash Payment'
          Parent = dxLayoutControl3Group1
          Control = cxDBLookupComboBox2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Ledger Stock Receive'
          Parent = dxLayoutControl3Group1
          Control = cxDBLookupComboBox3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Ledger Stock Deliver'
          Parent = dxLayoutControl3Group1
          Control = cxDBLookupComboBox4
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    object tabLedgerAcc: TcxTabSheet
      Caption = 'Ledger Account'
      ImageIndex = 4
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 240
        Align = alClient
        TabOrder = 0
        object gvwLedgerAcc: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
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
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwLedgerAccALTYPE: TcxGridDBColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'ALTYPE'
            RepositoryItem = dmGlobal.luActLedgerType
            Width = 244
          end
          object gvwLedgerAccALCODE: TcxGridDBColumn
            Caption = 'Ledger Code'
            DataBinding.FieldName = 'ALCODE'
          end
          object gvwLedgerAccBANKCODE: TcxGridDBColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
          end
          object gvwLedgerAccBANKACCNO: TcxGridDBColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
          end
          object gvwLedgerAccBANKACCNAME: TcxGridDBColumn
            Caption = 'Bank Account Name'
            DataBinding.FieldName = 'BANKACCNAME'
          end
          object gvwLedgerAccBANKBRANCH: TcxGridDBColumn
            Caption = 'Bank Branch'
            DataBinding.FieldName = 'BANKBRANCH'
          end
          object gvwLedgerAccCALCINTEREST: TcxGridDBColumn
            Caption = 'Calc Interest'
            DataBinding.FieldName = 'CALCINTEREST'
            RepositoryItem = dmGlobal.chkStandard
            Width = 68
          end
          object gvwLedgerAccINTERESTCODE: TcxGridDBColumn
            Caption = 'Interest Code'
            DataBinding.FieldName = 'INTERESTCODE'
            RepositoryItem = dmGlobal.luInterest
            Width = 73
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwLedgerAcc
        end
      end
    end
    object tabTransSetting: TcxTabSheet
      Caption = 'Transaction Setting'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 240
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
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
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object cxGridDBTableView1TRANSTYPE_CODE: TcxGridDBColumn
            Caption = 'Transaction Type'
            DataBinding.FieldName = 'TRANSTYPE_CODE'
            RepositoryItem = dmGlobal.luTransType
            Width = 245
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
            Width = 148
          end
          object cxGridDBTableView1DC: TcxGridDBColumn
            Caption = 'D / C'
            DataBinding.FieldName = 'DC'
            RepositoryItem = dmGlobal.luDebetCredit
            Width = 54
          end
          object cxGridDBTableView1INSTRUCTION_TYPE: TcxGridDBColumn
            Caption = 'Instruction Type'
            DataBinding.FieldName = 'INSTRUCTION_TYPE'
            RepositoryItem = dmGlobal.luInstructionType
            Width = 85
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCompanyAccList.cdsCompAcc
    Left = 376
    Top = 104
  end
  object dsCharge: TDataSource
    DataSet = frmAccountList.cdsAccountCharge
    Left = 440
    Top = 104
  end
  object dsComm: TDataSource
    DataSet = frmAccountList.cdsAccountComm
    Left = 512
    Top = 104
  end
  object dsBank: TDataSource
    DataSet = frmAccountList.cdsAccountBank
    Left = 576
    Top = 104
  end
  object dsLedgerAcc: TDataSource
    DataSet = frmCompanyAccList.cdsCompAccLedger
    Left = 640
    Top = 104
  end
  object dsTransLedger: TDataSource
    DataSet = frmCompanyAccList.cdsCompAccTransLedger
    Left = 376
    Top = 160
  end
end
