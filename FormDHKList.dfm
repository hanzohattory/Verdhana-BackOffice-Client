inherited frmDHKList: TfrmDHKList
  Caption = 'DHK Reconcile'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 121
    Height = 347
    ExplicitTop = 121
    ExplicitHeight = 347
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'QTY_BOFIS'
          Column = gvwMasterQTY_BOFIS
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'QTY_DHK'
          Column = gvwMasterQTY_DHK
        end>
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Bofis DHK'
          HeaderAlignmentHorz = taLeftJustify
        end
        item
          Caption = 'KSEI DHK'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwMasterHEAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HEAD'
        Visible = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETTYPE'
        Visible = False
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterQTY_BOFIS: TcxGridDBBandedColumn
        Caption = 'Qty / Value'
        DataBinding.FieldName = 'QTY_BOFIS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 187
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSIDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_01: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_01'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_04: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_04'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DAY'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSID_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_CODE'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCF_ACCT_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CF_ACCT_1'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCF_ACCT_4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CF_ACCT_4'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSECURITY_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECURITY_CODE'
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterQTY_DHK: TcxGridDBBandedColumn
        Caption = 'Qty / Value'
        DataBinding.FieldName = 'QTY_DHK'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'X'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterXX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'XX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 95
    Align = alTop
    TabOrder = 5
    object dtTradeDate: TcxDateEdit
      Left = 61
      Top = 41
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object txtFileName: TcxButtonEdit
      Left = 61
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
      Width = 277
    end
    object cxButton1: TcxButton
      Left = 344
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Upload'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object rbCash: TRadioButton
      Left = 125
      Top = 68
      Width = 57
      Height = 17
      Caption = 'Cash'
      TabOrder = 4
      OnClick = rbCashClick
    end
    object rbStock: TRadioButton
      Left = 59
      Top = 68
      Width = 60
      Height = 17
      Caption = 'Stock'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = rbStockClick
    end
    object chkUnMatch: TcxCheckBox
      Left = 188
      Top = 41
      Caption = 'Unmatch Only'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      OnClick = chkUnMatchClick
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
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Due Date'
      Control = dtTradeDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'File Name'
      Control = txtFileName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 277
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahRight
      CaptionOptions.Text = 'RadioButton1'
      CaptionOptions.Visible = False
      Control = rbCash
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahRight
      CaptionOptions.Text = 'RadioButton2'
      CaptionOptions.Visible = False
      Control = rbStock
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkUnMatch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    object GenerateFile1: TMenuItem
      Caption = 'Generate File'
      object GenerateColdsFile2: TMenuItem
        Action = actGenerateColdsFile
      end
      object GenerateColwFile1: TMenuItem
        Action = actGenerateColwFile
      end
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDHKList
  end
  inherited aclEditor: TActionList
    Left = 97
    Top = 277
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actInsertFromCurrentData: TNAction
      Visible = False
      CheckPermission = False
    end
    object actUploadFile: TNAction
      Category = 'LocalProcess'
      Caption = 'UploadFile'
      CheckPermission = False
    end
    object actGenerateCOLDS: TNAction
      Category = 'LocalProcess'
      Caption = 'Generate Colds File'
      OnExecute = actGenerateCOLDSExecute
      CheckPermission = False
    end
    object actGenerateCOLW: TNAction
      Category = 'LocalProcess'
      Caption = 'Generate Colw File'
      OnExecute = actGenerateCOLWExecute
      CheckPermission = False
    end
    object actGenerateColdsFile: TNAction
      Category = 'LocalProcess'
      Caption = 'Generate Colds File'
      OnExecute = actGenerateColdsFileExecute
      CheckPermission = False
    end
    object actGenerateColwFile: TNAction
      Category = 'LocalProcess'
      Caption = 'Generate Colw File'
      OnExecute = actGenerateColwFileExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    ListDataset = cdsDHKList
  end
  object cdsDHK: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftDate
        Name = 'DAY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHK'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 171
    Top = 362
    object cdsDHKDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKDHKNO: TStringField
      FieldName = 'DHKNO'
      Required = True
    end
    object cdsDHKDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsDHKCS_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
    end
    object cdsDHKCF_PAYMENT_TOTAL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL'
    end
    object cdsDHKCF_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKMEMBER_NAME: TStringField
      FieldName = 'MEMBER_NAME'
      Size = 255
    end
    object cdsDHKMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 255
    end
    object cdsDHKID_ACCT: TStringField
      FieldName = 'ID_ACCT'
      Size = 255
    end
    object cdsDHKSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Size = 255
    end
    object cdsDHKCF_ACCT_4: TStringField
      FieldName = 'CF_ACCT_4'
      Size = 255
    end
    object cdsDHKCF_ACCT_1: TStringField
      FieldName = 'CF_ACCT_1'
      Size = 255
    end
    object cdsDHKSORT_ORDER: TStringField
      FieldName = 'SORT_ORDER'
      Size = 255
    end
    object cdsDHKSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Size = 255
    end
    object cdsDHKSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 255
    end
    object cdsDHKRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsDHKOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsDHKSECURITY: TStringField
      FieldName = 'SECURITY'
      Size = 255
    end
    object cdsDHKOBLIGATION_CASH: TFloatField
      FieldName = 'OBLIGATION_CASH'
    end
    object cdsDHKRIGHT_CASH: TFloatField
      FieldName = 'RIGHT_CASH'
    end
    object cdsDHKCF_IDR_VALUE: TFloatField
      FieldName = 'CF_IDR_VALUE'
    end
    object cdsDHKCF_OBLIGATION_CASH: TFloatField
      FieldName = 'CF_OBLIGATION_CASH'
    end
    object cdsDHKCF_OBLIGATION: TFloatField
      FieldName = 'CF_OBLIGATION'
    end
    object cdsDHKSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDHKMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDHKMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDHKAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDHKAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDHKUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDHKUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDHKNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDHKISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDHKID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDHKWTNO: TStringField
      FieldName = 'WTNO'
    end
  end
  object cdsDHKList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRADEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILTER'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKCompareList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 33
    Top = 222
    object cdsDHKListHEAD: TLargeintField
      FieldName = 'HEAD'
    end
    object cdsDHKListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
      Size = 10
    end
    object cdsDHKListNETTYPE: TStringField
      DisplayLabel = 'Net Type'
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsDHKListQTY_BOFIS: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY_BOFIS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDHKListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
    end
    object cdsDHKListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsDHKListSIDNO: TStringField
      DisplayLabel = 'SID No.'
      FieldName = 'SIDNO'
    end
    object cdsDHKListVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsDHKListCBEST_01: TStringField
      DisplayLabel = 'CBest 01'
      FieldName = 'CBEST_01'
    end
    object cdsDHKListCBEST_04: TStringField
      DisplayLabel = 'CBest 04'
      FieldName = 'CBEST_04'
    end
    object cdsDHKListDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsDHKListSID_CODE: TStringField
      DisplayLabel = 'SID Code'
      FieldName = 'SID_CODE'
    end
    object cdsDHKListCF_ACCT_1: TStringField
      DisplayLabel = 'CBest 01'
      FieldName = 'CF_ACCT_1'
    end
    object cdsDHKListCF_ACCT_4: TStringField
      DisplayLabel = 'CBest 04'
      FieldName = 'CF_ACCT_4'
    end
    object cdsDHKListSECURITY_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'SECURITY_CODE'
      Size = 10
    end
    object cdsDHKListBS: TStringField
      DisplayLabel = 'B/S'
      FieldName = 'BS'
      Size = 1
    end
    object cdsDHKListQTY_DHK: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY_DHK'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt|Excel File|*.xls'
    Left = 153
    Top = 174
  end
  object SaveDialog: TSaveDialog
    Left = 524
    Top = 353
  end
  object cdsGenerateCOLWCOLDS: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryGenerateCOLWCOLDS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 30
    Top = 333
    object cdsGenerateCOLWCOLDSCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsGenerateCOLWCOLDSCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 40
    end
    object cdsGenerateCOLWCOLDSEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsGenerateCOLWCOLDSACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsGenerateCOLWCOLDSVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsGenerateCOLWCOLDSTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsGenerateCOLWCOLDSSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsGenerateCOLWCOLDSSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsGenerateCOLWCOLDSPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsGenerateCOLWCOLDSCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsGenerateCOLWCOLDSCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsGenerateCOLWCOLDSSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsGenerateCOLWCOLDSSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsGenerateCOLWCOLDSQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsGenerateCOLWCOLDSCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsGenerateCOLWCOLDSORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
    end
    object cdsGenerateCOLWCOLDSSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
    end
    object cdsGenerateCOLWCOLDSSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsGenerateCOLWCOLDSSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsGenerateCOLWCOLDSFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsGenerateCOLWCOLDSFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
    end
    object cdsGenerateCOLWCOLDSCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsGenerateCOLWCOLDSREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsGenerateCOLWCOLDSPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsGenerateCOLWCOLDSTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsGenerateCOLWCOLDSSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsGenerateCOLWCOLDSCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsGenerateCOLWCOLDSLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsGenerateCOLWCOLDSLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsGenerateCOLWCOLDSCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsGenerateCOLWCOLDSCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsGenerateCOLWCOLDSSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsGenerateCOLWCOLDSMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGenerateCOLWCOLDSMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGenerateCOLWCOLDSAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGenerateCOLWCOLDSUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGenerateCOLWCOLDSUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGenerateCOLWCOLDSNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGenerateCOLWCOLDSISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGenerateCOLWCOLDSID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGenerateCOLWCOLDSBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsGenerateCOLWCOLDSDHKID: TLargeintField
      FieldName = 'DHKID'
    end
    object cdsGenerateCOLWCOLDSNEW_CUSTODY_INSTRID: TLargeintField
      FieldName = 'NEW_CUSTODY_INSTRID'
    end
    object cdsGenerateCOLWCOLDSMERGE_ID: TIntegerField
      FieldName = 'MERGE_ID'
    end
    object cdsGenerateCOLWCOLDSSPLIT_ID: TIntegerField
      FieldName = 'SPLIT_ID'
    end
    object cdsGenerateCOLWCOLDSIS_MERGE: TBooleanField
      FieldName = 'IS_MERGE'
    end
    object cdsGenerateCOLWCOLDSIS_SPLIT: TBooleanField
      FieldName = 'IS_SPLIT'
    end
  end
  object cdsDHKColWDS: TNClientDataset
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DHKID'
        Attributes = [faReadonly, faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'DHKNO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DAY'
        DataType = ftDate
      end
      item
        Name = 'SID_CODE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CBEST_ACC_01'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'CBEST_ACC_04'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8000
      end
      item
        Name = 'SECURITY_CODE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'RIGHTS'
        DataType = ftFloat
      end
      item
        Name = 'OBLIGATION'
        DataType = ftFloat
      end
      item
        Name = 'MEMBER_ID'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'WTNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUSTCODE04'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CUSTCODE01'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TRDDATE'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'ACCCODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ACCNAME'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PORTOFOLIOACCCODE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SECURITY_CODE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'COLWD'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKColWDS'
    RemoteServer = dmGlobal.dspConnection
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 382
    object cdsDHKColWDSDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKColWDSDHKNO: TStringField
      FieldName = 'DHKNO'
    end
    object cdsDHKColWDSDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsDHKColWDSSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Size = 255
    end
    object cdsDHKColWDSCBEST_ACC_01: TStringField
      FieldName = 'CBEST_ACC_01'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKColWDSCBEST_ACC_04: TStringField
      FieldName = 'CBEST_ACC_04'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKColWDSSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Size = 255
    end
    object cdsDHKColWDSRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsDHKColWDSOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsDHKColWDSMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 255
    end
    object cdsDHKColWDSWTNO: TStringField
      FieldName = 'WTNO'
    end
    object cdsDHKColWDSCUSTCODE04: TStringField
      FieldName = 'CUSTCODE04'
      ReadOnly = True
      Size = 100
    end
    object cdsDHKColWDSCUSTCODE01: TStringField
      FieldName = 'CUSTCODE01'
      ReadOnly = True
      Size = 100
    end
    object cdsDHKColWDSTRDDATE: TDateField
      FieldName = 'TRDDATE'
      ReadOnly = True
    end
    object cdsDHKColWDSACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDHKColWDSACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDHKColWDSPORTOFOLIOACCCODE: TStringField
      FieldName = 'PORTOFOLIOACCCODE'
      ReadOnly = True
    end
  end
  object cdsUploadDHK: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftDate
        Name = 'DAY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryUploadDHK'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 267
    Top = 362
    object cdsUploadDHKDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsUploadDHKCS_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_OBL'
    end
    object cdsUploadDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
    end
    object cdsUploadDHKCF_PAYMENT_TOTAL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL'
    end
    object cdsUploadDHKCF_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL_OBL'
    end
    object cdsUploadDHKMEMBER_NAME: TStringField
      FieldName = 'MEMBER_NAME'
      Size = 255
    end
    object cdsUploadDHKMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 255
    end
    object cdsUploadDHKID_ACCT: TStringField
      FieldName = 'ID_ACCT'
      Size = 255
    end
    object cdsUploadDHKSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Size = 255
    end
    object cdsUploadDHKCF_ACCT_4: TStringField
      FieldName = 'CF_ACCT_4'
      Size = 255
    end
    object cdsUploadDHKCF_ACCT_1: TStringField
      FieldName = 'CF_ACCT_1'
      Size = 255
    end
    object cdsUploadDHKSORT_ORDER: TStringField
      FieldName = 'SORT_ORDER'
      Size = 255
    end
    object cdsUploadDHKSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Size = 255
    end
    object cdsUploadDHKSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 255
    end
    object cdsUploadDHKRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsUploadDHKOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsUploadDHKSECURITY: TStringField
      FieldName = 'SECURITY'
      Size = 255
    end
    object cdsUploadDHKOBLIGATION_CASH: TFloatField
      FieldName = 'OBLIGATION_CASH'
    end
    object cdsUploadDHKRIGHT_CASH: TFloatField
      FieldName = 'RIGHT_CASH'
    end
    object cdsUploadDHKCF_IDR_VALUE: TFloatField
      FieldName = 'CF_IDR_VALUE'
    end
    object cdsUploadDHKCF_OBLIGATION_CASH: TFloatField
      FieldName = 'CF_OBLIGATION_CASH'
    end
    object cdsUploadDHKCF_OBLIGATION: TFloatField
      FieldName = 'CF_OBLIGATION'
    end
    object cdsUploadDHKROWNO: TIntegerField
      FieldName = 'ROWNO'
    end
  end
end
