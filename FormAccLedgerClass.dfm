inherited frmAccLedgerClass: TfrmAccLedgerClass
  Caption = 'Account Ledger Class'
  ClientHeight = 432
  ClientWidth = 452
  ExplicitWidth = 458
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 452
    Height = 100
    Align = alTop
    ExplicitWidth = 422
    ExplicitHeight = 100
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 116
      Top = 28
      DataBinding.DataField = 'ALCID'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 116
      Top = 55
      DataBinding.DataField = 'ALCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 284
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Account Class'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Ledger ID'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 363
    Width = 452
    ExplicitTop = 363
    ExplicitWidth = 422
    inherited dbNavLog: TDBNavigator
      Left = 338
      Hints.Strings = ()
      ExplicitLeft = 338
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
    Top = 412
    Width = 452
    ExplicitTop = 412
    ExplicitWidth = 422
  end
  inherited tabEditorData: TTabSet
    Top = 342
    Width = 452
    ExplicitTop = 342
    ExplicitWidth = 422
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 100
    Width = 452
    Height = 242
    Align = alClient
    TabOrder = 4
    ExplicitWidth = 422
    object gvwAccLegClassD: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsAccLegClass_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwAccLegClassDALCID: TcxGridDBBandedColumn
        Caption = 'Account Ledger ID'
        DataBinding.FieldName = 'ALCID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        Visible = False
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAccLegClassDALTYPE: TcxGridDBBandedColumn
        Caption = 'Account Ledger Type'
        DataBinding.FieldName = 'ALTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 288
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAccLegClassDMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAccLegClassDMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAccLegClassDAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAccLegClassDAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwAccLegClassDUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwAccLegClassDUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwAccLegClassDNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwAccLegClassDISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwAccLegClassDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwAccLegClassD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccLedgerClassList.cdsAccLegClass_H
    Left = 321
    Top = 121
  end
  object dsAccLegClass_D: TDataSource
    DataSet = frmAccLedgerClassList.cdsAccLegClass_D
    Left = 318
    Top = 168
  end
  object cdsAccLegClass_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftSmallint
        Name = 'ALCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccLegClass_H'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsAccLegClass_HBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 219
    Top = 125
    object cdsAccLegClass_HALCID: TIntegerField
      FieldName = 'ALCID'
      Required = True
    end
    object cdsAccLegClass_HALCNAME: TStringField
      FieldName = 'ALCNAME'
      Required = True
      Size = 50
    end
    object cdsAccLegClass_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccLegClass_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccLegClass_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccLegClass_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccLegClass_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccLegClass_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccLegClass_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccLegClass_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccLegClass_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccLegClass_HqryAccLegClass_D: TDataSetField
      FieldName = 'qryAccLegClass_D'
    end
  end
  object cdsAccLegClass_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccLegClass_HqryAccLegClass_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 219
    Top = 170
    object cdsAccLegClass_DALCID: TIntegerField
      FieldName = 'ALCID'
      Required = True
    end
    object cdsAccLegClass_DALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsAccLegClass_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccLegClass_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccLegClass_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccLegClass_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccLegClass_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccLegClass_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccLegClass_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccLegClass_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccLegClass_DID: TLargeintField
      FieldName = 'ID'
    end
  end
end
