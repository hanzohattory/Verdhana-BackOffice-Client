inherited frmRequestRDNAccount: TfrmRequestRDNAccount
  Caption = 'Request RDN Account'
  ClientHeight = 332
  ClientWidth = 793
  ExplicitWidth = 799
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 793
    Height = 242
    ExplicitWidth = 793
    ExplicitHeight = 242
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 95
      Top = 10
      DataBinding.DataField = 'ENTNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 687
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 95
      Top = 37
      DataBinding.DataField = 'SIDNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 687
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 95
      Top = 64
      DataBinding.DataField = 'KSEI_CLIENT_CODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 80
    end
    object cxGrid8: TcxGrid [3]
      Left = 10
      Top = 91
      Width = 772
      Height = 110
      TabOrder = 3
      object gvwRDNRequest: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsRDN
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        Bands = <
          item
            Caption = 'New RDN Account Request'
          end>
        object gvwRDNRequestOAID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OAID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwRDNRequestSEQNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwRDNRequestCCYCODE: TcxGridDBBandedColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwRDNRequestBANKCODE: TcxGridDBBandedColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BANKCODE'
          RepositoryItem = dmGlobal.luBankRDN
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwRDNRequestBANKACCNO: TcxGridDBBandedColumn
          Caption = 'Bank Account No.'
          DataBinding.FieldName = 'BANKACCNO'
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwRDNRequestBANKACCNAME: TcxGridDBBandedColumn
          Caption = 'Bank Account Name'
          DataBinding.FieldName = 'BANKACCNAME'
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwRDNRequestBANKBRANCH: TcxGridDBBandedColumn
          Caption = 'Branch'
          DataBinding.FieldName = 'BANKBRANCH'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwRDNRequestMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwRDNRequestMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwRDNRequestAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwRDNRequestAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwRDNRequestUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwRDNRequestUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwRDNRequestNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwRDNRequestISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwRDNRequestID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
      end
      object cxGridLevel8: TcxGridLevel
        GridView = gvwRDNRequest
      end
    end
    object btnUpdate: TcxButton [4]
      Left = 10
      Top = 207
      Width = 772
      Height = 25
      Caption = 'Update From KSEI Data Upload'
      TabOrder = 4
      OnClick = btnUpdateClick
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 687
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SID No.'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 387
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'KSEI Client Code'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = cxGrid8
      ControlOptions.OriginalHeight = 110
      ControlOptions.OriginalWidth = 772
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Visible = False
      Control = btnUpdate
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 472
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 263
    Width = 793
    ExplicitTop = 263
    ExplicitWidth = 793
    inherited dbNavLog: TDBNavigator
      Left = 679
      Hints.Strings = ()
      ExplicitLeft = 679
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 312
    Width = 793
    ExplicitTop = 312
    ExplicitWidth = 793
  end
  inherited tabEditorData: TTabSet
    Top = 242
    Width = 793
    ExplicitTop = 242
    ExplicitWidth = 793
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOA
    Left = 232
    Top = 136
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 88
    Top = 128
  end
  object cdsKSEIRDNCompare: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SUBREKKEY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRDNCompare'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 232
    object cdsKSEIRDNCompareSID: TStringField
      FieldName = 'SID'
      Required = True
    end
    object cdsKSEIRDNCompareNAME: TStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsKSEIRDNCompareSUBREK01: TStringField
      FieldName = 'SUBREK01'
    end
    object cdsKSEIRDNCompareSUBREK04: TStringField
      FieldName = 'SUBREK04'
    end
    object cdsKSEIRDNCompareRDN: TStringField
      FieldName = 'RDN'
    end
    object cdsKSEIRDNCompareBANK: TStringField
      FieldName = 'BANK'
      Size = 10
    end
    object cdsKSEIRDNCompareMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsKSEIRDNCompareMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsKSEIRDNCompareAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsKSEIRDNCompareAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsKSEIRDNCompareUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsKSEIRDNCompareUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsKSEIRDNCompareNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsKSEIRDNCompareISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsKSEIRDNCompareID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsRDN: TDataSource
    DataSet = cdsOARDN
    Left = 232
    Top = 184
  end
  object cdsOARDN: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOARDN
    Params = <>
    OnNewRecord = cdsOARDNNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 184
    object cdsOARDNOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOARDNSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOARDNCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsOARDNBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Required = True
      Size = 30
    end
    object cdsOARDNBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsOARDNBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsOARDNBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsOARDNMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOARDNMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOARDNAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOARDNAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOARDNUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOARDNUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOARDNNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOARDNISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOARDNID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsOA: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryOA'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 136
    object cdsOAOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAOACODE: TStringField
      FieldName = 'OACODE'
      Required = True
    end
    object cdsOACUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      Required = True
    end
    object cdsOABRANCHID: TLargeintField
      FieldName = 'BRANCHID'
      Required = True
    end
    object cdsOASALESID: TLargeintField
      FieldName = 'SALESID'
      Required = True
    end
    object cdsOAENTNAME: TStringField
      FieldName = 'ENTNAME'
      Required = True
      Size = 200
    end
    object cdsOAFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Required = True
      Size = 100
    end
    object cdsOAMIDDLENAME: TStringField
      FieldName = 'MIDDLENAME'
      Size = 40
    end
    object cdsOALASTNAME: TStringField
      FieldName = 'LASTNAME'
      Size = 40
    end
    object cdsOAENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsOACREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Required = True
    end
    object cdsOAENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsOABUSSTYPEID: TLargeintField
      FieldName = 'BUSSTYPEID'
    end
    object cdsOAENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsOAINVESTORCAT: TStringField
      FieldName = 'INVESTORCAT'
      Size = 1
    end
    object cdsOAENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsOAAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsOAKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsOAKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
    end
    object cdsOANPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsOANPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
    end
    object cdsOAPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object cdsOAPASSPORT_EXPDATE: TDateField
      FieldName = 'PASSPORT_EXPDATE'
    end
    object cdsOAKITAS: TStringField
      FieldName = 'KITAS'
      Size = 30
    end
    object cdsOAKITAS_EXPDATE: TDateField
      FieldName = 'KITAS_EXPDATE'
    end
    object cdsOARET_OCCUPATION: TStringField
      FieldName = 'RET_OCCUPATION'
      Size = 100
    end
    object cdsOARET_JOBTITTLE: TStringField
      FieldName = 'RET_JOBTITTLE'
      Size = 100
    end
    object cdsOARET_COMPANYNAME: TStringField
      FieldName = 'RET_COMPANYNAME'
      Size = 100
    end
    object cdsOARET_BIRTDATE: TDateField
      FieldName = 'RET_BIRTDATE'
    end
    object cdsOARET_BIRTHPLACE: TStringField
      FieldName = 'RET_BIRTHPLACE'
      Size = 100
    end
    object cdsOARET_GENDER: TStringField
      FieldName = 'RET_GENDER'
      Size = 1
    end
    object cdsOARET_MARITALSTATUS: TStringField
      FieldName = 'RET_MARITALSTATUS'
      Size = 1
    end
    object cdsOARET_SPOUSENAME: TStringField
      FieldName = 'RET_SPOUSENAME'
      Size = 100
    end
    object cdsOARET_HEIRNAME: TStringField
      FieldName = 'RET_HEIRNAME'
      Size = 120
    end
    object cdsOARET_HEIRRELATION: TStringField
      FieldName = 'RET_HEIRRELATION'
      Size = 120
    end
    object cdsOARET_EDUBACKGROUND: TStringField
      FieldName = 'RET_EDUBACKGROUND'
      Size = 50
    end
    object cdsOASOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 50
    end
    object cdsOASOURCEFUNDKSEI: TStringField
      FieldName = 'SOURCEFUNDKSEI'
      Size = 50
    end
    object cdsOASOURCEFUNDOTHERS: TStringField
      FieldName = 'SOURCEFUNDOTHERS'
      Size = 50
    end
    object cdsOAINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 50
    end
    object cdsOAINVESTOBJECTIVEKSEI: TStringField
      FieldName = 'INVESTOBJECTIVEKSEI'
      Size = 50
    end
    object cdsOAINVESTEXP: TStringField
      FieldName = 'INVESTEXP'
      Size = 10
    end
    object cdsOAANUALINCOME: TStringField
      FieldName = 'ANUALINCOME'
      Size = 50
    end
    object cdsOAESTDAILYTRADE: TStringField
      FieldName = 'ESTDAILYTRADE'
      Size = 50
    end
    object cdsOAINS_DATEOFESTABLIZED: TDateField
      FieldName = 'INS_DATEOFESTABLIZED'
    end
    object cdsOAINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
    end
    object cdsOAINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsOAINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
    end
    object cdsOAINS_TOTALASET: TStringField
      FieldName = 'INS_TOTALASET'
      Size = 10
    end
    object cdsOACNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsOACNTCITIZEN: TStringField
      FieldName = 'CNTCITIZEN'
    end
    object cdsOACNTINVESTMENT: TStringField
      FieldName = 'CNTINVESTMENT'
      Size = 10
    end
    object cdsOASIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsOATAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsOAINS_BUSSTYPE: TStringField
      FieldName = 'INS_BUSSTYPE'
    end
    object cdsOAINVS_TYPE: TStringField
      FieldName = 'INVS_TYPE'
      Size = 5
    end
    object cdsOAENTINIT: TStringField
      FieldName = 'ENTINIT'
    end
    object cdsOACUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
    end
    object cdsOAHOBBIES: TStringField
      FieldName = 'HOBBIES'
      Size = 255
    end
    object cdsOAANNUAL_NET_PROFIT: TIntegerField
      FieldName = 'ANNUAL_NET_PROFIT'
    end
    object cdsOATOTAL_ASSET: TIntegerField
      FieldName = 'TOTAL_ASSET'
    end
    object cdsOAINVS_OBJ: TIntegerField
      FieldName = 'INVS_OBJ'
    end
    object cdsOAINVS_OBJ_OTHER: TStringField
      FieldName = 'INVS_OBJ_OTHER'
      Size = 50
    end
    object cdsOAOCCUPATION: TIntegerField
      FieldName = 'OCCUPATION'
    end
    object cdsOAOCCUPATION_OTHER: TStringField
      FieldName = 'OCCUPATION_OTHER'
      Size = 100
    end
    object cdsOACOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 50
    end
    object cdsOAFIELD_WORK: TStringField
      FieldName = 'FIELD_WORK'
    end
    object cdsOAFIELD_WORK_DESC: TStringField
      FieldName = 'FIELD_WORK_DESC'
      Size = 50
    end
    object cdsOAPOSITION: TStringField
      FieldName = 'POSITION'
    end
    object cdsOAJOB_DIVISION: TStringField
      FieldName = 'JOB_DIVISION'
    end
    object cdsOAYOS_MONTH: TStringField
      FieldName = 'YOS_MONTH'
      Size = 5
    end
    object cdsOAYOS_YEAR: TStringField
      FieldName = 'YOS_YEAR'
      Size = 5
    end
    object cdsOACOMPANY_PHONE: TStringField
      FieldName = 'COMPANY_PHONE'
      Size = 15
    end
    object cdsOACOMPANY_PHONE_EXT: TStringField
      FieldName = 'COMPANY_PHONE_EXT'
      Size = 10
    end
    object cdsOACOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Size = 255
    end
    object cdsOAANNUAL_INCOME: TIntegerField
      FieldName = 'ANNUAL_INCOME'
    end
    object cdsOAANNUAL_INCOME_SOURCE: TLargeintField
      FieldName = 'ANNUAL_INCOME_SOURCE'
    end
    object cdsOAANNUAL_INCOME_SOURCE_OTHER: TStringField
      FieldName = 'ANNUAL_INCOME_SOURCE_OTHER'
      Size = 50
    end
    object cdsOAADD_INCOME: TIntegerField
      FieldName = 'ADD_INCOME'
    end
    object cdsOAADD_INCOME_SOURCE: TIntegerField
      FieldName = 'ADD_INCOME_SOURCE'
    end
    object cdsOAADD_INCOME_SOURCE_OTHER: TStringField
      FieldName = 'ADD_INCOME_SOURCE_OTHER'
      Size = 50
    end
    object cdsOANAT_BUSINESS_ENTREPRENEUR: TStringField
      FieldName = 'NAT_BUSINESS_ENTREPRENEUR'
      Size = 120
    end
    object cdsOAMOTHER_NAME: TStringField
      FieldName = 'MOTHER_NAME'
      Size = 100
    end
    object cdsOARELIGION: TStringField
      FieldName = 'RELIGION'
      Size = 50
    end
    object cdsOATAXPAYER_STATUS: TIntegerField
      FieldName = 'TAXPAYER_STATUS'
    end
    object cdsOARISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsOAGU_NAME: TStringField
      FieldName = 'GU_NAME'
      Size = 50
    end
    object cdsOAGU_HUB: TIntegerField
      FieldName = 'GU_HUB'
    end
    object cdsOAGU_ID_NO: TStringField
      FieldName = 'GU_ID_NO'
      Size = 50
    end
    object cdsOAGU_TAXPAYER_NO: TStringField
      FieldName = 'GU_TAXPAYER_NO'
      Size = 50
    end
    object cdsOAGU_NATIONALITY: TStringField
      FieldName = 'GU_NATIONALITY'
      Size = 30
    end
    object cdsOAGU_POB: TStringField
      FieldName = 'GU_POB'
      Size = 50
    end
    object cdsOAGU_MATIAL_STATUS: TIntegerField
      FieldName = 'GU_MATIAL_STATUS'
    end
    object cdsOAGU_EMAIL: TStringField
      FieldName = 'GU_EMAIL'
      Size = 50
    end
    object cdsOAGU_HANDPHONE: TStringField
      FieldName = 'GU_HANDPHONE'
      Size = 30
    end
    object cdsOAGU_FAX: TStringField
      FieldName = 'GU_FAX'
      Size = 30
    end
    object cdsOAGU_ADDRESS: TStringField
      FieldName = 'GU_ADDRESS'
      Size = 255
    end
    object cdsOAGU_CITY: TStringField
      FieldName = 'GU_CITY'
      Size = 50
    end
    object cdsOAGU_POSTALCODE: TStringField
      FieldName = 'GU_POSTALCODE'
      Size = 10
    end
    object cdsOAGU_PROVINCE: TStringField
      FieldName = 'GU_PROVINCE'
      Size = 50
    end
    object cdsOAGU_COUNTRY: TStringField
      FieldName = 'GU_COUNTRY'
      Size = 50
    end
    object cdsOAGU_PHONE: TStringField
      FieldName = 'GU_PHONE'
      Size = 30
    end
    object cdsOAGU_ADDRESS2: TStringField
      FieldName = 'GU_ADDRESS2'
      Size = 255
    end
    object cdsOAGU_CITY2: TStringField
      FieldName = 'GU_CITY2'
      Size = 50
    end
    object cdsOAGU_POSTALCODE2: TStringField
      FieldName = 'GU_POSTALCODE2'
      Size = 10
    end
    object cdsOAGU_PROVICE2: TStringField
      FieldName = 'GU_PROVICE2'
      Size = 50
    end
    object cdsOAGU_COUNTRY2: TStringField
      FieldName = 'GU_COUNTRY2'
      Size = 50
    end
    object cdsOAGU_PHONE2: TStringField
      FieldName = 'GU_PHONE2'
    end
    object cdsOAGU_JOBS: TStringField
      FieldName = 'GU_JOBS'
      Size = 50
    end
    object cdsOAGU_LAST_POSITION: TStringField
      FieldName = 'GU_LAST_POSITION'
      Size = 50
    end
    object cdsOAGU_JOBS_COMPANY: TStringField
      FieldName = 'GU_JOBS_COMPANY'
      Size = 50
    end
    object cdsOAGU_JOBS_COMPANY_TYPE: TStringField
      FieldName = 'GU_JOBS_COMPANY_TYPE'
      Size = 50
    end
    object cdsOAGU_JOBS_ADDRESS: TStringField
      FieldName = 'GU_JOBS_ADDRESS'
      Size = 255
    end
    object cdsOAGU_JOBS_CITY: TStringField
      FieldName = 'GU_JOBS_CITY'
      Size = 50
    end
    object cdsOAGU_JOBS_POSTALCODE: TStringField
      FieldName = 'GU_JOBS_POSTALCODE'
      Size = 10
    end
    object cdsOAGU_JOBS_PHONE: TStringField
      FieldName = 'GU_JOBS_PHONE'
      Size = 30
    end
    object cdsOAGU_JOBS_FAX: TStringField
      FieldName = 'GU_JOBS_FAX'
      Size = 30
    end
    object cdsOAGU_JOBS_FUND_SOURCE: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE'
      Size = 5
    end
    object cdsOAGU_JOBS_FUND_SOURCE_OT: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE_OT'
      Size = 50
    end
    object cdsOAGU_JOBS_ANNUAL_SALARY: TIntegerField
      FieldName = 'GU_JOBS_ANNUAL_SALARY'
    end
    object cdsOAGU_JOBS_MARITAL_STATUS: TIntegerField
      FieldName = 'GU_JOBS_MARITAL_STATUS'
    end
    object cdsOAGU_CELLPHONE: TStringField
      FieldName = 'GU_CELLPHONE'
      Size = 30
    end
    object cdsOAGU_MAIDEN_MOTHER: TStringField
      FieldName = 'GU_MAIDEN_MOTHER'
      Size = 50
    end
    object cdsOACHKGUCURRADR: TStringField
      FieldName = 'CHKGUCURRADR'
      Size = 1
    end
    object cdsOACLIENT_STATUS: TIntegerField
      FieldName = 'CLIENT_STATUS'
    end
    object cdsOASIUP_NO: TStringField
      FieldName = 'SIUP_NO'
      Size = 50
    end
    object cdsOATDP_NO: TStringField
      FieldName = 'TDP_NO'
      Size = 50
    end
    object cdsOATDP_REG_DATE: TStringField
      FieldName = 'TDP_REG_DATE'
      Size = 50
    end
    object cdsOATDP_INVALID_DATE: TDateTimeField
      FieldName = 'TDP_INVALID_DATE'
    end
    object cdsOAAPPROVER_HAM_MINISTRI: TStringField
      FieldName = 'APPROVER_HAM_MINISTRI'
      Size = 50
    end
    object cdsOAANNOUNC_STATE_GAZELLE: TStringField
      FieldName = 'ANNOUNC_STATE_GAZELLE'
      Size = 100
    end
    object cdsOATAX_REG_CHK: TIntegerField
      FieldName = 'TAX_REG_CHK'
    end
    object cdsOATAS_REG_DATE: TDateTimeField
      FieldName = 'TAS_REG_DATE'
    end
    object cdsOABUSINESS_ENTITY_CHK: TIntegerField
      FieldName = 'BUSINESS_ENTITY_CHK'
    end
    object cdsOABUSINESS_ENTITY_OTHER: TStringField
      FieldName = 'BUSINESS_ENTITY_OTHER'
      Size = 50
    end
    object cdsOABUSINESS_LINE_CHK: TIntegerField
      FieldName = 'BUSINESS_LINE_CHK'
    end
    object cdsOABUSINESS_LINE_OTHER: TStringField
      FieldName = 'BUSINESS_LINE_OTHER'
      Size = 50
    end
    object cdsOACOMPANY_CHARACTER_CHK: TIntegerField
      FieldName = 'COMPANY_CHARACTER_CHK'
    end
    object cdsOACOMPANY_CHARACTER_OTHER: TStringField
      FieldName = 'COMPANY_CHARACTER_OTHER'
      Size = 50
    end
    object cdsOAOFFC_ADDR_ASSKDP: TStringField
      FieldName = 'OFFC_ADDR_ASSKDP'
      Size = 255
    end
    object cdsOAOFFC_CITY: TStringField
      FieldName = 'OFFC_CITY'
      Size = 50
    end
    object cdsOAOFFC_ZIPCODE: TStringField
      FieldName = 'OFFC_ZIPCODE'
      Size = 10
    end
    object cdsOAOFFC_COUNTRY: TStringField
      FieldName = 'OFFC_COUNTRY'
      Size = 50
    end
    object cdsOACORESP_ADDR: TStringField
      FieldName = 'CORESP_ADDR'
      Size = 255
    end
    object cdsOACORESP_CITY: TStringField
      FieldName = 'CORESP_CITY'
      Size = 50
    end
    object cdsOACORESP_ZIPCODE: TStringField
      FieldName = 'CORESP_ZIPCODE'
      Size = 10
    end
    object cdsOACORESP_COUNTRY: TStringField
      FieldName = 'CORESP_COUNTRY'
      Size = 50
    end
    object cdsOAOFFC_BUILD_STATUS: TIntegerField
      FieldName = 'OFFC_BUILD_STATUS'
    end
    object cdsOAOFFC_LENGTH_COREPON: TIntegerField
      FieldName = 'OFFC_LENGTH_COREPON'
    end
    object cdsOAOFFC_PHONE_NO: TStringField
      FieldName = 'OFFC_PHONE_NO'
    end
    object cdsOAOFFC_FAX_NO: TStringField
      FieldName = 'OFFC_FAX_NO'
    end
    object cdsOAEMAIL_CHK: TIntegerField
      FieldName = 'EMAIL_CHK'
    end
    object cdsOAEMAIL_ADDR: TStringField
      FieldName = 'EMAIL_ADDR'
      Size = 30
    end
    object cdsOAOFCC_FAX_CHK: TIntegerField
      FieldName = 'OFCC_FAX_CHK'
    end
    object cdsOAOFFC_FAX_NO_OTHER: TStringField
      FieldName = 'OFFC_FAX_NO_OTHER'
      Size = 50
    end
    object cdsOASWIFTCODE: TStringField
      FieldName = 'SWIFTCODE'
      Size = 50
    end
    object cdsOAACC_TYPE_SEC: TIntegerField
      FieldName = 'ACC_TYPE_SEC'
    end
    object cdsOACOMP_ESTABLISH_DATE: TDateTimeField
      FieldName = 'COMP_ESTABLISH_DATE'
    end
    object cdsOACOMP_ESTABLISH_PLACE: TStringField
      FieldName = 'COMP_ESTABLISH_PLACE'
      Size = 100
    end
    object cdsOADEED_ESTABLISH_DATE: TDateTimeField
      FieldName = 'DEED_ESTABLISH_DATE'
    end
    object cdsOADEED_ESTABLISH_PLACE: TStringField
      FieldName = 'DEED_ESTABLISH_PLACE'
      Size = 50
    end
    object cdsOANOTARY: TStringField
      FieldName = 'NOTARY'
      Size = 50
    end
    object cdsOATAXPAYER_REG: TStringField
      FieldName = 'TAXPAYER_REG'
      Size = 30
    end
    object cdsOAEDU_BACKGOUND_OTHER: TStringField
      FieldName = 'EDU_BACKGOUND_OTHER'
      Size = 100
    end
    object cdsOABUS_CAT_ID: TLargeintField
      FieldName = 'BUS_CAT_ID'
    end
    object cdsOAGU_LEGALRELATION: TStringField
      FieldName = 'GU_LEGALRELATION'
      Size = 50
    end
    object cdsOAMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOANOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAINVESTOR_ASSET_1: TStringField
      FieldName = 'INVESTOR_ASSET_1'
      Size = 1
    end
    object cdsOAINVESTOR_ASSET_2: TStringField
      FieldName = 'INVESTOR_ASSET_2'
      Size = 1
    end
    object cdsOAINVESTOR_ASSET_3: TStringField
      FieldName = 'INVESTOR_ASSET_3'
      Size = 1
    end
    object cdsOAINVESTOR_OPERATING_PROFIT_1: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_1'
      Size = 1
    end
    object cdsOAINVESTOR_OPERATING_PROFIT_2: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_2'
      Size = 1
    end
    object cdsOAINVESTOR_OPERATING_PROFIT_3: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_3'
      Size = 1
    end
    object cdsOAFATCA_A1: TStringField
      FieldName = 'FATCA_A1'
      Size = 1
    end
    object cdsOAFATCA_A1_DESC: TStringField
      FieldName = 'FATCA_A1_DESC'
      Size = 50
    end
    object cdsOAFATCA_A2: TStringField
      FieldName = 'FATCA_A2'
      Size = 1
    end
    object cdsOAFATCA_A2_DESC: TStringField
      FieldName = 'FATCA_A2_DESC'
      Size = 50
    end
    object cdsOAFATCA_A3: TStringField
      FieldName = 'FATCA_A3'
      Size = 1
    end
    object cdsOAFATCA_A3_DESC: TStringField
      FieldName = 'FATCA_A3_DESC'
      Size = 50
    end
    object cdsOAFATCA_B1: TStringField
      FieldName = 'FATCA_B1'
      Size = 1
    end
    object cdsOAFATCA_B2: TStringField
      FieldName = 'FATCA_B2'
      Size = 1
    end
    object cdsOAFATCA_B3: TStringField
      FieldName = 'FATCA_B3'
      Size = 1
    end
    object cdsOAFATCA_B4: TStringField
      FieldName = 'FATCA_B4'
      Size = 1
    end
    object cdsOAFATCA_B5: TStringField
      FieldName = 'FATCA_B5'
      Size = 1
    end
    object cdsOAFATCA_B6: TStringField
      FieldName = 'FATCA_B6'
      Size = 1
    end
    object cdsOAFATCA_B2_DESC: TStringField
      FieldName = 'FATCA_B2_DESC'
      Size = 50
    end
    object cdsOAARTICLE_ASSOCIATION: TStringField
      FieldName = 'ARTICLE_ASSOCIATION'
      Size = 120
    end
    object cdsOAASSET_OWNER: TStringField
      FieldName = 'ASSET_OWNER'
      Size = 1
    end
    object cdsOASUPPLEMENTARY_DOCTYPE: TStringField
      FieldName = 'SUPPLEMENTARY_DOCTYPE'
      Size = 1
    end
    object cdsOASUPPLEMENTARY_DOCEXP: TDateField
      FieldName = 'SUPPLEMENTARY_DOCEXP'
    end
    object cdsOAPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsOAACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOAEXISTING_CLIENT: TStringField
      FieldName = 'EXISTING_CLIENT'
      Size = 1
    end
    object cdsOAPARENT_ACCID: TIntegerField
      FieldName = 'PARENT_ACCID'
    end
    object cdsOAqryOACustody: TDataSetField
      FieldName = 'qryOACustody'
    end
    object cdsOAqryOABank: TDataSetField
      FieldName = 'qryOABank'
    end
    object cdsOAqryOAAuth: TDataSetField
      FieldName = 'qryOAAuth'
    end
    object cdsOAqryOATrackInfo: TDataSetField
      FieldName = 'qryOATrackInfo'
    end
    object cdsOAqryOASHL: TDataSetField
      FieldName = 'qryOASHL'
    end
    object cdsOAqryOADOC: TDataSetField
      FieldName = 'qryOADOC'
    end
    object cdsOAqryOABOD: TDataSetField
      FieldName = 'qryOABOD'
    end
    object cdsOAqryOAAddress: TDataSetField
      FieldName = 'qryOAAddress'
    end
    object cdsOADIRECTSID: TStringField
      FieldName = 'DIRECTSID'
      Size = 15
    end
    object cdsOAKSEI_CLIENT_CODE: TStringField
      FieldName = 'KSEI_CLIENT_CODE'
      Size = 4
    end
    object cdsOABICCODE: TStringField
      FieldName = 'BICCODE'
    end
    object cdsOAREQUEST_SUBREK: TStringField
      FieldName = 'REQUEST_SUBREK'
      Size = 1
    end
    object cdsOAqryOARDN: TDataSetField
      FieldName = 'qryOARDN'
    end
    object cdsOAqryOAKSEI: TDataSetField
      FieldName = 'qryOAKSEI'
    end
    object cdsOAPARENT_ACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'PARENT_ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'PARENT_ACCID'
      Size = 30
      Lookup = True
    end
    object cdsOAPARENT_ACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PARENT_ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'PARENT_ACCID'
      Size = 100
      Lookup = True
    end
    object cdsOAqryOAContact: TDataSetField
      FieldName = 'qryOAContact'
    end
    object cdsOAGU_ID_EXP: TDateField
      FieldName = 'GU_ID_EXP'
    end
    object cdsOAGU_GENDER: TStringField
      FieldName = 'GU_GENDER'
      Size = 1
    end
    object cdsOAGU_DOB: TDateField
      FieldName = 'GU_DOB'
    end
    object cdsOAINFO_01: TStringField
      FieldName = 'INFO_01'
      Size = 1
    end
    object cdsOAINFO_01_NAME: TStringField
      FieldName = 'INFO_01_NAME'
      Size = 150
    end
    object cdsOAINFO_01_DESC1: TStringField
      FieldName = 'INFO_01_DESC1'
      Size = 50
    end
    object cdsOAINFO_01_DESC2: TStringField
      FieldName = 'INFO_01_DESC2'
      Size = 50
    end
    object cdsOAINFO_02: TStringField
      FieldName = 'INFO_02'
      Size = 1
    end
    object cdsOAINFO_02_NAME: TStringField
      FieldName = 'INFO_02_NAME'
      Size = 150
    end
    object cdsOAINFO_02_DESC1: TStringField
      FieldName = 'INFO_02_DESC1'
      Size = 50
    end
    object cdsOAINFO_02_DESC2: TStringField
      FieldName = 'INFO_02_DESC2'
      Size = 50
    end
    object cdsOAINFO_03: TStringField
      FieldName = 'INFO_03'
      Size = 1
    end
    object cdsOAINFO_03_NAME: TStringField
      FieldName = 'INFO_03_NAME'
      Size = 150
    end
    object cdsOAINFO_03_DESC1: TStringField
      FieldName = 'INFO_03_DESC1'
      Size = 50
    end
    object cdsOAINFO_03_DESC2: TStringField
      FieldName = 'INFO_03_DESC2'
      Size = 50
    end
    object cdsOAINFO_04: TStringField
      FieldName = 'INFO_04'
      Size = 1
    end
    object cdsOAINFO_04_NAME: TStringField
      FieldName = 'INFO_04_NAME'
      Size = 150
    end
    object cdsOAINFO_04_DESC1: TStringField
      FieldName = 'INFO_04_DESC1'
      Size = 50
    end
    object cdsOAINFO_04_DESC2: TStringField
      FieldName = 'INFO_04_DESC2'
      Size = 50
    end
    object cdsOAINFO_05: TStringField
      FieldName = 'INFO_05'
      Size = 1
    end
    object cdsOAINFO_05_NAME: TStringField
      FieldName = 'INFO_05_NAME'
      Size = 150
    end
    object cdsOAINFO_05_DESC1: TStringField
      FieldName = 'INFO_05_DESC1'
      Size = 50
    end
    object cdsOAINFO_05_DESC2: TStringField
      FieldName = 'INFO_05_DESC2'
      Size = 50
    end
    object cdsOAINFO_06: TStringField
      FieldName = 'INFO_06'
      Size = 1
    end
    object cdsOAINFO_06_NAME: TStringField
      FieldName = 'INFO_06_NAME'
      Size = 150
    end
    object cdsOAINFO_06_DESC1: TStringField
      FieldName = 'INFO_06_DESC1'
      Size = 50
    end
    object cdsOAINFO_06_DESC2: TStringField
      FieldName = 'INFO_06_DESC2'
      Size = 50
    end
    object cdsOAINFO_07: TStringField
      FieldName = 'INFO_07'
      Size = 1
    end
    object cdsOAINFO_07_NAME: TStringField
      FieldName = 'INFO_07_NAME'
      Size = 150
    end
    object cdsOAINFO_07_DESC1: TStringField
      FieldName = 'INFO_07_DESC1'
      Size = 50
    end
    object cdsOAINFO_07_DESC2: TStringField
      FieldName = 'INFO_07_DESC2'
      Size = 50
    end
    object cdsOAINFO_08: TStringField
      FieldName = 'INFO_08'
      Size = 1
    end
    object cdsOAINFO_08_NAME: TStringField
      FieldName = 'INFO_08_NAME'
      Size = 150
    end
    object cdsOAINFO_08_DESC1: TStringField
      FieldName = 'INFO_08_DESC1'
      Size = 50
    end
    object cdsOAINFO_08_DESC2: TStringField
      FieldName = 'INFO_08_DESC2'
      Size = 50
    end
    object cdsOAINFO_09: TStringField
      FieldName = 'INFO_09'
      Size = 1
    end
    object cdsOAINFO_09_NAME: TStringField
      FieldName = 'INFO_09_NAME'
      Size = 150
    end
    object cdsOAINFO_09_DESC1: TStringField
      FieldName = 'INFO_09_DESC1'
      Size = 50
    end
    object cdsOAINFO_09_DESC2: TStringField
      FieldName = 'INFO_09_DESC2'
      Size = 50
    end
    object cdsOAINFO_10: TStringField
      FieldName = 'INFO_10'
      Size = 1
    end
    object cdsOAINFO_10_NAME: TStringField
      FieldName = 'INFO_10_NAME'
      Size = 150
    end
    object cdsOAINFO_10_DESC1: TStringField
      FieldName = 'INFO_10_DESC1'
      Size = 50
    end
    object cdsOAINFO_10_DESC2: TStringField
      FieldName = 'INFO_10_DESC2'
      Size = 50
    end
    object cdsOAINFO_11: TStringField
      FieldName = 'INFO_11'
      Size = 1
    end
    object cdsOAINFO_11_NAME: TStringField
      FieldName = 'INFO_11_NAME'
      Size = 150
    end
    object cdsOAINFO_11_DESC1: TStringField
      FieldName = 'INFO_11_DESC1'
      Size = 50
    end
    object cdsOAINFO_11_DESC2: TStringField
      FieldName = 'INFO_11_DESC2'
      Size = 50
    end
    object cdsOAINFO_12: TStringField
      FieldName = 'INFO_12'
      Size = 1
    end
    object cdsOAINFO_12_NAME: TStringField
      FieldName = 'INFO_12_NAME'
      Size = 150
    end
    object cdsOAINFO_12_DESC1: TStringField
      FieldName = 'INFO_12_DESC1'
      Size = 50
    end
    object cdsOAINFO_12_DESC2: TStringField
      FieldName = 'INFO_12_DESC2'
      Size = 50
    end
    object cdsOAINFO_12_DESC3: TStringField
      FieldName = 'INFO_12_DESC3'
      Size = 50
    end
    object cdsOAINFO_13: TStringField
      FieldName = 'INFO_13'
      Size = 1
    end
    object cdsOAINFO_13_NAME: TStringField
      FieldName = 'INFO_13_NAME'
      Size = 150
    end
    object cdsOAKTP_LIFETIME: TStringField
      FieldName = 'KTP_LIFETIME'
      Size = 1
    end
    object cdsOAREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsOAREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsOAGU_PROVINCE2: TStringField
      FieldName = 'GU_PROVINCE2'
      Size = 50
    end
    object cdsOAUSERID: TStringField
      FieldName = 'USERID'
      Size = 50
    end
    object cdsOASUBMIT: TStringField
      FieldName = 'SUBMIT'
      Size = 1
    end
    object cdsOARET_SIBLINGSNAME: TStringField
      FieldName = 'RET_SIBLINGSNAME'
      Size = 200
    end
    object cdsOARET_SIBLINGRELATION: TStringField
      FieldName = 'RET_SIBLINGRELATION'
      Size = 100
    end
    object cdsOAPREFFERED_CONTACT: TStringField
      FieldName = 'PREFFERED_CONTACT'
      Size = 50
    end
    object cdsOAPREFFERED_DAY: TStringField
      FieldName = 'PREFFERED_DAY'
      Size = 50
    end
    object cdsOAPREFFERED_TIME_FROM: TStringField
      FieldName = 'PREFFERED_TIME_FROM'
      Size = 5
    end
    object cdsOAPREFFERED_TIME_TO: TStringField
      FieldName = 'PREFFERED_TIME_TO'
      Size = 5
    end
    object cdsOAGU_BIRTHPLACE: TStringField
      FieldName = 'GU_BIRTHPLACE'
      Size = 100
    end
    object cdsOAGU_BIRTHDATE: TDateField
      FieldName = 'GU_BIRTHDATE'
    end
    object cdsOAPREFFERED_BANK_RDN: TStringField
      FieldName = 'PREFFERED_BANK_RDN'
      Size = 5
    end
    object cdsOAFEEDBACK: TStringField
      FieldName = 'FEEDBACK'
      Size = 300
    end
    object cdsOALAST_STATUS: TStringField
      FieldName = 'LAST_STATUS'
      Size = 300
    end
    object cdsOARET_HEIRPHONE: TStringField
      FieldName = 'RET_HEIRPHONE'
      Size = 15
    end
    object cdsOARET_SIBLINGPHONE: TStringField
      FieldName = 'RET_SIBLINGPHONE'
      Size = 30
    end
    object cdsOARET_HEIRIDCARD: TStringField
      FieldName = 'RET_HEIRIDCARD'
    end
    object cdsOARET_SIBLING_ADDRESS: TStringField
      FieldName = 'RET_SIBLING_ADDRESS'
      Size = 200
    end
    object cdsOAGU_PROVICE: TStringField
      FieldName = 'GU_PROVICE'
      Size = 50
    end
    object cdsOAINVESTEXP_OTHER: TStringField
      FieldName = 'INVESTEXP_OTHER'
      Size = 200
    end
    object cdsOAINITIAL: TStringField
      FieldName = 'INITIAL'
      Size = 15
    end
    object cdsOAeventid: TLargeintField
      FieldName = 'eventid'
    end
    object cdsOAPAYMENT_BANK: TStringField
      FieldName = 'PAYMENT_BANK'
    end
  end
end
