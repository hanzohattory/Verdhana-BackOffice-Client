object frmEntityCheck: TfrmEntityCheck
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Entity Checking'
  ClientHeight = 509
  ClientWidth = 792
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 460
    Width = 792
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 792
    Height = 460
    Align = alClient
    TabOrder = 1
    object Grid: TcxGrid
      Left = 10
      Top = 39
      Width = 772
      Height = 411
      Align = alClient
      TabOrder = 1
      RootLevelOptions.DetailFrameColor = 15451300
      object cvEntityRetail: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSubject
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CaptionWidth = 100
        OptionsView.CardAutoWidth = True
        OptionsView.CardIndent = 5
        OptionsView.CardWidth = 500
        OptionsView.CellAutoHeight = True
        OptionsView.SeparatorColor = 12937777
        Styles.ContentEven = dmGlobal.BlueToggle
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Styles.Selection = dmGlobal.ChangedData
        object cvEntityRetailENTTID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ENTTID'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityRetailENTTCODE: TcxGridDBCardViewRow
          Caption = 'Entity Code'
          DataBinding.FieldName = 'ENTTCODE'
          Position.BeginsLayer = True
        end
        object cvEntityRetailSIDNO: TcxGridDBCardViewRow
          Caption = 'SID No.'
          DataBinding.FieldName = 'SIDNO'
          Position.BeginsLayer = False
        end
        object cvEntityRetailACCCODE: TcxGridDBCardViewRow
          Caption = 'Account Code'
          DataBinding.FieldName = 'ACCCODE'
          Position.BeginsLayer = True
        end
        object cvEntityRetailACCINIT: TcxGridDBCardViewRow
          Caption = 'Account Init'
          DataBinding.FieldName = 'ACCINIT'
          Position.BeginsLayer = False
        end
        object cvEntityRetailACC_STS: TcxGridDBCardViewRow
          Caption = 'Status'
          DataBinding.FieldName = 'ACC_STS'
          RepositoryItem = dmGlobal.luAccountStatus
          Position.BeginsLayer = False
        end
        object cvEntityRetailACCNAME: TcxGridDBCardViewRow
          Caption = 'Account Name'
          DataBinding.FieldName = 'ACCNAME'
          Position.BeginsLayer = True
        end
        object cvEntityRetailCUST_TYPE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CUST_TYPE'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityRetailFIRSTNAME: TcxGridDBCardViewRow
          Caption = 'First Name'
          DataBinding.FieldName = 'FIRSTNAME'
          OnCustomDrawCell = cvEntityRetailFIRSTNAMECustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityRetailMIDDLENAME: TcxGridDBCardViewRow
          Caption = 'Middle Name'
          DataBinding.FieldName = 'MIDDLENAME'
          OnCustomDrawCell = cvEntityRetailMIDDLENAMECustomDrawCell
          Position.BeginsLayer = False
        end
        object cvEntityRetailLASTNAME: TcxGridDBCardViewRow
          Caption = 'Last Name'
          DataBinding.FieldName = 'LASTNAME'
          OnCustomDrawCell = cvEntityRetailLASTNAMECustomDrawCell
          Position.BeginsLayer = False
        end
        object cvEntityRetailRET_BIRTHPLACE: TcxGridDBCardViewRow
          Caption = 'Birth Place'
          DataBinding.FieldName = 'RET_BIRTHPLACE'
          Position.BeginsLayer = True
        end
        object cvEntityRetailRET_BIRTDATE: TcxGridDBCardViewRow
          Caption = 'Birth Date'
          DataBinding.FieldName = 'RET_BIRTDATE'
          OnCustomDrawCell = cvEntityRetailRET_BIRTDATECustomDrawCell
          Position.BeginsLayer = False
        end
        object cvEntityRetailRET_GENDER: TcxGridDBCardViewRow
          Caption = 'Sex'
          DataBinding.FieldName = 'RET_GENDER'
          RepositoryItem = dmGlobal.rgSex
          Position.BeginsLayer = True
        end
        object cvEntityRetailCNTREST: TcxGridDBCardViewRow
          Caption = 'Nationality'
          DataBinding.FieldName = 'CNTREST'
          RepositoryItem = dmGlobal.luNationality
          Position.BeginsLayer = True
        end
        object cvEntityRetailMOTHER_NAME: TcxGridDBCardViewRow
          Caption = 'Mother'#39's Maiden Name'
          DataBinding.FieldName = 'MOTHER_NAME'
          OnCustomDrawCell = cvEntityRetailMOTHER_NAMECustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityRetailTAXID: TcxGridDBCardViewRow
          Caption = 'Tax ID'
          DataBinding.FieldName = 'TAXID'
          RepositoryItem = dmGlobal.luTaxID
          Position.BeginsLayer = True
        end
        object cvEntityRetailTAXPAYER_STATUS: TcxGridDBCardViewRow
          DataBinding.FieldName = 'TAXPAYER_STATUS'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityRetailNPWP: TcxGridDBCardViewRow
          DataBinding.FieldName = 'NPWP'
          OnCustomDrawCell = cvEntityRetailNPWPCustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityRetailNPWP_REGDATE: TcxGridDBCardViewRow
          Caption = 'NPWP Reg. Date'
          DataBinding.FieldName = 'NPWP_REGDATE'
          Position.BeginsLayer = False
        end
        object cvEntityRetailKTP: TcxGridDBCardViewRow
          DataBinding.FieldName = 'KTP'
          OnCustomDrawCell = cvEntityRetailKTPCustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityRetailKTP_EXPDATE: TcxGridDBCardViewRow
          Caption = 'KTP Exp. Date'
          DataBinding.FieldName = 'KTP_EXPDATE'
          Position.BeginsLayer = False
        end
        object cvEntityRetailKTP_LIFETIME: TcxGridDBCardViewRow
          Caption = 'Life Time'
          DataBinding.FieldName = 'KTP_LIFETIME'
          RepositoryItem = dmGlobal.chkStandard
          Position.BeginsLayer = False
        end
        object cvEntityRetailACCID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityRetailPRDCODE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PRDCODE'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object cvEntityInstitution: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsInsti
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CaptionWidth = 100
        OptionsView.CardAutoWidth = True
        OptionsView.CardIndent = 5
        OptionsView.CardWidth = 500
        OptionsView.CellAutoHeight = True
        OptionsView.SeparatorColor = 12937777
        Styles.ContentEven = dmGlobal.BlueToggle
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Styles.Selection = dmGlobal.ChangedData
        object cvEntityInstitutionENTTID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ENTTID'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionENTTCODE: TcxGridDBCardViewRow
          Caption = 'Entity Code'
          DataBinding.FieldName = 'ENTTCODE'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionSIDNO: TcxGridDBCardViewRow
          Caption = 'SID No.'
          DataBinding.FieldName = 'SIDNO'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionCUST_TYPE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CUST_TYPE'
          Visible = False
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionENTNAME: TcxGridDBCardViewRow
          Caption = 'Company Name'
          DataBinding.FieldName = 'ENTNAME'
          OnCustomDrawCell = cvEntityInstitutionENTNAMECustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionBICCODE: TcxGridDBCardViewRow
          Caption = 'BIC Code'
          DataBinding.FieldName = 'BICCODE'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionENTDESC: TcxGridDBCardViewRow
          Caption = 'Description'
          DataBinding.FieldName = 'ENTDESC'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionACCCODE: TcxGridDBCardViewRow
          Caption = 'Account Code'
          DataBinding.FieldName = 'ACCCODE'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionACCINIT: TcxGridDBCardViewRow
          Caption = 'Account Init'
          DataBinding.FieldName = 'ACCINIT'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionACC_STS: TcxGridDBCardViewRow
          Caption = 'Account Status'
          DataBinding.FieldName = 'ACC_STS'
          RepositoryItem = dmGlobal.luAccountStatus
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionPRDCODE: TcxGridDBCardViewRow
          Caption = 'Product'
          DataBinding.FieldName = 'PRDCODE'
          RepositoryItem = dmGlobal.luProduct
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionACCNAME: TcxGridDBCardViewRow
          Caption = 'Account Name'
          DataBinding.FieldName = 'ACCNAME'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionCNTREST: TcxGridDBCardViewRow
          Caption = 'Legal Domicile'
          DataBinding.FieldName = 'CNTREST'
          RepositoryItem = dmGlobal.luCountry
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionCNTCITIZEN: TcxGridDBCardViewRow
          Caption = 'Place of Establishment'
          DataBinding.FieldName = 'CNTCITIZEN'
          RepositoryItem = dmGlobal.luCity
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionINS_DATEOFESTABLIZED: TcxGridDBCardViewRow
          Caption = 'Date of Establishment'
          DataBinding.FieldName = 'INS_DATEOFESTABLIZED'
          OnCustomDrawCell = cvEntityInstitutionINS_DATEOFESTABLIZEDCustomDrawCell
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionINS_BUSSTYPE: TcxGridDBCardViewRow
          Caption = 'Type of Business'
          DataBinding.FieldName = 'INS_BUSSTYPE'
          RepositoryItem = dmGlobal.luInsBusType
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionINS_COMPTYPE: TcxGridDBCardViewRow
          Caption = 'Company Type'
          DataBinding.FieldName = 'INS_COMPTYPE'
          RepositoryItem = dmGlobal.luCompanyType
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionINS_NOOFGAZETTE: TcxGridDBCardViewRow
          Caption = 'Registration No.'
          DataBinding.FieldName = 'INS_NOOFGAZETTE'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionINS_DATEOFGAZETTE: TcxGridDBCardViewRow
          Caption = 'Date of Registration'
          DataBinding.FieldName = 'INS_DATEOFGAZETTE'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionTAXID: TcxGridDBCardViewRow
          Caption = 'Tax ID'
          DataBinding.FieldName = 'TAXID'
          RepositoryItem = dmGlobal.luTaxID
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionNPWP: TcxGridDBCardViewRow
          DataBinding.FieldName = 'NPWP'
          OnCustomDrawCell = cvEntityInstitutionNPWPCustomDrawCell
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionNPWP_REGDATE: TcxGridDBCardViewRow
          Caption = 'NPWP Reg. Date'
          DataBinding.FieldName = 'NPWP_REGDATE'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionKITAS: TcxGridDBCardViewRow
          Caption = 'SKD'
          DataBinding.FieldName = 'KITAS'
          Position.BeginsLayer = True
        end
        object cvEntityInstitutionKITAS_EXPDATE: TcxGridDBCardViewRow
          Caption = 'SKD Exp. Date'
          DataBinding.FieldName = 'KITAS_EXPDATE'
          Position.BeginsLayer = False
        end
        object cvEntityInstitutionACCID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object lvEntityRetail: TcxGridLevel
        Caption = 'Orders'
        GridView = cvEntityRetail
      end
      object lvEntityInstitution: TcxGridLevel
        GridView = cvEntityInstitution
      end
    end
    object lblHeader: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Your new account request maybe same with existing CIF '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = dxLayoutGroup1
      Control = Grid
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = lblHeader
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCOBRetailEntityCheck
    Left = 128
    Top = 80
  end
  object cdsCOBRetailEntityCheck: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'FIRSTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MIDDLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LASTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'BIRTHDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MOTHER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NPWP'
        ParamType = ptInput
        Value = '11.111.111.1-111.111'
      end
      item
        DataType = ftString
        Name = 'KTP'
        ParamType = ptInput
        Value = '1111111111111111'
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBRetailEntityCheck'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 80
    object cdsCOBRetailEntityCheckENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsCOBRetailEntityCheckENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsCOBRetailEntityCheckCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsCOBRetailEntityCheckSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsCOBRetailEntityCheckFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Size = 100
    end
    object cdsCOBRetailEntityCheckMIDDLENAME: TStringField
      FieldName = 'MIDDLENAME'
      Size = 40
    end
    object cdsCOBRetailEntityCheckLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Size = 40
    end
    object cdsCOBRetailEntityCheckRET_BIRTHPLACE: TStringField
      FieldName = 'RET_BIRTHPLACE'
      Size = 100
    end
    object cdsCOBRetailEntityCheckRET_BIRTDATE: TDateField
      FieldName = 'RET_BIRTDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBRetailEntityCheckRET_GENDER: TStringField
      FieldName = 'RET_GENDER'
      Size = 1
    end
    object cdsCOBRetailEntityCheckCNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsCOBRetailEntityCheckMOTHER_NAME: TStringField
      FieldName = 'MOTHER_NAME'
      Size = 100
    end
    object cdsCOBRetailEntityCheckTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsCOBRetailEntityCheckTAXPAYER_STATUS: TIntegerField
      FieldName = 'TAXPAYER_STATUS'
    end
    object cdsCOBRetailEntityCheckNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsCOBRetailEntityCheckNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBRetailEntityCheckKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsCOBRetailEntityCheckKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBRetailEntityCheckKTP_LIFETIME: TStringField
      FieldName = 'KTP_LIFETIME'
      Size = 1
    end
    object cdsCOBRetailEntityCheckACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsCOBRetailEntityCheckACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCOBRetailEntityCheckACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCOBRetailEntityCheckACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsCOBRetailEntityCheckACC_STS: TStringField
      FieldName = 'ACC_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsCOBRetailEntityCheckPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
  end
  object dsInsti: TDataSource
    DataSet = cdsCOBInstitutionEntityCheck
    Left = 128
    Top = 128
  end
  object cdsCOBInstitutionEntityCheck: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ENTNAME'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INS_DATEOFESTABLIZED'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NPWP'
        ParamType = ptInput
        Value = '88.888.888.8-888.888'
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBInstitutionEntityCheck'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 128
    object cdsCOBInstitutionEntityCheckENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsCOBInstitutionEntityCheckENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsCOBInstitutionEntityCheckCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsCOBInstitutionEntityCheckSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsCOBInstitutionEntityCheckENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
    object cdsCOBInstitutionEntityCheckENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsCOBInstitutionEntityCheckBICCODE: TStringField
      FieldName = 'BICCODE'
    end
    object cdsCOBInstitutionEntityCheckCNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsCOBInstitutionEntityCheckCNTCITIZEN: TStringField
      FieldName = 'CNTCITIZEN'
    end
    object cdsCOBInstitutionEntityCheckINS_DATEOFESTABLIZED: TDateField
      FieldName = 'INS_DATEOFESTABLIZED'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBInstitutionEntityCheckINS_BUSSTYPE: TStringField
      FieldName = 'INS_BUSSTYPE'
    end
    object cdsCOBInstitutionEntityCheckINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
    end
    object cdsCOBInstitutionEntityCheckINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsCOBInstitutionEntityCheckINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBInstitutionEntityCheckTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsCOBInstitutionEntityCheckNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsCOBInstitutionEntityCheckNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBInstitutionEntityCheckKITAS: TStringField
      FieldName = 'KITAS'
      Size = 30
    end
    object cdsCOBInstitutionEntityCheckKITAS_EXPDATE: TDateField
      FieldName = 'KITAS_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCOBInstitutionEntityCheckACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsCOBInstitutionEntityCheckACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCOBInstitutionEntityCheckACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCOBInstitutionEntityCheckACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsCOBInstitutionEntityCheckACC_STS: TStringField
      FieldName = 'ACC_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsCOBInstitutionEntityCheckPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
  end
end
