object frmJournalVoucher: TfrmJournalVoucher
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Journal Voucher'
  ClientHeight = 271
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 744
    Height = 271
    Align = alClient
    TabOrder = 0
    object gvwJRNDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsJRND
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'DEBET'
          Column = gvwJRNDetailDEBET
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwJRNDetailCREDIT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwJRNDetailGLACCOUNTCODE: TcxGridDBBandedColumn
        Caption = 'GL A/C No.'
        DataBinding.FieldName = 'GLACCOUNTCODE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'JRNDDESC'
        Width = 267
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwJRNDetailCCYCODE: TcxGridDBBandedColumn
        Caption = 'CCY'
        DataBinding.FieldName = 'CCYCODE'
        Options.Editing = False
        Options.Focusing = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwJRNDetailCPCODE: TcxGridDBBandedColumn
        Caption = 'Cost/Profit Centre'
        DataBinding.FieldName = 'CPCODE'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwJRNDetailDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwJRNDetailCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = gvwJRNDetail
    end
  end
  object cdsJRNH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'JRNID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryJRNH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 72
    Top = 160
    object cdsJRNHJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNHJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNHVDATE: TDateTimeField
      FieldName = 'VDATE'
    end
    object cdsJRNHEDATE: TDateTimeField
      FieldName = 'EDATE'
    end
    object cdsJRNHREFFID: TLargeintField
      FieldName = 'REFFID'
    end
    object cdsJRNHACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsJRNHACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsJRNHACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsJRNHVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsJRNHVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
      Size = 10
    end
    object cdsJRNHEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsJRNHEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
      Size = 10
    end
    object cdsJRNHJRNTYPE: TStringField
      FieldName = 'JRNTYPE'
    end
    object cdsJRNHHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsJRNHTOTALDB: TFloatField
      FieldName = 'TOTALDB'
    end
    object cdsJRNHTOTALCR: TFloatField
      FieldName = 'TOTALCR'
    end
    object cdsJRNHCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNHEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsJRNHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNHqryJRNExRate: TDataSetField
      FieldName = 'qryJRNExRate'
    end
    object cdsJRNHqryJRND: TDataSetField
      FieldName = 'qryJRND'
    end
  end
  object cdsJRND: TNClientDataset
    Aggregates = <>
    DataSetField = cdsJRNHqryJRND
    Params = <>
    OnCalcFields = cdsJRNDCalcFields
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Left = 176
    Top = 160
    object cdsJRNDJRNID: TLargeintField
      FieldName = 'JRNID'
      Required = True
    end
    object cdsJRNDJRNCD: TStringField
      FieldName = 'JRNCD'
      Size = 30
    end
    object cdsJRNDSEQNUM: TFloatField
      FieldName = 'SEQNUM'
      Required = True
    end
    object cdsJRNDGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
    end
    object cdsJRNDGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsJRNDCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsJRNDJRNDDESC: TStringField
      FieldName = 'JRNDDESC'
      Size = 200
    end
    object cdsJRNDCPID: TLargeintField
      FieldName = 'CPID'
    end
    object cdsJRNDCPCODE: TStringField
      FieldName = 'CPCODE'
    end
    object cdsJRNDDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsJRNDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsJRNDPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsJRNDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsJRNDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsJRNDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsJRNDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsJRNDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsJRNDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsJRNDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsJRNDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsJRNDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsJRNDSPOTTYPE: TStringField
      FieldName = 'SPOTTYPE'
      Size = 1
    end
    object cdsJRNDSPOTCCY: TStringField
      FieldName = 'SPOTCCY'
      Size = 5
    end
    object cdsJRNDDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsJRNDCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object dsJRND: TDataSource
    DataSet = cdsJRND
    Left = 176
    Top = 208
  end
end
