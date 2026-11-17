inherited frmCashFlow: TfrmCashFlow
  Caption = 'Cash Flow Projection'
  ClientHeight = 568
  ClientWidth = 956
  ExplicitWidth = 956
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 956
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
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Trans Date'
      Parent = dxLayoutControl1Group_Root
      Control = dtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 57
    Width = 956
    Height = 511
    Align = alClient
    TabOrder = 1
    ExplicitTop = 63
    object gvwBank: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBank
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
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
          Width = 428
        end
        item
          Caption = 'Liabilities Vs Position'
          Width = 676
        end
        item
          Caption = 'T+1'
        end>
      object gvwBankBNNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNNAME'
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankBNSALDO: TcxGridDBBandedColumn
        Caption = 'Bank Position'
        DataBinding.FieldName = 'BNSALDO'
        HeaderAlignmentHorz = taRightJustify
        Width = 126
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankT0PAYMENT: TcxGridDBBandedColumn
        Caption = 'Payment'
        DataBinding.FieldName = 'T0PAYMENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        Width = 143
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankT0RECEIVE: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'T0RECEIVE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankT1PAYMENT: TcxGridDBBandedColumn
        Caption = 'T+1 Payment'
        DataBinding.FieldName = 'T1PAYMENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        HeaderAlignmentHorz = taRightJustify
        Width = 92
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankT1RECEIVE: TcxGridDBBandedColumn
        Caption = 'T+1 Receive'
        DataBinding.FieldName = 'T1RECEIVE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        HeaderAlignmentHorz = taRightJustify
        Width = 91
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 113
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 144
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankT0NET: TcxGridDBBandedColumn
        Caption = 'Netting'
        DataBinding.FieldName = 'T0NET'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        HeaderAlignmentHorz = taRightJustify
        Width = 136
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankT1NET: TcxGridDBBandedColumn
        Caption = 'Netting'
        DataBinding.FieldName = 'T1NET'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00;(#,##0.00);-'
        HeaderAlignmentHorz = taRightJustify
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankCASHREQUIRED: TcxGridDBBandedColumn
        Caption = 'Cash Required'
        DataBinding.FieldName = 'CASHREQUIRED'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 121
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object gvwGroup: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGroup
      DataController.DetailKeyFieldNames = 'BNCODE'
      DataController.KeyFieldNames = 'BNCODE'
      DataController.MasterKeyFieldNames = 'BNCODE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
          Width = 129
        end
        item
          Caption = 'T+0'
          Width = 288
        end
        item
          Caption = 'T+1'
          Width = 303
        end>
      object gvwGroupGROUPCODE: TcxGridDBBandedColumn
        Caption = 'Group'
        DataBinding.FieldName = 'GROUPCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGroupT0PAYMENT: TcxGridDBBandedColumn
        Caption = 'Payment'
        DataBinding.FieldName = 'T0PAYMENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 151
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGroupT0RECEIVE: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'T0RECEIVE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGroupT1PAYMENT: TcxGridDBBandedColumn
        Caption = 'Payment'
        DataBinding.FieldName = 'T1PAYMENT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 137
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGroupT1RECEIVE: TcxGridDBBandedColumn
        Caption = 'Receive'
        DataBinding.FieldName = 'T1RECEIVE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 113
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBank
      object cxGrid1Level2: TcxGridLevel
        GridView = gvwGroup
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 440
    Top = 24
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCF
    Left = 256
    Top = 208
  end
  object dsBank: TDataSource
    DataSet = cdsBankBalance
    Left = 176
    Top = 208
  end
  object cdsBankBalance: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryCFBank'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsBankBalanceCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 168
    Top = 264
    object cdsBankBalanceBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsBankBalanceBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 10
    end
    object cdsBankBalanceACCID: TStringField
      FieldName = 'ACCID'
      Size = 10
    end
    object cdsBankBalanceBNSALDO: TFloatField
      FieldName = 'BNSALDO'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankBalanceT0PAYMENT: TFloatField
      FieldName = 'T0PAYMENT'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankBalanceT0RECEIVE: TFloatField
      FieldName = 'T0RECEIVE'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankBalanceT1PAYMENT: TFloatField
      FieldName = 'T1PAYMENT'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankBalanceT1RECEIVE: TFloatField
      FieldName = 'T1RECEIVE'
      DisplayFormat = '#,##0.00'
    end
    object cdsBankBalanceACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsBankBalanceACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsBankBalanceT0NET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T0NET'
      Calculated = True
    end
    object cdsBankBalanceT1NET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T1NET'
      Calculated = True
    end
    object cdsBankBalanceCASHREQUIRED: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CASHREQUIRED'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
      Calculated = True
    end
  end
  object saBrowse: TcxStyleRepository
    Left = 232
    Top = 344
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object cdsCFGroup: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmCashManagement_qryCFGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 352
    Top = 240
    object cdsCFGroupBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsCFGroupGROUPCODE: TStringField
      FieldName = 'GROUPCODE'
      Required = True
      Size = 30
    end
    object cdsCFGroupT0PAYMENT: TFloatField
      FieldName = 'T0PAYMENT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCFGroupT0RECEIVE: TFloatField
      FieldName = 'T0RECEIVE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCFGroupT1PAYMENT: TFloatField
      FieldName = 'T1PAYMENT'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
    object cdsCFGroupT1RECEIVE: TFloatField
      FieldName = 'T1RECEIVE'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
  object dsGroup: TDataSource
    DataSet = cdsCFGroup
    Left = 104
    Top = 360
  end
  object aclCF: TActionList
    Left = 360
    Top = 152
  end
end
