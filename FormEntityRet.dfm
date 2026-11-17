inherited frmEntityRet: TfrmEntityRet
  Caption = 'Retail Entity'
  ClientHeight = 721
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 760
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 73
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 73
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 42
      Top = 10
      DataBinding.DataField = 'ENTTCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 42
      Top = 37
      DataBinding.DataField = 'ENTNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 367
    end
    object cxDBTextEdit17: TcxDBTextEdit [2]
      Left = 210
      Top = 10
      DataBinding.DataField = 'SIDNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 199
    end
    object cxDBImageComboBox5: TcxDBImageComboBox [3]
      Left = 647
      Top = 10
      RepositoryItem = dmGlobal.luEntityStatus
      DataBinding.DataField = 'ENTSTATUS'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 753
      Top = 10
      Caption = 'Affiliation'
      DataBinding.DataField = 'AFFIL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [5]
      Left = 488
      Top = 10
      RepositoryItem = dmGlobal.luLocalForeign
      DataBinding.DataField = 'INVS_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 488
      Top = 37
      RepositoryItem = dmGlobal.luInvestorCategory
      DataBinding.DataField = 'INVESTORCAT'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 100
    end
    object cxDBTextEdit14: TcxDBTextEdit [7]
      Left = 647
      Top = 37
      DataBinding.DataField = 'DIRECTSID'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 100
    end
    object cmbRisk: TcxDBImageComboBox [8]
      Left = 807
      Top = 37
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
      TabOrder = 8
      Width = 138
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 367
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SID No.'
      Control = cxDBTextEdit17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 199
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Inv. Type'
      Control = cxDBImageComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Inv. Category'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Direct SID'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Client Risk'
      Control = cmbRisk
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 652
    Width = 994
    ExplicitTop = 652
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      TabOrder = 4
      ExplicitLeft = 880
    end
    object cxButton1: TcxButton [3]
      Left = 172
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton1'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [4]
      Left = 253
      Top = 10
      Width = 75
      Height = 25
      Caption = 'cxButton2'
      TabOrder = 3
      OnClick = cxButton2Click
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 3
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      Parent = dxLayoutGroup2
      Visible = False
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 701
    Width = 994
    ExplicitTop = 701
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 631
    Width = 994
    ExplicitTop = 631
    ExplicitWidth = 994
  end
  object pgEntity: TcxPageControl [4]
    Left = 0
    Top = 73
    Width = 994
    Height = 558
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 554
    ClientRectLeft = 4
    ClientRectRight = 990
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'Identity'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 129
          Top = 64
          DataBinding.DataField = 'RET_BIRTHPLACE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 200
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 448
          Top = 64
          DataBinding.DataField = 'RET_BIRTDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 121
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 615
          Top = 64
          RepositoryItem = dmGlobal.rgSex
          DataBinding.DataField = 'RET_GENDER'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 28
          Width = 121
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 129
          Top = 125
          RepositoryItem = dmGlobal.luMaritalStatus
          DataBinding.DataField = 'RET_MARITALSTATUS'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 200
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 448
          Top = 125
          DataBinding.DataField = 'RET_SPOUSENAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 200
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 129
          Top = 152
          DataBinding.DataField = 'RET_HEIRNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 200
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 129
          Top = 179
          RepositoryItem = dmGlobal.luEducationalBackground
          DataBinding.DataField = 'RET_EDUBACKGROUND'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 128
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 448
          Top = 152
          DataBinding.DataField = 'RET_HEIRRELATION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 200
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 129
          Top = 403
          DataBinding.DataField = 'COMPANY'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 30
          Width = 334
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 370
          Top = 237
          DataBinding.DataField = 'NPWP_REGDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 448
          Top = 98
          DataBinding.DataField = 'MOTHER_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 200
        end
        object TaxStatus: TcxDBImageComboBox
          Left = 370
          Top = 208
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
          TabOrder = 16
          Width = 120
        end
        object cmbOccupation: TcxDBImageComboBox
          Left = 129
          Top = 345
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
          TabOrder = 26
          Width = 150
        end
        object cxDBTextEdit39: TcxDBTextEdit
          Left = 375
          Top = 345
          DataBinding.DataField = 'OCCUPATION_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 150
        end
        object cxDBTextEdit53: TcxDBTextEdit
          Left = 129
          Top = 374
          DataBinding.DataField = 'FIELD_WORK_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 334
        end
        object cxDBTextEdit55: TcxDBTextEdit
          Left = 129
          Top = 461
          DataBinding.DataField = 'POSITION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Width = 150
        end
        object cxDBTextEdit56: TcxDBTextEdit
          Left = 129
          Top = 490
          DataBinding.DataField = 'JOB_DIVISION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 36
          Width = 150
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 585
          Top = 403
          DataBinding.DataField = 'YOS_YEAR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 50
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 676
          Top = 403
          DataBinding.DataField = 'YOS_MONTH'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 32
          Width = 50
        end
        object cxDBTextEdit57: TcxDBTextEdit
          Left = 129
          Top = 432
          DataBinding.DataField = 'COMPANY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 33
          Width = 82
        end
        object cxDBTextEdit58: TcxDBTextEdit
          Left = 238
          Top = 432
          DataBinding.DataField = 'COMPANY_PHONE_EXT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 34
          Width = 41
        end
        object eduBackgroundOthers: TcxDBTextEdit
          Left = 296
          Top = 179
          DataBinding.DataField = 'EDU_BACKGOUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 194
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 129
          Top = 237
          DataBinding.DataField = 'NPWP'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '99.999.999.9-999.999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 129
          Top = 208
          RepositoryItem = dmGlobal.luTaxID
          DataBinding.DataField = 'TAXID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 121
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 129
          Top = 264
          DataBinding.DataField = 'KTP'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 370
          Top = 264
          DataBinding.DataField = 'KTP_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 121
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 129
          Top = 291
          DataBinding.DataField = 'PASSPORT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 121
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 129
          Top = 318
          DataBinding.DataField = 'KITAS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 121
        end
        object cxDBDateEdit6: TcxDBDateEdit
          Left = 370
          Top = 291
          DataBinding.DataField = 'PASSPORT_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 23
          Width = 121
        end
        object cxDBDateEdit7: TcxDBDateEdit
          Left = 370
          Top = 318
          DataBinding.DataField = 'KITAS_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 25
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 710
          Top = 345
          DataBinding.DataField = 'NAT_BUSINESS_ENTREPRENEUR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 150
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 129
          Top = 98
          RepositoryItem = dmGlobal.luNationality
          DataBinding.DataField = 'CNTREST'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 200
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 129
          Top = 10
          DataBinding.DataField = 'FIRSTNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 210
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 410
          Top = 10
          DataBinding.DataField = 'MIDDLENAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 592
          Top = 10
          DataBinding.DataField = 'LASTNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 129
          Top = 37
          DataBinding.DataField = 'ENTDESC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 402
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 497
          Top = 264
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Life Time'
          DataBinding.DataField = 'KTP_LIFETIME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Birth Place'
          Control = cxDBTextEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Birth Date'
          Control = cxDBDateEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Gender'
          Control = cxDBRadioGroup1
          ControlOptions.OriginalHeight = 28
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
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
        object dxLayoutControl3Item10: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Heir Name'
          Control = cxDBTextEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item11: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Educational Background'
          Control = cxDBImageComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 128
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
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
        object dxLayoutControl3Item12: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Heir Relation'
          Control = cxDBTextEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 1
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
        object dxLayoutControl3Item24: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP Reg. Date'
          Control = cxDBDateEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
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
        object dxLayoutControl3Item22: TdxLayoutItem
          Parent = dxLayoutControl3Group19
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'TaxPayer Reg Status'
          Control = TaxStatus
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
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
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation'
          Control = cmbOccupation
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcOccupationOther: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation Other'
          Control = cxDBTextEdit39
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group10: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 11
        end
        object dxLayoutControl3Item25: TdxLayoutItem
          Parent = dxLayoutControl3Group16
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Field Work'
          Control = cxDBTextEdit53
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 334
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group11: TdxLayoutGroup
          Parent = dxLayoutControl3Group10
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item26: TdxLayoutItem
          Parent = dxLayoutControl3Group15
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit55
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item27: TdxLayoutItem
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Job Function / Division'
          Control = cxDBTextEdit56
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 16
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
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
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
          ControlOptions.OriginalWidth = 82
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group13: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 15
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
        object dxLayoutControl3Group15: TdxLayoutGroup
          Parent = dxLayoutControl3Group13
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group16: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 12
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          CaptionOptions.Text = 'Other'
          Control = eduBackgroundOthers
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 194
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item33: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP'
          Control = cxDBMaskEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          Parent = dxLayoutControl3Group19
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax ID'
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
          CaptionOptions.Text = 'KTP'
          Control = cxDBMaskEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group11
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object lcKTPExpDate: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'KTP Exp. Date'
          Control = cxDBDateEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
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
          Parent = dxLayoutControl3Group2
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
          LayoutDirection = ldHorizontal
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
          CaptionOptions.Text = 'First Name'
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
          Parent = dxLayoutControl3Group_Root
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
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Description'
          Control = cxDBTextEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 402
          ControlOptions.ShowBorder = False
          Index = 0
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
        object dxLayoutControl3Item35: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'cxDBCheckBox2'
          CaptionOptions.Visible = False
          Control = cxDBCheckBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 64
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object tabHeir: TcxTabSheet
      Caption = 'Data Heir'
      ImageIndex = 9
      object drdHeir: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object gvwHeir: TcxGridDBLayoutView
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
          DataController.DataSource = dsEntHeir
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.Inserting = False
          object gvwHeirENTTID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ENTTID'
            Visible = False
            LayoutItem = gvwHeirLayoutItem1
          end
          object gvwHeirSEQID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQID'
            Visible = False
            LayoutItem = gvwHeirLayoutItem2
          end
          object gvwHeirHEIR_NAME: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'HEIR_NAME'
            LayoutItem = gvwHeirLayoutItem3
          end
          object gvwHeirRELATION: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'RELATION'
            LayoutItem = gvwHeirLayoutItem4
          end
          object gvwHeirNO_TELP: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NO_TELP'
            LayoutItem = gvwHeirLayoutItem5
          end
          object gvwHeirNIK: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NIK'
            LayoutItem = gvwHeirLayoutItem6
          end
          object gvwHeirMODDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODDA'
            Visible = False
            LayoutItem = gvwHeirLayoutItem7
          end
          object gvwHeirMODUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'MODUI'
            Visible = False
            LayoutItem = gvwHeirLayoutItem8
          end
          object gvwHeirAPPDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPDA'
            Visible = False
            LayoutItem = gvwHeirLayoutItem9
          end
          object gvwHeirAPPUI: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'APPUI'
            Visible = False
            LayoutItem = gvwHeirLayoutItem10
          end
          object gvwHeirUNDER4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            LayoutItem = gvwHeirLayoutItem11
          end
          object gvwHeirUNDER4YDA: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            LayoutItem = gvwHeirLayoutItem12
          end
          object gvwHeirNOTES4Y: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            LayoutItem = gvwHeirLayoutItem13
          end
          object gvwHeirISDEL: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            LayoutItem = gvwHeirLayoutItem14
          end
          object gvwHeirID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ID'
            Visible = False
            LayoutItem = gvwHeirLayoutItem15
          end
          object gvwHeirGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Layout'
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemIndex = 1
            ShowBorder = False
            Index = -1
          end
          object gvwHeirLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem3: TcxGridLayoutItem
            Parent = gvwHeirGroup_Root
            Index = 0
          end
          object gvwHeirLayoutItem4: TcxGridLayoutItem
            Parent = gvwHeirAutoCreatedGroup1
            AlignHorz = ahClient
            SizeOptions.Width = 206
            Index = 0
          end
          object gvwHeirLayoutItem5: TcxGridLayoutItem
            Parent = gvwHeirAutoCreatedGroup1
            AlignVert = avClient
            SizeOptions.Width = 156
            Index = 1
          end
          object gvwHeirLayoutItem6: TcxGridLayoutItem
            Parent = gvwHeirGroup_Root
            Index = 2
          end
          object gvwHeirLayoutItem7: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem8: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem9: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem10: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem11: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem12: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem13: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem14: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirLayoutItem15: TcxGridLayoutItem
            Index = -1
          end
          object gvwHeirAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = gvwHeirGroup_Root
            LayoutDirection = ldHorizontal
            Index = 1
          end
        end
        object glvHeir: TcxGridLevel
          GridView = gvwHeir
        end
      end
    end
    object tabGuarantor: TcxTabSheet
      Caption = 'Data Guarantor'
      ImageIndex = 5
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 530
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
              Value = 1
            end
            item
              Description = 'Female'
              Value = 2
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
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object GuarantorPanel: TdxLayoutGroup
          Parent = dxLayoutGroup5
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
        object dxLayoutItem2: TdxLayoutItem
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
        object dxLayoutItem3: TdxLayoutItem
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
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tabAuthPerson: TcxTabSheet
      Caption = 'Authorized Person'
      ImageIndex = 7
      object grdAuth: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
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
          object glvAuthENTTID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ENTTID'
            Visible = False
            LayoutItem = glvAuthLayoutItem2
          end
          object glvAuthSEQNO: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQNO'
            Visible = False
            LayoutItem = cxGridLayoutItem1
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
          object dxLayoutGroup13: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAuthLayoutItem2: TcxGridLayoutItem
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
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup14
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
            Parent = glvAuthGroup3
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem12: TcxGridLayoutItem
            Parent = glvAuthGroup3
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem13: TcxGridLayoutItem
            Parent = glvAuthGroup4
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem14: TcxGridLayoutItem
            Parent = glvAuthGroup4
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem15: TcxGridLayoutItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            Index = 8
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
            Index = 10
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
          object dxLayoutGroup14: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object glvAuthGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object glvAuthGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object glvAuthGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object glvAuthGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object cxGridLayoutItem1: TcxGridLayoutItem
            Index = -1
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
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 397
          Top = 171
          RepositoryItem = dmGlobal.rgAnnualIncome
          Caption = 'Income per annum'
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
          Left = 397
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
          Caption = 'Source of Funds'
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
          Caption = 'Investment Objectives'
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
          Width = 190
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
          Width = 166
        end
        object cbAssetOwner: TcxDBImageComboBox
          Left = 268
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
          Width = 190
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.Visible = False
          Control = cxDBRadioGroup2
          ControlOptions.OriginalHeight = 155
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutControl4Group1
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
        object dxLayoutControl4Group1: TdxLayoutGroup
          Parent = dxLayoutControl4Group10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group10: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group12: TdxLayoutGroup
          Parent = dxLayoutControl4Group10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutControl4Group10
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
        object dxLayoutControl4Item1: TdxLayoutItem
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
          CaptionOptions.Text = 'Asset Owner'
          Control = cbAssetOwner
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 123
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item5: TdxLayoutItem
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
    object tabAddress: TcxTabSheet
      Caption = 'Address'
      ImageIndex = 3
      object grdAddress: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
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
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Append.Visible = True
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
          OptionsCustomize.RecordExpanding = True
          OptionsData.Appending = True
          OptionsView.ViewMode = lvvmMultiColumn
          object glvAddressENTTID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ENTTID'
            Visible = False
            LayoutItem = glvAddressLayoutItem1
          end
          object glvAddressADDRTYPE: TcxGridDBLayoutViewItem
            Caption = 'Address Type'
            DataBinding.FieldName = 'ADDRTYPE'
            RepositoryItem = dmGlobal.luAddressTypeInstitution
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
            RepositoryItem = dmGlobal.luAddressTypeInstitution
            LayoutItem = glvAddressLayoutItem24
          end
          object glvAddressCOUNTCODE: TcxGridDBLayoutViewItem
            Caption = 'Country'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            LayoutItem = glvAddressLayoutItem3
          end
          object glvAddressPROVCODE: TcxGridDBLayoutViewItem
            Caption = 'Province'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
            LayoutItem = glvAddressLayoutItem4
          end
          object glvAddressCITY: TcxGridDBLayoutViewItem
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            RepositoryItem = dmGlobal.luCity
            LayoutItem = glvAddressLayoutItem9
          end
          object glvAddressADDRESS1: TcxGridDBLayoutViewItem
            Caption = 'Address 1'
            DataBinding.FieldName = 'ADDRESS1'
            LayoutItem = glvAddressLayoutItem6
          end
          object glvAddressADDRESS2: TcxGridDBLayoutViewItem
            Caption = 'Address 2'
            DataBinding.FieldName = 'ADDRESS2'
            LayoutItem = glvAddressLayoutItem7
          end
          object glvAddressADDRESS3: TcxGridDBLayoutViewItem
            Caption = 'Address 3'
            DataBinding.FieldName = 'ADDRESS3'
            LayoutItem = glvAddressLayoutItem8
          end
          object glvAddressZIPCODE: TcxGridDBLayoutViewItem
            Caption = 'ZIP Code'
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
          object dxLayoutGroup8: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAddressLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 5
          end
          object glvAddressLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 6
          end
          object glvAddressLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem6: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAddressLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvAddressLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvAddressLayoutItem9: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            CaptionOptions.AlignHorz = taRightJustify
            Index = 7
          end
          object glvAddressLayoutItem10: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            SizeOptions.Width = 199
            CaptionOptions.AlignHorz = taRightJustify
            Index = 8
          end
          object glvAddressLayoutItem11: TcxGridLayoutItem
            Parent = glvAddressGroup3
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem12: TcxGridLayoutItem
            Parent = glvAddressGroup4
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem13: TcxGridLayoutItem
            Parent = glvAddressGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressLayoutItem14: TcxGridLayoutItem
            Parent = glvAddressGroup3
            AlignHorz = ahClient
            SizeOptions.Width = 200
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
            Parent = dxLayoutGroup8
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object glvAddressGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup8
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 10
          end
          object glvAddressLayoutItem2: TcxGridLayoutItem
            Parent = dxLayoutGroup9
            SizeOptions.Width = 142
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem24: TcxGridLayoutItem
            Parent = dxLayoutGroup9
            AlignHorz = ahClient
            CaptionOptions.Visible = False
            Index = 1
          end
          object dxLayoutGroup9: TdxLayoutGroup
            Parent = dxLayoutGroup8
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object glvAddressLayoutItem1: TcxGridLayoutItem
            Index = -1
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
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
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
          object glvContactENTTID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ENTTID'
            Visible = False
            LayoutItem = glvContactLayoutItem1
          end
          object glvContactSEQNO: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SEQNO'
            Visible = False
            LayoutItem = glvContactLayoutItem2
          end
          object glvContactCONTNAME: TcxGridDBLayoutViewItem
            Caption = 'Contact Name'
            DataBinding.FieldName = 'CONTNAME'
            LayoutItem = glvContactLayoutItem3
          end
          object glvContactADDR_REF: TcxGridDBLayoutViewItem
            Caption = 'Refer to Client Address'
            DataBinding.FieldName = 'ADDR_REF'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem4
          end
          object glvContactADDRTYPE_REF: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ADDRTYPE_REF'
            RepositoryItem = dmGlobal.luAddressTypeIndividual
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
            Caption = 'Mobile Phone'
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
            Caption = 'ID Card'
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
            LayoutItem = glvContactLayoutItem20
          end
          object glvContactSENDBYFAX: TcxGridDBLayoutViewItem
            Caption = 'Fax Notification'
            DataBinding.FieldName = 'SENDBYFAX'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem21
          end
          object glvContactSENDBYSMS: TcxGridDBLayoutViewItem
            Caption = 'SMS Notification'
            DataBinding.FieldName = 'SENDBYSMS'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem22
          end
          object glvContactSENDBYPOSTMAIL: TcxGridDBLayoutViewItem
            Caption = 'Post Mail Notification'
            DataBinding.FieldName = 'SENDBYPOSTMAIL'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem23
          end
          object glvContactNOTIF_TC: TcxGridDBLayoutViewItem
            Caption = 'Trade Confirmation'#39
            DataBinding.FieldName = 'NOTIF_TC'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem24
          end
          object glvContactNOTIF_SOA: TcxGridDBLayoutViewItem
            Caption = 'Statement Of Account'
            DataBinding.FieldName = 'NOTIF_SOA'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem25
          end
          object glvContactNOTIF_CORPACT: TcxGridDBLayoutViewItem
            Caption = 'Corporate Action'
            DataBinding.FieldName = 'NOTIF_CORPACT'
            RepositoryItem = dmGlobal.chkStandard
            LayoutItem = glvContactLayoutItem26
          end
          object glvContactNOTIF_IDENTITY: TcxGridDBLayoutViewItem
            Caption = 'Client Identity'
            DataBinding.FieldName = 'NOTIF_IDENTITY'
            RepositoryItem = dmGlobal.chkStandard
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
          object dxLayoutGroup6: TdxLayoutGroup
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
            Parent = dxLayoutGroup6
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Visible = False
            Index = 1
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
            Parent = dxLayoutGroup6
            AlignHorz = ahLeft
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvContactLayoutItem14: TcxGridLayoutItem
            Parent = glvContactGroup5
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem15: TcxGridLayoutItem
            Parent = glvContactGroup3
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem16: TcxGridLayoutItem
            Parent = glvContactGroup4
            AlignHorz = ahLeft
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
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
            Parent = glvContactGroup3
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem21: TcxGridLayoutItem
            Parent = glvContactGroup4
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem22: TcxGridLayoutItem
            Parent = glvContactGroup5
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem23: TcxGridLayoutItem
            Parent = dxLayoutGroup6
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvContactLayoutItem24: TcxGridLayoutItem
            Parent = glvContactGroup8
            SizeOptions.Width = 119
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem25: TcxGridLayoutItem
            Parent = glvContactGroup10
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem26: TcxGridLayoutItem
            Parent = glvContactGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem27: TcxGridLayoutItem
            Parent = glvContactGroup10
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
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
          object dxLayoutGroup7: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object glvContactGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object glvContactGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object glvContactGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object glvContactGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object glvContactGroup7: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'Notification For'
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            Index = 8
          end
          object glvContactGroup8: TdxLayoutGroup
            Parent = glvContactGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object glvContactGroup10: TdxLayoutGroup
            Parent = glvContactGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object glvContactLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = glvContact
        end
      end
    end
    object tabDocument: TcxTabSheet
      Caption = 'Document'
      ImageIndex = 4
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object gvwDocument: TcxGridDBTableView
          PopupMenu = pmDocument
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
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
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object gvwTracking: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
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
        Width = 986
        Height = 530
        Align = alClient
        TabOrder = 0
        object KYC21: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A2_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 59
          Visible = False
          Width = 150
        end
        object KYC31: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A3_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 62
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequiredFatcha
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 55
          Visible = False
          Width = 74
        end
        object KYC11: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_A1_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 56
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequiredFatcha
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 58
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequiredFatcha
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 61
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
          TabOrder = 64
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
          TabOrder = 66
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
          TabOrder = 68
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
          TabOrder = 70
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
          TabOrder = 72
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
          TabOrder = 74
          Visible = False
          Width = 74
        end
        object cxLabel9: TcxLabel
          Left = 45
          Top = 44
          AutoSize = False
          Caption = 
            'Apakah keluarga atau kerabat anda bekerja pada [SECURITIES] Grou' +
            'p ?'#13#10'/ Does any of yout family or relative works for [SECURITIES' +
            '] Group ?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel10: TcxLabel
          Left = 45
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
          Width = 900
        end
        object cxLabel11: TcxLabel
          Left = 45
          Top = 200
          AutoSize = False
          Caption = 
            'Apakah Anda memiliki hubungan dengan pemegang saham/Komisaris/Di' +
            'reksi/Karyawan PT Corpus Sekuritas?'#13#10'/ Are you related to any sh' +
            'areholder/Commissioner/Director/Employee of PT Corpus Sekuritas?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel12: TcxLabel
          Left = 45
          Top = 265
          AutoSize = False
          Caption = 
            'Apakah keluarga Anda memiliki rekening Efek di PT Corpus Sekurit' +
            'as?'#13#10'/ Does your family own an existing Securities Account in PT' +
            ' Corpus Sekuritas?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel13: TcxLabel
          Left = 45
          Top = 330
          AutoSize = False
          Caption = 
            'Apakah Anda seorang pemegang saham pengendali dari perusahaan ya' +
            'ng memiliki rekening efek di PT Corpus Sekuritas?'#13#10'/ Are you a p' +
            'rincipal shareholders of any company that currently has a securi' +
            'ties account in PT Corpus Sekuritas?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel14: TcxLabel
          Left = 45
          Top = 395
          AutoSize = False
          Caption = 
            'Apakah Anda memiliki kendali terhadap salah satu rekening efek d' +
            'i PT Corpus Sekuritas? '#13#10'/ Do you have any influence/control of ' +
            'any existing Securities Account in PT Corpus Sekuritas?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel15: TcxLabel
          Left = 45
          Top = 460
          AutoSize = False
          Caption = 
            'Apakah Anda merupakan pengurus atau pemegang saham pengendali (>' +
            ' 35%) pada salah satu emiten?'#13#10'/ Are you a director, commissione' +
            'r or controlling shareholders (> 35%) in a listed company?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel16: TcxLabel
          Left = 45
          Top = 525
          AutoSize = False
          Caption = 
            'Apakah Anda merupakan pengurus atau pemegang saham Perusahaan Ef' +
            'ek (*PE*) di Indonesia?'#13#10'/ Are you a director, commissioner, or ' +
            'controlling shareholder in a Securities Company?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel17: TcxLabel
          Left = 45
          Top = 590
          AutoSize = False
          Caption = 
            'Apakah Anda pernah/masih memiliki investasi di pasar modal?'#13#10'/ H' +
            'ave you ever/still owned an investment product in capital market' +
            '?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel18: TcxLabel
          Left = 45
          Top = 655
          AutoSize = False
          Caption = 
            'Apakah Anda memiliki 5% atau lebih saham suatu perusahaan publik' +
            '?'#13#10'/ Do you currently hold 5% or more share ownership in any of ' +
            'a publicly listed company?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel19: TcxLabel
          Left = 45
          Top = 720
          AutoSize = False
          Caption = 
            'Apakah Anda sekarang/sebelumnya/akan menduduki posisi/sedang dic' +
            'alonkan untuk suatu posisi publik / politis (Politically Exposed' +
            ' Person)?'#13#10'/ Are you now/previously/will hold/be nominated for a' +
            'ny position exposed to public (PEP)?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cxLabel20: TcxLabel
          Left = 45
          Top = 785
          AutoSize = False
          Caption = 
            'Apakah keluarga Anda sekarang/sebelumnya/akan menduduki posisi/s' +
            'edang dicalonkan untuk suatu posisi publik / politis (Politicall' +
            'y Exposed Person)?'#13#10'/ Are your family now/previously/will hold/b' +
            'e nominated for any position exposed to public (PEP)?'
          Style.HotTrack = False
          Height = 30
          Width = 900
        end
        object cmb: TcxDBImageComboBox
          Left = 45
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired2Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 74
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 205
          Top = 80
          DataBinding.DataField = 'INFO_01_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 300
        end
        object cxDBTextEdit42: TcxDBTextEdit
          Left = 600
          Top = 80
          DataBinding.DataField = 'INFO_01_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBImageComboBox16: TcxDBImageComboBox
          Left = 45
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired3Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 74
        end
        object cxDBTextEdit43: TcxDBTextEdit
          Left = 205
          Top = 171
          DataBinding.DataField = 'INFO_02_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 300
        end
        object cxDBTextEdit44: TcxDBTextEdit
          Left = 600
          Top = 171
          DataBinding.DataField = 'INFO_02_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit45: TcxDBTextEdit
          Left = 790
          Top = 171
          DataBinding.DataField = 'INFO_02_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cxDBImageComboBox17: TcxDBImageComboBox
          Left = 45
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired3Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 74
        end
        object cxDBTextEdit46: TcxDBTextEdit
          Left = 205
          Top = 236
          DataBinding.DataField = 'INFO_03_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 300
        end
        object cxDBTextEdit47: TcxDBTextEdit
          Left = 600
          Top = 236
          DataBinding.DataField = 'INFO_03_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 121
        end
        object cxDBTextEdit48: TcxDBTextEdit
          Left = 790
          Top = 236
          DataBinding.DataField = 'INFO_03_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 121
        end
        object cxDBImageComboBox18: TcxDBImageComboBox
          Left = 45
          Top = 301
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired3Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 74
        end
        object cxDBTextEdit49: TcxDBTextEdit
          Left = 205
          Top = 301
          DataBinding.DataField = 'INFO_04_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 300
        end
        object cxDBTextEdit50: TcxDBTextEdit
          Left = 600
          Top = 301
          DataBinding.DataField = 'INFO_04_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 121
        end
        object cxDBImageComboBox19: TcxDBImageComboBox
          Left = 45
          Top = 366
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_05'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired2Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 74
        end
        object cxDBImageComboBox20: TcxDBImageComboBox
          Left = 45
          Top = 431
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_06'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired2Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 74
        end
        object cxDBImageComboBox21: TcxDBImageComboBox
          Left = 45
          Top = 496
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_07'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired3Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 74
        end
        object cxDBImageComboBox22: TcxDBImageComboBox
          Left = 45
          Top = 561
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_08'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired3Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 33
          Width = 74
        end
        object cxDBImageComboBox23: TcxDBImageComboBox
          Left = 45
          Top = 626
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_09'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired2Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 38
          Width = 74
        end
        object cxDBImageComboBox24: TcxDBImageComboBox
          Left = 45
          Top = 691
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_10'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired1Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 42
          Width = 74
        end
        object cxDBImageComboBox25: TcxDBImageComboBox
          Left = 45
          Top = 756
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_11'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired2Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 45
          Width = 74
        end
        object cxDBImageComboBox26: TcxDBImageComboBox
          Left = 45
          Top = 821
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_12'
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
          Properties.OnChange = ChangePropertiesDBComboBoxRequired4Field
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 49
          Width = 74
        end
        object cxDBTextEdit51: TcxDBTextEdit
          Left = 205
          Top = 366
          DataBinding.DataField = 'INFO_05_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 300
        end
        object cxDBTextEdit52: TcxDBTextEdit
          Left = 600
          Top = 366
          DataBinding.DataField = 'INFO_05_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 121
        end
        object cxDBTextEdit54: TcxDBTextEdit
          Left = 205
          Top = 431
          DataBinding.DataField = 'INFO_06_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 300
        end
        object cxDBTextEdit59: TcxDBTextEdit
          Left = 600
          Top = 431
          DataBinding.DataField = 'INFO_06_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 121
        end
        object cxDBTextEdit60: TcxDBTextEdit
          Left = 205
          Top = 496
          DataBinding.DataField = 'INFO_07_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 300
        end
        object cxDBTextEdit62: TcxDBTextEdit
          Left = 790
          Top = 496
          DataBinding.DataField = 'INFO_07_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 121
        end
        object cxDBTextEdit63: TcxDBTextEdit
          Left = 205
          Top = 561
          DataBinding.DataField = 'INFO_08_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 34
          Width = 300
        end
        object cxDBTextEdit65: TcxDBTextEdit
          Left = 790
          Top = 561
          DataBinding.DataField = 'INFO_08_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 36
          Width = 121
        end
        object cxDBTextEdit66: TcxDBTextEdit
          Left = 205
          Top = 626
          DataBinding.DataField = 'INFO_09_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 39
          Width = 300
        end
        object cxDBTextEdit67: TcxDBTextEdit
          Left = 600
          Top = 626
          DataBinding.DataField = 'INFO_09_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 40
          Width = 121
        end
        object cxDBTextEdit68: TcxDBTextEdit
          Left = 205
          Top = 691
          DataBinding.DataField = 'INFO_10_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 43
          Width = 300
        end
        object cxDBTextEdit69: TcxDBTextEdit
          Left = 205
          Top = 756
          DataBinding.DataField = 'INFO_11_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 46
          Width = 300
        end
        object cxDBTextEdit70: TcxDBTextEdit
          Left = 600
          Top = 756
          DataBinding.DataField = 'INFO_11_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 47
          Width = 121
        end
        object cxDBTextEdit71: TcxDBTextEdit
          Left = 205
          Top = 821
          DataBinding.DataField = 'INFO_12_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 50
          Width = 453
        end
        object cxDBTextEdit72: TcxDBTextEdit
          Left = 205
          Top = 848
          DataBinding.DataField = 'INFO_12_DESC1'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 51
          Width = 121
        end
        object cxDBTextEdit73: TcxDBTextEdit
          Left = 368
          Top = 848
          DataBinding.DataField = 'INFO_12_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 52
          Width = 121
        end
        object cxDBTextEdit74: TcxDBTextEdit
          Left = 537
          Top = 848
          DataBinding.DataField = 'INFO_12_DESC3'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 53
          Width = 121
        end
        object cxDBTextEdit75: TcxDBTextEdit
          Left = 790
          Top = 301
          DataBinding.DataField = 'INFO_04_DESC2'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 121
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
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 600
          Top = 496
          DataBinding.DataField = 'INFO_07_DESC1'
          DataBinding.DataSource = dsSubject
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 35.000000000000000000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 30
          Width = 121
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 600
          Top = 561
          DataBinding.DataField = 'INFO_08_DESC1'
          DataBinding.DataSource = dsSubject
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 35
          Width = 121
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
          CaptionOptions.Text = 'DEKLARASI FATCA / FATCA DECLARATION'
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
        object dxLayoutGroup10: TdxLayoutGroup
          Parent = dxLayoutGroup11
          CaptionOptions.Text = 'INFORMASI TAMBAHAN / ADDITIONAL INFORMATION'
          ButtonOptions.Buttons = <>
          ItemIndex = 17
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '1.'
          Control = cxLabel9
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item16: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '2.'
          Control = cxLabel10
          ControlOptions.OriginalHeight = 56
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item17: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '3.'
          Control = cxLabel11
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl6Item18: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '4.'
          Control = cxLabel12
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl6Item19: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '5.'
          Control = cxLabel13
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl6Item20: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '6.'
          Control = cxLabel14
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl6Item21: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '7.'
          Control = cxLabel15
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl6Item22: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '8.'
          Control = cxLabel16
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl6Item23: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '9.'
          Control = cxLabel17
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 16
        end
        object dxLayoutControl6Item24: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '10.'
          Control = cxLabel18
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 18
        end
        object dxLayoutControl6Item25: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '11.'
          Control = cxLabel19
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 20
        end
        object dxLayoutControl6Item26: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '12.'
          Control = cxLabel20
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 908
          ControlOptions.ShowBorder = False
          Index = 22
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
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item29: TdxLayoutItem
          Parent = dxLayoutControl6Group11
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit42
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item30: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox16
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
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item32: TdxLayoutItem
          Parent = dxLayoutControl6Group12
          CaptionOptions.Text = 'Designation'
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
          Control = cxDBImageComboBox17
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
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl6Item36: TdxLayoutItem
          Parent = dxLayoutControl6Group13
          CaptionOptions.Text = 'Designation'
          Control = cxDBTextEdit47
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item37: TdxLayoutItem
          Parent = dxLayoutControl6Group13
          CaptionOptions.Text = 'Relationship'
          Control = cxDBTextEdit48
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item38: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox18
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
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object dxLayoutControl6Item40: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit50
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item41: TdxLayoutItem
          Parent = dxLayoutControl6Group15
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox19
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item42: TdxLayoutItem
          Parent = dxLayoutControl6Group16
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox20
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item43: TdxLayoutItem
          Parent = dxLayoutControl6Group17
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox21
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item44: TdxLayoutItem
          Parent = dxLayoutControl6Group18
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox22
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item45: TdxLayoutItem
          Parent = dxLayoutControl6Group19
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox23
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item46: TdxLayoutItem
          Parent = dxLayoutControl6Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox24
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item47: TdxLayoutItem
          Parent = dxLayoutControl6Group21
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox25
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item48: TdxLayoutItem
          Parent = dxLayoutControl6Group22
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox26
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item49: TdxLayoutItem
          Parent = dxLayoutControl6Group15
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit51
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group15: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 9
        end
        object dxLayoutControl6Item50: TdxLayoutItem
          Parent = dxLayoutControl6Group15
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit52
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item51: TdxLayoutItem
          Parent = dxLayoutControl6Group16
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit54
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group16: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 11
        end
        object dxLayoutControl6Item52: TdxLayoutItem
          Parent = dxLayoutControl6Group16
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit59
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item53: TdxLayoutItem
          Parent = dxLayoutControl6Group17
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Emiten Name'
          Control = cxDBTextEdit60
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group17: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 13
        end
        object dxLayoutControl6Item55: TdxLayoutItem
          Parent = dxLayoutControl6Group17
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit62
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item56: TdxLayoutItem
          Parent = dxLayoutControl6Group18
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'PE Name'
          Control = cxDBTextEdit63
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group18: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 15
        end
        object dxLayoutControl6Item58: TdxLayoutItem
          Parent = dxLayoutControl6Group18
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit65
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item59: TdxLayoutItem
          Parent = dxLayoutControl6Group19
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit66
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group19: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 17
        end
        object dxLayoutControl6Item60: TdxLayoutItem
          Parent = dxLayoutControl6Group19
          CaptionOptions.Text = 'SID'
          Control = cxDBTextEdit67
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item61: TdxLayoutItem
          Parent = dxLayoutControl6Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit68
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group20: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 19
        end
        object dxLayoutControl6Item62: TdxLayoutItem
          Parent = dxLayoutControl6Group21
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit69
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group21: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 21
        end
        object dxLayoutControl6Item63: TdxLayoutItem
          Parent = dxLayoutControl6Group21
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit70
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item64: TdxLayoutItem
          Parent = dxLayoutControl6Group23
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Family Name'
          Control = cxDBTextEdit71
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 453
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Group22: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 23
        end
        object dxLayoutControl6Item65: TdxLayoutItem
          Parent = dxLayoutControl6Group24
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relationship'
          Control = cxDBTextEdit72
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Group23: TdxLayoutGroup
          Parent = dxLayoutControl6Group22
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item66: TdxLayoutItem
          Parent = dxLayoutControl6Group24
          CaptionOptions.Text = 'ID No.'
          Control = cxDBTextEdit73
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group24: TdxLayoutGroup
          Parent = dxLayoutControl6Group23
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item67: TdxLayoutItem
          Parent = dxLayoutControl6Group24
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit74
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item68: TdxLayoutItem
          Parent = dxLayoutControl6Group14
          CaptionOptions.Text = 'Relationship'
          Control = cxDBTextEdit75
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
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
        object dxLayoutControl6Item54: TdxLayoutItem
          Parent = dxLayoutControl6Group17
          CaptionOptions.Text = 'Shareholding (%)'
          Control = cxDBSpinEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item57: TdxLayoutItem
          Parent = dxLayoutControl6Group18
          CaptionOptions.Text = 'Shareholding (%)'
          Control = cxDBSpinEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEntity
    Left = 464
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 256
    Top = 136
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsAddress: TDataSource
    DataSet = cdsEntAddress
    Left = 464
    Top = 56
  end
  object dsDocument: TDataSource
    DataSet = cdsEntDOC
    Left = 536
    Top = 8
  end
  object odDocs: TOpenDialog
    Left = 616
    Top = 21
  end
  object dsTrackInfo: TDataSource
    DataSet = cdsEntTrackInfo
    Left = 536
    Top = 56
  end
  object cdsEntity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspN_dmClientManagement_qryEntity'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsEntityAfterOpen
    AfterPost = cdsEntityAfterPost
    OnNewRecord = cdsEntityNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 608
    Top = 112
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
      OnChange = cdsEntityFIRSTNAMEChange
      Size = 100
    end
    object cdsEntityMIDDLENAME: TStringField
      FieldName = 'MIDDLENAME'
      OnChange = cdsEntityFIRSTNAMEChange
      Size = 40
    end
    object cdsEntityLASTNAME: TStringField
      FieldName = 'LASTNAME'
      OnChange = cdsEntityFIRSTNAMEChange
      Size = 40
    end
    object cdsEntityENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsEntityCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      DisplayFormat = 'dd MMM yyyy'
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
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntityNPWP: TStringField
      FieldName = 'NPWP'
      Size = 30
    end
    object cdsEntityNPWP_REGDATE: TDateField
      FieldName = 'NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntityPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 30
    end
    object cdsEntityPASSPORT_EXPDATE: TDateField
      FieldName = 'PASSPORT_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntityKITAS: TStringField
      FieldName = 'KITAS'
      Size = 30
    end
    object cdsEntityKITAS_EXPDATE: TDateField
      FieldName = 'KITAS_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
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
      DisplayFormat = 'dd MMM yyyy'
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
      OnChange = cdsEntitySOURCEFUNDChange
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
      Size = 15
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
    object cdsEntityGU_ID_EXP: TDateTimeField
      FieldName = 'GU_ID_EXP'
    end
    object cdsEntityGU_TAXPAYER_NO: TStringField
      FieldName = 'GU_TAXPAYER_NO'
      Size = 50
    end
    object cdsEntityGU_NATIONALITY: TStringField
      FieldName = 'GU_NATIONALITY'
      Size = 30
    end
    object cdsEntityGU_GENDER: TIntegerField
      FieldName = 'GU_GENDER'
    end
    object cdsEntityGU_POB: TStringField
      FieldName = 'GU_POB'
      Size = 50
    end
    object cdsEntityGU_DOB: TDateTimeField
      FieldName = 'GU_DOB'
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
      Size = 50
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
    object cdsEntityINVESTORCAT: TStringField
      FieldName = 'INVESTORCAT'
      Size = 1
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
    object cdsEntityKTP_LIFETIME: TStringField
      FieldName = 'KTP_LIFETIME'
      OnChange = cdsEntityKTP_LIFETIMEChange
      Size = 1
    end
    object cdsEntityKSEI_CLIENT_CODE: TStringField
      FieldName = 'KSEI_CLIENT_CODE'
      Size = 4
    end
    object cdsEntityBICCODE: TStringField
      FieldName = 'BICCODE'
    end
    object cdsEntityOA_DATE: TDateTimeField
      FieldName = 'OA_DATE'
    end
    object cdsEntityHRC_STATUS: TStringField
      FieldName = 'HRC_STATUS'
    end
    object cdsEntityHRC_REMARKS: TStringField
      FieldName = 'HRC_REMARKS'
      Size = 100
    end
    object cdsEntityASSESSMENT_STATUS: TStringField
      FieldName = 'ASSESSMENT_STATUS'
      Size = 100
    end
    object cdsEntityASSESSMENT_DATE: TDateTimeField
      FieldName = 'ASSESSMENT_DATE'
    end
    object cdsEntitySYNC: TStringField
      FieldName = 'SYNC'
      Size = 1
    end
  end
  object cdsEntAddress: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityqryEntAddress
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 608
    Top = 160
    object cdsEntAddressENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntAddressADDRTYPE: TStringField
      FieldName = 'ADDRTYPE'
      Required = True
      Size = 10
    end
    object cdsEntAddressADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      Size = 1
    end
    object cdsEntAddressADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      Size = 10
    end
    object cdsEntAddressCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 5
    end
    object cdsEntAddressPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsEntAddressCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsEntAddressADDRESS1: TStringField
      DisplayWidth = 100
      FieldName = 'ADDRESS1'
      Size = 100
    end
    object cdsEntAddressADDRESS2: TStringField
      DisplayWidth = 100
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object cdsEntAddressADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 100
    end
    object cdsEntAddressZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsEntAddressPHONE: TStringField
      FieldName = 'PHONE'
      Size = 60
    end
    object cdsEntAddressMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 60
    end
    object cdsEntAddressEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsEntAddressFAX: TStringField
      FieldName = 'FAX'
      Size = 60
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
  object cdsEntDOC: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityqryEntDOC
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 112
    object cdsEntDOCENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntDOCSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntDOCDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Size = 10
    end
    object cdsEntDOCDOCDESC: TStringField
      FieldName = 'DOCDESC'
      Size = 50
    end
    object cdsEntDOCISEXPIRE: TStringField
      FieldName = 'ISEXPIRE'
      Size = 1
    end
    object cdsEntDOCEXPIREDATE: TDateField
      FieldName = 'EXPIREDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntDOCDOCOBJECT: TBlobField
      FieldName = 'DOCOBJECT'
    end
    object cdsEntDOCDOCFILENAME: TStringField
      FieldName = 'DOCFILENAME'
      Size = 50
    end
    object cdsEntDOCMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntDOCMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntDOCAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntDOCAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntDOCUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntDOCUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntDOCNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntDOCISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntDOCID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEntTrackInfo: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityqryEntTrackInfo
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 160
    object cdsEntTrackInfoENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntTrackInfoSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntTrackInfoINFODATE: TDateTimeField
      FieldName = 'INFODATE'
    end
    object cdsEntTrackInfoINFOTYPE: TStringField
      FieldName = 'INFOTYPE'
      Size = 2
    end
    object cdsEntTrackInfoINFOLEVEL: TStringField
      FieldName = 'INFOLEVEL'
      Size = 2
    end
    object cdsEntTrackInfoNOTES: TStringField
      FieldName = 'NOTES'
      Size = 150
    end
    object cdsEntTrackInfoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntTrackInfoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntTrackInfoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntTrackInfoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntTrackInfoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntTrackInfoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntTrackInfoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntTrackInfoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntTrackInfoID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEntContact: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityqryEntContact
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 608
    Top = 208
    object cdsEntContactENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntContactSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntContactCONTNAME: TStringField
      FieldName = 'CONTNAME'
      Size = 150
    end
    object cdsEntContactADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      Size = 1
    end
    object cdsEntContactADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      Size = 10
    end
    object cdsEntContactCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 5
    end
    object cdsEntContactPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsEntContactCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsEntContactADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object cdsEntContactADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object cdsEntContactADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object cdsEntContactZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsEntContactPHONE: TStringField
      FieldName = 'PHONE'
    end
    object cdsEntContactMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 60
    end
    object cdsEntContactEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsEntContactFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object cdsEntContactIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsEntContactIDCARDNO: TStringField
      FieldName = 'IDCARDNO'
      Size = 30
    end
    object cdsEntContactIDCARDEXPIRE: TDateField
      FieldName = 'IDCARDEXPIRE'
    end
    object cdsEntContactSENDBYEMAIL: TStringField
      FieldName = 'SENDBYEMAIL'
      Size = 1
    end
    object cdsEntContactSENDBYFAX: TStringField
      FieldName = 'SENDBYFAX'
      Size = 1
    end
    object cdsEntContactSENDBYSMS: TStringField
      FieldName = 'SENDBYSMS'
      Size = 1
    end
    object cdsEntContactSENDBYPOSTMAIL: TStringField
      FieldName = 'SENDBYPOSTMAIL'
      Size = 1
    end
    object cdsEntContactNOTIF_TC: TStringField
      FieldName = 'NOTIF_TC'
      Size = 1
    end
    object cdsEntContactNOTIF_SOA: TStringField
      FieldName = 'NOTIF_SOA'
      Size = 1
    end
    object cdsEntContactNOTIF_CORPACT: TStringField
      FieldName = 'NOTIF_CORPACT'
      Size = 1
    end
    object cdsEntContactNOTIF_IDENTITY: TStringField
      FieldName = 'NOTIF_IDENTITY'
      Size = 1
    end
    object cdsEntContactMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntContactMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntContactAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntContactAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntContactUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntContactUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntContactNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntContactISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntContactID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsContact: TDataSource
    DataSet = cdsEntContact
    Left = 464
    Top = 104
  end
  object dsAuth: TDataSource
    DataSet = cdsEntAuth
    Left = 536
    Top = 104
  end
  object cdsEntAuth: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEntityqryEntAuth
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 208
    object cdsEntAuthENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntAuthSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsEntAuthAUTH_PERSON_FIRSTNAME: TStringField
      FieldName = 'AUTH_PERSON_FIRSTNAME'
      Size = 40
    end
    object cdsEntAuthAUTH_PERSON_MIDDLENAME: TStringField
      FieldName = 'AUTH_PERSON_MIDDLENAME'
      Size = 40
    end
    object cdsEntAuthAUTH_PERSON_LASTNAME: TStringField
      FieldName = 'AUTH_PERSON_LASTNAME'
      Size = 40
    end
    object cdsEntAuthAUTH_PERSON_POSITION: TStringField
      FieldName = 'AUTH_PERSON_POSITION'
      Size = 120
    end
    object cdsEntAuthAUTH_PERSON_KTP: TStringField
      FieldName = 'AUTH_PERSON_KTP'
      Size = 100
    end
    object cdsEntAuthAUTH_PERSON_KTP_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_KTP_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntAuthAUTH_PERSON_NPWP: TStringField
      FieldName = 'AUTH_PERSON_NPWP'
      Size = 100
    end
    object cdsEntAuthAUTH_PERSON_NPWP_REGDATE: TDateField
      FieldName = 'AUTH_PERSON_NPWP_REGDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntAuthAUTH_PERSON_PASSPORT: TStringField
      FieldName = 'AUTH_PERSON_PASSPORT'
      Size = 100
    end
    object cdsEntAuthAUTH_PERSON_PASSPORT_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_PASSPORT_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntAuthAUTH_PERSON_KITAS: TStringField
      FieldName = 'AUTH_PERSON_KITAS'
      Size = 100
    end
    object cdsEntAuthAUTH_PERSON_KITAS_EXPDATE: TDateField
      FieldName = 'AUTH_PERSON_KITAS_EXPDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEntAuthAUTH_SEX: TStringField
      FieldName = 'AUTH_SEX'
      Size = 1
    end
    object cdsEntAuthAUTH_PAYCOLL: TBooleanField
      FieldName = 'AUTH_PAYCOLL'
    end
    object cdsEntAuthAUTH_STOCKCOLL: TBooleanField
      FieldName = 'AUTH_STOCKCOLL'
    end
    object cdsEntAuthAUTH_PLACEORDER: TBooleanField
      FieldName = 'AUTH_PLACEORDER'
    end
    object cdsEntAuthAUTH_NOTES: TStringField
      FieldName = 'AUTH_NOTES'
      Size = 500
    end
    object cdsEntAuthMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntAuthMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntAuthAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntAuthAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntAuthUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntAuthUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntAuthNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntAuthISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntAuthID: TLargeintField
      FieldName = 'ID'
    end
  end
  object alDocument: TActionList
    Left = 796
    Top = 249
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View Document'
      OnExecute = actViewExecute
      CheckPermission = False
    end
  end
  object pmDocument: TPopupMenu
    Left = 796
    Top = 297
  end
  object cdsEntHeir: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryEntityHeir'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsEntHeirNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 468
    Top = 177
    object cdsEntHeirENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsEntHeirSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsEntHeirHEIR_NAME: TStringField
      DisplayLabel = 'Heir Name'
      FieldName = 'HEIR_NAME'
      Size = 500
    end
    object cdsEntHeirRELATION: TStringField
      DisplayLabel = 'Relation'
      FieldName = 'RELATION'
      Size = 100
    end
    object cdsEntHeirNO_TELP: TStringField
      DisplayLabel = 'Phone No'
      FieldName = 'NO_TELP'
    end
    object cdsEntHeirNIK: TStringField
      DisplayLabel = 'ID Card No'
      FieldName = 'NIK'
    end
    object cdsEntHeirMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEntHeirMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEntHeirAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEntHeirAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEntHeirUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEntHeirUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEntHeirNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEntHeirISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEntHeirID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsEntHeir: TDataSource
    DataSet = cdsEntHeir
    Left = 468
    Top = 233
  end
end
