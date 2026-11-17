inherited frmWHTList: TfrmWHTList
  Caption = 'WH Tax'
  ClientHeight = 499
  ClientWidth = 839
  ExplicitWidth = 839
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 839
    Height = 45
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 607
    object dtStartDate: TcxDateEdit
      Left = 65
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
      Left = 334
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object dtEndDate: TcxDateEdit
      Left = 208
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
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
      CaptionOptions.Text = 'Date From'
      Parent = dxLayoutGroup2
      Control = dtStartDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = dxLayoutGroup2
      Control = dtEndDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 45
    Width = 839
    Height = 454
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 607
    ExplicitHeight = 329
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsWHTList
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
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 467
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCONDATE: TcxGridDBBandedColumn
        Caption = 'Contract Date'
        DataBinding.FieldName = 'CONDATE'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterWHT: TcxGridDBBandedColumn
        Caption = 'WH Tax Value'
        DataBinding.FieldName = 'WHT'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclWHT
  end
  object aclWHT: TActionList
    Left = 296
    Top = 120
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
  object cdsWHTList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryWHTList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 296
    Top = 168
    object cdsWHTListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsWHTListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsWHTListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsWHTListACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsWHTListCONDATE: TDateField
      FieldName = 'CONDATE'
      ReadOnly = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsWHTListWHT: TFloatField
      FieldName = 'WHT'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
  end
  object dsWHTList: TDataSource
    DataSet = cdsWHTList
    Left = 296
    Top = 216
  end
end
