object frmDailyInterestOutsPenaltyWave: TfrmDailyInterestOutsPenaltyWave
  Left = 0
  Top = 0
  Caption = 'frmDailyInterestOutsPenaltyWave'
  ClientHeight = 185
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 136
    Width = 1048
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Ok'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 116
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdGenerate: TcxGrid
    Left = 0
    Top = 0
    Width = 1048
    Height = 136
    Align = alClient
    TabOrder = 1
    object gvwGenerate: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwGenerateCustomDrawCell
      DataController.DataSource = dsPenaltyWave
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwGeneratetransactionNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'transactionNo'
        Options.Editing = False
        Width = 124
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGeneratetransactionDesc: TcxGridDBBandedColumn
        DataBinding.FieldName = 'transactionDesc'
        Options.Editing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGeneratevalueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'valueDate'
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwGeneratedueDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dueDate'
        Options.Editing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwGeneratecurrency: TcxGridDBBandedColumn
        DataBinding.FieldName = 'currency'
        Options.Editing = False
        Width = 29
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwGenerateinterest: TcxGridDBBandedColumn
        DataBinding.FieldName = 'interest'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwGeneratepenalty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'penalty'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwGenerateprocessAmount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'processAmount'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwGenerateaccountCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accountCode'
        Options.Editing = False
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwGenerateaccountName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'accountName'
        Options.Editing = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object glvGenerate: TcxGridLevel
      GridView = gvwGenerate
    end
  end
  object cdsPenaltyWave: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFinance_qryDailyInterestPenaltyWave'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 120
    object cdsPenaltyWavetransactionNo: TStringField
      DisplayLabel = 'Transaction No'
      FieldName = 'transactionNo'
      Required = True
    end
    object cdsPenaltyWavetransactionDesc: TStringField
      DisplayLabel = 'Transaction Desc'
      FieldName = 'transactionDesc'
      Required = True
      Size = 200
    end
    object cdsPenaltyWavevalueDate: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'valueDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPenaltyWavedueDate: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'dueDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPenaltyWavecurrency: TStringField
      DisplayLabel = 'Ccy'
      FieldName = 'currency'
      Required = True
      Size = 5
    end
    object cdsPenaltyWaveinterest: TFloatField
      DisplayLabel = 'Interest'
      FieldName = 'interest'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0);0.00'
    end
    object cdsPenaltyWavepenalty: TFloatField
      DisplayLabel = 'Penalty'
      FieldName = 'penalty'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0);0.00'
    end
    object cdsPenaltyWaveprocessAmount: TFloatField
      DisplayLabel = 'Process Amount'
      FieldName = 'processAmount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0);0.00'
    end
    object cdsPenaltyWaveaccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'accountCode'
      ReadOnly = True
      Size = 30
    end
    object cdsPenaltyWaveaccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'accountName'
      ReadOnly = True
      Size = 150
    end
  end
  object dsPenaltyWave: TDataSource
    DataSet = cdsPenaltyWave
    Left = 336
    Top = 120
  end
end
