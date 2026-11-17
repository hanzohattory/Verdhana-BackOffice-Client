inherited frmAddHistoricalAcqPrice: TfrmAddHistoricalAcqPrice
  Caption = 'Add Historical Aquisition Price'
  ClientHeight = 222
  ClientWidth = 382
  ExplicitWidth = 388
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 382
    Height = 25
    Align = alTop
    Visible = False
    ExplicitWidth = 382
    ExplicitHeight = 25
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 173
    Width = 382
    ExplicitTop = 173
    ExplicitWidth = 382
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object cxGrid3: TcxGrid [2]
    Left = 0
    Top = 25
    Width = 382
    Height = 148
    Align = alClient
    TabOrder = 2
    TabStop = False
    object gvwAquisitionBonds: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'FACEVALUE'
          Column = gvwAquisitionBondsFACEVALUE
        end
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'PROCEED'
          Column = gvwAquisitionBondsPROCEED
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwAquisitionBondsACQ_HISID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACQ_HISID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsTRADEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsBONDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BONDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACQDATE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsACQ_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACQ_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsFACEVALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FACEVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsPROCEED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCEED'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsCAP_GAIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAP_GAIN'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsACC_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_INTEREST'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsHOLD_PERIOD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOLD_PERIOD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsHOLD_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOLD_INTEREST'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsHOLD_TAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOLD_TAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsHOLD_INTERESTTAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOLD_INTERESTTAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsNET_PROCEED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NET_PROCEED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsSELL_VAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SELL_VAL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwAquisitionBondsPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = gvwAquisitionBonds
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsTmpStockPos
    Left = 403
    Top = 231
  end
  object cdsStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TRADEBOND_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACQ_HISID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmFixIncome_qryAcq_Hist'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 309
    Top = 171
    object cdsStockPosACQ_HISID: TLargeintField
      FieldName = 'ACQ_HISID'
      Required = True
    end
    object cdsStockPosTRADEDATE: TDateField
      FieldName = 'TRADEDATE'
    end
    object cdsStockPosBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsStockPosACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsStockPosBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsStockPosACQDATE: TDateField
      FieldName = 'ACQDATE'
    end
    object cdsStockPosACQ_PRICE: TFloatField
      FieldName = 'ACQ_PRICE'
    end
    object cdsStockPosFACEVALUE: TFloatField
      FieldName = 'FACEVALUE'
    end
    object cdsStockPosPROCEED: TFloatField
      FieldName = 'PROCEED'
    end
    object cdsStockPosCAP_GAIN: TFloatField
      FieldName = 'CAP_GAIN'
    end
    object cdsStockPosACC_INTEREST: TFloatField
      FieldName = 'ACC_INTEREST'
    end
    object cdsStockPosHOLD_PERIOD: TIntegerField
      FieldName = 'HOLD_PERIOD'
    end
    object cdsStockPosHOLD_INTEREST: TFloatField
      FieldName = 'HOLD_INTEREST'
    end
    object cdsStockPosHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsStockPosHOLD_INTERESTTAX: TFloatField
      FieldName = 'HOLD_INTERESTTAX'
    end
    object cdsStockPosNET_PROCEED: TFloatField
      FieldName = 'NET_PROCEED'
    end
    object cdsStockPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
    object cdsStockPosLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsStockPosPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
  end
  object cdsTmpStockPos: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmFixIncome_qryStockPos'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsTmpStockPosNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 222
    Top = 174
    object cdsTmpStockPosACQ_HISID: TLargeintField
      FieldName = 'ACQ_HISID'
      Required = True
    end
    object cdsTmpStockPosTRADEDATE: TDateField
      FieldName = 'TRADEDATE'
    end
    object cdsTmpStockPosBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsTmpStockPosACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsTmpStockPosBONDID: TLargeintField
      FieldName = 'BONDID'
    end
    object cdsTmpStockPosACQDATE: TDateField
      DisplayLabel = 'Aqc Date'
      FieldName = 'ACQDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTmpStockPosACQ_PRICE: TFloatField
      DisplayLabel = 'Aqc Price'
      FieldName = 'ACQ_PRICE'
      OnChange = cdsTmpStockPosACQ_PRICEChange
      DisplayFormat = '#,##0.00%'
    end
    object cdsTmpStockPosFACEVALUE: TFloatField
      DisplayLabel = 'Aqc Value'
      FieldName = 'FACEVALUE'
      OnChange = cdsTmpStockPosACQ_PRICEChange
      DisplayFormat = '#,##0'
    end
    object cdsTmpStockPosPROCEED: TFloatField
      DisplayLabel = 'Proceed'
      FieldName = 'PROCEED'
      DisplayFormat = '#,##0'
    end
    object cdsTmpStockPosCAP_GAIN: TFloatField
      FieldName = 'CAP_GAIN'
    end
    object cdsTmpStockPosACC_INTEREST: TFloatField
      FieldName = 'ACC_INTEREST'
    end
    object cdsTmpStockPosHOLD_PERIOD: TIntegerField
      FieldName = 'HOLD_PERIOD'
    end
    object cdsTmpStockPosHOLD_INTEREST: TFloatField
      FieldName = 'HOLD_INTEREST'
    end
    object cdsTmpStockPosHOLD_TAX: TFloatField
      FieldName = 'HOLD_TAX'
    end
    object cdsTmpStockPosHOLD_INTERESTTAX: TFloatField
      FieldName = 'HOLD_INTERESTTAX'
    end
    object cdsTmpStockPosNET_PROCEED: TFloatField
      FieldName = 'NET_PROCEED'
    end
    object cdsTmpStockPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
    object cdsTmpStockPosLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsTmpStockPosPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
  end
end
