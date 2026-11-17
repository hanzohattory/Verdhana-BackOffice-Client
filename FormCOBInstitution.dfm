inherited frmCOBInstitution: TfrmCOBInstitution
  Caption = 'Client On Boarding Institution'
  ClientHeight = 725
  ClientWidth = 925
  ExplicitWidth = 931
  ExplicitHeight = 754
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 591
    Width = 168
    Height = 44
    Align = alNone
    ExplicitTop = 591
    ExplicitWidth = 168
    ExplicitHeight = 44
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 656
    Width = 925
    ExplicitTop = 656
    ExplicitWidth = 925
    inherited dbNavLog: TDBNavigator
      Left = 811
      Hints.Strings = ()
      TabOrder = 3
      ExplicitLeft = 811
    end
    object pnlRisk: TPanel [3]
      Left = 172
      Top = 10
      Width = 633
      Height = 25
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
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
      Index = 2
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = pnlRisk
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 705
    Width = 925
    ExplicitTop = 705
    ExplicitWidth = 925
  end
  inherited tabEditorData: TTabSet
    Top = 635
    Width = 925
    ExplicitTop = 635
    ExplicitWidth = 925
  end
  object OATabs: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 925
    Height = 635
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = TabParticular
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    ClientRectBottom = 635
    ClientRectRight = 925
    ClientRectTop = 20
    object TabParticular: TcxTabSheet
      Caption = 'Particular'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 925
        Height = 615
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cmbTypeOfSecurities: TcxDBImageComboBox
          Left = 193
          Top = 10
          DataBinding.DataField = 'ACC_TYPE_SEC'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Regular Safekeeping'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Regular Non Safekeeping'
              Value = '2'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 22
          Top = 130
          DataBinding.DataField = 'NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 439
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 162
          Top = 157
          DataBinding.DataField = 'CLIENT_STATUS'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Local'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Foreign'
              Value = 2
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 151
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 162
          Top = 184
          DataBinding.DataField = 'SWIFTCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 299
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 162
          Top = 211
          DataBinding.DataField = 'SIUP_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 299
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 162
          Top = 238
          DataBinding.DataField = 'TDP_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 299
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 162
          Top = 265
          DataBinding.DataField = 'TDP_REG_DATE'
          DataBinding.DataSource = dsSubject
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 103
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 352
          Top = 265
          DataBinding.DataField = 'TDP_INVALID_DATE'
          DataBinding.DataSource = dsSubject
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 109
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 162
          Top = 292
          DataBinding.DataField = 'COMP_ESTABLISH_PLACE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 15
          Width = 176
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 372
          Top = 292
          DataBinding.DataField = 'COMP_ESTABLISH_DATE'
          DataBinding.DataSource = dsSubject
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 89
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 162
          Top = 319
          DataBinding.DataField = 'DEED_ESTABLISH_PLACE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 176
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 372
          Top = 319
          DataBinding.DataField = 'DEED_ESTABLISH_DATE'
          DataBinding.DataSource = dsSubject
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 89
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 162
          Top = 346
          DataBinding.DataField = 'NOTARY'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 299
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 162
          Top = 373
          DataBinding.DataField = 'APPROVER_HAM_MINISTRI'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 299
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 162
          Top = 400
          DataBinding.DataField = 'ANNOUNC_STATE_GAZELLE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 299
        end
        object TaxpayerChk: TcxDBImageComboBox
          Left = 162
          Top = 427
          DataBinding.DataField = 'TAX_REG_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'No'
              Value = 0
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 47
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 162
          Top = 454
          DataBinding.DataField = 'TAS_REG_DATE'
          DataBinding.DataSource = dsSubject
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 121
        end
        object FormOfBusinessChk: TcxDBImageComboBox
          Left = 162
          Top = 481
          DataBinding.DataField = 'BUSINESS_ENTITY_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Limited Liability'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Foundation'
              Value = '2'
            end
            item
              Description = 'Cooperative'
              Value = '3'
            end
            item
              Description = 'Alliance Partnership'
              Value = '4'
            end
            item
              Description = 'Trading Bussiness'
              Value = '5'
            end
            item
              Description = 'Firm'
              Value = '6'
            end
            item
              Description = 'Others'
              Value = '7'
            end>
          Properties.OnChange = FormOfBusinessChkPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 25
          Width = 223
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 162
          Top = 508
          DataBinding.DataField = 'BUSINESS_ENTITY_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 299
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 162
          Top = 562
          DataBinding.DataField = 'BUSINESS_LINE_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 299
        end
        object CompanyCharateristicChk: TcxDBImageComboBox
          Left = 608
          Top = 112
          RepositoryItem = dmGlobal.luInsBusType
          DataBinding.DataField = 'COMPANY_CHARACTER_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'State Own Enterprise'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Affilation'
              Value = '2'
            end
            item
              Description = 'Family Business'
              Value = '3'
            end
            item
              Description = 'Foreign Invesment'
              Value = '4'
            end
            item
              Description = 'Local Invesment Company'
              Value = '5'
            end
            item
              Description = 'Social'
              Value = '6'
            end
            item
              Description = 'Join Venture'
              Value = '7'
            end
            item
              Description = 'Others'
              Value = '8'
            end>
          Properties.OnChange = CompanyCharateristicChkPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 29
          Width = 121
        end
        object txtCompanyCharateristik: TcxDBTextEdit
          Left = 608
          Top = 139
          DataBinding.DataField = 'COMPANY_CHARACTER_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 30
          Width = 260
        end
        object cxDBMemo1: TcxDBMemo
          Left = 608
          Top = 166
          DataBinding.DataField = 'OFFC_ADDR_ASSKDP'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Height = 39
          Width = 260
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 608
          Top = 238
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'OFFC_COUNTRY'
          DataBinding.DataSource = dsSubject
          Properties.KeyFieldNames = 'NATIONALIST'
          Properties.ListColumns = <
            item
              FieldName = 'NATIONALIST'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          OnExit = cxDBLookupComboBox1Exit
          Width = 145
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 806
          Top = 211
          DataBinding.DataField = 'OFFC_ZIPCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 33
          Width = 62
        end
        object cxDBMemo2: TcxDBMemo
          Left = 608
          Top = 265
          DataBinding.DataField = 'CORESP_ADDR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Height = 48
          Width = 260
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 806
          Top = 319
          DataBinding.DataField = 'CORESP_ZIPCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 37
          Width = 62
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 608
          Top = 346
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'CORESP_COUNTRY'
          DataBinding.DataSource = dsSubject
          Properties.KeyFieldNames = 'NATIONALIST'
          Properties.ListColumns = <
            item
              FieldName = 'NATIONALIST'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 38
          Width = 145
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 608
          Top = 373
          DataBinding.DataField = 'OFFC_BUILD_STATUS'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Personal Property'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Rent'
              Value = '2'
            end
            item
              Description = 'Others'
              Value = '3'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 39
          Width = 145
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 608
          Top = 400
          DataBinding.DataField = 'OFFC_LENGTH_COREPON'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 40
          Width = 35
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 608
          Top = 427
          DataBinding.DataField = 'OFFC_PHONE_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 42
          Width = 190
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 608
          Top = 454
          DataBinding.DataField = 'OFFC_FAX_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 43
          Width = 190
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 608
          Top = 481
          DataBinding.DataField = 'EMAIL_ADDR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 44
          Width = 190
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 608
          Top = 508
          DataBinding.DataField = 'OFFC_FAX_NO_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 45
          Width = 190
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 193
          Top = 37
          DataBinding.DataField = 'SID'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 268
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 608
          Top = 319
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'CORESP_CITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 36
          Width = 145
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 608
          Top = 211
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'OFFC_CITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 32
          Width = 145
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 259
          Top = 427
          DataBinding.DataField = 'TAXPAYER_REG'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '00.000.000.0-000.000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 202
        end
        object chkIsParent: TcxDBCheckBox
          Left = 479
          Top = 28
          Caption = 'Parent Account'
          DataBinding.DataField = 'ISPACC'
          DataBinding.DataSource = dsSubject
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          OnClick = chkIsParentClick
          Width = 109
        end
        object cmbParentID: TcxDBLookupComboBox
          Left = 630
          Top = 28
          RepositoryItem = dmGlobal.luEntity
          DataBinding.DataField = 'PACCID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          OnExit = cmbParentIDExit
          Width = 238
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 362
          Top = 10
          RepositoryItem = dmGlobal.luProduct
          DataBinding.DataField = 'PRD_CODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 99
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 193
          Top = 64
          DataBinding.DataField = 'ALT_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 268
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 662
          Top = 67
          TabStop = False
          RepositoryItem = dmGlobal.luSales
          DataBinding.DataField = 'SALESID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clWhite
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 202
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 505
          Top = 67
          RepositoryItem = dmGlobal.luBranch
          DataBinding.DataField = 'BRANCHID'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'BRCODE'
          Properties.ListColumns = <
            item
              FieldName = 'BRCODE'
            end
            item
              FieldName = 'BRNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 121
        end
        object LineOfBusinessChk: TcxDBLookupComboBox
          Left = 162
          Top = 535
          RepositoryItem = dmGlobal.luBusinessLine
          DataBinding.DataField = 'BUSINESS_LINE_CHK'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Properties.OnChange = cxDBLookupComboBox7PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 27
          OnExit = LineOfBusinessChkExit
          Width = 145
        end
        object cxLabel11: TcxLabel
          Left = 649
          Top = 400
          Caption = 'Years'
          Style.HotTrack = False
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Type of Securities Account'
          Parent = dxLayoutControl3Group11
          Control = cmbTypeOfSecurities
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Client Data'
          Parent = dxLayoutControl1Group11
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'Client Name as in lates Article of Association'
          CaptionOptions.Layout = clTop
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Status'
          Parent = dxLayoutControl1Group2
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'SWIFT Code'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'S I U P  No.'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'T D P No.'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'T D P Reg. Date'
          Parent = dxLayoutGroup5
          Control = cxDBDateEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'T D P Valid Date'
          Parent = dxLayoutGroup5
          Control = cxDBDateEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Establishment Place'
          Parent = dxLayoutControl1Group7
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date'
          Parent = dxLayoutControl1Group7
          Control = cxDBDateEdit3
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Establisment Deed'
          Parent = dxLayoutControl1Group5
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date'
          Parent = dxLayoutControl1Group5
          Control = cxDBDateEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Drawn Before The Notary'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit8
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Approval From HAM Ministry'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit9
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Announcement in State'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit10
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl1Item17: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Taxpayer Registration'
          Parent = dxLayoutControl1Group8
          Control = TaxpayerChk
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax Reg Date'
          Parent = dxLayoutControl1Group6
          Control = cxDBDateEdit5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Form Of Business Entity'
          Parent = dxLayoutControl1Group2
          Control = FormOfBusinessChk
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object txtFormOfBusinessOther: TdxLayoutItem
          CaptionOptions.Text = ' '
          Parent = dxLayoutControl1Group2
          Visible = False
          Control = cxDBTextEdit12
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object txtLineOfBusiness: TdxLayoutItem
          CaptionOptions.Text = ' '
          Parent = dxLayoutControl1Group2
          Visible = False
          Control = cxDBTextEdit13
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl1Group9: TdxLayoutGroup
          Parent = dxLayoutControl1Group11
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group10
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item21: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Charateristic'
          Parent = dxLayoutControl1Group9
          Control = CompanyCharateristicChk
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object txtLayoutChar: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = dxLayoutControl1Group9
          Visible = False
          Control = txtCompanyCharateristik
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item23: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Company Address'
          Parent = dxLayoutControl1Group9
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item25: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = dxLayoutControl1Group9
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item26: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = dxLayoutControl1Group12
          Control = cxDBTextEdit15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group12: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item27: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Corepondence Address'
          Parent = dxLayoutControl1Group9
          Control = cxDBMemo2
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item29: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = dxLayoutControl1Group15
          Control = cxDBTextEdit17
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group13: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item30: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = dxLayoutControl1Group14
          Control = cxDBLookupComboBox2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group14: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group13
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group15: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group14
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item31: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Head Office Status'
          Parent = dxLayoutControl1Group9
          Control = cxDBImageComboBox3
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item32: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Lenght Of Occupation'
          Parent = dxLayoutControl3Group14
          Control = cxDBCurrencyEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item33: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Telephone No.'
          Parent = dxLayoutControl1Group9
          Control = cxDBTextEdit18
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl1Item34: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Parent = dxLayoutControl1Group9
          Control = cxDBTextEdit19
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item35: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'E-mail Address'
          Parent = dxLayoutControl1Group9
          Control = cxDBTextEdit20
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item36: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Other Office Fax No.'
          Parent = dxLayoutControl1Group9
          Control = cxDBTextEdit21
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Single Investor Identification Number'
          Parent = dxLayoutControl3Group10
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group16: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group10
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item22: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = dxLayoutControl1Group15
          Control = cxDBLookupComboBox3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = dxLayoutControl1Group12
          Control = cxDBLookupComboBox4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object TaxPayerRegNo: TdxLayoutItem
          CaptionOptions.Text = 'Reg No.'
          Parent = dxLayoutControl1Group8
          Control = cxDBMaskEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignVert = avTop
          CaptionOptions.Text = 'Parent Account'
          Parent = dxLayoutControl3Group12
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl3Group10: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group10
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup6
          Control = chkIsParent
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object cmbParentAccID: TdxLayoutItem
          CaptionOptions.Text = 'Acc ID'
          Parent = dxLayoutGroup6
          Visible = False
          Control = cmbParentID
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          CaptionOptions.Text = 'Product'
          Parent = dxLayoutControl3Group11
          Control = cxDBLookupComboBox5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Alternate Code'
          Parent = dxLayoutControl3Group1
          Control = cxDBTextEdit11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group16
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          CaptionOptions.Text = 'Sales'
          Parent = dxLayoutControl3Group13
          Control = cxDBLookupComboBox6
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group12: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group16
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.Text = 'Branch'
          Parent = dxLayoutControl3Group13
          Control = cxDBLookupComboBox15
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group13: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group12
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Line of Business'
          Parent = dxLayoutControl1Group2
          Control = LineOfBusinessChk
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxLabel11'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group14
          Control = cxLabel11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group14: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 8
        end
      end
    end
    object TabAddress: TcxTabSheet
      Caption = 'Board Of Director'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 925
        Height = 615
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object gvwBOD: TcxGridDBBandedTableView
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
          DataController.DataSource = dsCOBBOD
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end>
          object gvwBODCUST_REG_NO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_REG_NO'
            Visible = False
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBODBOD_NAME: TcxGridDBBandedColumn
            Caption = 'Board Of Director Name'
            DataBinding.FieldName = 'BOD_NAME'
            Width = 143
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBODBOD_POSITION: TcxGridDBBandedColumn
            Caption = 'Position'
            DataBinding.FieldName = 'BOD_POSITION'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn
            Caption = 'Phone Number'
            DataBinding.FieldName = 'BOD_CELLPHONE'
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBODBOD_EMAIL: TcxGridDBBandedColumn
            Caption = 'Official EMail'
            DataBinding.FieldName = 'BOD_EMAIL'
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn
            Caption = 'Nationality'
            DataBinding.FieldName = 'BOD_NATIONALITY'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end
              item
                FieldName = 'NATIONALITY'
              end>
            Properties.ListFieldIndex = 1
            RepositoryItem = dmGlobal.luNationality
            Width = 161
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwBOD
        end
      end
    end
    object TabSourceOfFund: TcxTabSheet
      Caption = 'Source Of Fund'
      ImageIndex = 2
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 925
        Height = 615
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cmbAnnualNetProfit: TcxDBImageComboBox
          Left = 138
          Top = 28
          DataBinding.DataField = 'ANNUAL_NET_PROFIT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = '< 500,000,000'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = '501,000,000 - 1,000,000,000'
              Value = '2'
            end
            item
              Description = '1,001,000,000 - 2,500,000,000'
              Value = '3'
            end
            item
              Description = '2,501,000,000 - 5,000,000,000'
              Value = '4'
            end
            item
              Description = '5,001,000,000 - 10,000,000,000'
              Value = '5'
            end
            item
              Description = '> 10,001,000,000'
              Value = '6'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 207
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
          Left = 138
          Top = 55
          DataBinding.DataField = 'TOTAL_ASSET'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = '< 500,000,000'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = '501,000,000 - 1,000,000,000'
              Value = '2'
            end
            item
              Description = '1,001,000,000 - 2,500,000,000'
              Value = '3'
            end
            item
              Description = '2,501,000,000 - 5,000,000,000'
              Value = '4'
            end
            item
              Description = '5,001,000,000 - 10,000,000,000'
              Value = '5'
            end
            item
              Description = '> 10,001,000,000'
              Value = '6'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 207
        end
        object cxDBTextEdit46: TcxDBTextEdit
          Left = 540
          Top = 112
          DataBinding.DataField = 'FUND_SEP_BANK_ACC_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit47: TcxDBTextEdit
          Left = 540
          Top = 139
          DataBinding.DataField = 'FUND_SEP_BANK_BRANCH'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 121
        end
        object cxDBTextEdit48: TcxDBTextEdit
          Left = 540
          Top = 166
          DataBinding.DataField = 'FUND_SEP_BANK_BENEFICIARY'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 540
          Top = 28
          DataBinding.DataField = 'INIT_DEPOSIT_FUND'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 148
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 540
          Top = 55
          DataBinding.DataField = 'INIT_DEPOSIT_SHARES'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 148
        end
        object txtSourceOfFundChk: TcxDBImageComboBox
          Left = 138
          Top = 112
          DataBinding.DataField = 'FUND_SOURCE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Retained Earning'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Others'
              Value = '2'
            end>
          Properties.OnChange = txtSourceOfFundChkPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit49: TcxDBTextEdit
          Left = 138
          Top = 139
          DataBinding.DataField = 'SOURCE_FUND_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 257
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 138
          Top = 166
          DataBinding.DataField = 'INVS_EXPERIENCE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 42
        end
        object txtInvestmentObjectiveChk: TcxDBImageComboBox
          Left = 138
          Top = 193
          DataBinding.DataField = 'INVS_OBJ'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Aggressive Growth'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Growth'
              Value = '2'
            end
            item
              Description = 'Income'
              Value = '3'
            end
            item
              Description = 'Capital Preservation'
              Value = '4'
            end
            item
              Description = 'Speculation'
              Value = '5'
            end
            item
              Description = 'Investment'
              Value = '6'
            end
            item
              Description = 'Others'
              Value = '7'
            end>
          Properties.OnChange = txtInvestmentObjectiveChkPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit50: TcxDBTextEdit
          Left = 138
          Top = 220
          DataBinding.DataField = 'INVS_OBJ_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object cxGrid2: TcxGrid
          Left = 22
          Top = 277
          Width = 666
          Height = 120
          Align = alClient
          TabOrder = 12
          object gvwBankAccount: TcxGridDBBandedTableView
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
            DataController.DataSource = dsCOBBankAcc
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwBankAccountCUST_REG_NO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUST_REG_NO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwBankAccountACC_NO: TcxGridDBBandedColumn
              Caption = 'Account No'
              DataBinding.FieldName = 'ACC_NO'
              Width = 156
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwBankAccountBANK_NAME: TcxGridDBBandedColumn
              Caption = 'Bank Name'
              DataBinding.FieldName = 'BANK_NAME'
              RepositoryItem = dmGlobal.luBank
              Width = 305
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwBankAccountBANK_BRANCH: TcxGridDBBandedColumn
              Caption = 'Branch'
              DataBinding.FieldName = 'BANK_BRANCH'
              Width = 111
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwBankAccountBENEFICIARY: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BENEFICIARY'
              Width = 172
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwBankAccountCCY: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CCY'
              RepositoryItem = dmGlobal.luCurrency
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = gvwBankAccount
          end
        end
        object cxGrid3: TcxGrid
          Left = 22
          Top = 433
          Width = 250
          Height = 123
          TabOrder = 13
          object gvwBankCustody: TcxGridDBBandedTableView
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
            DataController.DataSource = dsCOBBankCustody
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwBankCustodyACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwBankCustodyCUSTODYCODE: TcxGridDBBandedColumn
              Caption = 'Custody Code'
              DataBinding.FieldName = 'CUSTODYCODE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'CUSTODYCODE'
              Properties.ListColumns = <
                item
                  FieldName = 'CUSTODYNAME'
                end
                item
                  FieldName = 'CUSTODYNAME'
                end>
              Properties.ListSource = dmLookup.dsLuBankCustody
              RepositoryItem = dmGlobal.luBankCustody
              Width = 164
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwBankCustodyCUSTODYACCNO: TcxGridDBBandedColumn
              Caption = 'Custody Account No.'
              DataBinding.FieldName = 'CUSTODYACCNO'
              Width = 171
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwBankCustodyCUSTODYACCNAME: TcxGridDBBandedColumn
              Caption = 'Custody Account Name'
              DataBinding.FieldName = 'CUSTODYACCNAME'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwBankCustodyCUSTODYBRANCH: TcxGridDBBandedColumn
              Caption = 'Custody Branch'
              DataBinding.FieldName = 'CUSTODYBRANCH'
              Width = 159
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwBankCustodyACTLED_SEQID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACTLED_SEQID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwBankCustodyMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwBankCustodyMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwBankCustodyAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwBankCustodyAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwBankCustodyUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwBankCustodyUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwBankCustodyNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwBankCustodyISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwBankCustodyID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = gvwBankCustody
          end
        end
        object dxLayoutGroup7: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup8: TdxLayoutGroup
          CaptionOptions.Text = 'Client'#39's Financial Data'
          Parent = dxLayoutControl3Group7
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Bank Account(s)'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Fund Separation Bank Account'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Initial Deposit'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Financial and Investment Backgroud'
          Parent = dxLayoutControl3Group7
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Annual Net Profit (IDR)'
          Parent = dxLayoutGroup8
          Control = cmbAnnualNetProfit
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Total Asset in IDR'
          Parent = dxLayoutGroup8
          Control = cxDBImageComboBox4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account No.'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit46
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item13: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Bank and Branch Name'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit47
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Beneficiary'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit48
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item15: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fund'
          Parent = dxLayoutControl3Group4
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Shares'
          Parent = dxLayoutControl3Group4
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item17: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Source Of Fund'
          Parent = dxLayoutControl3Group6
          Control = txtSourceOfFundChk
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object txtSourceOfFund: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = dxLayoutControl3Group6
          Visible = False
          Control = cxDBTextEdit49
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Invesment Experience'
          Parent = dxLayoutControl3Group6
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Invesment Objective'
          Parent = dxLayoutControl3Group6
          Control = txtInvestmentObjectiveChk
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object txtInvestmentObjOther: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = dxLayoutControl3Group6
          Visible = False
          Control = cxDBTextEdit50
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          Parent = dxLayoutControl3Group2
          Control = cxGrid2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup9: TdxLayoutGroup
          CaptionOptions.Text = 'Bank Custody'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid3'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup9
          Control = cxGrid3
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object TabKnowYourCust: TcxTabSheet
      Caption = 'Known Your Customer'
      ImageIndex = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 925
        Height = 615
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          AutoSize = False
          Caption = '1. '
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 60
          AutoSize = False
          Caption = '2.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 110
          AutoSize = False
          Caption = '3.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 160
          AutoSize = False
          Caption = '4.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 210
          AutoSize = False
          Caption = '5.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 260
          AutoSize = False
          Caption = '6.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 310
          AutoSize = False
          Caption = '7.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 360
          AutoSize = False
          Caption = '8.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 423
          AutoSize = False
          Caption = '9.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = 490
          AutoSize = False
          Caption = '10.'
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel12: TcxLabel
          Left = 41
          Top = 10
          Caption = 
            'Does your Company have an existing Securities Account this Compa' +
            'ny?'
          Style.HotTrack = False
        end
        object cxLabel13: TcxLabel
          Left = 41
          Top = 60
          Caption = 
            'Does your Company have any relationship with any shareholder/Com' +
            'missioner/Director/employee in this Securities?'
          Style.HotTrack = False
        end
        object cxLabel14: TcxLabel
          Left = 41
          Top = 110
          Caption = 
            'Does any of your Company-affiliated companies own own an existin' +
            'g Securities Account in this Securities? if yes, please disclose'
          Style.HotTrack = False
        end
        object cxLabel15: TcxLabel
          Left = 41
          Top = 160
          Caption = 
            'Does your Company have any control of any existing account in Se' +
            'curities?'
          Style.HotTrack = False
        end
        object cxLabel16: TcxLabel
          Left = 41
          Top = 210
          Caption = 
            'Is your Company one of the controlling shareholders from any com' +
            'pany/companies that own(s) an account in this Securities?'
          Style.HotTrack = False
        end
        object cxLabel17: TcxLabel
          Left = 41
          Top = 260
          Caption = 'Is your Company one of the controlling of a listed company?'
          Style.HotTrack = False
        end
        object cxLabel18: TcxLabel
          Left = 41
          Top = 310
          Caption = 'Is your Company one of the shareholders of securities company?'
          Style.HotTrack = False
        end
        object cxLabel19: TcxLabel
          Left = 41
          Top = 360
          AutoSize = False
          Caption = 
            'Does any of the Board of Director'#39's or Board of Commissioner'#39's f' +
            'amily member work at Securities Company. Stock Exchange, company' +
            ' regulated by Stock Exchange/Bapepam and LK, bank, insurance or ' +
            'other similar financial institution?'
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 30
          Width = 752
        end
        object cxLabel20: TcxLabel
          Left = 41
          Top = 423
          AutoSize = False
          Caption = 
            'Is/Was any member of the Board of Director'#39's of Board of Commiss' +
            'ioner'#39's now/previously holding or nominated for any position exp' +
            'osed to public (Politically Exposed Person)?'
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 34
          Width = 736
        end
        object cxLabel21: TcxLabel
          Left = 41
          Top = 490
          Caption = 
            'Does your Company ever/still own an investment product in capita' +
            'l market?'
          Style.HotTrack = False
        end
        object chkInfo: TcxDBImageComboBox
          Left = 41
          Top = 33
          DataBinding.DataField = 'INFO_EXISTING_SEC_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = chkInfoPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 47
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 126
          Top = 33
          DataBinding.DataField = 'INFO_EXISTING_SEC_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 317
          Top = 33
          DataBinding.DataField = 'INFO_EXISTING_SEC_ACC_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBImageComboBox6: TcxDBImageComboBox
          Left = 41
          Top = 83
          DataBinding.DataField = 'INFO_EXISTING_REL_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox6PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 47
        end
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 41
          Top = 133
          DataBinding.DataField = 'INFO_EXISTING_AFF_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox7PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 47
        end
        object cxDBImageComboBox8: TcxDBImageComboBox
          Left = 41
          Top = 183
          DataBinding.DataField = 'INFO_EXISTING_CNTRL_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox8PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 17
          Width = 47
        end
        object cxDBImageComboBox9: TcxDBImageComboBox
          Left = 41
          Top = 233
          DataBinding.DataField = 'INFO_EXISTING_SHR_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox9PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 42
        end
        object cxDBImageComboBox10: TcxDBImageComboBox
          Left = 41
          Top = 283
          DataBinding.DataField = 'INFO_EXISTING_EMT_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox10PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 46
        end
        object cxDBImageComboBox11: TcxDBImageComboBox
          Left = 41
          Top = 333
          DataBinding.DataField = 'INFO_EXISTING_PE_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox11PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Width = 49
        end
        object cxDBImageComboBox12: TcxDBImageComboBox
          Left = 41
          Top = 396
          DataBinding.DataField = 'INFO_EXISTING_DWN_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox12PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 40
          Width = 48
        end
        object cxDBImageComboBox13: TcxDBImageComboBox
          Left = 41
          Top = 463
          DataBinding.DataField = 'INFO_EXISTING_PUB_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 44
          OnExit = cxDBImageComboBox13Exit
          Width = 48
        end
        object cxDBImageComboBox14: TcxDBImageComboBox
          Left = 41
          Top = 513
          DataBinding.DataField = 'INFO_EXISTING_MARKET_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Yes'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'No'
              Value = '2'
            end>
          Properties.OnChange = cxDBImageComboBox14PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 47
          Width = 46
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 126
          Top = 83
          DataBinding.DataField = 'INFO_EXISTING_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 126
          Top = 133
          DataBinding.DataField = 'INFO_EXISTING_AFF_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 121
        end
        object cxDBTextEdit30: TcxDBTextEdit
          Left = 317
          Top = 133
          DataBinding.DataField = 'INFO_EXISTING_AFF_RELATION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 121
        end
        object cxDBTextEdit31: TcxDBTextEdit
          Left = 508
          Top = 133
          DataBinding.DataField = 'INFO_EXISTING_AF_ACCNO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 121
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 126
          Top = 183
          DataBinding.DataField = 'INFO_EXISTING_CNTRL_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 121
        end
        object cxDBTextEdit33: TcxDBTextEdit
          Left = 317
          Top = 183
          DataBinding.DataField = 'INFO_EXISTING_CNTRL_ACCNO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 121
        end
        object cxDBTextEdit34: TcxDBTextEdit
          Left = 169
          Top = 233
          DataBinding.DataField = 'INFO_EXISTING_SHR_COMP_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 121
        end
        object cxDBTextEdit36: TcxDBTextEdit
          Left = 338
          Top = 233
          DataBinding.DataField = 'INFO_EXISTING_SHR_POSITION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 121
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 509
          Top = 233
          DataBinding.DataField = 'INFO_EXISTING_SHR_RELATION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 121
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 204
          Top = 283
          DataBinding.DataField = 'INFO_EXISTING_EMT_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 121
        end
        object cxDBTextEdit40: TcxDBTextEdit
          Left = 356
          Top = 283
          DataBinding.DataField = 'INFO_EXISTING_EMN_TITLE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 30
          Width = 121
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 536
          Top = 283
          DataBinding.DataField = 'INFO_EXISTING_EMN_STOCK'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 121
        end
        object cxDBTextEdit42: TcxDBTextEdit
          Left = 176
          Top = 333
          DataBinding.DataField = 'INFO_EXISTING_PE_COM_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Width = 121
        end
        object cxDBTextEdit43: TcxDBTextEdit
          Left = 328
          Top = 333
          DataBinding.DataField = 'INFO_EXISTING_PE_TITLE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 36
          Width = 121
        end
        object cxDBTextEdit44: TcxDBTextEdit
          Left = 508
          Top = 333
          DataBinding.DataField = 'INFO_EXISTING_PE_STOCK'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 37
          Width = 121
        end
        object cxDBTextEdit45: TcxDBTextEdit
          Left = 240
          Top = 396
          DataBinding.DataField = 'INFO_EXISTING_DWN_COM_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 41
          Width = 121
        end
        object cxDBTextEdit51: TcxDBTextEdit
          Left = 204
          Top = 513
          DataBinding.DataField = 'INFO_EXISTING_MARKET_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 48
          Width = 121
        end
        object dxLayoutGroup10: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem7: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group4
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group6
          Control = cxLabel2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group14
          Control = cxLabel3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup10
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group15
          Control = cxLabel4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group5
          Control = cxLabel5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group7
          Control = cxLabel6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group8
          Control = cxLabel7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel8'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group9
          Control = cxLabel8
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel9'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group10
          Control = cxLabel9
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel10'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group11
          Control = cxLabel10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item12: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel12'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup11
          Control = cxLabel12
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item13: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel13'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group12
          Control = cxLabel13
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item14: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel14'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group13
          Control = cxLabel14
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item15: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel15'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group16
          Control = cxLabel15
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item16: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel16'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group17
          Control = cxLabel16
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item17: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel17'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group18
          Control = cxLabel17
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item18: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel18'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group19
          Control = cxLabel18
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item19: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel19'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group20
          Control = cxLabel19
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item20: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel20'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group21
          Control = cxLabel20
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item21: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel21'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group22
          Control = cxLabel21
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group14: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group15: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl4Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl4Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object dxLayoutControl4Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 8
        end
        object dxLayoutControl4Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 9
        end
        object dxLayoutControl4Item11: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group3
          Control = chkInfo
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item22: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group3
          Control = cxDBTextEdit26
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup11
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item23: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account No'
          Parent = dxLayoutControl4Group3
          Control = cxDBTextEdit27
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item24: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group23
          Control = cxDBImageComboBox6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group12: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item25: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group24
          Control = cxDBImageComboBox7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group13: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group14
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item26: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox8'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group25
          Control = cxDBImageComboBox8
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group16: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group15
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item27: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox9'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group26
          Control = cxDBImageComboBox9
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group17: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item28: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox10'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group27
          Control = cxDBImageComboBox10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group18: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group7
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item29: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox11'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group28
          Control = cxDBImageComboBox11
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group19: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item30: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox12'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group29
          Control = cxDBImageComboBox12
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group20: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item31: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox13'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group21
          Control = cxDBImageComboBox13
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group21: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group10
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item32: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox14'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group30
          Control = cxDBImageComboBox14
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group22: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group11
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item33: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group23
          Control = cxDBTextEdit28
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group23: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group12
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item34: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group24
          Control = cxDBTextEdit29
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group24: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group13
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item35: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relation'
          Parent = dxLayoutControl4Group24
          Control = cxDBTextEdit30
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item36: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account No.'
          Parent = dxLayoutControl4Group24
          Control = cxDBTextEdit31
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item37: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group25
          Control = cxDBTextEdit32
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group25: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group16
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item38: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account No.'
          Parent = dxLayoutControl4Group25
          Control = cxDBTextEdit33
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item39: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl4Group26
          Control = cxDBTextEdit34
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group26: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group17
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item40: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Parent = dxLayoutControl4Group26
          Control = cxDBTextEdit36
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item41: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relation'
          Parent = dxLayoutControl4Group26
          Control = cxDBTextEdit37
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item42: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Listed Company Name'
          Parent = dxLayoutControl4Group27
          Control = cxDBTextEdit38
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group27: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group18
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item43: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Title'
          Parent = dxLayoutControl4Group27
          Control = cxDBTextEdit40
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item44: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Stock (%)'
          Parent = dxLayoutControl4Group27
          Control = cxDBTextEdit41
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item45: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl4Group28
          Control = cxDBTextEdit42
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group28: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group19
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item46: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Title'
          Parent = dxLayoutControl4Group28
          Control = cxDBTextEdit43
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item47: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Stock (%)'
          Parent = dxLayoutControl4Group28
          Control = cxDBTextEdit44
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item48: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company or Institution Name'
          Parent = dxLayoutControl4Group29
          Control = cxDBTextEdit45
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group29: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group20
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item49: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name of Institution'
          Parent = dxLayoutControl4Group30
          Control = cxDBTextEdit51
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group30: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group22
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
      end
    end
    object TabDoc: TcxTabSheet
      Caption = 'Documents'
      ImageIndex = 4
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 925
        Height = 615
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object gvwUploadDocs: TcxGridDBBandedTableView
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
          DataController.DataSource = dsDocs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.NavigatorHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Width = 678
            end>
          object gvwUploadDocsDOC_TYPE: TcxGridDBBandedColumn
            Caption = 'Document Type'
            DataBinding.FieldName = 'DOC_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Others'
                ImageIndex = 0
                Value = '0'
              end
              item
                Description = 'ID Card'
                Value = '1'
              end
              item
                Description = 'Taxpayer Reg No.'
                Value = '2'
              end
              item
                Description = 'SIUP'
                Value = '3'
              end
              item
                Description = 'Passport'
                Value = '4'
              end
              item
                Description = 'Driving License'
                Value = '5'
              end
              item
                Description = 'Photo'
                Value = '6'
              end
              item
                Description = 'Speciement'
                Value = '7'
              end>
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwUploadDocsNOTES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwUploadDocsTOKEN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOKEN'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwUploadDocsIMAGE_NAME: TcxGridDBBandedColumn
            Caption = 'File Name'
            DataBinding.FieldName = 'IMAGE_NAME'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = gvwUploadDocsIMAGE_NAMEPropertiesButtonClick
            Width = 458
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwUploadDocsUPLOADEDON: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UPLOADEDON'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwUploadDocsUPLOADEDBY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UPLOADEDBY'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwUploadDocsCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwUploadDocsDOC_ATTACH: TcxGridDBBandedColumn
            Caption = '...'
            DataBinding.FieldName = 'DOC_ATTACH'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 21
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwUploadDocsCUST_REG_NO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_REG_NO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwUploadDocsDOCEXPIRE: TcxGridDBBandedColumn
            Caption = 'Expire'
            DataBinding.FieldName = 'DOCEXPIRE'
            RepositoryItem = dmGlobal.chkStandard
            Width = 42
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwUploadDocsDOCEXPIREDATE: TcxGridDBBandedColumn
            Caption = 'Expire Date'
            DataBinding.FieldName = 'DOCEXPIREDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwUploadDocs
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsCOBDetails
    Left = 33
    Top = 232
  end
  object dsCOBBOD: TDataSource
    DataSet = frmCOBList.cdsCOBBOD
    Left = 819
    Top = 195
  end
  object dsCOBBankAcc: TDataSource
    DataSet = frmCOBList.cdsCOBBankAcc
    Left = 816
    Top = 252
  end
  object cdsEntityByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryEntity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 816
    Top = 360
    object cdsEntityByParamENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntityByParamENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsEntityByParamBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsEntityByParamSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsEntityByParamENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 100
    end
    object cdsEntityByParamCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
    object cdsEntityByParamENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsEntityByParamBUSSTYPEID: TLargeintField
      FieldName = 'BUSSTYPEID'
    end
    object cdsEntityByParamENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsEntityByParamENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsEntityByParamAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsEntityByParamRET_IDCARDTYPE: TStringField
      FieldName = 'RET_IDCARDTYPE'
      Size = 10
    end
    object cdsEntityByParamRET_IDCARDNO: TStringField
      FieldName = 'RET_IDCARDNO'
      Size = 30
    end
    object cdsEntityByParamRET_IDCARDEXPIRE: TDateField
      FieldName = 'RET_IDCARDEXPIRE'
    end
    object cdsEntityByParamRET_EMAIL: TStringField
      FieldName = 'RET_EMAIL'
      Size = 30
    end
    object cdsEntityByParamRET_HOMEPHONE: TStringField
      FieldName = 'RET_HOMEPHONE'
    end
    object cdsEntityByParamRET_HOMEFAX: TStringField
      FieldName = 'RET_HOMEFAX'
    end
    object cdsEntityByParamRET_MOBILE: TStringField
      FieldName = 'RET_MOBILE'
    end
    object cdsEntityByParamRET_OCCUPATION: TStringField
      FieldName = 'RET_OCCUPATION'
      Size = 50
    end
    object cdsEntityByParamRET_JOBTITTLE: TStringField
      FieldName = 'RET_JOBTITTLE'
    end
    object cdsEntityByParamRET_COMPANYNAME: TStringField
      FieldName = 'RET_COMPANYNAME'
    end
    object cdsEntityByParamRET_BIRTDATE: TDateField
      FieldName = 'RET_BIRTDATE'
    end
    object cdsEntityByParamRET_BIRTHPLACE: TStringField
      FieldName = 'RET_BIRTHPLACE'
    end
    object cdsEntityByParamRET_GENDER: TStringField
      FieldName = 'RET_GENDER'
      Size = 5
    end
    object cdsEntityByParamSOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 10
    end
    object cdsEntityByParamINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 10
    end
    object cdsEntityByParamINVESTEXP: TStringField
      FieldName = 'INVESTEXP'
      Size = 10
    end
    object cdsEntityByParamANUALINCOME: TStringField
      FieldName = 'ANUALINCOME'
      Size = 10
    end
    object cdsEntityByParamESTDAILYTRADE: TStringField
      FieldName = 'ESTDAILYTRADE'
      Size = 1
    end
    object cdsEntityByParamINS_DATEOFESTABLIZED: TDateField
      FieldName = 'INS_DATEOFESTABLIZED'
    end
    object cdsEntityByParamINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
    end
    object cdsEntityByParamINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsEntityByParamINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
    end
    object cdsEntityByParamINS_TOTALASET: TStringField
      FieldName = 'INS_TOTALASET'
      Size = 10
    end
    object cdsEntityByParamINS_AUTHNAME: TStringField
      FieldName = 'INS_AUTHNAME'
      Size = 30
    end
    object cdsEntityByParamINS_AUTHADDDRESS: TStringField
      FieldName = 'INS_AUTHADDDRESS'
      Size = 100
    end
    object cdsEntityByParamINS_AUTHIDCARDTYPE: TStringField
      FieldName = 'INS_AUTHIDCARDTYPE'
      Size = 10
    end
    object cdsEntityByParamINS_AUTHIDCARDNO: TStringField
      FieldName = 'INS_AUTHIDCARDNO'
      Size = 30
    end
    object cdsEntityByParamINS_AUTHIDCARDEXPDATE: TDateField
      FieldName = 'INS_AUTHIDCARDEXPDATE'
    end
    object cdsEntityByParamINS_AUTHPHONE: TStringField
      FieldName = 'INS_AUTHPHONE'
    end
    object cdsEntityByParamINS_AUTHMOBILE: TStringField
      FieldName = 'INS_AUTHMOBILE'
    end
    object cdsEntityByParamINS_AUTHFAX: TStringField
      FieldName = 'INS_AUTHFAX'
    end
    object cdsEntityByParamINS_AUTHEMAIL: TStringField
      FieldName = 'INS_AUTHEMAIL'
      Size = 30
    end
    object cdsEntityByParamINS_CPNAME: TStringField
      FieldName = 'INS_CPNAME'
      Size = 30
    end
    object cdsEntityByParamINS_CPADDRESS: TStringField
      FieldName = 'INS_CPADDRESS'
      Size = 100
    end
    object cdsEntityByParamINS_CPPOSITION: TStringField
      FieldName = 'INS_CPPOSITION'
      Size = 30
    end
    object cdsEntityByParamINS_CPTITLE: TStringField
      FieldName = 'INS_CPTITLE'
      Size = 30
    end
    object cdsEntityByParamINS_COMPPHONE: TStringField
      FieldName = 'INS_COMPPHONE'
      Size = 30
    end
    object cdsEntityByParamINS_COMPFAX: TStringField
      FieldName = 'INS_COMPFAX'
      Size = 30
    end
    object cdsEntityByParamCNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsEntityByParamCNTCITIZEN: TStringField
      FieldName = 'CNTCITIZEN'
      Size = 10
    end
    object cdsEntityByParamCNTINVESTMENT: TStringField
      FieldName = 'CNTINVESTMENT'
      Size = 10
    end
    object cdsEntityByParamSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsEntityByParamTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsEntityByParamRET_MARITALSTATUS: TStringField
      FieldName = 'RET_MARITALSTATUS'
      Size = 1
    end
    object cdsEntityByParamRET_SPOUSENAME: TStringField
      FieldName = 'RET_SPOUSENAME'
      Size = 100
    end
    object cdsEntityByParamRET_HEIRNAME: TStringField
      FieldName = 'RET_HEIRNAME'
      Size = 120
    end
    object cdsEntityByParamRET_HEIRRELATION: TStringField
      FieldName = 'RET_HEIRRELATION'
      Size = 120
    end
    object cdsEntityByParamRET_EDUBACKGROUND: TStringField
      FieldName = 'RET_EDUBACKGROUND'
      Size = 50
    end
    object cdsEntityByParamSOURCEFUNDOTHERS: TStringField
      FieldName = 'SOURCEFUNDOTHERS'
      Size = 50
    end
    object cdsEntityByParamINS_BUSSTYPE: TStringField
      FieldName = 'INS_BUSSTYPE'
    end
    object cdsEntityByParamMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntityByParamMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntityByParamAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntityByParamAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntityByParamUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntityByParamUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntityByParamNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntityByParamISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntityByParamID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEntityByParamCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsEntityByParamNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsEntityByParamNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
    end
    object cdsEntityByParamqryEntTrackInfo: TDataSetField
      FieldName = 'qryEntTrackInfo'
    end
    object cdsEntityByParamqryEntSHL: TDataSetField
      FieldName = 'qryEntSHL'
    end
    object cdsEntityByParamqryEntDOC: TDataSetField
      FieldName = 'qryEntDOC'
    end
    object cdsEntityByParamqryEntContact: TDataSetField
      FieldName = 'qryEntContact'
    end
    object cdsEntityByParamqryEntBOD: TDataSetField
      FieldName = 'qryEntBOD'
    end
    object cdsEntityByParamqryEntBank: TDataSetField
      FieldName = 'qryEntBank'
    end
    object cdsEntityByParamqryEntAddress: TDataSetField
      FieldName = 'qryEntAddress'
    end
  end
  object cdsEntAddress: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityByParamqryEntAddress
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 816
    Top = 312
    object cdsEntAddressENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntAddressSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntAddressCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 10
    end
    object cdsEntAddressPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsEntAddressADDRTYPE: TStringField
      FieldName = 'ADDRTYPE'
      Size = 10
    end
    object cdsEntAddressADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 150
    end
    object cdsEntAddressCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsEntAddressZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsEntAddressTCADDRESS: TStringField
      FieldName = 'TCADDRESS'
      Size = 1
    end
    object cdsEntAddressMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntAddressMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntAddressAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntAddressAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntAddressUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntAddressUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntAddressNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntAddressISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntAddressID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsCOBBankCustody: TDataSource
    DataSet = frmCOBList.cdsCOBClientCustody
    Left = 816
    Top = 414
  end
  object dsDocs: TDataSource
    DataSet = frmCOBList.cdsCOBDoc
    Left = 816
    Top = 136
  end
  object odDocs: TOpenDialog
    Left = 380
    Top = 458
  end
  object ActionList1: TActionList
    Left = 711
    Top = 129
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View Document'
      OnExecute = actViewExecute
      CheckPermission = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 711
    Top = 192
    object ViewDocument1: TMenuItem
      Action = actView
    end
  end
end
