inherited frmCompany: TfrmCompany
  Caption = 'Company Data Maintenance'
  ClientHeight = 432
  ClientWidth = 405
  ExplicitWidth = 411
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 405
    Height = 73
    Align = alTop
    ExplicitWidth = 405
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 71
      Top = 10
      DataBinding.DataField = 'ENTTCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 71
      Top = 37
      DataBinding.DataField = 'ENTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 309
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 208
      Top = 10
      DataBinding.DataField = 'ENTINIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 86
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Entity Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Initial'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 363
    Width = 405
    ExplicitTop = 363
    ExplicitWidth = 405
    inherited dbNavLog: TDBNavigator
      Left = 291
      Hints.Strings = ()
      ExplicitLeft = 291
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 412
    Width = 405
    ExplicitTop = 412
    ExplicitWidth = 405
  end
  inherited tabEditorData: TTabSet
    Top = 342
    Width = 405
    ExplicitTop = 342
    ExplicitWidth = 405
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 73
    Width = 405
    Height = 269
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 265
    ClientRectLeft = 4
    ClientRectRight = 401
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 397
        Height = 241
        Align = alClient
        TabOrder = 0
        object gvwAddress: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAddress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object gvwAddressCOUNTCODE: TcxGridDBBandedColumn
            Caption = 'Country'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwAddressPROVCODE: TcxGridDBBandedColumn
            Caption = 'Province'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwAddressADDRTYPE: TcxGridDBBandedColumn
            Caption = 'Addr Type'
            DataBinding.FieldName = 'ADDRTYPE'
            RepositoryItem = dmGlobal.luAddrType
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwAddressADDRESS: TcxGridDBBandedColumn
            Caption = 'Address'
            DataBinding.FieldName = 'ADDRESS'
            Width = 483
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwAddressCITY: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwAddressZIPCODE: TcxGridDBBandedColumn
            Caption = 'Zip Code'
            DataBinding.FieldName = 'ZIPCODE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwAddress
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Board of Director'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 397
        Height = 241
        Align = alClient
        TabOrder = 0
        object gvwBOD: TcxGridDBBandedTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsBOD
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Bands = <
            item
              Width = 247
            end>
          object gvwBODBODNAME: TcxGridDBBandedColumn
            Caption = 'Name'
            DataBinding.FieldName = 'BODNAME'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwBOD
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Share Holder'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 397
        Height = 241
        Align = alClient
        TabOrder = 0
        object gvwSHL: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Post.Visible = False
          Navigator.Visible = True
          DataController.DataSource = dsSHL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
            end>
          object gvwSHLSHLNAME: TcxGridDBBandedColumn
            Caption = 'Name'
            DataBinding.FieldName = 'SHLNAME'
            Width = 259
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwSHLSHLPERCENT: TcxGridDBBandedColumn
            Caption = '% Share'
            DataBinding.FieldName = 'SHLPERCENT'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = gvwSHL
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEntCompny
    Left = 32
    Top = 144
  end
  object dsAddress: TDataSource
    DataSet = cdsEntCompAddress
    Left = 128
    Top = 144
  end
  object dsBOD: TDataSource
    DataSet = cdsEntCompBOD
    Left = 240
    Top = 144
  end
  object dsSHL: TDataSource
    DataSet = cdsEntCompSHL
    Left = 336
    Top = 144
  end
  object cdsEntCompny: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryEntCompany'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsEntCompnyNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 32
    Top = 200
    object cdsEntCompnyENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntCompnyENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsEntCompnyCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsEntCompnyBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsEntCompnySALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsEntCompnyENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 100
    end
    object cdsEntCompnyCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
    object cdsEntCompnyENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsEntCompnyBUSSTYPEID: TLargeintField
      FieldName = 'BUSSTYPEID'
    end
    object cdsEntCompnyENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsEntCompnyENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsEntCompnyAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsEntCompnyNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsEntCompnyNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
    end
    object cdsEntCompnyRET_IDCARDTYPE: TStringField
      FieldName = 'RET_IDCARDTYPE'
      Size = 10
    end
    object cdsEntCompnyRET_IDCARDNO: TStringField
      FieldName = 'RET_IDCARDNO'
      Size = 30
    end
    object cdsEntCompnyRET_IDCARDEXPIRE: TDateField
      FieldName = 'RET_IDCARDEXPIRE'
    end
    object cdsEntCompnyRET_EMAIL: TStringField
      FieldName = 'RET_EMAIL'
      Size = 30
    end
    object cdsEntCompnyRET_HOMEPHONE: TStringField
      FieldName = 'RET_HOMEPHONE'
    end
    object cdsEntCompnyRET_HOMEFAX: TStringField
      FieldName = 'RET_HOMEFAX'
    end
    object cdsEntCompnyRET_MOBILE: TStringField
      FieldName = 'RET_MOBILE'
    end
    object cdsEntCompnyRET_OCCUPATION: TStringField
      FieldName = 'RET_OCCUPATION'
      Size = 50
    end
    object cdsEntCompnyRET_JOBTITTLE: TStringField
      FieldName = 'RET_JOBTITTLE'
    end
    object cdsEntCompnyRET_COMPANYNAME: TStringField
      FieldName = 'RET_COMPANYNAME'
    end
    object cdsEntCompnyRET_BIRTDATE: TDateField
      FieldName = 'RET_BIRTDATE'
    end
    object cdsEntCompnyRET_BIRTHPLACE: TStringField
      FieldName = 'RET_BIRTHPLACE'
    end
    object cdsEntCompnyRET_GENDER: TStringField
      FieldName = 'RET_GENDER'
      Size = 5
    end
    object cdsEntCompnySOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 10
    end
    object cdsEntCompnyINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 10
    end
    object cdsEntCompnyINVESTEXP: TStringField
      FieldName = 'INVESTEXP'
      Size = 10
    end
    object cdsEntCompnyANUALINCOME: TStringField
      FieldName = 'ANUALINCOME'
      Size = 10
    end
    object cdsEntCompnyESTDAILYTRADE: TStringField
      FieldName = 'ESTDAILYTRADE'
      Size = 1
    end
    object cdsEntCompnyINS_DATEOFESTABLIZED: TDateField
      FieldName = 'INS_DATEOFESTABLIZED'
    end
    object cdsEntCompnyINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
    end
    object cdsEntCompnyINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsEntCompnyINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
    end
    object cdsEntCompnyINS_TOTALASET: TStringField
      FieldName = 'INS_TOTALASET'
      Size = 10
    end
    object cdsEntCompnyINS_AUTHNAME: TStringField
      FieldName = 'INS_AUTHNAME'
      Size = 30
    end
    object cdsEntCompnyINS_AUTHADDDRESS: TStringField
      FieldName = 'INS_AUTHADDDRESS'
      Size = 100
    end
    object cdsEntCompnyINS_AUTHIDCARDTYPE: TStringField
      FieldName = 'INS_AUTHIDCARDTYPE'
      Size = 10
    end
    object cdsEntCompnyINS_AUTHIDCARDNO: TStringField
      FieldName = 'INS_AUTHIDCARDNO'
      Size = 30
    end
    object cdsEntCompnyINS_AUTHIDCARDEXPDATE: TDateField
      FieldName = 'INS_AUTHIDCARDEXPDATE'
    end
    object cdsEntCompnyINS_AUTHPHONE: TStringField
      FieldName = 'INS_AUTHPHONE'
    end
    object cdsEntCompnyINS_AUTHMOBILE: TStringField
      FieldName = 'INS_AUTHMOBILE'
    end
    object cdsEntCompnyINS_AUTHFAX: TStringField
      FieldName = 'INS_AUTHFAX'
    end
    object cdsEntCompnyINS_AUTHEMAIL: TStringField
      FieldName = 'INS_AUTHEMAIL'
      Size = 30
    end
    object cdsEntCompnyINS_CPNAME: TStringField
      FieldName = 'INS_CPNAME'
      Size = 30
    end
    object cdsEntCompnyINS_CPADDRESS: TStringField
      FieldName = 'INS_CPADDRESS'
      Size = 100
    end
    object cdsEntCompnyINS_CPPOSITION: TStringField
      FieldName = 'INS_CPPOSITION'
      Size = 30
    end
    object cdsEntCompnyINS_CPTITLE: TStringField
      FieldName = 'INS_CPTITLE'
      Size = 30
    end
    object cdsEntCompnyINS_COMPPHONE: TStringField
      FieldName = 'INS_COMPPHONE'
      Size = 30
    end
    object cdsEntCompnyINS_COMPFAX: TStringField
      FieldName = 'INS_COMPFAX'
      Size = 30
    end
    object cdsEntCompnyCNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsEntCompnyCNTCITIZEN: TStringField
      FieldName = 'CNTCITIZEN'
      Size = 10
    end
    object cdsEntCompnyCNTINVESTMENT: TStringField
      FieldName = 'CNTINVESTMENT'
      Size = 10
    end
    object cdsEntCompnySIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsEntCompnyTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsEntCompnyRET_MARITALSTATUS: TStringField
      FieldName = 'RET_MARITALSTATUS'
      Size = 1
    end
    object cdsEntCompnyRET_SPOUSENAME: TStringField
      FieldName = 'RET_SPOUSENAME'
      Size = 100
    end
    object cdsEntCompnyRET_HEIRNAME: TStringField
      FieldName = 'RET_HEIRNAME'
      Size = 120
    end
    object cdsEntCompnyRET_HEIRRELATION: TStringField
      FieldName = 'RET_HEIRRELATION'
      Size = 120
    end
    object cdsEntCompnyRET_EDUBACKGROUND: TStringField
      FieldName = 'RET_EDUBACKGROUND'
      Size = 50
    end
    object cdsEntCompnySOURCEFUNDOTHERS: TStringField
      FieldName = 'SOURCEFUNDOTHERS'
      Size = 50
    end
    object cdsEntCompnyINS_BUSSTYPE: TStringField
      FieldName = 'INS_BUSSTYPE'
    end
    object cdsEntCompnyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntCompnyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntCompnyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntCompnyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntCompnyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntCompnyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntCompnyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntCompnyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntCompnyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEntCompnyINVS_TYPE: TStringField
      FieldName = 'INVS_TYPE'
      Size = 5
    end
    object cdsEntCompnyENTINIT: TStringField
      FieldName = 'ENTINIT'
    end
    object cdsEntCompnyqryEntCompBOD: TDataSetField
      FieldName = 'qryEntCompBOD'
    end
    object cdsEntCompnyqryEntCompAddress: TDataSetField
      FieldName = 'qryEntCompAddress'
    end
    object cdsEntCompnyqryEntCompSHL: TDataSetField
      FieldName = 'qryEntCompSHL'
    end
  end
  object cdsEntCompAddress: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntCompnyqryEntCompAddress
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 200
    object cdsEntCompAddressENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntCompAddressSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntCompAddressCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 10
    end
    object cdsEntCompAddressPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsEntCompAddressADDRTYPE: TStringField
      FieldName = 'ADDRTYPE'
      Size = 10
    end
    object cdsEntCompAddressADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 150
    end
    object cdsEntCompAddressCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsEntCompAddressZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsEntCompAddressTCADDRESS: TStringField
      FieldName = 'TCADDRESS'
      Size = 1
    end
    object cdsEntCompAddressMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntCompAddressMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntCompAddressAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntCompAddressAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntCompAddressUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntCompAddressUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntCompAddressNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntCompAddressISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntCompAddressID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEntCompBOD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntCompnyqryEntCompBOD
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 200
    object cdsEntCompBODENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntCompBODSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntCompBODBODNAME: TStringField
      FieldName = 'BODNAME'
      Size = 30
    end
    object cdsEntCompBODIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsEntCompBODIDCARDNUM: TStringField
      FieldName = 'IDCARDNUM'
      Size = 30
    end
    object cdsEntCompBODMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntCompBODMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntCompBODAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntCompBODAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntCompBODUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntCompBODUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntCompBODNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntCompBODISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntCompBODID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEntCompSHL: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntCompnyqryEntCompSHL
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 200
    object cdsEntCompSHLENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntCompSHLSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntCompSHLSHLNAME: TStringField
      FieldName = 'SHLNAME'
      Size = 30
    end
    object cdsEntCompSHLSHLPERCENT: TFloatField
      FieldName = 'SHLPERCENT'
    end
    object cdsEntCompSHLMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntCompSHLMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntCompSHLAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntCompSHLAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntCompSHLUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntCompSHLUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntCompSHLNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntCompSHLISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntCompSHLID: TLargeintField
      FieldName = 'ID'
    end
  end
end
