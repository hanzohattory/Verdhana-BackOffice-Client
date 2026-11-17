object frmIPOAllotmentUpload: TfrmIPOAllotmentUpload
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'IPO Allotment Upload'
  ClientHeight = 484
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1034
    Height = 52
    Align = alTop
    TabOrder = 0
    object txtFileName: TcxButtonEdit
      Left = 130
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtFileNamePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 225
    end
    object cxButton1: TcxButton
      Left = 361
      Top = 10
      Width = 150
      Height = 25
      Caption = 'Import Data Allotment'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 517
      Top = 10
      Width = 150
      Height = 25
      Caption = 'Insert Into Allotment'
      TabOrder = 2
      OnClick = cxButton2Click
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
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'IPO Allotment File Name'
      Control = txtFileName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 459
    Width = 1034
    Height = 25
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 52
    Width = 1034
    Height = 407
    Align = alClient
    PopupMenu = pmAllotmentUpload
    TabOrder = 2
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsMaster
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Count : #,##0'
          Kind = skCount
          FieldName = 'UploadedDate'
          Column = gvwMasterUploadedDate
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end
        item
          Caption = 'Customers Data'
        end
        item
          Caption = 'Customers Upload'
        end
        item
          Visible = False
        end>
      object gvwMasterUploadedDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UploadedDate'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterGroupID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GroupID'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccID'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAccCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccCode'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = gvwMasterAccCodePropertiesButtonClick
        Width = 89
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Width = 250
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAccInit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccInit'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        OnCustomDrawCell = gvwMasterAccInitCustomDrawCell
        Width = 96
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterXlsAccInit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'XlsAccInit'
        OnCustomDrawCell = gvwMasterAccInitCustomDrawCell
        Width = 108
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterXlsAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'XlsAccName'
        Width = 250
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterQty: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Qty'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAddToAlotment: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AddToAlotment'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 79
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object glvMaster: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object cdsMaster: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'GroupID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryIPOAllotmentUpload'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 645
    Top = 159
    object cdsMasterUploadedDate: TDateTimeField
      FieldName = 'UploadedDate'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsMasterIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsMasterGroupID: TLargeintField
      FieldName = 'GroupID'
    end
    object cdsMasterAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsMasterAccCode: TStringField
      FieldName = 'AccCode'
      Size = 30
    end
    object cdsMasterAccName: TStringField
      FieldName = 'AccName'
      Size = 200
    end
    object cdsMasterAccInit: TStringField
      FieldName = 'AccInit'
      Size = 30
    end
    object cdsMasterXlsAccInit: TStringField
      FieldName = 'XlsAccInit'
      Size = 30
    end
    object cdsMasterXlsAccName: TStringField
      FieldName = 'XlsAccName'
      Size = 200
    end
    object cdsMasterQty: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'Qty'
      DisplayFormat = '#,##0'
    end
    object cdsMasterAddToAlotment: TStringField
      FieldName = 'AddToAlotment'
      Size = 1
    end
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 645
    Top = 213
  end
  object XLS: TXLSReadWriteII5
    ComponentVersion = '6.00.20a'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 294
    Top = 168
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel 97-2003|*.xls|Excel Workbook|*.xlsx'
    Left = 292
    Top = 216
  end
  object cdsAccountList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CUST_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 293
    Top = 272
    object cdsAccountListACCID: TIntegerField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
      Visible = False
    end
    object cdsAccountListENTTID: TIntegerField
      DisplayLabel = 'Entity ID'
      FieldName = 'ENTTID'
      Required = True
      Visible = False
    end
    object cdsAccountListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountListACCINIT: TStringField
      DisplayLabel = 'Account Init'
      FieldName = 'ACCINIT'
      Size = 10
    end
    object cdsAccountListACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountListACCSUBTYPE: TStringField
      DisplayLabel = 'Account Sub Type'
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccountListBRANCHID: TLargeintField
      DisplayLabel = 'Branch'
      FieldName = 'BRANCHID'
    end
    object cdsAccountListINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccountListBUSSTYPE: TLargeintField
      DisplayLabel = 'Business Type'
      FieldName = 'BUSSTYPE'
    end
    object cdsAccountListTC_MODEL: TStringField
      DisplayLabel = 'TC Model'
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccountListPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccountListA_CLS_ORDER: TStringField
      DisplayLabel = 'Auto Close Order'
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccountListAVGPRICEDEC: TSmallintField
      DisplayLabel = 'Average Price Decimal'
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccountListOMNIBUSTRADE: TStringField
      DisplayLabel = 'Omnibus Trade'
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccountListCASHKEEP: TStringField
      DisplayLabel = 'Cash Keep'
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccountListSTOCKKEEP: TStringField
      DisplayLabel = 'Stock Keep'
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccountListISWAPU: TStringField
      DisplayLabel = 'WAPU'
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccountListISUSEWHT: TStringField
      DisplayLabel = 'WHT'
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccountListISUSEOTC: TStringField
      DisplayLabel = 'OTC'
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccountListISOWNCONTACT: TStringField
      DisplayLabel = 'Use Own Contact'
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccountListSALESID: TLargeintField
      DisplayLabel = 'Sales'
      FieldName = 'SALESID'
    end
    object cdsAccountListACC_STS: TStringField
      DisplayLabel = 'Account Status'
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccountListOMGUSE: TStringField
      DisplayLabel = 'Use Omgeo'
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccountListOMGEXREFFCODE: TStringField
      DisplayLabel = 'Omgeo Exreff Code'
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccountListOMGALERT: TStringField
      DisplayLabel = 'Omgeo Alert'
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccountListOMGSENDSSI: TStringField
      DisplayLabel = 'Omgeo Send SSI'
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccountListOMGSENDFEEINBLOCK: TStringField
      DisplayLabel = 'Omgeo Send Fee In Block'
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccountListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountListISDEL: TIntegerField
      FieldName = 'ISDEL'
      Visible = False
    end
    object cdsAccountListID: TLargeintField
      FieldName = 'ID'
      Visible = False
    end
    object cdsAccountListENTTCODE: TStringField
      DisplayLabel = 'Entity Code'
      FieldName = 'ENTTCODE'
      ReadOnly = True
    end
    object cdsAccountListENTNAME: TStringField
      DisplayLabel = 'Entity Name'
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsAccountListENTTDESC: TStringField
      DisplayLabel = 'Entity Description'
      FieldName = 'ENTTDESC'
      ReadOnly = True
      Size = 123
    end
    object cdsAccountListISTRDACCOUNT: TStringField
      DisplayLabel = 'Trading Account'
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
  end
  object pmAllotmentUpload: TPopupMenu
    Left = 84
    Top = 210
    object ChangeCustomerData1: TMenuItem
      Caption = 'Change Customer Data'
      OnClick = ChangeCustomerData1Click
    end
  end
  object cdsIPOAllotment: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ALLOTMENTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPOAllotment'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsIPOAllotmentNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 253
    object cdsIPOAllotmentALLOTMENTID: TIntegerField
      FieldName = 'ALLOTMENTID'
      Required = True
    end
    object cdsIPOAllotmentIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOAllotmentALLOTMENTCODE: TStringField
      FieldName = 'ALLOTMENTCODE'
      Required = True
    end
    object cdsIPOAllotmentACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsIPOAllotmentACCIDChange
    end
    object cdsIPOAllotmentACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsIPOAllotmentQTY: TFloatField
      FieldName = 'QTY'
      OnChange = cdsIPOAllotmentQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOAllotmentAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentNETFEE_PCT: TFloatField
      FieldName = 'NETFEE_PCT'
      OnChange = cdsIPOAllotmentNETFEE_PCTChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentVAT_PCT: TFloatField
      FieldName = 'VAT_PCT'
      OnChange = cdsIPOAllotmentNETFEE_PCTChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentWHT_PCT: TFloatField
      FieldName = 'WHT_PCT'
      OnChange = cdsIPOAllotmentNETFEE_PCTChange
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentBFEE: TFloatField
      FieldName = 'BFEE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentCDBCRID: TStringField
      FieldName = 'CDBCRID'
    end
    object cdsIPOAllotmentCOUTSTANDID: TStringField
      FieldName = 'COUTSTANDID'
    end
    object cdsIPOAllotmentFPPS: TStringField
      FieldName = 'FPPS'
    end
    object cdsIPOAllotmentDPPS: TStringField
      FieldName = 'DPPS'
    end
    object cdsIPOAllotmentCOFSENT: TStringField
      FieldName = 'COFSENT'
      Size = 1
    end
    object cdsIPOAllotmentCONFIRMED: TStringField
      FieldName = 'CONFIRMED'
      Size = 1
    end
    object cdsIPOAllotmentCONFORIGIN: TStringField
      FieldName = 'CONFORIGIN'
      Size = 1
    end
    object cdsIPOAllotmentPOSTEDFINANCE: TStringField
      FieldName = 'POSTEDFINANCE'
      Size = 1
    end
    object cdsIPOAllotmentPOSTEDCUSTODY: TStringField
      FieldName = 'POSTEDCUSTODY'
      Size = 1
    end
    object cdsIPOAllotmentIDCARD: TStringField
      FieldName = 'IDCARD'
      Size = 1
    end
    object cdsIPOAllotmentQTYPROCESS: TFloatField
      FieldName = 'QTYPROCESS'
      OnChange = cdsIPOAllotmentQTYPROCESSChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOAllotmentPEID: TStringField
      FieldName = 'PEID'
    end
    object cdsIPOAllotmentREMARK: TStringField
      FieldName = 'REMARK'
      Size = 150
    end
    object cdsIPOAllotmentBOOKID: TIntegerField
      FieldName = 'BOOKID'
    end
    object cdsIPOAllotmentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOAllotmentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOAllotmentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOAllotmentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOAllotmentUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOAllotmentUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPOAllotmentNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOAllotmentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOAllotmentID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOAllotmentACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuCustAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'CUST_NAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsIPOAllotmentALLOTMENTDATE: TDateField
      FieldName = 'ALLOTMENTDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOAllotmentSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOAllotmentCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsIPOAllotmentSTOCK_VOUCHERID: TLargeintField
      FieldName = 'STOCK_VOUCHERID'
    end
    object cdsIPOAllotmentSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsIPOAllotmentVOUCHERCREATED: TStringField
      FieldName = 'VOUCHERCREATED'
      Size = 1
    end
    object cdsIPOAllotmentDISTRIBUTION: TStringField
      FieldName = 'DISTRIBUTION'
      Size = 1
    end
    object cdsIPOAllotmentPAYMENT: TStringField
      FieldName = 'PAYMENT'
      Size = 1
    end
    object cdsIPOAllotmentPAYMENTAMT: TFloatField
      FieldName = 'PAYMENTAMT'
    end
    object cdsIPOAllotmentALLOTMENT_GROUPID: TLargeintField
      FieldName = 'ALLOTMENT_GROUPID'
    end
  end
  object cdsIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 463
    Top = 352
    object cdsIPOIPOID: TIntegerField
      Tag = -1
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOIPOCODE: TStringField
      Tag = -1
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsIPOSCRIPCODE: TStringField
      FieldName = 'SCRIPCODE'
    end
    object cdsIPOSCRIPNAME: TStringField
      FieldName = 'SCRIPNAME'
      Size = 100
    end
    object cdsIPOENTRYDATE: TDateField
      Tag = -1
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOIPODATE: TDateField
      FieldName = 'IPODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERFROMDATE: TDateField
      FieldName = 'ORDERFROMDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOORDERTODATE: TDateField
      FieldName = 'ORDERTODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPONETFEE: TFloatField
      FieldName = 'NETFEE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsIPOBOTPRICE: TFloatField
      FieldName = 'BOTPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOTOPPRICE: TFloatField
      FieldName = 'TOPPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOFIXEDPRICE: TFloatField
      FieldName = 'FIXEDPRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsIPOGUARANTEETYPE: TStringField
      FieldName = 'GUARANTEETYPE'
      Size = 1
    end
    object cdsIPOCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREMARK1: TStringField
      FieldName = 'REMARK1'
      Size = 250
    end
    object cdsIPOREMARK2: TStringField
      FieldName = 'REMARK2'
      Size = 250
    end
    object cdsIPOSTATUS: TStringField
      Tag = -1
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPONOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOCOMMITMENTAMT: TFloatField
      FieldName = 'COMMITMENTAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOABSORBAMT: TFloatField
      FieldName = 'ABSORBAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOBGAMT: TFloatField
      FieldName = 'BGAMT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsIPOHAIRCUT: TIntegerField
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsIPOBAEID: TIntegerField
      FieldName = 'BAEID'
    end
    object cdsIPODUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPODISTRIBUTIONDATE: TDateField
      FieldName = 'DISTRIBUTIONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOLISTINGDATE: TDateField
      FieldName = 'LISTINGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOREFUNDDATE: TDateField
      FieldName = 'REFUNDDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsIPOISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOIS_CURRENT_INSTRUMENT: TStringField
      FieldName = 'IS_CURRENT_INSTRUMENT'
      Size = 1
    end
    object cdsIPOINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsIPOALLOTMENT_VOUCHER: TStringField
      FieldName = 'ALLOTMENT_VOUCHER'
      Size = 1
    end
    object cdsIPOALLOTMENT_AMOUNT: TFloatField
      FieldName = 'ALLOTMENT_AMOUNT'
    end
    object cdsIPOALLOTMENT_SIID: TLargeintField
      FieldName = 'ALLOTMENT_SIID'
    end
    object cdsIPOPOOLING_VOUCHER: TStringField
      FieldName = 'POOLING_VOUCHER'
      Size = 1
    end
    object cdsIPOPOOLING_AMOUNT: TFloatField
      FieldName = 'POOLING_AMOUNT'
    end
    object cdsIPOPOOLING_SIID: TLargeintField
      FieldName = 'POOLING_SIID'
    end
    object cdsIPOACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsIPOACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsIPOACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 100
      Lookup = True
    end
    object cdsIPOACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsIPOIPO_TYPE: TStringField
      FieldName = 'IPO_TYPE'
      Size = 5
    end
    object cdsIPOIPO_PRODUCT: TStringField
      FieldName = 'IPO_PRODUCT'
      Size = 30
    end
    object cdsIPOCOUPON_RATE: TFloatField
      FieldName = 'COUPON_RATE'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsIPOMATURITYDATE: TDateField
      FieldName = 'MATURITYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsIPOCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
      DisplayFormat = '#,##0'
    end
    object cdsIPOISSUER_TYPE: TStringField
      FieldName = 'ISSUER_TYPE'
      Size = 1
    end
    object cdsIPOCOMMITMENTQTY: TIntegerField
      FieldName = 'COMMITMENTQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOABSORBQTY: TIntegerField
      FieldName = 'ABSORBQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsIPOUSEGROUP: TStringField
      FieldName = 'USEGROUP'
      Size = 1
    end
    object cdsIPOGROUPID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'GROUPID'
    end
    object cdsIPOTMPNETFEE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPNETFEE'
    end
    object cdsIPOTMPVAT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPVAT'
    end
    object cdsIPOTMPWHT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'TMPWHT'
    end
  end
  object cdsIPOAllotmentByIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmIPO_qryIPOAllotmentByIPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 301
    object cdsIPOAllotmentByIPOALLOTMENTID: TIntegerField
      FieldName = 'ALLOTMENTID'
      Required = True
    end
    object cdsIPOAllotmentByIPOIPOID: TIntegerField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsIPOAllotmentByIPOALLOTMENTCODE: TStringField
      FieldName = 'ALLOTMENTCODE'
      Required = True
    end
    object cdsIPOAllotmentByIPOACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsIPOAllotmentByIPOACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsIPOAllotmentByIPOQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsIPOAllotmentByIPOAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPONETFEE_PCT: TFloatField
      FieldName = 'NETFEE_PCT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOVAT_PCT: TFloatField
      FieldName = 'VAT_PCT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOWHT_PCT: TFloatField
      FieldName = 'WHT_PCT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOBFEE: TFloatField
      FieldName = 'BFEE'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOVAT: TFloatField
      FieldName = 'VAT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOWHT: TFloatField
      FieldName = 'WHT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPONETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object cdsIPOAllotmentByIPOCDBCRID: TStringField
      FieldName = 'CDBCRID'
    end
    object cdsIPOAllotmentByIPOCOUTSTANDID: TStringField
      FieldName = 'COUTSTANDID'
    end
    object cdsIPOAllotmentByIPOFPPS: TStringField
      FieldName = 'FPPS'
    end
    object cdsIPOAllotmentByIPODPPS: TStringField
      FieldName = 'DPPS'
    end
    object cdsIPOAllotmentByIPOCOFSENT: TStringField
      FieldName = 'COFSENT'
      Size = 1
    end
    object cdsIPOAllotmentByIPOCONFIRMED: TStringField
      FieldName = 'CONFIRMED'
      Size = 1
    end
    object cdsIPOAllotmentByIPOCONFORIGIN: TStringField
      FieldName = 'CONFORIGIN'
      Size = 1
    end
    object cdsIPOAllotmentByIPOPOSTEDFINANCE: TStringField
      FieldName = 'POSTEDFINANCE'
      Size = 1
    end
    object cdsIPOAllotmentByIPOPOSTEDCUSTODY: TStringField
      FieldName = 'POSTEDCUSTODY'
      Size = 1
    end
    object cdsIPOAllotmentByIPOIDCARD: TStringField
      FieldName = 'IDCARD'
      Size = 1
    end
    object cdsIPOAllotmentByIPOQTYPROCESS: TFloatField
      FieldName = 'QTYPROCESS'
      DisplayFormat = '#,##0'
      EditFormat = '#.00'
    end
    object cdsIPOAllotmentByIPOPEID: TStringField
      FieldName = 'PEID'
    end
    object cdsIPOAllotmentByIPOREMARK: TStringField
      FieldName = 'REMARK'
      Size = 150
    end
    object cdsIPOAllotmentByIPOBOOKID: TIntegerField
      FieldName = 'BOOKID'
    end
    object cdsIPOAllotmentByIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsIPOAllotmentByIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsIPOAllotmentByIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsIPOAllotmentByIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsIPOAllotmentByIPOUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsIPOAllotmentByIPOUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsIPOAllotmentByIPONOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsIPOAllotmentByIPOISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsIPOAllotmentByIPOID: TLargeintField
      FieldName = 'ID'
    end
    object cdsIPOAllotmentByIPOALLOTMENTDATE: TDateField
      FieldName = 'ALLOTMENTDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsIPOAllotmentByIPOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsIPOAllotmentByIPOCASH_VOUCHERID: TLargeintField
      FieldName = 'CASH_VOUCHERID'
    end
    object cdsIPOAllotmentByIPOSTOCK_VOUCHERID: TLargeintField
      FieldName = 'STOCK_VOUCHERID'
    end
    object cdsIPOAllotmentByIPOSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsIPOAllotmentByIPOACCCODE_1: TStringField
      FieldName = 'ACCCODE_1'
      ReadOnly = True
      Size = 30
    end
    object cdsIPOAllotmentByIPOACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsIPOAllotmentByIPOACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsIPOAllotmentByIPOVOUCHERCREATED: TStringField
      FieldName = 'VOUCHERCREATED'
      Size = 1
    end
    object cdsIPOAllotmentByIPODISTRIBUTION: TStringField
      FieldName = 'DISTRIBUTION'
      Size = 1
    end
    object cdsIPOAllotmentByIPOALLOTMENT_GROUPID: TLargeintField
      FieldName = 'ALLOTMENT_GROUPID'
    end
    object cdsIPOAllotmentByIPOPAYMENT: TStringField
      DisplayLabel = 'Payment'
      FieldName = 'PAYMENT'
      Size = 1
    end
    object cdsIPOAllotmentByIPOPAYMENTAMT: TFloatField
      DisplayLabel = 'Payment Amount'
      FieldName = 'PAYMENTAMT'
      DisplayFormat = '#,##0.00'
    end
  end
end
