inherited frmCBestInstruction: TfrmCBestInstruction
  Caption = 'CBest Instruction'
  ClientHeight = 475
  ClientWidth = 921
  ExplicitWidth = 921
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 921
    Height = 57
    Align = alTop
    BevelKind = bkTile
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 68
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object Button1: TButton
      Left = 276
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 195
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
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
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Trans Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Export'
      CaptionOptions.Visible = False
      Control = Button1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Button2'
      CaptionOptions.Visible = False
      Control = Button2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 57
    Width = 921
    Height = 418
    Align = alClient
    TabOrder = 1
    object gvwCBestInstruction: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCBest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end
        item
          Caption = 'AR/AP'
          Width = 351
        end
        item
          Caption = 'DHK'
        end>
      object gvwCBestInstructionACCNO: TcxGridDBBandedColumn
        Caption = 'A/C Number'
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCBestInstructionACCNAME: TcxGridDBBandedColumn
        Caption = 'A/C Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 209
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCBestInstructionDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCBestInstructionART0T2: TcxGridDBBandedColumn
        Caption = 'AR'
        DataBinding.FieldName = 'ART0T2'
        HeaderAlignmentHorz = taRightJustify
        Width = 140
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCBestInstructionAPT0T2: TcxGridDBBandedColumn
        Caption = 'AP'
        DataBinding.FieldName = 'APT0T2'
        HeaderAlignmentHorz = taRightJustify
        Width = 106
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCBestInstructionCASH_CBEST_DEP_ACC: TcxGridDBBandedColumn
        Caption = 'CBest 001'
        DataBinding.FieldName = 'CASH_CBEST_DEP_ACC'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCBestInstructionCASH_CBEST_COLL_ACC: TcxGridDBBandedColumn
        Caption = 'CBest 004'
        DataBinding.FieldName = 'CASH_CBEST_COLL_ACC'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCBestInstructionART3: TcxGridDBBandedColumn
        Caption = 'COLW'
        DataBinding.FieldName = 'ART3'
        HeaderAlignmentHorz = taRightJustify
        Width = 113
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCBestInstructionAPT3: TcxGridDBBandedColumn
        Caption = 'COLDS'
        DataBinding.FieldName = 'APT3'
        HeaderAlignmentHorz = taRightJustify
        Width = 129
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCBestInstructionNETARAP: TcxGridDBBandedColumn
        Caption = 'Netting'
        DataBinding.FieldName = 'NETARAP'
        HeaderAlignmentHorz = taRightJustify
        Width = 105
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCBestInstruction
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCF
  end
  object aclCF: TActionList
    Left = 360
    Top = 152
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
  object cdsCBestInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCBestInstruction'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCBestInstructionCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 184
    Top = 136
    object cdsCBestInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCBestInstructionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCBestInstructionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsCBestInstructionTRDATE: TDateField
      FieldName = 'TRDATE'
    end
    object cdsCBestInstructionDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsCBestInstructionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCBestInstructionART0T2: TFloatField
      FieldName = 'ART0T2'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPT0T2: TFloatField
      FieldName = 'APT0T2'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionART3: TFloatField
      FieldName = 'ART3'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPT3: TFloatField
      FieldName = 'APT3'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionART4: TFloatField
      FieldName = 'ART4'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPT4: TFloatField
      FieldName = 'APT4'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionART5: TFloatField
      FieldName = 'ART5'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPT5: TFloatField
      FieldName = 'APT5'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionART6: TFloatField
      FieldName = 'ART6'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPT6: TFloatField
      FieldName = 'APT6'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionARuptoT6: TFloatField
      FieldName = 'ARuptoT6'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPuptoT6: TFloatField
      FieldName = 'APuptoT6'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionARTotal: TFloatField
      FieldName = 'ARTotal'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionAPTotal: TFloatField
      FieldName = 'APTotal'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCBestInstructionCASH_CBEST_DEP_ACC: TStringField
      FieldName = 'CASH_CBEST_DEP_ACC'
      ReadOnly = True
    end
    object cdsCBestInstructionCASH_CBEST_COLL_ACC: TStringField
      FieldName = 'CASH_CBEST_COLL_ACC'
      ReadOnly = True
    end
    object cdsCBestInstructionNETARAP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
  end
  object dsCBest: TDataSource
    DataSet = cdsCBestInstruction
    Left = 496
    Top = 200
  end
  object saBrowse: TcxStyleRepository
    Left = 424
    Top = 200
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
end
