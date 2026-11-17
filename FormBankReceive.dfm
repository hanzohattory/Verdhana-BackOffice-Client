inherited frmRDNReceive: TfrmRDNReceive
  Caption = 'Bank Receive Monitoring'
  ClientHeight = 622
  ClientWidth = 1229
  ExplicitWidth = 1229
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1229
    Height = 65
    Align = alTop
    BevelKind = bkTile
    TabOrder = 0
    ExplicitWidth = 785
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 224
      Top = 10
      Width = 75
      Height = 25
      Caption = 'View'
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutControl1Group1
      Control = dtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 65
    Width = 1229
    Height = 557
    Align = alClient
    TabOrder = 1
    ExplicitTop = 71
    ExplicitWidth = 1005
    ExplicitHeight = 499
    object gvwBankReceive: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankReceive
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end>
      object gvwBankReceiveTRDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date/Time'
        DataBinding.FieldName = 'TRDATE'
        Options.Editing = False
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReceiveCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Options.Editing = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankReceiveTRDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'TRDESC'
        Options.Editing = False
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankReceiveTRAMOUNT: TcxGridDBBandedColumn
        Caption = 'New Update'
        DataBinding.FieldName = 'TRAMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 116
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankReceiveRDNPOS: TcxGridDBBandedColumn
        Caption = 'RDN Position'
        DataBinding.FieldName = 'RDNPOS'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankReceiveRECSTATUS: TcxGridDBBandedColumn
        Caption = 'Reconsile'
        DataBinding.FieldName = 'RECSTATUS'
        RepositoryItem = dmGlobal.chkStandard
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankReceiveRECDATE: TcxGridDBBandedColumn
        Caption = 'Recon Date'
        DataBinding.FieldName = 'RECDATE'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankReceiveACCCODE: TcxGridDBBandedColumn
        Caption = 'A/C Number'
        DataBinding.FieldName = 'ACCCODE'
        Options.Editing = False
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankReceiveBNNAME: TcxGridDBBandedColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'BNNAME'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankReceiveBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank A/C No'
        DataBinding.FieldName = 'BNACCNO'
        Options.Editing = False
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankReceiveACCNAME: TcxGridDBBandedColumn
        Caption = 'A/C Name'
        DataBinding.FieldName = 'ACCNAME'
        Options.Editing = False
        Width = 190
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankReceive
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBankReceive
  end
  object cdsBankReceive: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryBankReceive'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 304
    Top = 160
    object cdsBankReceiveTRID: TLargeintField
      FieldName = 'TRID'
      Required = True
    end
    object cdsBankReceiveTRDATE: TDateTimeField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd-mmm-yy hh:nn:ss AM/PM'
    end
    object cdsBankReceiveIO: TStringField
      FieldName = 'IO'
      Size = 1
    end
    object cdsBankReceiveCCY: TStringField
      FieldName = 'CCY'
      Size = 10
    end
    object cdsBankReceiveTRDESC: TStringField
      FieldName = 'TRDESC'
      Size = 80
    end
    object cdsBankReceiveBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 10
    end
    object cdsBankReceiveTRAMOUNT: TFloatField
      FieldName = 'TRAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsBankReceiveRDNPOS: TFloatField
      FieldName = 'RDNPOS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsBankReceiveRECSTATUS: TStringField
      FieldName = 'RECSTATUS'
      Size = 1
    end
    object cdsBankReceiveRECDATE: TDateTimeField
      FieldName = 'RECDATE'
    end
    object cdsBankReceiveACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsBankReceiveACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsBankReceiveLEGACC: TStringField
      FieldName = 'LEGACC'
      Size = 30
    end
    object cdsBankReceiveLEGTYPE: TStringField
      FieldName = 'LEGTYPE'
      Size = 10
    end
    object cdsBankReceiveBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsBankReceiveBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 30
    end
    object cdsBankReceiveBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsBankReceiveACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
  end
  object dsBankReceive: TDataSource
    DataSet = cdsBankReceive
    Left = 408
    Top = 160
  end
  object saBrowse: TcxStyleRepository
    Left = 152
    Top = 280
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object aclBankReceive: TActionList
    Left = 520
    Top = 264
  end
end
