object frmLedgerDetail: TfrmLedgerDetail
  Left = 0
  Top = 0
  Caption = 'Ledger Detail'
  ClientHeight = 390
  ClientWidth = 1127
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1127
    Height = 390
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object gvwFundSubLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFundSubLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'DEBIT'
          Column = gvwFundSubLedgerDEBIT
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwFundSubLedgerCREDIT
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'DEBIT_BASE'
          Column = gvwFundSubLedgerDEBIT_BASE
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'CREDIT_BASE'
          Column = gvwFundSubLedgerCREDIT_BASE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwFundSubLedgerACCNO: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerSITYPENAME: TcxGridDBBandedColumn
        Caption = 'Settle Type Name'
        DataBinding.FieldName = 'SITYPENAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerHCDESC: TcxGridDBBandedColumn
        Caption = 'Header Description'
        DataBinding.FieldName = 'HCDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerCDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerEXRATE: TcxGridDBBandedColumn
        Caption = 'Ex Rate'
        DataBinding.FieldName = 'EXRATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerDEBIT: TcxGridDBBandedColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerDEBIT_BASE: TcxGridDBBandedColumn
        Caption = 'Debit (Base CCY)'
        DataBinding.FieldName = 'DEBIT_BASE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerCREDIT_BASE: TcxGridDBBandedColumn
        Caption = 'Credit (Base CCY)'
        DataBinding.FieldName = 'CREDIT_BASE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerREVERSE_STS: TcxGridDBBandedColumn
        Caption = 'Reverse Status'
        DataBinding.FieldName = 'REVERSE_STS'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerREVERSED: TcxGridDBBandedColumn
        Caption = 'Reversed'
        DataBinding.FieldName = 'REVERSED'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerLDGTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LDGTYPE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwFundSubLedgerLEDGERNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object gvwSecuritiesSubLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSecSubLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwSecuritiesSubLedgerCREDIT
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'DEBIT'
          Column = gvwSecuritiesSubLedgerDEBIT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwSecuritiesSubLedgerACCNO: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerLDGTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'LDGTYPE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerALDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Ledger Description'
        DataBinding.FieldName = 'ALDESCRIPTION'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerTRTYPE: TcxGridDBBandedColumn
        Caption = 'Trans Type'
        DataBinding.FieldName = 'TRTYPE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerSITYPENAME: TcxGridDBBandedColumn
        Caption = 'Trans Type Name'
        DataBinding.FieldName = 'SITYPENAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerHSDESC: TcxGridDBBandedColumn
        Caption = 'Header Description'
        DataBinding.FieldName = 'HSDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerSDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'SDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedger__COLUMN3: TcxGridDBBandedColumn
        Caption = 'CCY'
        DataBinding.FieldName = '__COLUMN3'
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerDEBIT: TcxGridDBBandedColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerREVERSE_STS: TcxGridDBBandedColumn
        Caption = 'Reverse Status'
        DataBinding.FieldName = 'REVERSE_STS'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwSecuritiesSubLedgerREVERSED: TcxGridDBBandedColumn
        Caption = 'Reversed'
        DataBinding.FieldName = 'REVERSED'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object gvwGeneralLedger: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGeneralLedger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'DEBIT'
          Column = gvwGeneralLedgerDEBIT
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwGeneralLedgerCREDIT
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'DEBIT_BASE'
          Column = gvwGeneralLedgerDEBIT_BASE
        end
        item
          Format = '#,##00;(#,##00);0'
          Kind = skSum
          FieldName = 'CREDIT_BASE'
          Column = gvwGeneralLedgerCREDIT_BASE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwGeneralLedgerGL_JRNTYPE: TcxGridDBBandedColumn
        Caption = 'Journal Type'
        DataBinding.FieldName = 'GL_JRNTYPE'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerJRNTYPEDESC: TcxGridDBBandedColumn
        Caption = 'Journal Type Desc'
        DataBinding.FieldName = 'JRNTYPEDESC'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerACCNO: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCNO'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerSITYPENAME: TcxGridDBBandedColumn
        Caption = 'Settle Type Name'
        DataBinding.FieldName = 'SITYPENAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerGLACCOUNTCODE: TcxGridDBBandedColumn
        Caption = 'GL Account Code'
        DataBinding.FieldName = 'GLACCOUNTCODE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerGLACCOUNTNAME: TcxGridDBBandedColumn
        Caption = 'GL Account Name'
        DataBinding.FieldName = 'GLACCOUNTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerHCDESC: TcxGridDBBandedColumn
        Caption = 'Header Desciption'
        DataBinding.FieldName = 'HCDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerCDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CDESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerDEBIT: TcxGridDBBandedColumn
        Caption = 'Debit'
        DataBinding.FieldName = 'DEBIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerDEBIT_BASE: TcxGridDBBandedColumn
        Caption = 'Debit (Base CCY)'
        DataBinding.FieldName = 'DEBIT_BASE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerCREDIT_BASE: TcxGridDBBandedColumn
        Caption = 'Credit (Base CCY)'
        DataBinding.FieldName = 'CREDIT_BASE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerEXRATE: TcxGridDBBandedColumn
        Caption = 'Ex Rate'
        DataBinding.FieldName = 'EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerREVERSE_STS: TcxGridDBBandedColumn
        Caption = 'Reverse Status'
        DataBinding.FieldName = 'REVERSE_STS'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerREVERSED: TcxGridDBBandedColumn
        Caption = 'Reversed'
        DataBinding.FieldName = 'REVERSED'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerLDGTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LDGTYPE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwGeneralLedgerLEDGERNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object glvGeneralLedger: TcxGridLevel
      Caption = 'General Ledger'
      GridView = gvwGeneralLedger
    end
    object glvFundSubLedger: TcxGridLevel
      Caption = 'Fund Sub Ledger'
      GridView = gvwFundSubLedger
    end
    object glvSecuritiesSubLedger: TcxGridLevel
      Caption = 'Securities Sub Ledger'
      GridView = gvwSecuritiesSubLedger
    end
  end
  object cdsFundSubLedger: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'JOUTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LINKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LINKID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'EXRATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CCY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryCashTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 192
    Top = 168
    object cdsFundSubLedgerCTRID: TLargeintField
      FieldName = 'CTRID'
      ReadOnly = True
      Required = True
    end
    object cdsFundSubLedger__COLUMN1: TLargeintField
      FieldName = '__COLUMN1'
      ReadOnly = True
      Required = True
    end
    object cdsFundSubLedgerJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsFundSubLedgerGL_JRNTYPE: TStringField
      FieldName = 'GL_JRNTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsFundSubLedgerJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsFundSubLedgerENTRYDATE: TDateTimeField
      FieldName = 'ENTRYDATE'
      ReadOnly = True
    end
    object cdsFundSubLedgerVALUEDATE: TDateTimeField
      FieldName = 'VALUEDATE'
      ReadOnly = True
    end
    object cdsFundSubLedgerACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsFundSubLedgerACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsFundSubLedgerACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsFundSubLedgerTRTYPE: TStringField
      FieldName = 'TRTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsFundSubLedgerSITYPENAME: TStringField
      FieldName = 'SITYPENAME'
      ReadOnly = True
      Size = 100
    end
    object cdsFundSubLedgerGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      ReadOnly = True
    end
    object cdsFundSubLedgerGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsFundSubLedgerGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsFundSubLedger__COLUMN2: TStringField
      FieldName = '__COLUMN2'
      ReadOnly = True
    end
    object cdsFundSubLedger__COLUMN3: TLargeintField
      FieldName = '__COLUMN3'
      ReadOnly = True
    end
    object cdsFundSubLedgerLINKNO: TStringField
      FieldName = 'LINKNO'
      ReadOnly = True
    end
    object cdsFundSubLedgerHCDESC: TStringField
      FieldName = 'HCDESC'
      ReadOnly = True
      Size = 150
    end
    object cdsFundSubLedgerCDESC: TStringField
      FieldName = 'CDESC'
      ReadOnly = True
      Size = 150
    end
    object cdsFundSubLedger__COLUMN4: TStringField
      FieldName = '__COLUMN4'
      ReadOnly = True
      Size = 5
    end
    object cdsFundSubLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsFundSubLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsFundSubLedgerDEBIT_BASE: TFloatField
      FieldName = 'DEBIT_BASE'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsFundSubLedgerCREDIT_BASE: TFloatField
      FieldName = 'CREDIT_BASE'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsFundSubLedgerREVERSE_STS: TStringField
      FieldName = 'REVERSE_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsFundSubLedgerREVERSE_JRNID: TLargeintField
      FieldName = 'REVERSE_JRNID'
      ReadOnly = True
    end
    object cdsFundSubLedgerREFID: TLargeintField
      FieldName = 'REFID'
      ReadOnly = True
    end
    object cdsFundSubLedgerEXRATE: TFloatField
      FieldName = 'EXRATE'
      ReadOnly = True
    end
    object cdsFundSubLedgerJRNID: TLargeintField
      FieldName = 'JRNID'
      ReadOnly = True
    end
    object cdsFundSubLedgerCPCODE: TStringField
      FieldName = 'CPCODE'
      ReadOnly = True
    end
    object cdsFundSubLedgerSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsFundSubLedgerPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsFundSubLedgerLDGTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'LDGTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsFundSubLedgerCCY: TStringField
      FieldName = 'CCY'
      ReadOnly = True
      Size = 5
    end
    object cdsFundSubLedgerREVERSED: TStringField
      FieldName = 'REVERSED'
      ReadOnly = True
      Size = 1
    end
    object cdsFundSubLedgerLEDGERNAME: TStringField
      DisplayLabel = 'Ledger Name'
      FieldName = 'LEDGERNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object cdsSecSubLedger: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LINKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LINKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryStockTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 317
    Top = 176
    object cdsSecSubLedgerLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsSecSubLedgerSTRID: TLargeintField
      FieldName = 'STRID'
      ReadOnly = True
      Required = True
    end
    object cdsSecSubLedger__COLUMN1: TLargeintField
      FieldName = '__COLUMN1'
      ReadOnly = True
      Required = True
    end
    object cdsSecSubLedgerJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      Size = 10
    end
    object cdsSecSubLedgerGL_JRNTYPE: TStringField
      FieldName = 'GL_JRNTYPE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      Required = True
    end
    object cdsSecSubLedgerVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSecSubLedgerACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSecSubLedgerACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSecSubLedgerACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsSecSubLedgerTRTYPE: TStringField
      FieldName = 'TRTYPE'
      Size = 5
    end
    object cdsSecSubLedgerSITYPENAME: TStringField
      FieldName = 'SITYPENAME'
      ReadOnly = True
      Size = 100
    end
    object cdsSecSubLedgerGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      ReadOnly = True
    end
    object cdsSecSubLedgerGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsSecSubLedgerGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsSecSubLedger__COLUMN2: TStringField
      FieldName = '__COLUMN2'
      ReadOnly = True
    end
    object cdsSecSubLedgerLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsSecSubLedgerLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsSecSubLedgerHSDESC: TStringField
      FieldName = 'HSDESC'
      Size = 150
    end
    object cdsSecSubLedgerSDESC: TStringField
      FieldName = 'SDESC'
      Size = 150
    end
    object cdsSecSubLedger__COLUMN3: TStringField
      FieldName = '__COLUMN3'
      ReadOnly = True
      Size = 5
    end
    object cdsSecSubLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsSecSubLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsSecSubLedgerREVERSE_STS: TStringField
      FieldName = 'REVERSE_STS'
      Size = 1
    end
    object cdsSecSubLedgerREVERSE_JRNID: TStringField
      FieldName = 'REVERSE_JRNID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerREFID: TStringField
      FieldName = 'REFID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerEXRATE: TStringField
      FieldName = 'EXRATE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerJRNID: TStringField
      FieldName = 'JRNID'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerCPCODE: TStringField
      FieldName = 'CPCODE'
      ReadOnly = True
    end
    object cdsSecSubLedger__COLUMN4: TStringField
      FieldName = '__COLUMN4'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsSecSubLedgerSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsSecSubLedgerPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsSecSubLedgerLDGTYPE: TStringField
      FieldName = 'LDGTYPE'
      Size = 10
    end
    object cdsSecSubLedgerALDESCRIPTION: TStringField
      FieldName = 'ALDESCRIPTION'
      ReadOnly = True
      Size = 150
    end
    object cdsSecSubLedgerREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
  end
  object dsFundSubLedger: TDataSource
    DataSet = cdsFundSubLedger
    Left = 192
    Top = 248
  end
  object dsSecSubLedger: TDataSource
    DataSet = cdsSecSubLedger
    Left = 320
    Top = 264
  end
  object cdsGeneralLedger: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'JOUTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LINKTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LINKID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'EXRATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CCY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryCashTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 451
    Top = 208
    object cdsGeneralLedgerCTRID: TLargeintField
      FieldName = 'CTRID'
      ReadOnly = True
      Required = True
    end
    object cdsGeneralLedger__COLUMN1: TLargeintField
      FieldName = '__COLUMN1'
      ReadOnly = True
      Required = True
    end
    object cdsGeneralLedgerJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      ReadOnly = True
      Size = 2
    end
    object cdsGeneralLedgerGL_JRNTYPE: TStringField
      FieldName = 'GL_JRNTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsGeneralLedgerJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      ReadOnly = True
      Size = 50
    end
    object cdsGeneralLedgerENTRYDATE: TDateTimeField
      FieldName = 'ENTRYDATE'
      ReadOnly = True
    end
    object cdsGeneralLedgerVALUEDATE: TDateTimeField
      FieldName = 'VALUEDATE'
      ReadOnly = True
    end
    object cdsGeneralLedgerACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsGeneralLedgerACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsGeneralLedgerACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsGeneralLedgerTRTYPE: TStringField
      FieldName = 'TRTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsGeneralLedgerSITYPENAME: TStringField
      FieldName = 'SITYPENAME'
      ReadOnly = True
      Size = 100
    end
    object cdsGeneralLedgerGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      ReadOnly = True
    end
    object cdsGeneralLedgerGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsGeneralLedgerGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsGeneralLedger__COLUMN2: TStringField
      FieldName = '__COLUMN2'
      ReadOnly = True
    end
    object cdsGeneralLedger__COLUMN3: TLargeintField
      FieldName = '__COLUMN3'
      ReadOnly = True
    end
    object cdsGeneralLedgerLINKNO: TStringField
      FieldName = 'LINKNO'
      ReadOnly = True
    end
    object cdsGeneralLedgerHCDESC: TStringField
      FieldName = 'HCDESC'
      ReadOnly = True
      Size = 150
    end
    object cdsGeneralLedgerCDESC: TStringField
      FieldName = 'CDESC'
      ReadOnly = True
      Size = 150
    end
    object cdsGeneralLedger__COLUMN4: TStringField
      FieldName = '__COLUMN4'
      ReadOnly = True
      Size = 5
    end
    object cdsGeneralLedgerDEBIT: TFloatField
      FieldName = 'DEBIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsGeneralLedgerCREDIT: TFloatField
      FieldName = 'CREDIT'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsGeneralLedgerDEBIT_BASE: TFloatField
      FieldName = 'DEBIT_BASE'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsGeneralLedgerCREDIT_BASE: TFloatField
      FieldName = 'CREDIT_BASE'
      ReadOnly = True
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsGeneralLedgerREVERSE_STS: TStringField
      FieldName = 'REVERSE_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsGeneralLedgerREVERSE_JRNID: TLargeintField
      FieldName = 'REVERSE_JRNID'
      ReadOnly = True
    end
    object cdsGeneralLedgerREFID: TLargeintField
      FieldName = 'REFID'
      ReadOnly = True
    end
    object cdsGeneralLedgerEXRATE: TFloatField
      FieldName = 'EXRATE'
      ReadOnly = True
    end
    object cdsGeneralLedgerJRNID: TLargeintField
      FieldName = 'JRNID'
      ReadOnly = True
    end
    object cdsGeneralLedgerCPCODE: TStringField
      FieldName = 'CPCODE'
      ReadOnly = True
    end
    object cdsGeneralLedgerSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsGeneralLedgerPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsGeneralLedgerLDGTYPE: TStringField
      DisplayLabel = 'Ledger Type'
      FieldName = 'LDGTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsGeneralLedgerCCY: TStringField
      FieldName = 'CCY'
      ReadOnly = True
      Size = 5
    end
    object cdsGeneralLedgerREVERSED: TStringField
      FieldName = 'REVERSED'
      ReadOnly = True
      Size = 1
    end
    object cdsGeneralLedgerLEDGERNAME: TStringField
      DisplayLabel = 'Ledger Name'
      FieldName = 'LEDGERNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object dsGeneralLedger: TDataSource
    DataSet = cdsGeneralLedger
    Left = 440
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Left = 756
    Top = 162
    object CustomizeColumn1: TMenuItem
      Caption = 'Customize Column'
      OnClick = CustomizeColumn1Click
    end
    object Copygridwithheader1: TMenuItem
      Action = actCopySelected
    end
  end
  object aclEditor: TActionList
    Left = 384
    Top = 128
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
  end
end
