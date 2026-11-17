inherited frmAccLedgerBalPosition: TfrmAccLedgerBalPosition
  Caption = 'Account Ledger Balance Position'
  ExplicitWidth = 607
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object grdMaster: TcxGrid [0]
    Left = 0
    Top = 45
    Width = 607
    Height = 329
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -531
    ExplicitWidth = 1138
    ExplicitHeight = 318
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAccLedgerBalPosition
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 343
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'LEDGERTYPE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBALANCE: TcxGridDBBandedColumn
        Caption = 'Balance'
        DataBinding.FieldName = 'BALANCE'
        Width = 175
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSETTLESTS: TcxGridDBBandedColumn
        Caption = 'Settle Status'
        DataBinding.FieldName = 'SETTLESTS'
        RepositoryItem = dmGlobal.chkStandard
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBALSTS: TcxGridDBBandedColumn
        Caption = 'Balance Status'
        DataBinding.FieldName = 'BALSTS'
        RepositoryItem = dmGlobal.chkStandard
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 607
    Height = 45
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -531
    ExplicitWidth = 1138
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 223
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
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
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclLedBal
  end
  object aclLedBal: TActionList
    Left = 296
    Top = 112
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
      Description = 'View Account Ledger Balance Position'
      ActionLog = dmGlobal.ActionLog
      ActionType = 'View Data'
    end
  end
  object cdsAccLedgerBalPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccLedgerBalPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 200
    object cdsAccLedgerBalPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsAccLedgerBalPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsAccLedgerBalPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsAccLedgerBalPositionLEDGERTYPE: TStringField
      FieldName = 'LEDGERTYPE'
      Size = 10
    end
    object cdsAccLedgerBalPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsAccLedgerBalPositionBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccLedgerBalPositionSETTLESTS: TStringField
      FieldName = 'SETTLESTS'
      Size = 1
    end
    object cdsAccLedgerBalPositionBALSTS: TStringField
      FieldName = 'BALSTS'
      Size = 1
    end
  end
  object dsAccLedgerBalPosition: TDataSource
    DataSet = cdsAccLedgerBalPosition
    Left = 296
    Top = 248
  end
end
