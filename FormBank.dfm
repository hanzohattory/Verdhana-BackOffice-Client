inherited frmBank: TfrmBank
  Caption = 'Bank'
  ClientHeight = 397
  ClientWidth = 550
  ExplicitWidth = 556
  ExplicitHeight = 426
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 550
    Height = 123
    Align = alTop
    ExplicitWidth = 550
    ExplicitHeight = 123
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 64
      DataBinding.DataField = 'BNNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 330
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 68
      Top = 91
      DataBinding.DataField = 'BICODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [3]
      Left = 195
      Top = 10
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'RDN Bank'
      DataBinding.DataField = 'ISRDN'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 68
      Top = 37
      DataBinding.DataField = 'INITIAL_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 330
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'BI Code'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Initial'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 328
    Width = 550
    ExplicitTop = 328
    ExplicitWidth = 550
    inherited dbNavLog: TDBNavigator
      Left = 436
      Hints.Strings = ()
      ExplicitLeft = 436
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 377
    Width = 550
    ExplicitTop = 377
    ExplicitWidth = 550
  end
  inherited tabEditorData: TTabSet
    Top = 307
    Width = 550
    ExplicitTop = 307
    ExplicitWidth = 550
  end
  object grdBankCharges: TcxGrid [4]
    Left = 0
    Top = 123
    Width = 550
    Height = 184
    Align = alClient
    TabOrder = 4
    object gvwBankCharges: TcxGridDBTableView
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
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBankCharges
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
      object gvwBankChargesTRANSFER_MODE: TcxGridDBColumn
        Caption = 'Transfer Mode'
        DataBinding.FieldName = 'TRANSFER_MODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CCYCODE'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luBankTransferType
        Width = 84
      end
      object gvwBankChargesCCYCODE: TcxGridDBColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCYCODE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luCcy
        Width = 43
      end
      object gvwBankChargesCHARGE_AMT: TcxGridDBColumn
        Caption = 'Charges Amount'
        DataBinding.FieldName = 'CHARGE_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 96
      end
      object gvwBankChargesCHARGE_MINTRANS: TcxGridDBColumn
        Caption = 'Minimum Trans'
        DataBinding.FieldName = 'CHARGE_MINTRANS'
        HeaderAlignmentHorz = taRightJustify
        Width = 109
      end
      object gvwBankChargesCHARGE_MAXTRANS: TcxGridDBColumn
        Caption = 'Maximum Trans'
        DataBinding.FieldName = 'CHARGE_MAXTRANS'
        HeaderAlignmentHorz = taRightJustify
        Width = 112
      end
      object gvwBankChargesFTSERVICE: TcxGridDBColumn
        Caption = 'FT Service'
        DataBinding.FieldName = 'FTSERVICE'
        Width = 89
      end
    end
    object grdBankChargesLevel1: TcxGridLevel
      GridView = gvwBankCharges
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsBank
    Left = 280
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 320
    Top = 48
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 280
    Top = 64
    object cdsBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsBankBICODE: TStringField
      FieldName = 'BICODE'
      Size = 10
    end
    object cdsBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      Size = 10
    end
    object cdsBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsBankINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      Size = 10
    end
    object cdsBankqryBankCharges: TDataSetField
      FieldName = 'qryBankCharges'
    end
  end
  object cdsBankCharges: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBankqryBankCharges
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 8
    object cdsBankChargesTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Required = True
      Size = 10
    end
    object cdsBankChargesCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsBankChargesCHARGE_AMT: TFloatField
      FieldName = 'CHARGE_AMT'
      DisplayFormat = '#,##0'
    end
    object cdsBankChargesCHARGE_MINTRANS: TFloatField
      FieldName = 'CHARGE_MINTRANS'
      DisplayFormat = '#,##0'
    end
    object cdsBankChargesCHARGE_MAXTRANS: TFloatField
      FieldName = 'CHARGE_MAXTRANS'
      DisplayFormat = '#,##0'
    end
    object cdsBankChargesFTSERVICE: TStringField
      FieldName = 'FTSERVICE'
      Size = 10
    end
  end
  object dsBankCharges: TDataSource
    DataSet = cdsBankCharges
    Left = 368
    Top = 8
  end
end
