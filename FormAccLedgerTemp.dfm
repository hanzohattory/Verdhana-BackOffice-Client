inherited frmAccLedgerTemp: TfrmAccLedgerTemp
  Caption = 'Ledger Account Template'
  ClientWidth = 326
  ExplicitWidth = 332
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 326
    Height = 81
    Align = alTop
    BevelKind = bkTile
    ExplicitWidth = 326
    ExplicitHeight = 81
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 80
      Top = 10
      RepositoryItem = dmGlobal.luAccType
      DataBinding.DataField = 'ACCTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 80
      Top = 37
      RepositoryItem = dmGlobal.luAccountSubType
      DataBinding.DataField = 'ACCSUBTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Acc Type'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Acc Sub Type'
      Parent = dxLayoutGroup1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Width = 326
    ExplicitWidth = 326
    inherited dbNavLog: TDBNavigator
      Left = 212
      Hints.Strings = ()
      ExplicitLeft = 212
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
    Width = 326
    ExplicitWidth = 326
  end
  inherited tabEditorData: TTabSet
    Width = 326
    ExplicitWidth = 326
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 81
    Width = 326
    Height = 209
    Align = alClient
    TabOrder = 4
    object gvwLedgerTemp: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsLedgerTempD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwLedgerTempALTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'ALTYPE'
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwLedgerTempCASH_STOCK: TcxGridDBBandedColumn
        Caption = 'Cash/Stcok'
        DataBinding.FieldName = 'CASH_STOCK'
        RepositoryItem = dmGlobal.luActLedgerTypeCashStock
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwLedgerTemp
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccLedgTempH
    Left = 32
    Top = 224
  end
  object dsLedgerTempD: TDataSource
    DataSet = cdsAccLedgTempD
    Left = 104
    Top = 224
  end
  object cdsAccLedgTempH: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryAccLedgTempH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 160
    object cdsAccLedgTempHACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Required = True
      Size = 5
    end
    object cdsAccLedgTempHACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Required = True
      Size = 5
    end
    object cdsAccLedgTempHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccLedgTempHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccLedgTempHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccLedgTempHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccLedgTempHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccLedgTempHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccLedgTempHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccLedgTempHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccLedgTempHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccLedgTempHqryAccLedgTempD: TDataSetField
      FieldName = 'qryAccLedgTempD'
    end
  end
  object cdsAccLedgTempD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccLedgTempHqryAccLedgTempD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 160
    object cdsAccLedgTempDACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Required = True
      Size = 5
    end
    object cdsAccLedgTempDACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Required = True
      Size = 5
    end
    object cdsAccLedgTempDALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      OnChange = cdsAccLedgTempDALTYPEChange
      Size = 10
    end
    object cdsAccLedgTempDCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsAccLedgTempDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccLedgTempDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccLedgTempDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccLedgTempDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccLedgTempDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccLedgTempDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccLedgTempDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccLedgTempDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccLedgTempDID: TLargeintField
      FieldName = 'ID'
    end
  end
end
