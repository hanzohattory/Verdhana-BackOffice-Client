inherited frmOpeningAccountRetail: TfrmOpeningAccountRetail
  Caption = 'Opening Account Retail'
  ClientHeight = 813
  ClientWidth = 992
  ExplicitWidth = 1008
  ExplicitHeight = 852
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 49
    Align = alNone
    Visible = False
    ExplicitWidth = 994
    ExplicitHeight = 49
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 744
    Width = 992
    ExplicitTop = 744
    ExplicitWidth = 992
    inherited dbNavLog: TDBNavigator
      Left = 878
      Hints.Strings = ()
      ExplicitLeft = 878
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 793
    Width = 992
    ExplicitTop = 793
    ExplicitWidth = 992
  end
  inherited tabEditorData: TTabSet
    Top = 723
    Width = 992
    ExplicitTop = 723
    ExplicitWidth = 992
  end
  object pgEntity: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 992
    Height = 723
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabAddress
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 719
    ClientRectLeft = 4
    ClientRectRight = 988
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'Identity'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 141
          Top = 282
          RepositoryItem = dmGlobal.luMaritalStatus
          DataBinding.DataField = 'RET_MARITALSTATUS'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 200
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 460
          Top = 282
          DataBinding.DataField = 'RET_SPOUSENAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 200
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 141
          Top = 309
          RepositoryItem = dmGlobal.luEducationalBackground
          DataBinding.DataField = 'RET_EDUBACKGROUND'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 30
          Width = 200
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 141
          Top = 562
          DataBinding.DataField = 'COMPANY'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 50
          Width = 334
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 460
          Top = 255
          DataBinding.DataField = 'MOTHER_NAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 200
        end
        object cmbOccupation: TcxDBImageComboBox
          Left = 141
          Top = 504
          DataBinding.DataField = 'OCCUPATION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Others'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Private Employee'
              Value = 2
            end
            item
              Description = 'Civil Servant'
              Value = 3
            end
            item
              Description = 'Housewife'
              Value = 4
            end
            item
              Description = 'Entrepreneur'
              Value = 5
            end
            item
              Description = 'Student'
              Value = 6
            end
            item
              Description = 'Armed Forces/Police'
              Value = 7
            end
            item
              Description = 'Retiree'
              Value = 8
            end
            item
              Description = 'Teacher'
              Value = 9
            end>
          Properties.OnChange = cmbOccupationPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 46
          Width = 148
        end
        object cxDBTextEdit39: TcxDBTextEdit
          Left = 385
          Top = 504
          DataBinding.DataField = 'OCCUPATION_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 47
          Width = 150
        end
        object cxDBTextEdit53: TcxDBTextEdit
          Left = 141
          Top = 533
          DataBinding.DataField = 'FIELD_WORK_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 49
          Width = 334
        end
        object cxDBTextEdit55: TcxDBTextEdit
          Left = 369
          Top = 620
          DataBinding.DataField = 'POSITION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 56
          Width = 180
        end
        object cxDBTextEdit56: TcxDBTextEdit
          Left = 141
          Top = 620
          DataBinding.DataField = 'JOB_DIVISION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 55
          Width = 180
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 597
          Top = 562
          DataBinding.DataField = 'YOS_YEAR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 51
          Width = 50
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 688
          Top = 562
          DataBinding.DataField = 'YOS_MONTH'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 52
          Width = 50
        end
        object cxDBTextEdit57: TcxDBTextEdit
          Left = 141
          Top = 591
          DataBinding.DataField = 'COMPANY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 53
          Width = 119
        end
        object cxDBTextEdit58: TcxDBTextEdit
          Left = 287
          Top = 591
          DataBinding.DataField = 'COMPANY_PHONE_EXT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 54
          Width = 41
        end
        object eduBackgroundOthers: TcxDBTextEdit
          Left = 460
          Top = 309
          DataBinding.DataField = 'EDU_BACKGOUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 194
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 141
          Top = 365
          RepositoryItem = dmGlobal.luTaxID
          DataBinding.DataField = 'TAXID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 33
          Width = 121
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 141
          Top = 419
          DataBinding.DataField = 'KTP'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '9999999999999999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 37
          Width = 121
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 141
          Top = 450
          DataBinding.DataField = 'PASSPORT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 42
          Width = 121
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 141
          Top = 477
          DataBinding.DataField = 'KITAS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 44
          Width = 121
        end
        object cxDBDateEdit6: TcxDBDateEdit
          Left = 382
          Top = 450
          DataBinding.DataField = 'PASSPORT_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 43
          Width = 121
        end
        object cxDBDateEdit7: TcxDBDateEdit
          Left = 382
          Top = 477
          DataBinding.DataField = 'KITAS_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 45
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 720
          Top = 504
          DataBinding.DataField = 'NAT_BUSINESS_ENTREPRENEUR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 48
          Width = 150
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 141
          Top = 255
          RepositoryItem = dmGlobal.luNationality
          DataBinding.DataField = 'CNTREST'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 26
          Width = 200
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 141
          Top = 163
          DataBinding.DataField = 'FIRSTNAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 210
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 422
          Top = 163
          DataBinding.DataField = 'MIDDLENAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 604
          Top = 163
          DataBinding.DataField = 'LASTNAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 121
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 382
          Top = 194
          DataBinding.DataField = 'ENTDESC'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 200
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 88
          Top = 37
          RepositoryItem = dmGlobal.luProduct
          DataBinding.DataField = 'PRDCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 145
        end
        object cbBranch: TcxDBLookupComboBox
          Left = 315
          Top = 37
          RepositoryItem = dmGlobal.luBranch
          DataBinding.DataField = 'BRANCHID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 145
        end
        object cbSales: TcxDBLookupComboBox
          Left = 548
          Top = 37
          RepositoryItem = dmGlobal.luSales
          DataBinding.DataField = 'SALESID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          OnEnter = cbSalesEnter
          OnExit = cbSalesExit
          Width = 140
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 88
          Top = 10
          DataBinding.DataField = 'OACODE'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 140
        end
        object cxDBDateEdit8: TcxDBDateEdit
          Left = 314
          Top = 10
          DataBinding.DataField = 'CREATEDATE'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 10
          Top = 118
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Existing Client'
          DataBinding.DataField = 'EXISTING_CLIENT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 149
          Top = 118
          DataBinding.DataField = 'PARENT_ACCCODE'
          DataBinding.DataSource = dsSubject
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 15
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 276
          Top = 118
          TabStop = False
          DataBinding.DataField = 'PARENT_ACCNAME'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 312
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 441
          Top = 10
          Caption = 'Affiliation'
          DataBinding.DataField = 'AFFIL'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 509
          Top = 419
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Life Time'
          DataBinding.DataField = 'KTP_LIFETIME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 39
        end
        object btnCheck: TcxButton
          Left = 731
          Top = 163
          Width = 75
          Height = 25
          Caption = 'Check'
          TabOrder = 20
          OnClick = btnCheckClick
        end
        object cmbRisk: TcxDBImageComboBox
          Left = 577
          Top = 10
          DataBinding.DataField = 'RISK'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.Items = <
            item
              Description = 'Low'
              ImageIndex = 0
              Value = 'L'
            end
            item
              Description = 'Medium'
              Value = 'M'
            end
            item
              Description = 'High'
              Value = 'H'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 138
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 628
          Top = 194
          RepositoryItem = dmGlobal.rgSex
          DataBinding.DataField = 'RET_GENDER'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 25
          Height = 55
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 141
          Top = 221
          DataBinding.DataField = 'RET_BIRTHPLACE'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 261
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 461
          Top = 221
          AutoSize = False
          DataBinding.DataField = 'RET_BIRTDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Height = 21
          Width = 121
        end
        object cxButton1: TcxButton
          Left = 579
          Top = 419
          Width = 113
          Height = 25
          Caption = 'Dukcapil Check'
          TabOrder = 40
          OnClick = cxButton1Click
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 382
          Top = 392
          AutoSize = False
          DataBinding.DataField = 'NPWP_REGDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 36
          Height = 21
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 382
          Top = 419
          AutoSize = False
          DataBinding.DataField = 'KTP_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 38
          Height = 25
          Width = 121
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 88
          Top = 64
          RepositoryItem = dmGlobal.luBusinessType
          DataBinding.DataField = 'BUSSTYPEID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 145
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 315
          Top = 64
          AutoSize = False
          DataBinding.DataField = 'EVENTID'
          DataBinding.DataSource = dsSubject
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'EVID'
          Properties.ListColumns = <
            item
              Width = 200
              FieldName = 'EVNAME'
            end
            item
              FieldName = 'EVSTARTDATE'
            end
            item
              FieldName = 'EVENDDATE'
            end
            item
              Caption = 'Person In Charge'
              Width = 150
              FieldName = 'PIC'
            end>
          Properties.ListSource = dmLookup.dsLuEvent
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Height = 21
          Width = 145
        end
        object edInitial: TcxDBTextEdit
          Left = 141
          Top = 194
          AutoSize = False
          DataBinding.DataField = 'INITIAL'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Height = 21
          Width = 121
        end
        object TaxStatus: TcxDBImageComboBox
          Left = 382
          Top = 365
          AutoSize = False
          DataBinding.DataField = 'TAXPAYER_STATUS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Own'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Guarantor'
              Value = 2
            end>
          Properties.OnChange = TaxStatusPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Height = 21
          Width = 121
        end
        object cxButton2: TcxButton
          Left = 698
          Top = 419
          Width = 115
          Height = 25
          Caption = 'Check Registered ID'
          TabOrder = 41
          OnClick = cxButton2Click
        end
        object cxDBImageComboBox17: TcxDBImageComboBox
          Left = 141
          Top = 338
          RepositoryItem = dmGlobal.luReligions
          AutoSize = False
          DataBinding.DataField = 'RELIGION'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 32
          Height = 21
          Width = 121
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 548
          Top = 64
          RepositoryItem = dmGlobal.luInvestorCategory
          AutoSize = False
          DataBinding.DataField = 'INVESTORCAT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Height = 21
          Width = 100
        end
        object cxDBTextEdit40: TcxDBTextEdit
          Left = 707
          Top = 64
          AutoSize = False
          DataBinding.DataField = 'DIRECTSID'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Height = 21
          Width = 100
        end
        object cxDBImageComboBox18: TcxDBImageComboBox
          Left = 746
          Top = 37
          RepositoryItem = dmGlobal.luLocalForeign
          AutoSize = False
          DataBinding.DataField = 'INVS_TYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Height = 21
          Width = 78
        end
        object cxDBTextEdit52: TcxDBTextEdit
          Left = 88
          Top = 91
          AutoSize = False
          DataBinding.DataField = 'REFERRAL_INT_DESC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Height = 21
          Width = 241
        end
        object cxDBTextEdit54: TcxDBTextEdit
          Left = 398
          Top = 91
          DataBinding.DataField = 'REFERRAL_EXT_DESC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 225
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 141
          Top = 392
          DataBinding.DataField = 'NPWP'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '9999999999999999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 35
          Width = 121
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 4
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Marital Status'
          Control = cxDBImageComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Spouse Name'
          Control = cxDBTextEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item11: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Educational Background'
          Control = cxDBImageComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          Parent = dxLayoutControl3Group21
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit15
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 334
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item21: TdxLayoutItem
          Parent = dxLayoutControl3Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Mother'#39's Maiden Name'
          Control = cxDBTextEdit16
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group9: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          Parent = dxLayoutControl3Group11
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation'
          Control = cmbOccupation
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 148
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcOccupationOther: TdxLayoutItem
          Parent = dxLayoutControl3Group11
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation Other'
          Control = cxDBTextEdit39
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item25: TdxLayoutItem
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Field Work'
          Control = cxDBTextEdit53
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 334
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl3Group11: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 11
        end
        object dxLayoutControl3Item26: TdxLayoutItem
          Parent = dxLayoutControl3Group22
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit55
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 180
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item27: TdxLayoutItem
          Parent = dxLayoutControl3Group22
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Job Function / Division'
          Control = cxDBTextEdit56
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 180
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item28: TdxLayoutItem
          Parent = dxLayoutControl3Group21
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Years Of Service   Year'
          Control = cxDBCurrencyEdit1
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 50
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group12: TdxLayoutGroup
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          ItemIndex = 7
          Index = 4
        end
        object dxLayoutControl3Item29: TdxLayoutItem
          Parent = dxLayoutControl3Group21
          CaptionOptions.Text = 'Month'
          Control = cxDBCurrencyEdit2
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 50
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item30: TdxLayoutItem
          Parent = dxLayoutControl3Group14
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Phone'
          Control = cxDBTextEdit57
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 119
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item31: TdxLayoutItem
          Parent = dxLayoutControl3Group14
          CaptionOptions.Text = 'Ext'
          Control = cxDBTextEdit58
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 41
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group14: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 14
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Other'
          Control = eduBackgroundOthers
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 194
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax ID *'
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'KTP *'
          Control = cxDBMaskEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 8
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group17
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Passport'
          Control = cxDBMaskEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item13: TdxLayoutItem
          Parent = dxLayoutControl3Group18
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'KITAS / SKD'
          Control = cxDBMaskEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item15: TdxLayoutItem
          Parent = dxLayoutControl3Group17
          AlignVert = avBottom
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Passport Exp. Date'
          Control = cxDBDateEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group17: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 9
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          Parent = dxLayoutControl3Group18
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'KITAS / SKD Exp. Date'
          Control = cxDBDateEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group18: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 10
        end
        object lcNatureOfBusiness: TdxLayoutItem
          Parent = dxLayoutControl3Group11
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Nature of business for entrepreneur'
          Control = cxDBTextEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group19: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Nationality'
          Control = cxDBLookupComboBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item17: TdxLayoutItem
          Parent = dxLayoutControl3Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'First Name *'
          Control = cxDBTextEdit5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 210
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item23: TdxLayoutItem
          Parent = dxLayoutControl3Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Middle Name'
          Control = cxDBTextEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group20: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item32: TdxLayoutItem
          Parent = dxLayoutControl3Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Last Name'
          Control = cxDBTextEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item34: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahLeft
          Visible = False
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Description'
          Control = cxDBTextEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group21: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 13
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Product *'
          Control = cxDBLookupComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item35: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          CaptionOptions.Text = 'Branch *'
          Control = cbBranch
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item36: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup11
          AlignHorz = ahClient
          CaptionOptions.Text = 'Sales *'
          Control = cbSales
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item38: TdxLayoutItem
          Parent = dxLayoutControl3Group6
          CaptionOptions.Text = 'Request Code'
          Control = cxDBTextEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item39: TdxLayoutItem
          Parent = dxLayoutControl3Group6
          CaptionOptions.Text = 'Request Date *'
          Control = cxDBDateEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group22: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 15
        end
        object dxLayoutControl3Item40: TdxLayoutItem
          Parent = dxLayoutControl3Group13
          CaptionOptions.Visible = False
          Control = cxDBCheckBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 89
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcAccNo: TdxLayoutItem
          Parent = dxLayoutControl3Group13
          CaptionOptions.Text = 'Account'
          Control = cxDBButtonEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group13: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object lcAccName: TdxLayoutItem
          Parent = dxLayoutControl3Group13
          Control = cxDBTextEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 312
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item43: TdxLayoutItem
          Parent = dxLayoutControl3Group6
          CaptionOptions.Visible = False
          Control = cxDBCheckBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 67
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item41: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'cxDBCheckBox4'
          CaptionOptions.Visible = False
          Control = cxDBCheckBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 64
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lcCheck: TdxLayoutItem
          Parent = dxLayoutControl3Group20
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCheck
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group6
          CaptionOptions.Text = 'Client Risk *'
          Control = cmbRisk
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 138
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Gender'
          Control = cxDBRadioGroup1
          ControlOptions.OriginalHeight = 55
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Birth Place'
          Control = cxDBTextEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avClient
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Birth Date'
          Control = cxDBDateEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup3
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 113
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item24: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP Reg. Date'
          Control = cxDBDateEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcKTPExpDate: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'KTP Exp. Date *'
          Control = cxDBDateEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'Bussiness Type'
          Control = cxDBLookupComboBox5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group1
          Index = 0
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Event Program'
          Control = cxDBLookupComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group1
          Index = 1
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup6
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Initial *'
          Control = edInitial
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup3
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl3Item22: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'TaxPayer Reg Status'
          Control = TaxStatus
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group19
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 115
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutControl3Group19
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Religion'
          Control = cxDBImageComboBox17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item37: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup10
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Inv. Category *'
          Control = cxDBImageComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group1
          Index = 2
        end
        object dxLayoutControl3Item44: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup10
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Direct SID'
          Control = cxDBTextEdit40
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup9
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem15: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup11
          AlignVert = avClient
          CaptionOptions.Text = 'Inv. Type'
          Control = cxDBImageComboBox18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 78
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup9
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutItem17: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup12
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Int. Referal'
          Control = cxDBTextEdit52
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 241
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup4
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem19: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup12
          CaptionOptions.Text = 'Ext. Referal'
          Control = cxDBTextEdit54
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 225
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem18: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP *'
          Control = cxDBMaskEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object tabHeir: TcxTabSheet
      Caption = 'Data Heir'
      ImageIndex = 10
      TabHint = 'Heir'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdDataHeir: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object gvwDataHeir: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsOAHeir
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.ViewMode = lvvmMultiColumn
          object gvwDataHeirOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem1
          end
          object gvwDataHeirSEQID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQID'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem2
          end
          object gvwDataHeirHEIR_NAME: TcxGridDBLayoutViewItem
            Caption = 'Heir Name'
            DataBinding.FieldName = 'HEIR_NAME'
            LayoutItem = gvwDataHeirLayoutItem3
          end
          object gvwDataHeirRELATION: TcxGridDBLayoutViewItem
            Caption = 'Relation'
            DataBinding.FieldName = 'RELATION'
            LayoutItem = gvwDataHeirLayoutItem4
          end
          object gvwDataHeirNO_TELP: TcxGridDBLayoutViewItem
            Caption = 'Phone No.'
            DataBinding.FieldName = 'NO_TELP'
            LayoutItem = gvwDataHeirLayoutItem5
          end
          object gvwDataHeirNIK: TcxGridDBLayoutViewItem
            Caption = 'ID Card No'
            DataBinding.FieldName = 'NIK'
            LayoutItem = gvwDataHeirLayoutItem6
          end
          object gvwDataHeirMODDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODDA'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem7
          end
          object gvwDataHeirMODUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODUI'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem8
          end
          object gvwDataHeirAPPDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPDA'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem9
          end
          object gvwDataHeirAPPUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPUI'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem10
          end
          object gvwDataHeirUNDER4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem11
          end
          object gvwDataHeirUNDER4YDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem12
          end
          object gvwDataHeirNOTES4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem13
          end
          object gvwDataHeirISDEL: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem14
          end
          object gvwDataHeirID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ID'
            Visible = False
            LayoutItem = gvwDataHeirLayoutItem15
          end
          object gvwDataHeirGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Layout'
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemIndex = 1
            ShowBorder = False
            Index = -1
          end
          object gvwDataHeirLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem3: TcxGridLayoutItem
            Parent = gvwDataHeirGroup_Root
            Index = 0
          end
          object gvwDataHeirLayoutItem4: TcxGridLayoutItem
            Parent = gvwDataHeirAutoCreatedGroup1
            AlignHorz = ahClient
            SizeOptions.Width = 252
            Index = 0
          end
          object gvwDataHeirLayoutItem5: TcxGridLayoutItem
            Parent = gvwDataHeirAutoCreatedGroup1
            AlignVert = avClient
            Index = 1
          end
          object gvwDataHeirLayoutItem6: TcxGridLayoutItem
            Parent = gvwDataHeirGroup_Root
            Index = 2
          end
          object gvwDataHeirLayoutItem7: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem8: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem9: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem10: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem11: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem12: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem13: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem14: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirLayoutItem15: TcxGridLayoutItem
            Index = -1
          end
          object gvwDataHeirAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = gvwDataHeirGroup_Root
            LayoutDirection = ldHorizontal
            Index = 1
          end
        end
        object glnDataHeir: TcxGridLevel
          GridView = gvwDataHeir
        end
      end
    end
    object tabGuarantor: TcxTabSheet
      Caption = 'Data Guarantor'
      ImageIndex = 5
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 187
          Top = 28
          DataBinding.DataField = 'GU_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 150
        end
        object cxDBImageComboBox6: TcxDBImageComboBox
          Left = 187
          Top = 55
          DataBinding.DataField = 'GU_HUB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Brother'
              ImageIndex = 0
              Value = 110
            end
            item
              Description = 'Sister'
              Value = 100
            end
            item
              Description = 'Mother'
              Value = 102
            end
            item
              Description = 'Father'
              Value = 103
            end
            item
              Description = 'Daughter'
              Value = 104
            end
            item
              Description = 'Son'
              Value = 105
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 97
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 187
          Top = 84
          DataBinding.DataField = 'GU_ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 150
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 187
          Top = 113
          DataBinding.DataField = 'GU_ID_EXP'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 150
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 187
          Top = 142
          DataBinding.DataField = 'GU_TAXPAYER_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 150
        end
        object cxDBLookupComboBox13: TcxDBLookupComboBox
          Left = 187
          Top = 169
          RepositoryItem = dmGlobal.luNationality
          DataBinding.DataField = 'GU_NATIONALITY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Code'
              FieldName = 'CODE'
            end
            item
              Caption = 'Nationality'
              FieldName = 'NATIONALITY'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 150
        end
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 187
          Top = 198
          DataBinding.DataField = 'GU_GENDER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Male'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Female'
              Value = '2'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 97
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 187
          Top = 227
          DataBinding.DataField = 'GU_POB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 150
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 187
          Top = 256
          DataBinding.DataField = 'GU_DOB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 150
        end
        object cxDBImageComboBox8: TcxDBImageComboBox
          Left = 187
          Top = 285
          DataBinding.DataField = 'GU_MATIAL_STATUS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Single'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Married'
              Value = 2
            end
            item
              Description = 'Widower'
              Value = 3
            end
            item
              Description = 'Widow'
              Value = 4
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 97
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 187
          Top = 314
          DataBinding.DataField = 'GU_EMAIL'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 150
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 187
          Top = 343
          DataBinding.DataField = 'GU_CELLPHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 150
        end
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 187
          Top = 372
          DataBinding.DataField = 'GU_FAX'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 150
        end
        object cxDBMemo1: TcxDBMemo
          Left = 187
          Top = 401
          DataBinding.DataField = 'GU_ADDRESS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Height = 40
          Width = 150
        end
        object txtGuProvince: TcxDBLookupComboBox
          Left = 187
          Top = 447
          RepositoryItem = dmGlobal.luProvince
          DataBinding.DataField = 'GU_PROVINCE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'PROVCODE'
          Properties.ListColumns = <
            item
              FieldName = 'PROVCODE'
            end
            item
              FieldName = 'PROVNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 150
        end
        object guCityCode: TcxDBLookupComboBox
          Left = 187
          Top = 476
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'GU_CITY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CITYCODE'
          Properties.ListColumns = <
            item
              FieldName = 'CITYCODE'
            end
            item
              FieldName = 'CITYNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 150
        end
        object cxDBTextEdit25: TcxDBTextEdit
          Left = 187
          Top = 505
          DataBinding.DataField = 'GU_POSTALCODE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 150
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 187
          Top = 534
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'GU_COUNTRY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              Caption = 'Code'
              FieldName = 'CODE'
            end
            item
              Caption = 'Country'
              FieldName = 'COUNTNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 17
          Width = 150
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 187
          Top = 563
          DataBinding.DataField = 'GU_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 150
        end
        object GuarantorCurrAddress: TcxDBCheckBox
          Left = 22
          Top = 592
          Caption = 'Guarantor Current Address if different from ID Address'
          DataBinding.DataField = 'CHKGUCURRADR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          OnClick = GuarantorCurrAddressClick
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 519
          Top = 217
          DataBinding.DataField = 'GU_JOBS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 150
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 519
          Top = 246
          DataBinding.DataField = 'GU_LAST_POSITION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 150
        end
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 519
          Top = 275
          DataBinding.DataField = 'GU_JOBS_COMPANY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 150
        end
        object cxDBTextEdit30: TcxDBTextEdit
          Left = 519
          Top = 304
          DataBinding.DataField = 'GU_JOBS_COMPANY_TYPE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 150
        end
        object cxDBTextEdit31: TcxDBTextEdit
          Left = 519
          Top = 333
          DataBinding.DataField = 'GU_JOBS_ADDRESS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 150
        end
        object gucaCity: TcxDBLookupComboBox
          Left = 519
          Top = 362
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'GU_JOBS_CITY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CITYNAME'
          Properties.ListColumns = <
            item
              FieldName = 'CITYNAME'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 30
          Width = 150
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 519
          Top = 391
          DataBinding.DataField = 'GU_JOBS_POSTALCODE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 150
        end
        object cxDBTextEdit33: TcxDBTextEdit
          Left = 519
          Top = 420
          DataBinding.DataField = 'GU_JOBS_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 32
          Width = 150
        end
        object cxDBTextEdit34: TcxDBTextEdit
          Left = 519
          Top = 449
          DataBinding.DataField = 'GU_JOBS_FAX'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 33
          Width = 150
        end
        object SOFWBI: TcxDBImageComboBox
          Left = 519
          Top = 478
          DataBinding.DataField = 'GU_JOBS_FUND_SOURCE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Salary'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Profit Of Business'
              Value = '2'
            end
            item
              Description = 'Profit Of Investment'
              Value = '3'
            end
            item
              Description = 'Other'
              Value = '0'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Width = 150
        end
        object cxDBTextEdit35: TcxDBTextEdit
          Left = 519
          Top = 507
          DataBinding.DataField = 'GU_JOBS_FUND_SOURCE_OT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Width = 150
        end
        object cxDBImageComboBox9: TcxDBImageComboBox
          Left = 519
          Top = 536
          DataBinding.DataField = 'GU_JOBS_ANNUAL_SALARY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = '<= Rp 100 Juta'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = '> Rp 100 Juta - <= Rp 250 Juta'
              Value = 2
            end
            item
              Description = '> Rp 250 Juta - <= Rp 500 Juta'
              Value = 3
            end
            item
              Description = '> Rp 500 Juta'
              Value = 4
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 36
          Width = 150
        end
        object cxDBTextEdit36: TcxDBTextEdit
          Left = 519
          Top = 565
          DataBinding.DataField = 'GU_MAIDEN_MOTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 37
          Width = 150
        end
        object cxDBMemo2: TcxDBMemo
          Left = 519
          Top = 28
          DataBinding.DataField = 'GU_ADDRESS2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Height = 37
          Width = 150
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 519
          Top = 71
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'GU_CITY2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CITYCODE'
          Properties.ListColumns = <
            item
              Caption = 'City Name'
              FieldName = 'CITYCODE'
            end
            item
              FieldName = 'CITYNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 21
          Width = 150
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 519
          Top = 100
          DataBinding.DataField = 'GU_POSTALCODE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 150
        end
        object cxDBLookupComboBox9: TcxDBLookupComboBox
          Left = 519
          Top = 129
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'GU_COUNTRY2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              Caption = 'Country'
              FieldName = 'COUNTNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 23
          Width = 150
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 519
          Top = 158
          DataBinding.DataField = 'GU_PHONE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 150
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object GuarantorPanel: TdxLayoutGroup
          Parent = dxLayoutGroup6
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Guarantor Personal Data'
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Guarantor Name'
          Control = cxDBTextEdit18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          Parent = GuarantorPanel
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relationship With Account Owner'
          Control = cxDBImageComboBox6
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 97
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ID Number Of Guarantor'
          Control = cxDBTextEdit19
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Valid To'
          Control = cxDBDateEdit4
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Taxpayer No. Of Guarantor'
          Control = cxDBTextEdit20
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item56: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Nationality'
          Control = cxDBLookupComboBox13
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item18: TdxLayoutItem
          Parent = GuarantorPanel
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Gender'
          Control = cxDBImageComboBox7
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 97
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Place Of Birth'
          Control = cxDBTextEdit21
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item20: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date Of Birth'
          Control = cxDBDateEdit5
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item21: TdxLayoutItem
          Parent = GuarantorPanel
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Marital Status'
          Control = cxDBImageComboBox8
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 97
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl1Item22: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'E-Mail Address'
          Control = cxDBTextEdit22
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item23: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cell Phone No.'
          Control = cxDBTextEdit23
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item24: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Control = cxDBTextEdit24
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl1Item25: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address Of Guarantor'
          Control = cxDBMemo1
          ControlOptions.OriginalHeight = 40
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Province'
          Control = txtGuProvince
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl1Item28: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Control = guCityCode
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 15
        end
        object dxLayoutControl1Item27: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Control = cxDBTextEdit25
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 16
        end
        object dxLayoutControl1Item52: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Control = cxDBLookupComboBox7
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 17
        end
        object dxLayoutControl1Item30: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Home Phone No.'
          Control = cxDBTextEdit26
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 18
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          Parent = GuarantorPanel
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Control = GuarantorCurrAddress
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 315
          ControlOptions.ShowBorder = False
          Index = 19
        end
        object GuarantorWorkInfo: TdxLayoutGroup
          Parent = dxLayoutControl7Group2
          CaptionOptions.Text = 'Guarantor Work Info && Source Of Fund'
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Item37: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation'
          Control = cxDBTextEdit27
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item38: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Last Position'
          Control = cxDBTextEdit28
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item39: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit29
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item40: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Business Sector'
          Control = cxDBTextEdit30
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item41: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Address'
          Control = cxDBTextEdit31
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item26: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Control = gucaCity
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item43: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Control = cxDBTextEdit32
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item44: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone No.'
          Control = cxDBTextEdit33
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item45: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Control = cxDBTextEdit34
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item46: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Souce Of Fund will be invested'
          Control = SOFWBI
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object OtherSourceOfFund: TdxLayoutItem
          Parent = GuarantorWorkInfo
          Visible = False
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBTextEdit35
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item48: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Income/Annual Salary'
          Control = cxDBImageComboBox9
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item50: TdxLayoutItem
          Parent = GuarantorWorkInfo
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Mother Maiden Name'
          Control = cxDBTextEdit36
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object GuarantorCurrentAddress: TdxLayoutGroup
          Parent = dxLayoutControl7Group2
          CaptionOptions.Text = 'Guarantor Current Address'
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object pnlGuarantorCurAddress: TdxLayoutItem
          Parent = GuarantorCurrentAddress
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address'
          Control = cxDBMemo2
          ControlOptions.OriginalHeight = 37
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item53: TdxLayoutItem
          Parent = GuarantorCurrentAddress
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Control = cxDBLookupComboBox8
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item34: TdxLayoutItem
          Parent = GuarantorCurrentAddress
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Control = cxDBTextEdit37
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item54: TdxLayoutItem
          Parent = GuarantorCurrentAddress
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Control = cxDBLookupComboBox9
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item36: TdxLayoutItem
          Parent = GuarantorCurrentAddress
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Home Phone No.'
          Control = cxDBTextEdit38
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          Parent = dxLayoutGroup6
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tabAddress: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 3
      object grdAddress: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object gvwAddress: TcxGridDBTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAddress
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
          object gvwAddressADDRTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'ADDRTYPE'
            RepositoryItem = dmGlobal.luAddressTypeIndividual
          end
          object gvwAddressADDRESS1: TcxGridDBColumn
            Caption = 'Address 1'
            DataBinding.FieldName = 'ADDRESS1'
          end
          object gvwAddressADDRESS2: TcxGridDBColumn
            Caption = 'Address 2'
            DataBinding.FieldName = 'ADDRESS2'
          end
          object gvwAddressADDRESS3: TcxGridDBColumn
            Caption = 'Address 3'
            DataBinding.FieldName = 'ADDRESS3'
          end
          object gvwAddressCOUNTCODE: TcxGridDBColumn
            Caption = 'Country'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
          end
          object gvwAddressPROVCODE: TcxGridDBColumn
            Caption = 'Province'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
          end
          object gvwAddressCITY: TcxGridDBColumn
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            RepositoryItem = dmGlobal.luCity
          end
          object gvwAddressZIPCODE: TcxGridDBColumn
            Caption = 'ZIP Code'
            DataBinding.FieldName = 'ZIPCODE'
          end
          object gvwAddressPHONE: TcxGridDBColumn
            DataBinding.FieldName = 'PHONE'
          end
          object gvwAddressMOBILEPHONE: TcxGridDBColumn
            DataBinding.FieldName = 'MOBILEPHONE'
          end
          object gvwAddressEMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
          end
          object gvwAddressFAX: TcxGridDBColumn
            DataBinding.FieldName = 'FAX'
          end
        end
        object glvAddress: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditing = glvAddressEditing
          OnInitEdit = glvAddressInitEdit
          DataController.DataSource = dsAddress
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.GroupExpanding = True
          OptionsCustomize.RecordExpanding = True
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.ViewMode = lvvmMultiColumn
          object glvAddressOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
            Visible = False
            LayoutItem = glvAddressLayoutItem1
          end
          object glvAddressADDRTYPE: TcxGridDBLayoutViewItem
            Caption = 'Address Type *'
            DataBinding.FieldName = 'ADDRTYPE'
            RepositoryItem = dmGlobal.luAddressTypeIndividual
            LayoutItem = glvAddressLayoutItem5
          end
          object glvAddressADDR_REF: TcxGridDBLayoutViewItem
            Caption = 'Refer Other Address'
            DataBinding.FieldName = 'ADDR_REF'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvAddressLayoutItem2
          end
          object glvAddressADDRTYPE_REF: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ADDRTYPE_REF'
            RepositoryItem = dmGlobal.luAddressTypeIndividual
            LayoutItem = glvAddressLayoutItem24
          end
          object glvAddressCOUNTCODE: TcxGridDBLayoutViewItem
            Caption = 'Country *'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            LayoutItem = glvAddressLayoutItem3
          end
          object glvAddressPROVCODE: TcxGridDBLayoutViewItem
            Caption = 'Province *'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
            LayoutItem = glvAddressLayoutItem4
          end
          object glvAddressCITY: TcxGridDBLayoutViewItem
            Caption = 'City *'
            DataBinding.FieldName = 'CITY'
            RepositoryItem = dmGlobal.luCity
            LayoutItem = glvAddressLayoutItem9
          end
          object glvAddressADDRESS1: TcxGridDBLayoutViewItem
            Caption = 'Address 1 *'
            DataBinding.FieldName = 'ADDRESS1'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            LayoutItem = glvAddressLayoutItem6
          end
          object glvAddressADDRESS2: TcxGridDBLayoutViewItem
            Caption = 'Address 2'
            DataBinding.FieldName = 'ADDRESS2'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            LayoutItem = glvAddressLayoutItem7
          end
          object glvAddressADDRESS3: TcxGridDBLayoutViewItem
            Caption = 'Address 3'
            DataBinding.FieldName = 'ADDRESS3'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            LayoutItem = glvAddressLayoutItem8
          end
          object glvAddressZIPCODE: TcxGridDBLayoutViewItem
            Caption = 'ZIP Code *'
            DataBinding.FieldName = 'ZIPCODE'
            LayoutItem = glvAddressLayoutItem10
          end
          object glvAddressPHONE: TcxGridDBLayoutViewItem
            Caption = 'Phone'
            DataBinding.FieldName = 'PHONE'
            LayoutItem = glvAddressLayoutItem11
          end
          object glvAddressMOBILEPHONE: TcxGridDBLayoutViewItem
            Caption = 'Mobile Phone'
            DataBinding.FieldName = 'MOBILEPHONE'
            LayoutItem = glvAddressLayoutItem12
          end
          object glvAddressEMAIL: TcxGridDBLayoutViewItem
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
            LayoutItem = glvAddressLayoutItem13
          end
          object glvAddressFAX: TcxGridDBLayoutViewItem
            Caption = 'Fax'
            DataBinding.FieldName = 'FAX'
            LayoutItem = glvAddressLayoutItem14
          end
          object glvAddressMODDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODDA'
            Visible = False
            LayoutItem = glvAddressLayoutItem15
          end
          object glvAddressMODUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODUI'
            Visible = False
            LayoutItem = glvAddressLayoutItem16
          end
          object glvAddressAPPDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPDA'
            Visible = False
            LayoutItem = glvAddressLayoutItem17
          end
          object glvAddressAPPUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPUI'
            Visible = False
            LayoutItem = glvAddressLayoutItem18
          end
          object glvAddressUNDER4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            LayoutItem = glvAddressLayoutItem19
          end
          object glvAddressUNDER4YDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            LayoutItem = glvAddressLayoutItem20
          end
          object glvAddressNOTES4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            LayoutItem = glvAddressLayoutItem21
          end
          object glvAddressISDEL: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            LayoutItem = glvAddressLayoutItem22
          end
          object glvAddressID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ID'
            Visible = False
            LayoutItem = glvAddressLayoutItem23
          end
          object glvAddressRTRW: TcxGridDBLayoutViewItem
            Caption = 'RT/RW'
            DataBinding.FieldName = 'RTRW'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '###/###'
            LayoutItem = glvAddressLayoutItem25
          end
          object glvAddressRESIDENCETYPE: TcxGridDBLayoutViewItem
            Caption = 'Jenis Tempat Tinggal'
            DataBinding.FieldName = 'RESIDENCETYPE'
            RepositoryItem = dmGlobal.luJenisRumah
            LayoutItem = glvAddressLayoutItem26
          end
          object glvAddressOWNERSHIPSTATUS: TcxGridDBLayoutViewItem
            Caption = 'Status Tempat Tinggal'
            DataBinding.FieldName = 'OWNERSHIPSTATUS'
            RepositoryItem = dmGlobal.luJenisKepemilikan
            LayoutItem = glvAddressLayoutItem27
          end
          object glvAddressRESIDENCETYPE_OTHER: TcxGridDBLayoutViewItem
            Caption = 'Lainnya'
            DataBinding.FieldName = 'RESIDENCETYPE_OTHER'
            LayoutItem = glvAddressLayoutItem28
          end
          object glvAddressOWNERSHIPSTATUS_OTHER: TcxGridDBLayoutViewItem
            Caption = 'Lainnya'
            DataBinding.FieldName = 'OWNERSHIPSTATUS_OTHER'
            LayoutItem = glvAddressLayoutItem29
          end
          object dxLayoutGroup10: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAddressLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 6
          end
          object glvAddressLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 7
          end
          object glvAddressLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem6: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAddressLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvAddressLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvAddressLayoutItem9: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            Index = 8
          end
          object glvAddressLayoutItem10: TcxGridLayoutItem
            Parent = glvAddressGroup7
            AlignHorz = ahLeft
            SizeOptions.Width = 199
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem11: TcxGridLayoutItem
            Parent = glvAddressGroup6
            AlignHorz = ahClient
            SizeOptions.Width = 251
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem12: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 11
          end
          object glvAddressLayoutItem13: TcxGridLayoutItem
            Parent = glvAddressGroup7
            AlignHorz = ahLeft
            AlignVert = avClient
            SizeOptions.Width = 204
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressLayoutItem14: TcxGridLayoutItem
            Parent = glvAddressGroup6
            AlignHorz = ahLeft
            AlignVert = avClient
            SizeOptions.Width = 153
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressLayoutItem15: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem16: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem17: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem18: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem19: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem20: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem21: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem22: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem23: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressGroup3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object glvAddressGroup4: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object glvAddressLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem2: TcxGridLayoutItem
            Parent = glvAddressGroup1
            AlignHorz = ahLeft
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            SizeOptions.Width = 108
            Index = 0
          end
          object glvAddressLayoutItem24: TcxGridLayoutItem
            Parent = glvAddressGroup1
            AlignHorz = ahLeft
            SizeOptions.Width = 207
            CaptionOptions.Visible = False
            Index = 1
          end
          object glvAddressLayoutItem25: TcxGridLayoutItem
            Parent = dxLayoutGroup10
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.Width = 180
            CaptionOptions.AlignHorz = taRightJustify
            Index = 5
          end
          object glvAddressLayoutItem26: TcxGridLayoutItem
            Parent = glvAddressGroup8
            AlignHorz = ahClient
            AlignVert = avTop
            SizeOptions.Width = 139
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem27: TcxGridLayoutItem
            Parent = glvAddressGroup10
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem28: TcxGridLayoutItem
            Parent = glvAddressGroup8
            AlignHorz = ahLeft
            AlignVert = avClient
            SizeOptions.Width = 193
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressLayoutItem29: TcxGridLayoutItem
            Parent = glvAddressGroup10
            AlignHorz = ahClient
            AlignVert = avClient
            SizeOptions.Width = 178
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressGroup2: TdxLayoutAutoCreatedGroup
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object glvAddressGroup5: TdxLayoutAutoCreatedGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object TdxLayoutAutoCreatedGroup
            Index = -1
          end
          object glvAddressGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup10
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object glvAddressGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup10
            LayoutDirection = ldHorizontal
            Index = 10
          end
          object glvAddressGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup10
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 12
          end
          object glvAddressGroup10: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup10
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 13
          end
          object glvAddressGroup7: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup10
            LayoutDirection = ldHorizontal
            Index = 9
          end
        end
        object grdAddressLevel1: TcxGridLevel
          GridView = glvAddress
        end
      end
    end
    object tabContact: TcxTabSheet
      Caption = 'Contact'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object glvContact: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditing = glvContactEditing
          OnInitEdit = glvContactInitEdit
          DataController.DataSource = dsContact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.RecordExpanding = True
          OptionsData.Appending = True
          OptionsView.ViewMode = lvvmMultiColumn
          object glvContactOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
            Visible = False
            LayoutItem = cxGridLayoutItem1
          end
          object glvContactSEQNO: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQNO'
            Visible = False
            LayoutItem = glvContactLayoutItem2
          end
          object glvContactCONTNAME: TcxGridDBLayoutViewItem
            Caption = 'Contact Name *'
            DataBinding.FieldName = 'CONTNAME'
            LayoutItem = glvContactLayoutItem3
          end
          object glvContactADDR_REF: TcxGridDBLayoutViewItem
            Caption = 'Refer to Client Address'
            DataBinding.FieldName = 'ADDR_REF'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem4
          end
          object glvContactADDRTYPE_REF: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ADDRTYPE_REF'
            RepositoryItem = dmGlobal.luAddressTypeIndividual
            Visible = False
            LayoutItem = glvContactLayoutItem5
          end
          object glvContactCOUNTCODE: TcxGridDBLayoutViewItem
            Caption = 'Country'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            Visible = False
            LayoutItem = glvContactLayoutItem6
          end
          object glvContactPROVCODE: TcxGridDBLayoutViewItem
            Caption = 'Province'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
            Visible = False
            LayoutItem = glvContactLayoutItem7
          end
          object glvContactCITY: TcxGridDBLayoutViewItem
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            RepositoryItem = dmGlobal.luCity
            Visible = False
            LayoutItem = glvContactLayoutItem8
          end
          object glvContactADDRESS1: TcxGridDBLayoutViewItem
            Caption = 'Address 1'
            DataBinding.FieldName = 'ADDRESS1'
            Visible = False
            LayoutItem = glvContactLayoutItem9
          end
          object glvContactADDRESS2: TcxGridDBLayoutViewItem
            Caption = 'Address 2'
            DataBinding.FieldName = 'ADDRESS2'
            Visible = False
            LayoutItem = glvContactLayoutItem10
          end
          object glvContactADDRESS3: TcxGridDBLayoutViewItem
            Caption = 'Address 3'
            DataBinding.FieldName = 'ADDRESS3'
            Visible = False
            LayoutItem = glvContactLayoutItem11
          end
          object glvContactZIPCODE: TcxGridDBLayoutViewItem
            Caption = 'ZIP Code'
            DataBinding.FieldName = 'ZIPCODE'
            Visible = False
            LayoutItem = glvContactLayoutItem12
          end
          object glvContactPHONE: TcxGridDBLayoutViewItem
            Caption = 'Phone'
            DataBinding.FieldName = 'PHONE'
            LayoutItem = glvContactLayoutItem13
          end
          object glvContactMOBILEPHONE: TcxGridDBLayoutViewItem
            Caption = 'Mobile Phone *'
            DataBinding.FieldName = 'MOBILEPHONE'
            LayoutItem = glvContactLayoutItem14
          end
          object glvContactEMAIL: TcxGridDBLayoutViewItem
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
            LayoutItem = glvContactLayoutItem15
          end
          object glvContactFAX: TcxGridDBLayoutViewItem
            Caption = 'Fax'
            DataBinding.FieldName = 'FAX'
            LayoutItem = glvContactLayoutItem16
          end
          object glvContactIDCARDTYPE: TcxGridDBLayoutViewItem
            Caption = 'ID Type'
            DataBinding.FieldName = 'IDCARDTYPE'
            RepositoryItem = dmGlobal.luIDType
            LayoutItem = glvContactLayoutItem17
          end
          object glvContactIDCARDNO: TcxGridDBLayoutViewItem
            Caption = 'No.'
            DataBinding.FieldName = 'IDCARDNO'
            LayoutItem = glvContactLayoutItem18
          end
          object glvContactIDCARDEXPIRE: TcxGridDBLayoutViewItem
            Caption = 'Expired Date'
            DataBinding.FieldName = 'IDCARDEXPIRE'
            LayoutItem = glvContactLayoutItem19
          end
          object glvContactSENDBYEMAIL: TcxGridDBLayoutViewItem
            Caption = 'Email Notification'
            DataBinding.FieldName = 'SENDBYEMAIL'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem20
          end
          object glvContactSENDBYFAX: TcxGridDBLayoutViewItem
            Caption = 'Fax Notification'
            DataBinding.FieldName = 'SENDBYFAX'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem21
          end
          object glvContactSENDBYSMS: TcxGridDBLayoutViewItem
            Caption = 'SMS Notification'
            DataBinding.FieldName = 'SENDBYSMS'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem22
          end
          object glvContactSENDBYPOSTMAIL: TcxGridDBLayoutViewItem
            Caption = 'Post Mail Notification'
            DataBinding.FieldName = 'SENDBYPOSTMAIL'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem23
          end
          object glvContactNOTIF_TC: TcxGridDBLayoutViewItem
            Caption = 'Trade Confirmation'#39
            DataBinding.FieldName = 'NOTIF_TC'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem24
          end
          object glvContactNOTIF_SOA: TcxGridDBLayoutViewItem
            Caption = 'Statement Of Account'
            DataBinding.FieldName = 'NOTIF_SOA'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem25
          end
          object glvContactNOTIF_CORPACT: TcxGridDBLayoutViewItem
            Caption = 'Corporate Action'
            DataBinding.FieldName = 'NOTIF_CORPACT'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem26
          end
          object glvContactNOTIF_IDENTITY: TcxGridDBLayoutViewItem
            Caption = 'Client Identity'
            DataBinding.FieldName = 'NOTIF_IDENTITY'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            LayoutItem = glvContactLayoutItem27
          end
          object glvContactMODDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODDA'
            Visible = False
            LayoutItem = glvContactLayoutItem28
          end
          object glvContactMODUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODUI'
            Visible = False
            LayoutItem = glvContactLayoutItem29
          end
          object glvContactAPPDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPDA'
            Visible = False
            LayoutItem = glvContactLayoutItem30
          end
          object glvContactAPPUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPUI'
            Visible = False
            LayoutItem = glvContactLayoutItem31
          end
          object glvContactUNDER4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            LayoutItem = glvContactLayoutItem32
          end
          object glvContactUNDER4YDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            LayoutItem = glvContactLayoutItem33
          end
          object glvContactNOTES4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            LayoutItem = glvContactLayoutItem34
          end
          object glvContactISDEL: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            LayoutItem = glvContactLayoutItem35
          end
          object glvContactID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ID'
            Visible = False
            LayoutItem = glvContactLayoutItem36
          end
          object dxLayoutGroup14: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvContactLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem4: TcxGridLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem5: TcxGridLayoutItem
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Visible = False
            Index = -1
          end
          object glvContactLayoutItem6: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem7: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem8: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem9: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem10: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem11: TcxGridLayoutItem
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem12: TcxGridLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem13: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            AlignHorz = ahLeft
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvContactLayoutItem14: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvContactLayoutItem15: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem16: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvContactLayoutItem17: TcxGridLayoutItem
            Parent = glvContactGroup2
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem18: TcxGridLayoutItem
            Parent = glvContactGroup2
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem19: TcxGridLayoutItem
            Parent = glvContactGroup2
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvContactLayoutItem20: TcxGridLayoutItem
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem21: TcxGridLayoutItem
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem22: TcxGridLayoutItem
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem23: TcxGridLayoutItem
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem24: TcxGridLayoutItem
            SizeOptions.Width = 119
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem25: TcxGridLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem26: TcxGridLayoutItem
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem27: TcxGridLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            Index = -1
          end
          object glvContactLayoutItem28: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem29: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem30: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem31: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem32: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem33: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem34: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem35: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem36: TcxGridLayoutItem
            Index = -1
          end
          object glvContactGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object cxGridLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = glvContact
        end
      end
    end
    object tabAuthPerson: TcxTabSheet
      Caption = 'Authorized Person'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdAuth: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object gvwAuth: TcxGridDBBandedTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAuth
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
              Caption = 'Authorized Person'
            end>
          object gvwAuthAUTH_PERSON_FIRSTNAME: TcxGridDBBandedColumn
            Caption = 'First Name'
            DataBinding.FieldName = 'AUTH_PERSON_FIRSTNAME'
            Width = 142
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_MIDDLENAME: TcxGridDBBandedColumn
            Caption = 'Middle Name'
            DataBinding.FieldName = 'AUTH_PERSON_MIDDLENAME'
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_LASTNAME: TcxGridDBBandedColumn
            Caption = 'Last Name'
            DataBinding.FieldName = 'AUTH_PERSON_LASTNAME'
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_POSITION: TcxGridDBBandedColumn
            Caption = 'Position'
            DataBinding.FieldName = 'AUTH_PERSON_POSITION'
            Width = 134
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_KTP: TcxGridDBBandedColumn
            Caption = 'KTP'
            DataBinding.FieldName = 'AUTH_PERSON_KTP'
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_KTP_EXPDATE: TcxGridDBBandedColumn
            Caption = 'KTP Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_KTP_EXPDATE'
            Width = 153
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_NPWP: TcxGridDBBandedColumn
            Caption = 'NPWP'
            DataBinding.FieldName = 'AUTH_PERSON_NPWP'
            Width = 114
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_NPWP_REGDATE: TcxGridDBBandedColumn
            Caption = 'NPWP Reg. Date'
            DataBinding.FieldName = 'AUTH_PERSON_NPWP_REGDATE'
            Width = 166
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_PASSPORT: TcxGridDBBandedColumn
            Caption = 'Passport'
            DataBinding.FieldName = 'AUTH_PERSON_PASSPORT'
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_PASSPORT_EXPDATE: TcxGridDBBandedColumn
            Caption = 'Passport Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_PASSPORT_EXPDATE'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_KITAS: TcxGridDBBandedColumn
            Caption = 'KITAS'
            DataBinding.FieldName = 'AUTH_PERSON_KITAS'
            Width = 114
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PERSON_KITAS_EXPDATE: TcxGridDBBandedColumn
            Caption = 'KITAS Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_KITAS_EXPDATE'
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_SEX: TcxGridDBBandedColumn
            Caption = 'Sex'
            DataBinding.FieldName = 'AUTH_SEX'
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PAYCOLL: TcxGridDBBandedColumn
            Caption = 'PAYCOLL'
            DataBinding.FieldName = 'AUTH_PAYCOLL'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_STOCKCOLL: TcxGridDBBandedColumn
            Caption = 'STOCKCOLL'
            DataBinding.FieldName = 'AUTH_STOCKCOLL'
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_PLACEORDER: TcxGridDBBandedColumn
            Caption = 'PLACEORDER'
            DataBinding.FieldName = 'AUTH_PLACEORDER'
            Width = 105
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwAuthAUTH_NOTES: TcxGridDBBandedColumn
            Caption = 'NOTES'
            DataBinding.FieldName = 'AUTH_NOTES'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
        end
        object glvAuth: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAuth
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.ViewMode = lvvmMultiColumn
          object glvAuthOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
            Visible = False
            LayoutItem = cxGridLayoutItem2
          end
          object glvAuthSEQNO: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQNO'
            Visible = False
            LayoutItem = glvAuthLayoutItem2
          end
          object glvAuthAUTH_PERSON_FIRSTNAME: TcxGridDBLayoutViewItem
            Caption = 'First Name'
            DataBinding.FieldName = 'AUTH_PERSON_FIRSTNAME'
            LayoutItem = glvAuthLayoutItem3
          end
          object glvAuthAUTH_PERSON_MIDDLENAME: TcxGridDBLayoutViewItem
            Caption = 'Middle Name'
            DataBinding.FieldName = 'AUTH_PERSON_MIDDLENAME'
            LayoutItem = glvAuthLayoutItem4
          end
          object glvAuthAUTH_PERSON_LASTNAME: TcxGridDBLayoutViewItem
            Caption = 'Last Name'
            DataBinding.FieldName = 'AUTH_PERSON_LASTNAME'
            LayoutItem = glvAuthLayoutItem5
          end
          object glvAuthAUTH_PERSON_POSITION: TcxGridDBLayoutViewItem
            Caption = 'Position'
            DataBinding.FieldName = 'AUTH_PERSON_POSITION'
            LayoutItem = glvAuthLayoutItem6
          end
          object glvAuthAUTH_PERSON_KTP: TcxGridDBLayoutViewItem
            Caption = 'KTP'
            DataBinding.FieldName = 'AUTH_PERSON_KTP'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '9999999999999999'
            LayoutItem = glvAuthLayoutItem7
          end
          object glvAuthAUTH_PERSON_KTP_EXPDATE: TcxGridDBLayoutViewItem
            Caption = 'KTP Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_KTP_EXPDATE'
            LayoutItem = glvAuthLayoutItem8
          end
          object glvAuthAUTH_PERSON_NPWP: TcxGridDBLayoutViewItem
            Caption = 'NPWP'
            DataBinding.FieldName = 'AUTH_PERSON_NPWP'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '9999999999999999'
            LayoutItem = glvAuthLayoutItem9
          end
          object glvAuthAUTH_PERSON_NPWP_REGDATE: TcxGridDBLayoutViewItem
            Caption = 'NPWP Reg. Date'
            DataBinding.FieldName = 'AUTH_PERSON_NPWP_REGDATE'
            LayoutItem = glvAuthLayoutItem10
          end
          object glvAuthAUTH_PERSON_PASSPORT: TcxGridDBLayoutViewItem
            Caption = 'Passport'
            DataBinding.FieldName = 'AUTH_PERSON_PASSPORT'
            LayoutItem = glvAuthLayoutItem11
          end
          object glvAuthAUTH_PERSON_PASSPORT_EXPDATE: TcxGridDBLayoutViewItem
            Caption = 'Passport Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_PASSPORT_EXPDATE'
            LayoutItem = glvAuthLayoutItem12
          end
          object glvAuthAUTH_PERSON_KITAS: TcxGridDBLayoutViewItem
            Caption = 'KITAS'
            DataBinding.FieldName = 'AUTH_PERSON_KITAS'
            LayoutItem = glvAuthLayoutItem13
          end
          object glvAuthAUTH_PERSON_KITAS_EXPDATE: TcxGridDBLayoutViewItem
            Caption = 'KITAS Exp. Date'
            DataBinding.FieldName = 'AUTH_PERSON_KITAS_EXPDATE'
            LayoutItem = glvAuthLayoutItem14
          end
          object glvAuthAUTH_SEX: TcxGridDBLayoutViewItem
            Caption = 'Sex'
            DataBinding.FieldName = 'AUTH_SEX'
            RepositoryItem = dmGlobal.rgSex
            LayoutItem = glvAuthLayoutItem15
          end
          object glvAuthAUTH_PAYCOLL: TcxGridDBLayoutViewItem
            Caption = 'Pay Coll'
            DataBinding.FieldName = 'AUTH_PAYCOLL'
            LayoutItem = glvAuthLayoutItem16
          end
          object glvAuthAUTH_STOCKCOLL: TcxGridDBLayoutViewItem
            Caption = 'Stock Coll'
            DataBinding.FieldName = 'AUTH_STOCKCOLL'
            LayoutItem = glvAuthLayoutItem17
          end
          object glvAuthAUTH_PLACEORDER: TcxGridDBLayoutViewItem
            Caption = 'Place Order'
            DataBinding.FieldName = 'AUTH_PLACEORDER'
            LayoutItem = glvAuthLayoutItem18
          end
          object glvAuthAUTH_NOTES: TcxGridDBLayoutViewItem
            Caption = 'Notes'
            DataBinding.FieldName = 'AUTH_NOTES'
            LayoutItem = glvAuthLayoutItem19
          end
          object glvAuthMODDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODDA'
            Visible = False
            LayoutItem = glvAuthLayoutItem20
          end
          object glvAuthMODUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODUI'
            Visible = False
            LayoutItem = glvAuthLayoutItem21
          end
          object glvAuthAPPDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPDA'
            Visible = False
            LayoutItem = glvAuthLayoutItem22
          end
          object glvAuthAPPUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPUI'
            Visible = False
            LayoutItem = glvAuthLayoutItem23
          end
          object glvAuthUNDER4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            LayoutItem = glvAuthLayoutItem24
          end
          object glvAuthUNDER4YDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            LayoutItem = glvAuthLayoutItem25
          end
          object glvAuthNOTES4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            LayoutItem = glvAuthLayoutItem26
          end
          object glvAuthISDEL: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            LayoutItem = glvAuthLayoutItem27
          end
          object glvAuthID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ID'
            Visible = False
            LayoutItem = glvAuthLayoutItem28
          end
          object glvAuthSTREET: TcxGridDBLayoutViewItem
            Caption = 'Street'
            DataBinding.FieldName = 'STREET'
            PropertiesClassName = 'TcxTextEditProperties'
            LayoutItem = glvAuthLayoutItem1
          end
          object glvAuthCITIZENSHIP: TcxGridDBLayoutViewItem
            Caption = 'Citizenship'
            DataBinding.FieldName = 'CITIZENSHIP'
            RepositoryItem = dmGlobal.luCountry
            LayoutItem = glvAuthLayoutItem29
          end
          object glvAuthCELLPHONE: TcxGridDBLayoutViewItem
            Caption = 'Cell Phone'
            DataBinding.FieldName = 'CELLPHONE'
            LayoutItem = glvAuthLayoutItem30
          end
          object glvAuthPHONE: TcxGridDBLayoutViewItem
            Caption = 'Home Phone'
            DataBinding.FieldName = 'PHONE'
            LayoutItem = glvAuthLayoutItem31
          end
          object glvAuthFAX: TcxGridDBLayoutViewItem
            Caption = 'Fax'
            DataBinding.FieldName = 'FAX'
            LayoutItem = glvAuthLayoutItem32
          end
          object glvAuthEMAIL: TcxGridDBLayoutViewItem
            Caption = 'EMail'
            DataBinding.FieldName = 'EMAIL'
            LayoutItem = glvAuthLayoutItem33
          end
          object glvAuthRELATION: TcxGridDBLayoutViewItem
            Caption = 'Relation'
            DataBinding.FieldName = 'RELATION'
            LayoutItem = glvAuthLayoutItem34
          end
          object dxLayoutGroup13: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAuthLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAuthLayoutItem6: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvAuthLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup16
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup16
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem9: TcxGridLayoutItem
            Parent = glvAuthGroup2
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem10: TcxGridLayoutItem
            Parent = glvAuthGroup2
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem11: TcxGridLayoutItem
            Parent = glvAuthGroup9
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem12: TcxGridLayoutItem
            Parent = glvAuthGroup8
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem13: TcxGridLayoutItem
            Parent = glvAuthGroup9
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem14: TcxGridLayoutItem
            Parent = glvAuthGroup8
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem15: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 11
          end
          object glvAuthLayoutItem16: TcxGridLayoutItem
            Parent = glvAuthGroup5
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem17: TcxGridLayoutItem
            Parent = glvAuthGroup5
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem18: TcxGridLayoutItem
            Parent = glvAuthGroup5
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAuthLayoutItem19: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 13
          end
          object glvAuthLayoutItem20: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem21: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem22: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem23: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem24: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem25: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem26: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem27: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem28: TcxGridLayoutItem
            Index = -1
          end
          object dxLayoutGroup16: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object glvAuthGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object glvAuthGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 8
          end
          object glvAuthGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object glvAuthGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 12
          end
          object cxGridLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem1: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvAuthLayoutItem29: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 5
          end
          object glvAuthLayoutItem30: TcxGridLayoutItem
            Parent = glvAuthGroup1
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem31: TcxGridLayoutItem
            Parent = glvAuthGroup6
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem32: TcxGridLayoutItem
            Parent = glvAuthGroup7
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem33: TcxGridLayoutItem
            Parent = glvAuthGroup6
            SizeOptions.Width = 239
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem34: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 10
          end
          object glvAuthGroup1: TdxLayoutAutoCreatedGroup
            Parent = glvAuthGroup7
            AlignVert = avClient
            Index = 0
          end
          object glvAuthGroup6: TdxLayoutAutoCreatedGroup
            Parent = glvAuthGroup4
            Index = 1
          end
          object glvAuthGroup7: TdxLayoutAutoCreatedGroup
            Parent = glvAuthGroup4
            Index = 0
          end
          object glvAuthGroup8: TdxLayoutAutoCreatedGroup
            Parent = glvAuthGroup3
            Index = 1
          end
          object glvAuthGroup9: TdxLayoutAutoCreatedGroup
            Parent = glvAuthGroup3
            Index = 0
          end
        end
        object grdAuthLevel1: TcxGridLevel
          GridView = glvAuth
        end
      end
    end
    object tabInvestInfo: TcxTabSheet
      Caption = 'Investment && Income Information'
      ImageIndex = 1
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 406
          Top = 171
          RepositoryItem = dmGlobal.rgAnnualIncome
          Caption = 'Income per annum*'
          DataBinding.DataField = 'ANUALINCOME'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 8
          Height = 155
          Width = 250
        end
        object cxDBRadioGroup3: TcxDBRadioGroup
          Left = 406
          Top = 10
          RepositoryItem = dmGlobal.rgEstDailyTrading
          Caption = 'Estimated Daily Trading Value'
          DataBinding.DataField = 'ESTDAILYTRADE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 7
          Height = 155
          Width = 250
        end
        object cxDBCheckGroup1: TcxDBCheckGroup
          Left = 10
          Top = 10
          Caption = 'Source of Funds *'
          ParentBackground = False
          ParentColor = False
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <
            item
              Caption = 'Others'
              Tag = 1
            end
            item
              Caption = 'Salary'
              Tag = 2
            end
            item
              Caption = 'Business Profit'
              Tag = 3
            end
            item
              Caption = 'Interest'
              Tag = 4
            end
            item
              Caption = 'Heritage'
              Tag = 5
            end
            item
              Caption = 'Grant from parents or kids'
              Tag = 6
            end
            item
              Caption = 'Grant from spouse'
              Tag = 7
            end
            item
              Caption = 'Pension funds'
              Tag = 8
            end
            item
              Caption = 'Lottery'
              Tag = 9
            end
            item
              Caption = 'Proceed from investment'
              Tag = 10
            end
            item
              Caption = 'Deposit'
              Tag = 11
            end
            item
              Caption = 'Capital'
              Tag = 12
            end
            item
              Caption = 'Loan'
              Tag = 13
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 0
          DataBinding.DataField = 'SOURCEFUND'
          DataBinding.DataSource = dsSubject
          Height = 367
          Width = 185
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 22
          Top = 401
          DataBinding.DataField = 'SOURCEFUNDKSEI'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 161
        end
        object edSourceFundOther: TcxDBTextEdit
          Left = 22
          Top = 458
          DataBinding.DataField = 'SOURCEFUNDOTHERS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 161
        end
        object cxDBCheckGroup2: TcxDBCheckGroup
          Left = 201
          Top = 10
          Caption = 'Investment Objectives *'
          ParentBackground = False
          ParentColor = False
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <
            item
              Caption = 'Others'
            end
            item
              Caption = 'Price Appreciation'
            end
            item
              Caption = 'Long Term Investment'
            end
            item
              Caption = 'Speculation'
            end
            item
              Caption = 'Income'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          DataBinding.DataField = 'INVESTOBJECTIVE'
          DataBinding.DataSource = dsSubject
          Height = 149
          Width = 199
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 213
          Top = 183
          DataBinding.DataField = 'INVESTOBJECTIVEKSEI'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 175
        end
        object cbAssetOwner: TcxDBImageComboBox
          Left = 277
          Top = 348
          RepositoryItem = dmGlobal.luClientAssetOwner
          DataBinding.DataField = 'ASSET_OWNER'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 123
        end
        object cxDBCheckGroup3: TcxDBCheckGroup
          Left = 201
          Top = 222
          Caption = 'Investment Experiences'
          Properties.EditValueFormat = cvfStatesString
          Properties.Items = <
            item
              Caption = 'Equity'
            end
            item
              Caption = 'Fixed Income'
            end
            item
              Caption = 'Reksa Dana'
            end
            item
              Caption = 'Conventional'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          DataBinding.DataField = 'INVESTEXP'
          DataBinding.DataSource = dsSubject
          Height = 120
          Width = 199
        end
        object dxLayoutGroup8: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutGroup9
          CaptionOptions.Visible = False
          Control = cxDBRadioGroup2
          ControlOptions.OriginalHeight = 155
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutGroup9
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Control = cxDBRadioGroup3
          ControlOptions.OriginalHeight = 155
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'cxDBCheckGroup1'
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup1
          ControlOptions.OriginalHeight = 367
          ControlOptions.OriginalWidth = 185
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          Parent = dxLayoutControl4Group9
          CaptionOptions.Text = 'Source of funds'
          CaptionOptions.Visible = False
          Control = cxDBTextEdit9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 161
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          Parent = lcSourceFundOther
          CaptionOptions.Text = 'Source fund Other'
          CaptionOptions.Visible = False
          Control = edSourceFundOther
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 161
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup9: TdxLayoutGroup
          Parent = dxLayoutGroup8
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group12: TdxLayoutGroup
          Parent = dxLayoutGroup8
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutGroup8
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group12
          CaptionOptions.Text = 'cxDBCheckGroup2'
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup2
          ControlOptions.OriginalHeight = 149
          ControlOptions.OriginalWidth = 190
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcSourceFundOther: TdxLayoutGroup
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Source Fund Other'
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl4Group9: TdxLayoutGroup
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Source of Funds KSEI Format'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'cxDBTextEdit10'
          CaptionOptions.Visible = False
          Control = cxDBTextEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          Parent = dxLayoutControl4Group12
          CaptionOptions.Text = 'Investment Objectives KSEI Format'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item11: TdxLayoutItem
          Parent = dxLayoutControl4Group12
          CaptionOptions.Text = 'Asset Owner *'
          Control = cbAssetOwner
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 123
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group12
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup3
          ControlOptions.OriginalHeight = 120
          ControlOptions.OriginalWidth = 190
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object tabBankCustody: TcxTabSheet
      Caption = 'Bank | Custody'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 327
        Width = 984
        Height = 231
        Align = alClient
        TabOrder = 0
        object gvwBank: TcxGridDBBandedTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsBank
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Private Bank Account *'
            end>
          object gvwBankOAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBankSEQID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBankCCYCODE: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBankBANKCODE: TcxGridDBBandedColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
            RepositoryItem = dmGlobal.luBank
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBankBANKACCNO: TcxGridDBBandedColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
            Width = 132
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBankBANKACCNAME: TcxGridDBBandedColumn
            Caption = 'Bank Account Name'
            DataBinding.FieldName = 'BANKACCNAME'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBankBANKBRANCH: TcxGridDBBandedColumn
            Caption = 'Bank Branch'
            DataBinding.FieldName = 'BANKBRANCH'
            Width = 163
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwBankMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBankMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwBankAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwBankAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwBankUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwBankUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwBankNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwBankISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwBankID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwBankDEFAULT_BANK: TcxGridDBBandedColumn
            Caption = 'Defaut'
            DataBinding.FieldName = 'DEFAULT_BANK'
            RepositoryItem = dmGlobal.chkStandard
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwBankPAYMENT_BANK: TcxGridDBBandedColumn
            Caption = 'Payment Bank'
            DataBinding.FieldName = 'PAYMENT_BANK'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwBank
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 558
        Width = 984
        Height = 137
        Align = alBottom
        TabOrder = 1
        object gvwCustody: TcxGridDBBandedTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCustody
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Account Custody'
            end>
          object gvwCustodyOAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCustodySEQID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCustodyCUSTODYCODE: TcxGridDBBandedColumn
            Caption = 'Custody Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            RepositoryItem = dmGlobal.luCustody
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCustodyCUSTODYACCNO: TcxGridDBBandedColumn
            Caption = 'Custody Account No.'
            DataBinding.FieldName = 'CUSTODYACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCustodyCUSTODYACCNAME: TcxGridDBBandedColumn
            Caption = 'Custody Account Name'
            DataBinding.FieldName = 'CUSTODYACCNAME'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCustodyCUSTODYBRANCH: TcxGridDBBandedColumn
            Caption = 'Custody Branch'
            DataBinding.FieldName = 'CUSTODYBRANCH'
            Width = 168
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCustodyMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCustodyMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCustodyAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwCustodyAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwCustodyUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwCustodyUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwCustodyNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwCustodyISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwCustodyID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwCustodyDEFAULT_CUSTODY: TcxGridDBBandedColumn
            Caption = 'Default'
            DataBinding.FieldName = 'DEFAULT_CUSTODY'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwCustody
        end
      end
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 984
        Height = 327
        Align = alTop
        TabOrder = 2
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 10
          Top = 10
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Request New KSEI Account'
          DataBinding.DataField = 'REQUEST_SUBREK'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
        end
        object cxGrid4: TcxGrid
          Left = 10
          Top = 175
          Width = 959
          Height = 138
          TabOrder = 6
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
            ScrollbarAnnotations.CustomAnnotations = <>
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
                Caption = 'New RDN Bank Account Request'
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
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwRDNRequestBANKCODE: TcxGridDBBandedColumn
              Caption = 'Bank Code'
              DataBinding.FieldName = 'BANKCODE'
              RepositoryItem = dmGlobal.luBankRDN
              Width = 140
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwRDNRequestBANKACCNO: TcxGridDBBandedColumn
              Caption = 'Bank Account No.'
              DataBinding.FieldName = 'BANKACCNO'
              Width = 148
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwRDNRequestBANKACCNAME: TcxGridDBBandedColumn
              Caption = 'Bank Account Name'
              DataBinding.FieldName = 'BANKACCNAME'
              Width = 242
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwRDNRequestBANKBRANCH: TcxGridDBBandedColumn
              Caption = 'Branch'
              DataBinding.FieldName = 'BANKBRANCH'
              Width = 261
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
          object cxGridLevel4: TcxGridLevel
            GridView = gvwRDNRequest
          end
        end
        object cxGrid5: TcxGrid
          Left = 10
          Top = 37
          Width = 959
          Height = 132
          TabOrder = 5
          object gvwKSEIRequest: TcxGridDBBandedTableView
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
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsKSEI
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
                Caption = 'New KSEI Account Request'
              end>
            object gvwKSEIRequestOAID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OAID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwKSEIRequestKSEI_ACC_TYPE: TcxGridDBBandedColumn
              Caption = 'Subrek Type'
              DataBinding.FieldName = 'KSEI_ACC_TYPE'
              RepositoryItem = dmGlobal.luKSEIAccType
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwKSEIRequestKSEI_MEMBER_CODE: TcxGridDBBandedColumn
              Caption = 'Member Code'
              DataBinding.FieldName = 'KSEI_MEMBER_CODE'
              Visible = False
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwKSEIRequestKSEI_CLIENT_CODE: TcxGridDBBandedColumn
              Caption = 'Client Code'
              DataBinding.FieldName = 'KSEI_CLIENT_CODE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwKSEIRequestKSEI_LAST_CODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KSEI_LAST_CODE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwKSEIRequestKSEI_ACC_NO: TcxGridDBBandedColumn
              Caption = 'KSEI Account No.'
              DataBinding.FieldName = 'KSEI_ACC_NO'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwKSEIRequestSID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SID'
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwKSEIRequestDONEDATE: TcxGridDBBandedColumn
              Caption = 'Done Date'
              DataBinding.FieldName = 'DONEDATE'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwKSEIRequestMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwKSEIRequestMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwKSEIRequestAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwKSEIRequestAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwKSEIRequestUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwKSEIRequestUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwKSEIRequestNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwKSEIRequestISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object gvwKSEIRequestID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = gvwKSEIRequest
          end
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 254
          Top = 10
          DataBinding.DataField = 'KSEI_CLIENT_CODE'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 80
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 382
          Top = 10
          DataBinding.DataField = 'SIDNO'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 120
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 609
          Top = 10
          RepositoryItem = dmGlobal.luBankRDN
          DataBinding.DataField = 'PREFFERED_BANK_RDN'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 120
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 808
          Top = 10
          DataBinding.DataField = 'PAYMENT_BANK'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 120
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          Visible = False
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Control = cxDBCheckBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 153
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          Control = cxGrid4
          ControlOptions.OriginalHeight = 138
          ControlOptions.OriginalWidth = 959
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          Control = cxGrid5
          ControlOptions.OriginalHeight = 132
          ControlOptions.OriginalWidth = 943
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item4: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          CaptionOptions.Text = 'KSEI Client Code'
          Control = cxDBTextEdit14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item5: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          CaptionOptions.Text = 'SID No.'
          Control = cxDBTextEdit17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          CaptionOptions.Text = 'Preffered Bank RDN'
          Control = cxDBLookupComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutControl5Group2
          Visible = False
          CaptionOptions.Text = 'Payment Bank'
          Control = cxDBLookupComboBox10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
    object tabDocument: TcxTabSheet
      Caption = 'Document'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object gvwDocument: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsDocument
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
          object gvwDocumentDOCTYPE: TcxGridDBColumn
            Caption = 'Type'
            DataBinding.FieldName = 'DOCTYPE'
            RepositoryItem = dmGlobal.luDocType
          end
          object gvwDocumentDOCDESC: TcxGridDBColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DOCDESC'
            Width = 188
          end
          object gvwDocumentISEXPIRE: TcxGridDBColumn
            Caption = 'Expire'
            DataBinding.FieldName = 'ISEXPIRE'
            RepositoryItem = dmGlobal.chkStandard
            Width = 36
          end
          object gvwDocumentEXPIREDATE: TcxGridDBColumn
            Caption = 'Expire Date'
            DataBinding.FieldName = 'EXPIREDATE'
          end
          object gvwDocumentDOCFILENAME: TcxGridDBColumn
            Caption = 'Document'
            DataBinding.FieldName = 'DOCFILENAME'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = False
            Properties.OnButtonClick = gvwDocumentDOCFILENAMEPropertiesButtonClick
            Width = 273
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwDocument
        end
      end
    end
    object tabTrackingInfo: TcxTabSheet
      Caption = 'Tracking Info'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object gvwTracking: TcxGridDBTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsTrackInfo
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
          object gvwTrackingINFODATE: TcxGridDBColumn
            Caption = 'Date'
            DataBinding.FieldName = 'INFODATE'
            Width = 81
          end
          object gvwTrackingINFOTYPE: TcxGridDBColumn
            Caption = 'Info Type'
            DataBinding.FieldName = 'INFOTYPE'
            RepositoryItem = dmGlobal.luTrackInfoType
            Width = 61
          end
          object gvwTrackingINFOLEVEL: TcxGridDBColumn
            Caption = 'Info Level'
            DataBinding.FieldName = 'INFOLEVEL'
            RepositoryItem = dmGlobal.luTrackInfoLevel
            Width = 71
          end
          object gvwTrackingNOTES: TcxGridDBColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'NOTES'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Width = 415
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = gvwTracking
        end
      end
    end
    object tabKYC: TcxTabSheet
      Caption = 'Know Your Customer'
      ImageIndex = 6
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 984
        Height = 695
        Align = alClient
        TabOrder = 0
        object KYC21: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A2_DESC'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Visible = False
          Width = 150
        end
        object KYC31: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A3_DESC'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Visible = False
          Width = 150
        end
        object KYC1: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_A1'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 18
          Visible = False
          Width = 74
        end
        object KYC11: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A1_DESC'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Visible = False
          Width = 150
        end
        object KYC2: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_A2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 21
          Visible = False
          Width = 74
        end
        object KYC3: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_A3'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 24
          Visible = False
          Width = 74
        end
        object cxLabel1: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda Penduduk A.S? (termasuk izin kerja yang berlaku saat' +
            ' ini)'#13#10'/ Are you a U.S. Resident? (including a current work perm' +
            'it)'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 384
        end
        object cxLabel2: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda mempunyai Kartu Izin Tempat Tinggal Tetap A.S? ("Gre' +
            'en Card")?'#13#10'/ Do you hold a U.S. Permanent Resident Card (Green ' +
            'Card)?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 384
        end
        object cxLabel3: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda dilahirkan di Amerika serikat?'#13#10'/ Are you born in U.' +
            'S.?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxLabel4: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda memiliki alamat dan/atau alamat korespondensi dan/at' +
            'au PO BOX di Amerika Serikat?'#13#10'/ Do yoou have a U.S residence an' +
            'd/or U.S correspondence and/or U.S. P.O.Box?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxDBImageComboBox10: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B1'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 27
          Visible = False
          Width = 74
        end
        object cxLabel5: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda memberikan Surat Kuasa atau kewenangan tandatangan y' +
            'ang masih berlaku kepada seseorang yang memiliki alamat di Ameri' +
            'ka Serikat?'#13#10'/ Do you grant any effective Power of Attorney (POA' +
            ') or signatory authority to a person with a U.S. address?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxLabel6: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda memberikan instruksi otomatis untuk melakukan transf' +
            'er dana ke rekening yang dikelola di Amerika Serikat?'#13#10'/ Do you ' +
            'give standing instructions to transfer funds to U.S accounts?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxLabel7: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda memiliki alamat "in-care of" atau "hold mail" sebaga' +
            'i satu-satunya alamat?'#13#10'/ Do you have an "in care of" address or' +
            ' a "hold mail" address as the sole address?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxLabel8: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah Anda memiliki nomor telepon di Amerika Serikat?'#13#10'/ Do you' +
            ' have US phone number?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 721
        end
        object cxDBImageComboBox11: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 29
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox12: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B3'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 31
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox13: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B4'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 33
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox14: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B5'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 35
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox15: TcxDBImageComboBox
          Left = 10000
          Top = 10000
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'FATCA_B6'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 37
          Visible = False
          Width = 74
        end
        object edKYC1: TcxLabel
          Left = 39
          Top = 44
          AutoSize = False
          Caption = 
            'Apakah keluarga atau kerabat anda bekerja pada [SECURITIES] Grou' +
            'p ?'#13#10'/ Does any of yout family or relative works for [SECURITIES' +
            '] Group ?'
          Style.HotTrack = False
          Height = 30
          Width = 921
        end
        object cxLabel10: TcxLabel
          Left = 39
          Top = 109
          AutoSize = False
          Caption = 
            'Apakah Anda atau anggota keluarga Anda bekerja pada Perusahaan E' +
            'fek, Bursa Efek, perusahaan yang diatur oleh Bursa Efek/Bapepam ' +
            'dan LK, bank, asuransi atau lembaga keuangan sejenis?'#13#10'/ Do you ' +
            'or does any of your family member work at Securities Company, St' +
            'ock Exchange, company regulated by Stock exchange/Bapepam and LK' +
            ', Bank, Insurance or other similar financial institution?'
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 56
          Width = 921
        end
        object cxLabel11: TcxLabel
          Left = 39
          Top = 200
          AutoSize = False
          Caption = 
            'Apakah keluarga atau kerabat anda merupakan Direksi atau pemegan' +
            'g saham pengendalian dari sebuah perusahaan publik dengan kepemi' +
            'likan minimum 5% ?'#13#10'/ Does any of yout family or relative works ' +
            'as Directors, or having controls of listed limited liabilities c' +
            'ompany (minimum 5% of ownership) ?'#13#10
          Style.HotTrack = False
          Height = 30
          Width = 921
        end
        object cxLabel12: TcxLabel
          Left = 39
          Top = 265
          AutoSize = False
          Caption = 
            'Apakah keluarga atau kerabat anda merupakan pejabat tinggi BUMN,' +
            ' kementrian, lembaga legislative, yudikatif atau lembaga tinggi ' +
            'negara lainnya ?'#13#10'/ Does any of yout family or relative works as' +
            ' senior executive of State Oen Enterprise, Ministri, Senate, Jud' +
            'icative or other goverment bodies in Indonesia ?'
          Style.HotTrack = False
          Height = 32
          Width = 921
        end
        object cmb: TcxDBImageComboBox
          Left = 39
          Top = 80
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_01'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 1
          Width = 74
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 199
          Top = 80
          DataBinding.DataField = 'INFO_01_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 300
        end
        object cxDBTextEdit42: TcxDBTextEdit
          Left = 573
          Top = 80
          DataBinding.DataField = 'INFO_01_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 311
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
          Left = 39
          Top = 171
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_02'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 5
          Width = 74
        end
        object cxDBTextEdit43: TcxDBTextEdit
          Left = 199
          Top = 171
          DataBinding.DataField = 'INFO_02_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 300
        end
        object cxDBTextEdit44: TcxDBTextEdit
          Left = 573
          Top = 171
          DataBinding.DataField = 'INFO_02_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit45: TcxDBTextEdit
          Left = 763
          Top = 171
          DataBinding.DataField = 'INFO_02_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cxDBImageComboBox5: TcxDBImageComboBox
          Left = 39
          Top = 236
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_03'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 10
          Width = 74
        end
        object cxDBTextEdit46: TcxDBTextEdit
          Left = 199
          Top = 236
          DataBinding.DataField = 'INFO_03_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 300
        end
        object cxDBTextEdit47: TcxDBTextEdit
          Left = 573
          Top = 236
          DataBinding.DataField = 'INFO_03_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 311
        end
        object cxDBImageComboBox16: TcxDBImageComboBox
          Left = 39
          Top = 303
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_04'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 14
          Width = 74
        end
        object cxDBTextEdit49: TcxDBTextEdit
          Left = 199
          Top = 303
          DataBinding.DataField = 'INFO_04_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 15
          Width = 300
        end
        object cxDBTextEdit50: TcxDBTextEdit
          Left = 573
          Top = 303
          DataBinding.DataField = 'INFO_04_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 311
        end
        object cxLabel21: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah anda Warga Negara A.S. atau Warga Negara Wilayah AS?'#13#10'/ A' +
            're you a U.S. Citizen or a Citizen of a US Territory?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 384
        end
        object dxLayoutGroup11: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item20: TdxLayoutItem
          Parent = dxLayoutControl6Group2
          CaptionOptions.Text = 'Jika iya, No. Pajak / If Yes, Tax No.'
          Control = KYC21
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item24: TdxLayoutItem
          Parent = dxLayoutControl6Group3
          CaptionOptions.Text = 'Jika iya, No. Pajak / If Yes, Tax No.'
          Control = KYC31
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item31: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          AlignHorz = ahLeft
          Control = KYC1
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item15: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.Text = 'Jika iya, No. Pajak / If Yes, Tax No.'
          Control = KYC11
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item16: TdxLayoutItem
          Parent = dxLayoutControl6Group2
          AlignHorz = ahLeft
          Control = KYC2
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item19: TdxLayoutItem
          Parent = dxLayoutControl6Group3
          AlignHorz = ahLeft
          Control = KYC3
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group15: TdxLayoutGroup
          Parent = dxLayoutGroup11
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Deklarasi FATCA / FATCA Declaration'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Group8: TdxLayoutGroup
          Parent = dxLayoutControl4Group15
          CaptionOptions.Text = 'Bagian A / Section A'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl6Group2: TdxLayoutGroup
          Parent = dxLayoutControl4Group8
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group3: TdxLayoutGroup
          Parent = dxLayoutControl4Group8
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item2: TdxLayoutItem
          Parent = dxLayoutControl6Group2
          CaptionOptions.Text = '2.'
          Control = cxLabel1
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item3: TdxLayoutItem
          Parent = dxLayoutControl6Group3
          CaptionOptions.Text = '3.'
          Control = cxLabel2
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Group4: TdxLayoutGroup
          Parent = dxLayoutControl4Group8
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup12: TdxLayoutGroup
          Parent = dxLayoutControl4Group15
          CaptionOptions.Text = 'Bagian B / Section B'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl6Item4: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.Text = '1.'
          Control = cxLabel3
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          Parent = dxLayoutControl6Group6
          CaptionOptions.Text = '2.'
          Control = cxLabel4
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item6: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          Control = cxDBImageComboBox10
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group5: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item7: TdxLayoutItem
          Parent = dxLayoutControl6Group7
          CaptionOptions.Text = '3.'
          Control = cxLabel5
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item8: TdxLayoutItem
          Parent = dxLayoutControl6Group8
          CaptionOptions.Text = '4.'
          Control = cxLabel6
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item9: TdxLayoutItem
          Parent = dxLayoutControl6Group9
          CaptionOptions.Text = '5.'
          Control = cxLabel7
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item10: TdxLayoutItem
          Parent = dxLayoutControl6Group10
          CaptionOptions.Text = '6.'
          Control = cxLabel8
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 721
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item11: TdxLayoutItem
          Parent = dxLayoutControl6Group6
          Control = cxDBImageComboBox11
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item12: TdxLayoutItem
          Parent = dxLayoutControl6Group7
          Control = cxDBImageComboBox12
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item13: TdxLayoutItem
          Parent = dxLayoutControl6Group8
          Control = cxDBImageComboBox13
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item14: TdxLayoutItem
          Parent = dxLayoutControl6Group9
          Control = cxDBImageComboBox14
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item15: TdxLayoutItem
          Parent = dxLayoutControl6Group10
          Control = cxDBImageComboBox15
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group6: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group7: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Group8: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Group9: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl6Group10: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl6Group1: TdxLayoutGroup
          Parent = dxLayoutGroup11
          CaptionOptions.Text = 'Informasi Tambahan / Additional Information'
          ButtonOptions.Buttons = <>
          ItemIndex = 7
          Index = 0
        end
        object dxLayoutControl6Item1: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '1.'
          Control = edKYC1
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 900
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item16: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '2.'
          Control = cxLabel10
          ControlOptions.OriginalHeight = 56
          ControlOptions.OriginalWidth = 900
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item17: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '3.'
          Control = cxLabel11
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 900
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl6Item18: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '4.'
          Control = cxLabel12
          ControlOptions.OriginalHeight = 32
          ControlOptions.OriginalWidth = 900
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl6Item27: TdxLayoutItem
          Parent = dxLayoutControl6Group11
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cmb
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item28: TdxLayoutItem
          Parent = dxLayoutControl6Group11
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit41
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group11: TdxLayoutGroup
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item29: TdxLayoutItem
          Parent = dxLayoutControl6Group11
          CaptionOptions.Text = 'Departement'
          Control = cxDBTextEdit42
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 311
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item30: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox4
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item31: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit43
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group12: TdxLayoutGroup
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item32: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.Text = 'Departement'
          Control = cxDBTextEdit44
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item33: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.Text = 'Relationship'
          Control = cxDBTextEdit45
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item34: TdxLayoutItem
          Parent = dxLayoutControl6Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox5
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item35: TdxLayoutItem
          Parent = dxLayoutControl6Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit46
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group13: TdxLayoutGroup
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl6Item36: TdxLayoutItem
          Parent = dxLayoutControl6Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Departement'
          Control = cxDBTextEdit47
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 311
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item38: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox16
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item39: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit49
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group14: TdxLayoutGroup
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object dxLayoutControl6Item40: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Departement'
          Control = cxDBTextEdit50
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 311
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item69: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.Text = '1.'
          Control = cxLabel21
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 384
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOA
    Left = 824
    Top = 80
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 664
    Top = 256
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsDocument: TDataSource
    DataSet = cdsOADOC
    Left = 752
    Top = 192
  end
  object dsTrackInfo: TDataSource
    DataSet = cdsOATrackInfo
    Left = 752
    Top = 240
  end
  object dsAddress: TDataSource
    DataSet = cdsOAAddress
    Left = 824
    Top = 128
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
    AfterOpen = cdsOAAfterOpen
    BeforePost = cdsOABeforePost
    AfterPost = cdsOAAfterPost
    OnNewRecord = cdsOANewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 912
    Top = 80
    object cdsOAOAID: TIntegerField
      Tag = -1
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAOACODE: TStringField
      Tag = -1
      FieldName = 'OACODE'
      Required = True
    end
    object cdsOACUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsOABRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsOASALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsOAENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
    object cdsOAFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      OnChange = cdsOAFIRSTNAMEChange
      Size = 100
    end
    object cdsOAMIDDLENAME: TStringField
      FieldName = 'MIDDLENAME'
      OnChange = cdsOAFIRSTNAMEChange
      Size = 40
    end
    object cdsOALASTNAME: TStringField
      FieldName = 'LASTNAME'
      OnChange = cdsOAFIRSTNAMEChange
      Size = 40
    end
    object cdsOAENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsOACREATEDATE: TDateTimeField
      Tag = -1
      FieldName = 'CREATEDATE'
      DisplayFormat = 'dd MMM yyyy'
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
    end
    object cdsOAKTP: TStringField
      FieldName = 'KTP'
      OnChange = cdsOAKTPChange
      Size = 30
    end
    object cdsOAKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOANPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsOANPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object cdsOAPASSPORT_EXPDATE: TDateField
      FieldName = 'PASSPORT_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAKITAS: TStringField
      FieldName = 'KITAS'
      Size = 30
    end
    object cdsOAKITAS_EXPDATE: TDateField
      FieldName = 'KITAS_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
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
      DisplayFormat = 'dd mmm yyyy'
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
      OnChange = cdsOARET_EDUBACKGROUNDChange
      Size = 50
    end
    object cdsOASOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      OnChange = cdsOASOURCEFUNDChange
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
      OnChange = cdsOAINVESTOBJECTIVEChange
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
      OnChange = cdsOACNTRESTChange
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
      Tag = -1
      FieldName = 'SIDNO'
      Size = 15
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
      OnChange = cdsOAOCCUPATIONChange
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
      OnChange = cdsOACOMPANY_PHONEChange
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
      OnChange = cdsOAGU_HANDPHONEChange
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
      OnChange = cdsOAGU_PHONEChange
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
      OnChange = cdsOAGU_PHONE2Change
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
      OnChange = cdsOAGU_JOBS_PHONEChange
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
      OnChange = cdsOAGU_CELLPHONEChange
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
      OnChange = cdsOAOFFC_PHONE_NOChange
    end
    object cdsOAOFFC_FAX_NO: TStringField
      FieldName = 'OFFC_FAX_NO'
    end
    object cdsOAEMAIL_CHK: TIntegerField
      FieldName = 'EMAIL_CHK'
    end
    object cdsOAEMAIL_ADDR: TStringField
      FieldName = 'EMAIL_ADDR'
      Size = 100
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
      OnChange = cdsOAFATCA_A1Change
      Size = 1
    end
    object cdsOAFATCA_A1_DESC: TStringField
      FieldName = 'FATCA_A1_DESC'
      Size = 50
    end
    object cdsOAFATCA_A2: TStringField
      FieldName = 'FATCA_A2'
      OnChange = cdsOAFATCA_A2Change
      Size = 1
    end
    object cdsOAFATCA_A2_DESC: TStringField
      FieldName = 'FATCA_A2_DESC'
      Size = 50
    end
    object cdsOAFATCA_A3: TStringField
      FieldName = 'FATCA_A3'
      OnChange = cdsOAFATCA_A3Change
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
      OnChange = cdsOAEXISTING_CLIENTChange
      Size = 1
    end
    object cdsOAPARENT_ACCID: TIntegerField
      FieldName = 'PARENT_ACCID'
      OnChange = cdsOAPARENT_ACCIDChange
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
      Tag = -1
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
    object cdsOAINFO_01: TStringField
      FieldName = 'INFO_01'
      OnChange = cdsOAINFO_01Change
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
      OnChange = cdsOAINFO_02Change
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
      OnChange = cdsOAINFO_03Change
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
      OnChange = cdsOAINFO_04Change
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
      OnChange = cdsOAKTP_LIFETIMEChange
      Size = 1
    end
    object cdsOASUBMIT: TStringField
      FieldName = 'SUBMIT'
      Size = 1
    end
    object cdsOAGU_PROVINCE2: TStringField
      FieldName = 'GU_PROVINCE2'
      Size = 50
    end
    object cdsOAUSERID: TStringField
      FieldName = 'USERID'
      Size = 50
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
      Size = 4
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
      Size = 15
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
    object cdsOAEVENTID: TLargeintField
      FieldName = 'EVENTID'
    end
    object cdsOAPAYMENT_BANK: TStringField
      FieldName = 'PAYMENT_BANK'
    end
    object cdsOAGU_GENDER: TStringField
      FieldName = 'GU_GENDER'
      Size = 1
    end
    object cdsOAREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsOAREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsOAGU_ID_EXP: TDateField
      FieldName = 'GU_ID_EXP'
    end
    object cdsOAGU_DOB: TDateField
      FieldName = 'GU_DOB'
    end
    object cdsOAINS_BUSSTYPE_OT: TStringField
      FieldName = 'INS_BUSSTYPE_OT'
      Size = 250
    end
    object cdsOAINS_COMPTYPE_OT: TStringField
      FieldName = 'INS_COMPTYPE_OT'
      Size = 250
    end
    object cdsOASINVUSE: TStringField
      FieldName = 'SINVUSE'
      Size = 1
    end
    object cdsOAWAPU_VALUE: TFloatField
      FieldName = 'WAPU_VALUE'
    end
    object cdsOAWAPU_TYPE: TIntegerField
      FieldName = 'WAPU_TYPE'
    end
    object cdsOAREFERRAL_INT_DESC: TStringField
      FieldName = 'REFERRAL_INT_DESC'
      Size = 150
    end
    object cdsOAREFERRAL_EXT_DESC: TStringField
      FieldName = 'REFERRAL_EXT_DESC'
      Size = 150
    end
    object cdsOAREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsOAOOA_REF_NO: TStringField
      FieldName = 'OOA_REF_NO'
      Size = 50
    end
    object cdsOAqryOABeneficialOwner: TDataSetField
      FieldName = 'qryOABeneficialOwner'
    end
  end
  object cdsOAAddress: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOAAddress
    Params = <>
    BeforePost = cdsOAAddressBeforePost
    OnNewRecord = cdsOAAddressNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 912
    Top = 128
    object cdsOAAddressOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAddressADDRTYPE: TStringField
      FieldName = 'ADDRTYPE'
      Required = True
      Size = 10
    end
    object cdsOAAddressADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      OnChange = cdsOAAddressADDR_REFChange
      Size = 1
    end
    object cdsOAAddressADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      OnChange = cdsOAAddressADDRTYPE_REFChange
      Size = 10
    end
    object cdsOAAddressCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      OnChange = cdsOAAddressCOUNTCODEChange
      Size = 5
    end
    object cdsOAAddressPROVCODE: TStringField
      FieldName = 'PROVCODE'
      OnChange = cdsOAAddressPROVCODEChange
      Size = 10
    end
    object cdsOAAddressCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsOAAddressADDRESS1: TStringField
      DisplayWidth = 50
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object cdsOAAddressADDRESS2: TStringField
      DisplayWidth = 50
      FieldName = 'ADDRESS2'
      Size = 50
    end
    object cdsOAAddressADDRESS3: TStringField
      DisplayWidth = 50
      FieldName = 'ADDRESS3'
      Size = 50
    end
    object cdsOAAddressZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsOAAddressPHONE: TStringField
      FieldName = 'PHONE'
      OnChange = cdsOAAddressPHONEChange
    end
    object cdsOAAddressMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      OnChange = cdsOAAddressMOBILEPHONEChange
      Size = 60
    end
    object cdsOAAddressEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsOAAddressFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object cdsOAAddressMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAddressMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAddressAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAddressAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAddressUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAddressUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAddressNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAddressISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAddressID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAAddressRTRW: TStringField
      FieldName = 'RTRW'
      Size = 10
    end
    object cdsOAAddressRESIDENCETYPE: TStringField
      FieldName = 'RESIDENCETYPE'
      OnChange = cdsOAAddressRESIDENCETYPEChange
      Size = 1
    end
    object cdsOAAddressOWNERSHIPSTATUS: TStringField
      FieldName = 'OWNERSHIPSTATUS'
      OnChange = cdsOAAddressOWNERSHIPSTATUSChange
      Size = 1
    end
    object cdsOAAddressRESIDENCETYPE_OTHER: TStringField
      FieldName = 'RESIDENCETYPE_OTHER'
      Size = 100
    end
    object cdsOAAddressOWNERSHIPSTATUS_OTHER: TStringField
      FieldName = 'OWNERSHIPSTATUS_OTHER'
      Size = 100
    end
  end
  object cdsOADOC: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOADOC
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 912
    Top = 176
    object cdsOADOCOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOADOCSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOADOCDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Size = 10
    end
    object cdsOADOCDOCDESC: TStringField
      FieldName = 'DOCDESC'
      Size = 50
    end
    object cdsOADOCISEXPIRE: TStringField
      FieldName = 'ISEXPIRE'
      Size = 1
    end
    object cdsOADOCEXPIREDATE: TDateField
      FieldName = 'EXPIREDATE'
    end
    object cdsOADOCDOCOBJECT: TBlobField
      FieldName = 'DOCOBJECT'
    end
    object cdsOADOCDOCFILENAME: TStringField
      FieldName = 'DOCFILENAME'
      Size = 50
    end
    object cdsOADOCMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOADOCMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOADOCAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOADOCAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOADOCUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOADOCUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOADOCNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOADOCISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOADOCID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOADOCNOTES: TStringField
      FieldName = 'NOTES'
      Size = 255
    end
    object cdsOADOCTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 150
    end
    object cdsOADOCUPLOADEDON: TDateTimeField
      FieldName = 'UPLOADEDON'
    end
    object cdsOADOCUPLOADEDBY: TStringField
      FieldName = 'UPLOADEDBY'
      Size = 50
    end
  end
  object cdsOATrackInfo: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOATrackInfo
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 856
    Top = 192
    object cdsOATrackInfoOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOATrackInfoSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOATrackInfoINFODATE: TDateTimeField
      FieldName = 'INFODATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOATrackInfoINFOTYPE: TStringField
      FieldName = 'INFOTYPE'
      Size = 2
    end
    object cdsOATrackInfoINFOLEVEL: TStringField
      FieldName = 'INFOLEVEL'
      Size = 2
    end
    object cdsOATrackInfoNOTES: TStringField
      FieldName = 'NOTES'
      Size = 150
    end
    object cdsOATrackInfoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOATrackInfoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOATrackInfoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOATrackInfoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOATrackInfoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOATrackInfoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOATrackInfoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOATrackInfoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOATrackInfoID: TLargeintField
      FieldName = 'ID'
    end
  end
  object odDocs: TOpenDialog
    Left = 648
    Top = 205
  end
  object dsBank: TDataSource
    DataSet = cdsOABank
    Left = 752
    Top = 288
  end
  object dsCustody: TDataSource
    DataSet = cdsOACustody
    Left = 752
    Top = 336
  end
  object cdsOABank: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOABank
    Params = <>
    OnNewRecord = cdsOABankNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 240
    object cdsOABankOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOABankSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsOABankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsOABankBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Required = True
      Size = 30
    end
    object cdsOABankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsOABankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 60
    end
    object cdsOABankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 60
    end
    object cdsOABankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOABankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOABankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOABankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOABankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOABankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOABankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOABankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOABankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOABankDEFAULT_BANK: TStringField
      FieldName = 'DEFAULT_BANK'
      Size = 1
    end
    object cdsOABankPAYMENT_BANK: TStringField
      FieldName = 'PAYMENT_BANK'
    end
  end
  object cdsOACustody: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOACustody
    Params = <>
    OnNewRecord = cdsOACustodyNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 288
    object cdsOACustodyOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOACustodySEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsOACustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Required = True
      Size = 30
    end
    object cdsOACustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 14
    end
    object cdsOACustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 60
    end
    object cdsOACustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 60
    end
    object cdsOACustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOACustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOACustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOACustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOACustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOACustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOACustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOACustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOACustodyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOACustodyDEFAULT_CUSTODY: TStringField
      FieldName = 'DEFAULT_CUSTODY'
      Size = 1
    end
  end
  object cdsOAKSEI: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOAKSEI
    Params = <>
    OnNewRecord = cdsOAKSEINewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 336
    object cdsOAKSEIOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAKSEIKSEI_ACC_TYPE: TStringField
      FieldName = 'KSEI_ACC_TYPE'
      Required = True
      Size = 3
    end
    object cdsOAKSEIKSEI_MEMBER_CODE: TStringField
      FieldName = 'KSEI_MEMBER_CODE'
      Size = 5
    end
    object cdsOAKSEIKSEI_CLIENT_CODE: TStringField
      FieldName = 'KSEI_CLIENT_CODE'
      Size = 15
    end
    object cdsOAKSEIKSEI_LAST_CODE: TStringField
      FieldName = 'KSEI_LAST_CODE'
      Size = 2
    end
    object cdsOAKSEIKSEI_ACC_NO: TStringField
      FieldName = 'KSEI_ACC_NO'
      Size = 50
    end
    object cdsOAKSEISID: TStringField
      FieldName = 'SID'
      Size = 50
    end
    object cdsOAKSEIDONEDATE: TDateTimeField
      FieldName = 'DONEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOAKSEIMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAKSEIMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAKSEIAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAKSEIAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAKSEIUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAKSEIUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAKSEINOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAKSEIISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAKSEIID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsOARDN: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsOAqryOARDN
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 384
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
  object dsKSEI: TDataSource
    DataSet = cdsOAKSEI
    Left = 752
    Top = 384
  end
  object dsRDN: TDataSource
    DataSet = cdsOARDN
    Left = 752
    Top = 432
  end
  object cdsAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 664
    Top = 488
    object cdsAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccountACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountACCINIT: TStringField
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsAccountACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountACCSUBTYPE: TStringField
      FieldName = 'ACCSUBTYPE'
      Size = 2
    end
    object cdsAccountBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsAccountINVTYPE: TStringField
      FieldName = 'INVTYPE'
      Size = 5
    end
    object cdsAccountBUSSTYPE: TLargeintField
      FieldName = 'BUSSTYPE'
    end
    object cdsAccountTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsAccountPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsAccountA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsAccountAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsAccountOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsAccountCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsAccountSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsAccountISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsAccountISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsAccountISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsAccountISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsAccountISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsAccountAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsAccountSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsAccountACC_STS: TStringField
      FieldName = 'ACC_STS'
      Size = 1
    end
    object cdsAccountOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsAccountOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsAccountOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsAccountOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsAccountOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsAccountSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsAccountALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsAccountTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsAccountLASTTR_DATE: TDateTimeField
      FieldName = 'LASTTR_DATE'
    end
    object cdsAccountTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsAccountCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsAccountCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsAccountCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsAccountBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsAccountSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsAccountIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsAccountTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsAccountDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsAccountKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
    end
    object cdsAccountRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsAccountRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsAccountRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsAccountFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsAccountTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsAccountTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsAccountACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsAccountCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsAccountBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsAccountINIT_DEPOSIT_FUND: TFloatField
      FieldName = 'INIT_DEPOSIT_FUND'
    end
    object cdsAccountINIT_DEPOSIT_SHARES: TFloatField
      FieldName = 'INIT_DEPOSIT_SHARES'
    end
    object cdsAccountALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsAccountTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsAccountAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsAccountDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsAccountSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsAccountNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsAccountSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsAccountDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsAccountDORMANT: TStringField
      FieldName = 'DORMANT'
      Size = 1
    end
    object cdsAccountRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsAccountEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsAccountMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountqryAccountInterest: TDataSetField
      FieldName = 'qryAccountInterest'
    end
    object cdsAccountqryAccountContact: TDataSetField
      FieldName = 'qryAccountContact'
    end
    object cdsAccountqryAccountExtRef: TDataSetField
      FieldName = 'qryAccountExtRef'
    end
    object cdsAccountqryAccountCharge: TDataSetField
      FieldName = 'qryAccountCharge'
    end
    object cdsAccountqryAccountComm: TDataSetField
      FieldName = 'qryAccountComm'
    end
  end
  object cdsEntity: TNClientDataset
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
    Left = 720
    Top = 296
    object cdsEntityENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntityENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsEntityCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
    end
    object cdsEntityBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsEntitySALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsEntityENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
    object cdsEntityFIRSTNAME: TStringField
      FieldName = 'FIRSTNAME'
      Size = 100
    end
    object cdsEntityMIDDLENAME: TStringField
      FieldName = 'MIDDLENAME'
      Size = 40
    end
    object cdsEntityLASTNAME: TStringField
      FieldName = 'LASTNAME'
      Size = 40
    end
    object cdsEntityENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsEntityCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
    object cdsEntityENTSTATUS: TStringField
      FieldName = 'ENTSTATUS'
      Size = 5
    end
    object cdsEntityBUSSTYPEID: TLargeintField
      FieldName = 'BUSSTYPEID'
    end
    object cdsEntityENTTYPE: TStringField
      FieldName = 'ENTTYPE'
      Size = 10
    end
    object cdsEntityINVESTORCAT: TStringField
      FieldName = 'INVESTORCAT'
      Size = 1
    end
    object cdsEntityENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsEntityAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsEntityKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsEntityKTP_EXPDATE: TDateField
      FieldName = 'KTP_EXPDATE'
    end
    object cdsEntityNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsEntityNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
    end
    object cdsEntityPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object cdsEntityPASSPORT_EXPDATE: TDateField
      FieldName = 'PASSPORT_EXPDATE'
    end
    object cdsEntityKITAS: TStringField
      FieldName = 'KITAS'
      Size = 30
    end
    object cdsEntityKITAS_EXPDATE: TDateField
      FieldName = 'KITAS_EXPDATE'
    end
    object cdsEntityRET_OCCUPATION: TStringField
      FieldName = 'RET_OCCUPATION'
      Size = 100
    end
    object cdsEntityRET_JOBTITTLE: TStringField
      FieldName = 'RET_JOBTITTLE'
      Size = 100
    end
    object cdsEntityRET_COMPANYNAME: TStringField
      FieldName = 'RET_COMPANYNAME'
      Size = 100
    end
    object cdsEntityRET_BIRTDATE: TDateField
      FieldName = 'RET_BIRTDATE'
    end
    object cdsEntityRET_BIRTHPLACE: TStringField
      FieldName = 'RET_BIRTHPLACE'
      Size = 100
    end
    object cdsEntityRET_GENDER: TStringField
      FieldName = 'RET_GENDER'
      Size = 1
    end
    object cdsEntityRET_MARITALSTATUS: TStringField
      FieldName = 'RET_MARITALSTATUS'
      Size = 1
    end
    object cdsEntityRET_SPOUSENAME: TStringField
      FieldName = 'RET_SPOUSENAME'
      Size = 100
    end
    object cdsEntityRET_HEIRNAME: TStringField
      FieldName = 'RET_HEIRNAME'
      Size = 120
    end
    object cdsEntityRET_HEIRRELATION: TStringField
      FieldName = 'RET_HEIRRELATION'
      Size = 120
    end
    object cdsEntityRET_EDUBACKGROUND: TStringField
      FieldName = 'RET_EDUBACKGROUND'
      Size = 50
    end
    object cdsEntitySOURCEFUND: TStringField
      FieldName = 'SOURCEFUND'
      Size = 50
    end
    object cdsEntitySOURCEFUNDKSEI: TStringField
      FieldName = 'SOURCEFUNDKSEI'
      Size = 50
    end
    object cdsEntitySOURCEFUNDOTHERS: TStringField
      FieldName = 'SOURCEFUNDOTHERS'
      Size = 50
    end
    object cdsEntityINVESTOBJECTIVE: TStringField
      FieldName = 'INVESTOBJECTIVE'
      Size = 50
    end
    object cdsEntityINVESTOBJECTIVEKSEI: TStringField
      FieldName = 'INVESTOBJECTIVEKSEI'
      Size = 50
    end
    object cdsEntityINVESTEXP: TStringField
      FieldName = 'INVESTEXP'
      Size = 10
    end
    object cdsEntityANUALINCOME: TStringField
      FieldName = 'ANUALINCOME'
      Size = 50
    end
    object cdsEntityESTDAILYTRADE: TStringField
      FieldName = 'ESTDAILYTRADE'
      Size = 50
    end
    object cdsEntityINS_DATEOFESTABLIZED: TDateField
      FieldName = 'INS_DATEOFESTABLIZED'
    end
    object cdsEntityINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
    end
    object cdsEntityINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsEntityINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
    end
    object cdsEntityINS_TOTALASET: TStringField
      FieldName = 'INS_TOTALASET'
      Size = 10
    end
    object cdsEntityCNTREST: TStringField
      FieldName = 'CNTREST'
      Size = 10
    end
    object cdsEntityCNTCITIZEN: TStringField
      FieldName = 'CNTCITIZEN'
    end
    object cdsEntityCNTINVESTMENT: TStringField
      FieldName = 'CNTINVESTMENT'
      Size = 10
    end
    object cdsEntitySIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsEntityTAXID: TStringField
      FieldName = 'TAXID'
    end
    object cdsEntityINS_BUSSTYPE: TStringField
      FieldName = 'INS_BUSSTYPE'
    end
    object cdsEntityINVS_TYPE: TStringField
      FieldName = 'INVS_TYPE'
      Size = 5
    end
    object cdsEntityENTINIT: TStringField
      FieldName = 'ENTINIT'
    end
    object cdsEntityCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
    end
    object cdsEntityHOBBIES: TStringField
      FieldName = 'HOBBIES'
      Size = 255
    end
    object cdsEntityANNUAL_NET_PROFIT: TIntegerField
      FieldName = 'ANNUAL_NET_PROFIT'
    end
    object cdsEntityTOTAL_ASSET: TIntegerField
      FieldName = 'TOTAL_ASSET'
    end
    object cdsEntityINVS_OBJ: TIntegerField
      FieldName = 'INVS_OBJ'
    end
    object cdsEntityINVS_OBJ_OTHER: TStringField
      FieldName = 'INVS_OBJ_OTHER'
      Size = 50
    end
    object cdsEntityOCCUPATION: TIntegerField
      FieldName = 'OCCUPATION'
    end
    object cdsEntityOCCUPATION_OTHER: TStringField
      FieldName = 'OCCUPATION_OTHER'
      Size = 100
    end
    object cdsEntityCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 50
    end
    object cdsEntityFIELD_WORK: TStringField
      FieldName = 'FIELD_WORK'
    end
    object cdsEntityFIELD_WORK_DESC: TStringField
      FieldName = 'FIELD_WORK_DESC'
      Size = 50
    end
    object cdsEntityPOSITION: TStringField
      FieldName = 'POSITION'
    end
    object cdsEntityJOB_DIVISION: TStringField
      FieldName = 'JOB_DIVISION'
    end
    object cdsEntityYOS_MONTH: TStringField
      FieldName = 'YOS_MONTH'
      Size = 5
    end
    object cdsEntityYOS_YEAR: TStringField
      FieldName = 'YOS_YEAR'
      Size = 5
    end
    object cdsEntityCOMPANY_PHONE: TStringField
      FieldName = 'COMPANY_PHONE'
      Size = 15
    end
    object cdsEntityCOMPANY_PHONE_EXT: TStringField
      FieldName = 'COMPANY_PHONE_EXT'
      Size = 10
    end
    object cdsEntityCOMPANY_ADDRESS: TStringField
      FieldName = 'COMPANY_ADDRESS'
      Size = 255
    end
    object cdsEntityANNUAL_INCOME: TIntegerField
      FieldName = 'ANNUAL_INCOME'
    end
    object cdsEntityANNUAL_INCOME_SOURCE: TLargeintField
      FieldName = 'ANNUAL_INCOME_SOURCE'
    end
    object cdsEntityANNUAL_INCOME_SOURCE_OTHER: TStringField
      FieldName = 'ANNUAL_INCOME_SOURCE_OTHER'
      Size = 50
    end
    object cdsEntityADD_INCOME: TIntegerField
      FieldName = 'ADD_INCOME'
    end
    object cdsEntityADD_INCOME_SOURCE: TIntegerField
      FieldName = 'ADD_INCOME_SOURCE'
    end
    object cdsEntityADD_INCOME_SOURCE_OTHER: TStringField
      FieldName = 'ADD_INCOME_SOURCE_OTHER'
      Size = 50
    end
    object cdsEntityNAT_BUSINESS_ENTREPRENEUR: TStringField
      FieldName = 'NAT_BUSINESS_ENTREPRENEUR'
      Size = 120
    end
    object cdsEntityMOTHER_NAME: TStringField
      FieldName = 'MOTHER_NAME'
      Size = 100
    end
    object cdsEntityRELIGION: TStringField
      FieldName = 'RELIGION'
      Size = 50
    end
    object cdsEntityTAXPAYER_STATUS: TIntegerField
      FieldName = 'TAXPAYER_STATUS'
    end
    object cdsEntityRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsEntityGU_NAME: TStringField
      FieldName = 'GU_NAME'
      Size = 50
    end
    object cdsEntityGU_HUB: TIntegerField
      FieldName = 'GU_HUB'
    end
    object cdsEntityGU_ID_NO: TStringField
      FieldName = 'GU_ID_NO'
      Size = 50
    end
    object cdsEntityGU_TAXPAYER_NO: TStringField
      FieldName = 'GU_TAXPAYER_NO'
      Size = 50
    end
    object cdsEntityGU_NATIONALITY: TStringField
      FieldName = 'GU_NATIONALITY'
      Size = 30
    end
    object cdsEntityGU_POB: TStringField
      FieldName = 'GU_POB'
      Size = 50
    end
    object cdsEntityGU_MATIAL_STATUS: TIntegerField
      FieldName = 'GU_MATIAL_STATUS'
    end
    object cdsEntityGU_EMAIL: TStringField
      FieldName = 'GU_EMAIL'
      Size = 50
    end
    object cdsEntityGU_HANDPHONE: TStringField
      FieldName = 'GU_HANDPHONE'
      Size = 30
    end
    object cdsEntityGU_FAX: TStringField
      FieldName = 'GU_FAX'
      Size = 30
    end
    object cdsEntityGU_ADDRESS: TStringField
      FieldName = 'GU_ADDRESS'
      Size = 255
    end
    object cdsEntityGU_CITY: TStringField
      FieldName = 'GU_CITY'
      Size = 50
    end
    object cdsEntityGU_POSTALCODE: TStringField
      FieldName = 'GU_POSTALCODE'
      Size = 10
    end
    object cdsEntityGU_PROVINCE: TStringField
      FieldName = 'GU_PROVINCE'
      Size = 50
    end
    object cdsEntityGU_COUNTRY: TStringField
      FieldName = 'GU_COUNTRY'
      Size = 50
    end
    object cdsEntityGU_PHONE: TStringField
      FieldName = 'GU_PHONE'
      Size = 30
    end
    object cdsEntityGU_ADDRESS2: TStringField
      FieldName = 'GU_ADDRESS2'
      Size = 255
    end
    object cdsEntityGU_CITY2: TStringField
      FieldName = 'GU_CITY2'
      Size = 50
    end
    object cdsEntityGU_POSTALCODE2: TStringField
      FieldName = 'GU_POSTALCODE2'
      Size = 10
    end
    object cdsEntityGU_PROVICE2: TStringField
      FieldName = 'GU_PROVICE2'
      Size = 50
    end
    object cdsEntityGU_COUNTRY2: TStringField
      FieldName = 'GU_COUNTRY2'
      Size = 50
    end
    object cdsEntityGU_PHONE2: TStringField
      FieldName = 'GU_PHONE2'
    end
    object cdsEntityGU_JOBS: TStringField
      FieldName = 'GU_JOBS'
      Size = 50
    end
    object cdsEntityGU_LAST_POSITION: TStringField
      FieldName = 'GU_LAST_POSITION'
      Size = 50
    end
    object cdsEntityGU_JOBS_COMPANY: TStringField
      FieldName = 'GU_JOBS_COMPANY'
      Size = 50
    end
    object cdsEntityGU_JOBS_COMPANY_TYPE: TStringField
      FieldName = 'GU_JOBS_COMPANY_TYPE'
      Size = 50
    end
    object cdsEntityGU_JOBS_ADDRESS: TStringField
      FieldName = 'GU_JOBS_ADDRESS'
      Size = 255
    end
    object cdsEntityGU_JOBS_CITY: TStringField
      FieldName = 'GU_JOBS_CITY'
      Size = 50
    end
    object cdsEntityGU_JOBS_POSTALCODE: TStringField
      FieldName = 'GU_JOBS_POSTALCODE'
      Size = 10
    end
    object cdsEntityGU_JOBS_PHONE: TStringField
      FieldName = 'GU_JOBS_PHONE'
      Size = 30
    end
    object cdsEntityGU_JOBS_FAX: TStringField
      FieldName = 'GU_JOBS_FAX'
      Size = 30
    end
    object cdsEntityGU_JOBS_FUND_SOURCE: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE'
      Size = 5
    end
    object cdsEntityGU_JOBS_FUND_SOURCE_OT: TStringField
      FieldName = 'GU_JOBS_FUND_SOURCE_OT'
      Size = 50
    end
    object cdsEntityGU_JOBS_ANNUAL_SALARY: TIntegerField
      FieldName = 'GU_JOBS_ANNUAL_SALARY'
    end
    object cdsEntityGU_JOBS_MARITAL_STATUS: TIntegerField
      FieldName = 'GU_JOBS_MARITAL_STATUS'
    end
    object cdsEntityGU_CELLPHONE: TStringField
      FieldName = 'GU_CELLPHONE'
      Size = 30
    end
    object cdsEntityGU_MAIDEN_MOTHER: TStringField
      FieldName = 'GU_MAIDEN_MOTHER'
      Size = 50
    end
    object cdsEntityCHKGUCURRADR: TStringField
      FieldName = 'CHKGUCURRADR'
      Size = 1
    end
    object cdsEntityCLIENT_STATUS: TIntegerField
      FieldName = 'CLIENT_STATUS'
    end
    object cdsEntitySIUP_NO: TStringField
      FieldName = 'SIUP_NO'
      Size = 50
    end
    object cdsEntityTDP_NO: TStringField
      FieldName = 'TDP_NO'
      Size = 50
    end
    object cdsEntityTDP_REG_DATE: TStringField
      FieldName = 'TDP_REG_DATE'
      Size = 50
    end
    object cdsEntityTDP_INVALID_DATE: TDateTimeField
      FieldName = 'TDP_INVALID_DATE'
    end
    object cdsEntityAPPROVER_HAM_MINISTRI: TStringField
      FieldName = 'APPROVER_HAM_MINISTRI'
      Size = 50
    end
    object cdsEntityANNOUNC_STATE_GAZELLE: TStringField
      FieldName = 'ANNOUNC_STATE_GAZELLE'
      Size = 100
    end
    object cdsEntityTAX_REG_CHK: TIntegerField
      FieldName = 'TAX_REG_CHK'
    end
    object cdsEntityTAS_REG_DATE: TDateTimeField
      FieldName = 'TAS_REG_DATE'
    end
    object cdsEntityBUSINESS_ENTITY_CHK: TIntegerField
      FieldName = 'BUSINESS_ENTITY_CHK'
    end
    object cdsEntityBUSINESS_ENTITY_OTHER: TStringField
      FieldName = 'BUSINESS_ENTITY_OTHER'
      Size = 50
    end
    object cdsEntityBUSINESS_LINE_CHK: TIntegerField
      FieldName = 'BUSINESS_LINE_CHK'
    end
    object cdsEntityBUSINESS_LINE_OTHER: TStringField
      FieldName = 'BUSINESS_LINE_OTHER'
      Size = 50
    end
    object cdsEntityCOMPANY_CHARACTER_CHK: TIntegerField
      FieldName = 'COMPANY_CHARACTER_CHK'
    end
    object cdsEntityCOMPANY_CHARACTER_OTHER: TStringField
      FieldName = 'COMPANY_CHARACTER_OTHER'
      Size = 50
    end
    object cdsEntityOFFC_ADDR_ASSKDP: TStringField
      FieldName = 'OFFC_ADDR_ASSKDP'
      Size = 255
    end
    object cdsEntityOFFC_CITY: TStringField
      FieldName = 'OFFC_CITY'
      Size = 50
    end
    object cdsEntityOFFC_ZIPCODE: TStringField
      FieldName = 'OFFC_ZIPCODE'
      Size = 10
    end
    object cdsEntityOFFC_COUNTRY: TStringField
      FieldName = 'OFFC_COUNTRY'
      Size = 50
    end
    object cdsEntityCORESP_ADDR: TStringField
      FieldName = 'CORESP_ADDR'
      Size = 255
    end
    object cdsEntityCORESP_CITY: TStringField
      FieldName = 'CORESP_CITY'
      Size = 50
    end
    object cdsEntityCORESP_ZIPCODE: TStringField
      FieldName = 'CORESP_ZIPCODE'
      Size = 10
    end
    object cdsEntityCORESP_COUNTRY: TStringField
      FieldName = 'CORESP_COUNTRY'
      Size = 50
    end
    object cdsEntityOFFC_BUILD_STATUS: TIntegerField
      FieldName = 'OFFC_BUILD_STATUS'
    end
    object cdsEntityOFFC_LENGTH_COREPON: TIntegerField
      FieldName = 'OFFC_LENGTH_COREPON'
    end
    object cdsEntityOFFC_PHONE_NO: TStringField
      FieldName = 'OFFC_PHONE_NO'
    end
    object cdsEntityOFFC_FAX_NO: TStringField
      FieldName = 'OFFC_FAX_NO'
    end
    object cdsEntityEMAIL_CHK: TIntegerField
      FieldName = 'EMAIL_CHK'
    end
    object cdsEntityEMAIL_ADDR: TStringField
      FieldName = 'EMAIL_ADDR'
      Size = 30
    end
    object cdsEntityOFCC_FAX_CHK: TIntegerField
      FieldName = 'OFCC_FAX_CHK'
    end
    object cdsEntityOFFC_FAX_NO_OTHER: TStringField
      FieldName = 'OFFC_FAX_NO_OTHER'
      Size = 50
    end
    object cdsEntitySWIFTCODE: TStringField
      FieldName = 'SWIFTCODE'
      Size = 50
    end
    object cdsEntityACC_TYPE_SEC: TIntegerField
      FieldName = 'ACC_TYPE_SEC'
    end
    object cdsEntityCOMP_ESTABLISH_DATE: TDateTimeField
      FieldName = 'COMP_ESTABLISH_DATE'
    end
    object cdsEntityCOMP_ESTABLISH_PLACE: TStringField
      FieldName = 'COMP_ESTABLISH_PLACE'
      Size = 100
    end
    object cdsEntityDEED_ESTABLISH_DATE: TDateTimeField
      FieldName = 'DEED_ESTABLISH_DATE'
    end
    object cdsEntityDEED_ESTABLISH_PLACE: TStringField
      FieldName = 'DEED_ESTABLISH_PLACE'
      Size = 50
    end
    object cdsEntityNOTARY: TStringField
      FieldName = 'NOTARY'
      Size = 50
    end
    object cdsEntityTAXPAYER_REG: TStringField
      FieldName = 'TAXPAYER_REG'
      Size = 30
    end
    object cdsEntityEDU_BACKGOUND_OTHER: TStringField
      FieldName = 'EDU_BACKGOUND_OTHER'
      Size = 100
    end
    object cdsEntityBUS_CAT_ID: TLargeintField
      FieldName = 'BUS_CAT_ID'
    end
    object cdsEntityGU_LEGALRELATION: TStringField
      FieldName = 'GU_LEGALRELATION'
      Size = 50
    end
    object cdsEntityMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntityMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntityAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntityAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntityUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntityUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntityNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntityISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntityID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEntityINVESTOR_ASSET_1: TStringField
      FieldName = 'INVESTOR_ASSET_1'
      Size = 1
    end
    object cdsEntityINVESTOR_ASSET_2: TStringField
      FieldName = 'INVESTOR_ASSET_2'
      Size = 1
    end
    object cdsEntityINVESTOR_ASSET_3: TStringField
      FieldName = 'INVESTOR_ASSET_3'
      Size = 1
    end
    object cdsEntityINVESTOR_OPERATING_PROFIT_1: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_1'
      Size = 1
    end
    object cdsEntityINVESTOR_OPERATING_PROFIT_2: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_2'
      Size = 1
    end
    object cdsEntityINVESTOR_OPERATING_PROFIT_3: TStringField
      FieldName = 'INVESTOR_OPERATING_PROFIT_3'
      Size = 1
    end
    object cdsEntityFATCA_A1: TStringField
      FieldName = 'FATCA_A1'
      Size = 1
    end
    object cdsEntityFATCA_A1_DESC: TStringField
      FieldName = 'FATCA_A1_DESC'
      Size = 50
    end
    object cdsEntityFATCA_A2: TStringField
      FieldName = 'FATCA_A2'
      Size = 1
    end
    object cdsEntityFATCA_A2_DESC: TStringField
      FieldName = 'FATCA_A2_DESC'
      Size = 50
    end
    object cdsEntityFATCA_A3: TStringField
      FieldName = 'FATCA_A3'
      Size = 1
    end
    object cdsEntityFATCA_A3_DESC: TStringField
      FieldName = 'FATCA_A3_DESC'
      Size = 50
    end
    object cdsEntityFATCA_B1: TStringField
      FieldName = 'FATCA_B1'
      Size = 1
    end
    object cdsEntityFATCA_B2: TStringField
      FieldName = 'FATCA_B2'
      Size = 1
    end
    object cdsEntityFATCA_B3: TStringField
      FieldName = 'FATCA_B3'
      Size = 1
    end
    object cdsEntityFATCA_B4: TStringField
      FieldName = 'FATCA_B4'
      Size = 1
    end
    object cdsEntityFATCA_B5: TStringField
      FieldName = 'FATCA_B5'
      Size = 1
    end
    object cdsEntityFATCA_B6: TStringField
      FieldName = 'FATCA_B6'
      Size = 1
    end
    object cdsEntityFATCA_B2_DESC: TStringField
      FieldName = 'FATCA_B2_DESC'
      Size = 50
    end
    object cdsEntityARTICLE_ASSOCIATION: TStringField
      FieldName = 'ARTICLE_ASSOCIATION'
      Size = 120
    end
    object cdsEntityASSET_OWNER: TStringField
      FieldName = 'ASSET_OWNER'
      Size = 1
    end
    object cdsEntitySUPPLEMENTARY_DOCTYPE: TStringField
      FieldName = 'SUPPLEMENTARY_DOCTYPE'
      Size = 1
    end
    object cdsEntitySUPPLEMENTARY_DOCEXP: TDateField
      FieldName = 'SUPPLEMENTARY_DOCEXP'
    end
    object cdsEntityqryEntAuth: TDataSetField
      FieldName = 'qryEntAuth'
    end
    object cdsEntityqryEntTrackInfo: TDataSetField
      FieldName = 'qryEntTrackInfo'
    end
    object cdsEntityqryEntSHL: TDataSetField
      FieldName = 'qryEntSHL'
    end
    object cdsEntityqryEntDOC: TDataSetField
      FieldName = 'qryEntDOC'
    end
    object cdsEntityqryEntBOD: TDataSetField
      FieldName = 'qryEntBOD'
    end
    object cdsEntityqryEntAddress: TDataSetField
      FieldName = 'qryEntAddress'
    end
    object cdsEntityDIRECTSID: TStringField
      FieldName = 'DIRECTSID'
      Size = 15
    end
    object cdsEntityqryEntContact: TDataSetField
      FieldName = 'qryEntContact'
    end
    object cdsEntityINFO_01: TStringField
      FieldName = 'INFO_01'
      Size = 1
    end
    object cdsEntityINFO_01_NAME: TStringField
      FieldName = 'INFO_01_NAME'
      Size = 150
    end
    object cdsEntityINFO_01_DESC1: TStringField
      FieldName = 'INFO_01_DESC1'
      Size = 50
    end
    object cdsEntityINFO_01_DESC2: TStringField
      FieldName = 'INFO_01_DESC2'
      Size = 50
    end
    object cdsEntityINFO_02: TStringField
      FieldName = 'INFO_02'
      Size = 1
    end
    object cdsEntityINFO_02_NAME: TStringField
      FieldName = 'INFO_02_NAME'
      Size = 150
    end
    object cdsEntityINFO_02_DESC1: TStringField
      FieldName = 'INFO_02_DESC1'
      Size = 50
    end
    object cdsEntityINFO_02_DESC2: TStringField
      FieldName = 'INFO_02_DESC2'
      Size = 50
    end
    object cdsEntityINFO_03: TStringField
      FieldName = 'INFO_03'
      Size = 1
    end
    object cdsEntityINFO_03_NAME: TStringField
      FieldName = 'INFO_03_NAME'
      Size = 150
    end
    object cdsEntityINFO_03_DESC1: TStringField
      FieldName = 'INFO_03_DESC1'
      Size = 50
    end
    object cdsEntityINFO_03_DESC2: TStringField
      FieldName = 'INFO_03_DESC2'
      Size = 50
    end
    object cdsEntityINFO_04: TStringField
      FieldName = 'INFO_04'
      Size = 1
    end
    object cdsEntityINFO_04_NAME: TStringField
      FieldName = 'INFO_04_NAME'
      Size = 150
    end
    object cdsEntityINFO_04_DESC1: TStringField
      FieldName = 'INFO_04_DESC1'
      Size = 50
    end
    object cdsEntityINFO_04_DESC2: TStringField
      FieldName = 'INFO_04_DESC2'
      Size = 50
    end
    object cdsEntityINFO_05: TStringField
      FieldName = 'INFO_05'
      Size = 1
    end
    object cdsEntityINFO_05_NAME: TStringField
      FieldName = 'INFO_05_NAME'
      Size = 150
    end
    object cdsEntityINFO_05_DESC1: TStringField
      FieldName = 'INFO_05_DESC1'
      Size = 50
    end
    object cdsEntityINFO_05_DESC2: TStringField
      FieldName = 'INFO_05_DESC2'
      Size = 50
    end
    object cdsEntityINFO_06: TStringField
      FieldName = 'INFO_06'
      Size = 1
    end
    object cdsEntityINFO_06_NAME: TStringField
      FieldName = 'INFO_06_NAME'
      Size = 150
    end
    object cdsEntityINFO_06_DESC1: TStringField
      FieldName = 'INFO_06_DESC1'
      Size = 50
    end
    object cdsEntityINFO_06_DESC2: TStringField
      FieldName = 'INFO_06_DESC2'
      Size = 50
    end
    object cdsEntityINFO_07: TStringField
      FieldName = 'INFO_07'
      Size = 1
    end
    object cdsEntityINFO_07_NAME: TStringField
      FieldName = 'INFO_07_NAME'
      Size = 150
    end
    object cdsEntityINFO_07_DESC1: TStringField
      FieldName = 'INFO_07_DESC1'
      Size = 50
    end
    object cdsEntityINFO_07_DESC2: TStringField
      FieldName = 'INFO_07_DESC2'
      Size = 50
    end
    object cdsEntityINFO_08: TStringField
      FieldName = 'INFO_08'
      Size = 1
    end
    object cdsEntityINFO_08_NAME: TStringField
      FieldName = 'INFO_08_NAME'
      Size = 150
    end
    object cdsEntityINFO_08_DESC1: TStringField
      FieldName = 'INFO_08_DESC1'
      Size = 50
    end
    object cdsEntityINFO_08_DESC2: TStringField
      FieldName = 'INFO_08_DESC2'
      Size = 50
    end
    object cdsEntityINFO_09: TStringField
      FieldName = 'INFO_09'
      Size = 1
    end
    object cdsEntityINFO_09_NAME: TStringField
      FieldName = 'INFO_09_NAME'
      Size = 150
    end
    object cdsEntityINFO_09_DESC1: TStringField
      FieldName = 'INFO_09_DESC1'
      Size = 50
    end
    object cdsEntityINFO_09_DESC2: TStringField
      FieldName = 'INFO_09_DESC2'
      Size = 50
    end
    object cdsEntityINFO_10: TStringField
      FieldName = 'INFO_10'
      Size = 1
    end
    object cdsEntityINFO_10_NAME: TStringField
      FieldName = 'INFO_10_NAME'
      Size = 150
    end
    object cdsEntityINFO_10_DESC1: TStringField
      FieldName = 'INFO_10_DESC1'
      Size = 50
    end
    object cdsEntityINFO_10_DESC2: TStringField
      FieldName = 'INFO_10_DESC2'
      Size = 50
    end
    object cdsEntityINFO_11: TStringField
      FieldName = 'INFO_11'
      Size = 1
    end
    object cdsEntityINFO_11_NAME: TStringField
      FieldName = 'INFO_11_NAME'
      Size = 150
    end
    object cdsEntityINFO_11_DESC1: TStringField
      FieldName = 'INFO_11_DESC1'
      Size = 50
    end
    object cdsEntityINFO_11_DESC2: TStringField
      FieldName = 'INFO_11_DESC2'
      Size = 50
    end
    object cdsEntityINFO_12: TStringField
      FieldName = 'INFO_12'
      Size = 1
    end
    object cdsEntityINFO_12_NAME: TStringField
      FieldName = 'INFO_12_NAME'
      Size = 150
    end
    object cdsEntityINFO_12_DESC1: TStringField
      FieldName = 'INFO_12_DESC1'
      Size = 50
    end
    object cdsEntityINFO_12_DESC2: TStringField
      FieldName = 'INFO_12_DESC2'
      Size = 50
    end
    object cdsEntityINFO_12_DESC3: TStringField
      FieldName = 'INFO_12_DESC3'
      Size = 50
    end
    object cdsEntityINFO_13: TStringField
      FieldName = 'INFO_13'
      Size = 1
    end
    object cdsEntityINFO_13_NAME: TStringField
      FieldName = 'INFO_13_NAME'
      Size = 150
    end
    object cdsEntityGU_ID_EXP: TDateTimeField
      FieldName = 'GU_ID_EXP'
    end
    object cdsEntityGU_GENDER: TIntegerField
      FieldName = 'GU_GENDER'
    end
    object cdsEntityGU_DOB: TDateTimeField
      FieldName = 'GU_DOB'
    end
  end
  object cdsOAContact: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOAContact
    Params = <>
    BeforePost = cdsOAContactBeforePost
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 432
    object cdsOAContactOAID: TIntegerField
      Tag = -1
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAContactSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOAContactCONTNAME: TStringField
      FieldName = 'CONTNAME'
      Size = 150
    end
    object cdsOAContactADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      Size = 1
    end
    object cdsOAContactADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      Size = 10
    end
    object cdsOAContactCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 5
    end
    object cdsOAContactPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsOAContactCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsOAContactADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object cdsOAContactADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object cdsOAContactADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object cdsOAContactZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsOAContactPHONE: TStringField
      FieldName = 'PHONE'
      OnChange = cdsOAContactPHONEChange
    end
    object cdsOAContactMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      OnChange = cdsOAContactMOBILEPHONEChange
      Size = 60
    end
    object cdsOAContactEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsOAContactFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object cdsOAContactIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsOAContactIDCARDNO: TStringField
      FieldName = 'IDCARDNO'
      Size = 30
    end
    object cdsOAContactIDCARDEXPIRE: TDateField
      FieldName = 'IDCARDEXPIRE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOAContactSENDBYEMAIL: TStringField
      FieldName = 'SENDBYEMAIL'
      Size = 1
    end
    object cdsOAContactSENDBYFAX: TStringField
      FieldName = 'SENDBYFAX'
      Size = 1
    end
    object cdsOAContactSENDBYSMS: TStringField
      FieldName = 'SENDBYSMS'
      Size = 1
    end
    object cdsOAContactSENDBYPOSTMAIL: TStringField
      FieldName = 'SENDBYPOSTMAIL'
      Size = 1
    end
    object cdsOAContactNOTIF_TC: TStringField
      FieldName = 'NOTIF_TC'
      Size = 1
    end
    object cdsOAContactNOTIF_SOA: TStringField
      FieldName = 'NOTIF_SOA'
      Size = 1
    end
    object cdsOAContactNOTIF_CORPACT: TStringField
      FieldName = 'NOTIF_CORPACT'
      Size = 1
    end
    object cdsOAContactNOTIF_IDENTITY: TStringField
      FieldName = 'NOTIF_IDENTITY'
      Size = 1
    end
    object cdsOAContactMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAContactMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAContactAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAContactAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAContactUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAContactUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAContactNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAContactISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAContactID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsContact: TDataSource
    DataSet = cdsOAContact
    Left = 752
    Top = 480
  end
  object cdsOAAuth: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOAAuth
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 480
    object cdsOAAuthOAID: TIntegerField
      Tag = -1
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAAuthSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOAAuthAUTH_PERSON_FIRSTNAME: TStringField
      FieldName = 'AUTH_PERSON_FIRSTNAME'
      Size = 40
    end
    object cdsOAAuthAUTH_PERSON_MIDDLENAME: TStringField
      FieldName = 'AUTH_PERSON_MIDDLENAME'
      Size = 40
    end
    object cdsOAAuthAUTH_PERSON_LASTNAME: TStringField
      FieldName = 'AUTH_PERSON_LASTNAME'
      Size = 40
    end
    object cdsOAAuthAUTH_PERSON_POSITION: TStringField
      FieldName = 'AUTH_PERSON_POSITION'
      Size = 120
    end
    object cdsOAAuthAUTH_PERSON_KTP: TStringField
      FieldName = 'AUTH_PERSON_KTP'
      Size = 100
    end
    object cdsOAAuthAUTH_PERSON_KTP_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_KTP_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAAuthAUTH_PERSON_NPWP: TStringField
      FieldName = 'AUTH_PERSON_NPWP'
      Size = 100
    end
    object cdsOAAuthAUTH_PERSON_NPWP_REGDATE: TDateField
      FieldName = 'AUTH_PERSON_NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAAuthAUTH_PERSON_PASSPORT: TStringField
      FieldName = 'AUTH_PERSON_PASSPORT'
      Size = 100
    end
    object cdsOAAuthAUTH_PERSON_PASSPORT_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_PASSPORT_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAAuthAUTH_PERSON_KITAS: TStringField
      FieldName = 'AUTH_PERSON_KITAS'
      Size = 100
    end
    object cdsOAAuthAUTH_PERSON_KITAS_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_KITAS_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAAuthAUTH_SEX: TStringField
      FieldName = 'AUTH_SEX'
      Size = 1
    end
    object cdsOAAuthAUTH_PAYCOLL: TBooleanField
      FieldName = 'AUTH_PAYCOLL'
    end
    object cdsOAAuthAUTH_STOCKCOLL: TBooleanField
      FieldName = 'AUTH_STOCKCOLL'
    end
    object cdsOAAuthAUTH_PLACEORDER: TBooleanField
      FieldName = 'AUTH_PLACEORDER'
    end
    object cdsOAAuthAUTH_NOTES: TStringField
      FieldName = 'AUTH_NOTES'
      Size = 500
    end
    object cdsOAAuthMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAAuthMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAAuthAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAAuthAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAAuthUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAAuthUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAAuthNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAAuthISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAAuthID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOAAuthSTREET: TStringField
      FieldName = 'STREET'
      Size = 200
    end
    object cdsOAAuthCITIZENSHIP: TStringField
      FieldName = 'CITIZENSHIP'
    end
    object cdsOAAuthCELLPHONE: TStringField
      FieldName = 'CELLPHONE'
      Size = 30
    end
    object cdsOAAuthPHONE: TStringField
      FieldName = 'PHONE'
      Size = 30
    end
    object cdsOAAuthFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object cdsOAAuthEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsOAAuthRELATION: TStringField
      FieldName = 'RELATION'
      Size = 200
    end
  end
  object dsAuth: TDataSource
    DataSet = cdsOAAuth
    Left = 720
    Top = 536
  end
  object PopupMenu1: TPopupMenu
    Left = 916
    Top = 256
    object View1: TMenuItem
      Caption = 'View'
      OnClick = View1Click
    end
  end
  object cdsAddrReff: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OAID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ADDRTYPE_REF'
        ParamType = ptUnknown
      end>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 556
    Top = 488
    object cdsAddrReffOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsAddrReffADDRTYPE: TStringField
      FieldName = 'ADDRTYPE'
      Required = True
      Size = 10
    end
    object cdsAddrReffADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      Size = 1
    end
    object cdsAddrReffADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      Size = 10
    end
    object cdsAddrReffCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 5
    end
    object cdsAddrReffPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsAddrReffCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsAddrReffADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object cdsAddrReffADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object cdsAddrReffADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object cdsAddrReffZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsAddrReffPHONE: TStringField
      FieldName = 'PHONE'
    end
    object cdsAddrReffMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 60
    end
    object cdsAddrReffEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsAddrReffFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object cdsAddrReffMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAddrReffMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAddrReffAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAddrReffAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAddrReffUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAddrReffUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAddrReffNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAddrReffISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAddrReffID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAddrReffRTRW: TStringField
      FieldName = 'RTRW'
      Size = 10
    end
    object cdsAddrReffRESIDENCETYPE: TStringField
      FieldName = 'RESIDENCETYPE'
      Size = 1
    end
    object cdsAddrReffOWNERSHIPSTATUS: TStringField
      FieldName = 'OWNERSHIPSTATUS'
      Size = 1
    end
    object cdsAddrReffRESIDENCETYPE_OTHER: TStringField
      FieldName = 'RESIDENCETYPE_OTHER'
      Size = 100
    end
    object cdsAddrReffOWNERSHIPSTATUS_OTHER: TStringField
      FieldName = 'OWNERSHIPSTATUS_OTHER'
      Size = 100
    end
  end
  object cdsDukcapil: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 604
    Top = 384
    object cdsDukcapilNOKECAMATAN: TStringField
      FieldName = 'NOKECAMATAN'
      Size = 255
    end
    object cdsDukcapilNOPRIBADI: TStringField
      FieldName = 'NOPRIBADI'
      Size = 255
    end
    object cdsDukcapilNOKK: TStringField
      FieldName = 'NOKK'
      Size = 255
    end
    object cdsDukcapilNAMA1: TStringField
      FieldName = 'NAMA1'
      Size = 255
    end
    object cdsDukcapilNAMA2: TStringField
      FieldName = 'NAMA2'
      Size = 255
    end
    object cdsDukcapilNAMA3: TStringField
      FieldName = 'NAMA3'
      Size = 255
    end
    object cdsDukcapilKABUPATEN: TStringField
      FieldName = 'KABUPATEN'
      Size = 255
    end
    object cdsDukcapilAGAMA: TStringField
      FieldName = 'AGAMA'
      Size = 255
    end
    object cdsDukcapilRW: TStringField
      FieldName = 'RW'
      Size = 10
    end
    object cdsDukcapilKECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Size = 255
    end
    object cdsDukcapilPEKERJAAN: TStringField
      FieldName = 'PEKERJAAN'
      Size = 255
    end
    object cdsDukcapilRT: TStringField
      FieldName = 'RT'
      Size = 10
    end
    object cdsDukcapilNOKELURAHAN: TStringField
      FieldName = 'NOKELURAHAN'
      Size = 255
    end
    object cdsDukcapilALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 255
    end
    object cdsDukcapilTEMPATLAHIR: TStringField
      FieldName = 'TEMPATLAHIR'
      Size = 255
    end
    object cdsDukcapilTANGGALLAHIR: TStringField
      FieldName = 'TANGGALLAHIR'
      Size = 10
    end
    object cdsDukcapilPENDIDIKAN: TStringField
      FieldName = 'PENDIDIKAN'
      Size = 255
    end
    object cdsDukcapilSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 255
    end
    object cdsDukcapilIBUKANDUNG: TStringField
      FieldName = 'IBUKANDUNG'
      Size = 255
    end
    object cdsDukcapilPROVINSI: TStringField
      FieldName = 'PROVINSI'
      Size = 255
    end
    object cdsDukcapilNOKABUPATEN: TStringField
      FieldName = 'NOKABUPATEN'
      Size = 255
    end
    object cdsDukcapilKELURAHAN: TStringField
      FieldName = 'KELURAHAN'
      Size = 255
    end
    object cdsDukcapilKELAMIN: TStringField
      FieldName = 'KELAMIN'
      Size = 10
    end
  end
  object cdsCheckOAKTP: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'KTPNO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryCheckOAKTP'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 548
    Top = 368
    object cdsCheckOAKTPKTP: TStringField
      FieldName = 'KTP'
      Size = 30
    end
    object cdsCheckOAKTPENTNAME: TStringField
      FieldName = 'ENTNAME'
      Size = 200
    end
  end
  object cdsOAHeir: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'OAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryOAHeir'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsOAHeirNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 500
    Top = 240
    object cdsOAHeirOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAHeirSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsOAHeirHEIR_NAME: TStringField
      FieldName = 'HEIR_NAME'
      Size = 500
    end
    object cdsOAHeirRELATION: TStringField
      FieldName = 'RELATION'
      Size = 100
    end
    object cdsOAHeirNO_TELP: TStringField
      FieldName = 'NO_TELP'
    end
    object cdsOAHeirNIK: TStringField
      FieldName = 'NIK'
    end
    object cdsOAHeirMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOAHeirMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOAHeirAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOAHeirAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOAHeirUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOAHeirUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOAHeirNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOAHeirISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOAHeirID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsOAHeir: TDataSource
    DataSet = cdsOAHeir
    Left = 500
    Top = 288
  end
end
