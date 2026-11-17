inherited frmCOBRetailDBS: TfrmCOBRetailDBS
  Caption = 'Client On Boarding Retail'
  ClientHeight = 737
  ClientWidth = 1027
  ExplicitWidth = 1033
  ExplicitHeight = 766
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 41
    Align = alNone
    ExplicitHeight = 41
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 668
    Width = 1027
    ExplicitTop = 668
    ExplicitWidth = 1027
    inherited dbNavLog: TDBNavigator
      Left = 913
      Hints.Strings = ()
      TabOrder = 3
      ExplicitLeft = 913
    end
    object pnlRisk: TPanel [3]
      Left = 172
      Top = 10
      Width = 735
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
    object dxLayoutControl2Item10: TdxLayoutItem
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
    Top = 717
    Width = 1027
    ExplicitTop = 717
    ExplicitWidth = 1027
  end
  inherited tabEditorData: TTabSet
    Top = 647
    Width = 1027
    ExplicitTop = 647
    ExplicitWidth = 1027
  end
  object OATabs: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 1027
    Height = 647
    Align = alClient
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = TabPaticular
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    ClientRectBottom = 647
    ClientRectRight = 1027
    ClientRectTop = 20
    object TabPaticular: TcxTabSheet
      Caption = 'Particulars'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
        Align = alClient
        TabOrder = 0
        object txtName: TcxDBTextEdit
          Left = 153
          Top = 163
          DataBinding.DataField = 'NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 7
          Width = 178
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 153
          Top = 190
          DataBinding.DataField = 'POB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 178
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 153
          Top = 217
          DataBinding.DataField = 'DOB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 178
        end
        object id_type: TcxDBImageComboBox
          Left = 153
          Top = 244
          RepositoryItem = dmGlobal.luIDType
          DataBinding.DataField = 'ID_TYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'ID Card'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Passport'
              Value = 2
            end
            item
              Description = 'Driving License'
              Value = 3
            end
            item
              Description = 'KITAS'
              Value = 4
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 166
        end
        object id_valid: TcxDBDateEdit
          Left = 153
          Top = 298
          DataBinding.DataField = 'ID_VALID'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 92
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 153
          Top = 325
          DataBinding.DataField = 'GENDER'
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
          TabOrder = 14
          Width = 166
        end
        object TaxStatus: TcxDBImageComboBox
          Left = 504
          Top = 28
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
          TabOrder = 22
          Width = 166
        end
        object MaritalStatus: TcxDBImageComboBox
          Left = 153
          Top = 379
          DataBinding.DataField = 'MARITAL_STATUS'
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
          Properties.OnCloseUp = MaritalStatusPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 166
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 153
          Top = 487
          DataBinding.DataField = 'MOTHER_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 166
        end
        object txtIDNumber: TcxDBTextEdit
          Left = 153
          Top = 271
          DataBinding.DataField = 'ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          OnExit = txtIDNumberExit
          Width = 178
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 153
          Top = 352
          RepositoryItem = dmGlobal.luNationality
          DataBinding.DataField = 'NATIONALITY'
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
              Caption = 'Nationality'
              FieldName = 'NATIONALITY'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 166
        end
        object chkIDLifeTime: TcxCheckBox
          Left = 251
          Top = 298
          Caption = 'Life Time'
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          OnClick = chkIDLifeTimeClick
          Width = 66
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 153
          Top = 406
          DataBinding.DataField = 'SPOUSE_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 166
        end
        object EduBackground: TcxDBImageComboBox
          Left = 153
          Top = 433
          DataBinding.DataField = 'EDU_BACKGROUND'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Others'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Elementary School'
              Value = 2
            end
            item
              Description = 'Junior High School'
              Value = 3
            end
            item
              Description = 'Senior High School'
              Value = 4
            end
            item
              Description = 'Academy'
              Value = 5
            end
            item
              Description = 'Degree'
              Value = 6
            end
            item
              Description = 'Master'
              Value = 7
            end
            item
              Description = 'Doctoral Degree'
              Value = 8
            end>
          Properties.OnCloseUp = EduBackgroundPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 166
        end
        object eduBackgroundOthers: TcxDBTextEdit
          Left = 153
          Top = 460
          DataBinding.DataField = 'EDU_BACKGOUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 166
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 504
          Top = 82
          DataBinding.DataField = 'TAS_REG_DATE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 166
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 222
          Top = 10
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
          TabOrder = 1
          Width = 121
        end
        object chkEvent: TcxDBCheckBox
          Left = 10
          Top = 91
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'On Event'
          DataBinding.DataField = 'ONEVENT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          OnClick = chkEventClick
          Width = 72
        end
        object cmbEvent: TcxDBLookupComboBox
          Left = 88
          Top = 91
          DataBinding.DataField = 'EVID'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 255
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 504
          Top = 55
          DataBinding.DataField = 'TAXPAYER_REG'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 166
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 153
          Top = 514
          DataBinding.DataField = 'RELIGION'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Islam'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Protestan'
              Value = '2'
            end
            item
              Description = 'Katolik'
              Value = '3'
            end
            item
              Description = 'Hindu'
              Value = '4'
            end
            item
              Description = 'Budha'
              Value = '5'
            end
            item
              Description = 'Kong Hu Cu'
              Value = '6'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 21
          Width = 166
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 88
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
          TabOrder = 0
          Width = 81
        end
        object imgPhoto: TcxImage
          Left = 688
          Top = 10
          Properties.Stretch = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 25
          Height = 234
          Width = 192
        end
        object luChannel: TcxDBLookupComboBox
          Left = 88
          Top = 37
          RepositoryItem = dmGlobal.luChannel
          DataBinding.DataField = 'CHANNELCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 255
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 88
          Top = 64
          DataBinding.DataField = 'ALT_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 255
        end
        object cxDBLookupComboBox12: TcxDBLookupComboBox
          Left = 88
          Top = 118
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
          TabOrder = 6
          Width = 255
        end
        object cmbRisk: TcxDBImageComboBox
          Left = 742
          Top = 250
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
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 26
          Width = 138
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
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Name As State In the ID'
          Parent = dxLayoutControl1Group5
          Control = txtName
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Place Of Birth'
          Parent = dxLayoutControl1Group5
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Date Of Birth'
          Parent = dxLayoutControl1Group5
          Control = cxDBDateEdit1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* ID Type'
          Parent = dxLayoutControl1Group5
          Control = id_type
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* ID Valid Until'
          Parent = dxLayoutControl1Group7
          Control = id_valid
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Gender'
          Parent = dxLayoutGroup5
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Taxpayer Reg Status'
          Parent = dxLayoutControl1Group3
          Control = TaxStatus
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Marital Status'
          Parent = dxLayoutGroup5
          Control = MaritalStatus
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Mother'#39's Maiden Name'
          Parent = dxLayoutGroup5
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item31: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* ID Number'
          Parent = dxLayoutControl1Group5
          Control = txtIDNumber
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item51: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Nationality'
          Parent = dxLayoutGroup5
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item33: TdxLayoutItem
          CaptionOptions.Text = 'Life Time'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl1Group7
          Control = chkIDLifeTime
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object SpouseName: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Spouse Name'
          Parent = dxLayoutGroup5
          Visible = False
          Control = cxDBTextEdit17
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Taxpayer'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Item35: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Education Background'
          Parent = dxLayoutGroup5
          Control = EduBackground
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object EB_Other: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Other'
          Parent = dxLayoutGroup5
          Visible = False
          Control = eduBackgroundOthers
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item42: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax Registration Date'
          Parent = dxLayoutControl1Group3
          Control = cxDBDateEdit2
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Personal Data'
          Parent = dxLayoutControl3Group9
          ButtonOptions.Buttons = <>
          Index = 5
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutGroup5: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item17: TdxLayoutItem
          CaptionOptions.Text = '* Branch'
          Parent = dxLayoutControl1Group8
          Control = cxDBLookupComboBox15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item32: TdxLayoutItem
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl1Group1
          Control = chkEvent
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object EventCode: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl1Group1
          Visible = False
          Control = cmbEvent
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Indonesia Taxpayer Reg No.'
          Parent = dxLayoutControl1Group3
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item17: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Religion'
          Parent = dxLayoutGroup5
          Control = cxDBImageComboBox3
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl3Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Product'
          Parent = dxLayoutControl1Group8
          Control = cxDBLookupComboBox10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Text = 'cxImage1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group1
          Control = imgPhoto
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Channel'
          Parent = dxLayoutControl3Group9
          Control = luChannel
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          CaptionOptions.Text = 'Alternate Code'
          Parent = dxLayoutControl3Group9
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Sales'
          Parent = dxLayoutControl3Group9
          Control = cxDBLookupComboBox12
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          CaptionOptions.Text = 'Client Risk'
          Parent = dxLayoutControl3Group1
          Control = cmbRisk
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
      end
    end
    object TabGuarantor: TcxTabSheet
      Caption = 'Data Guarantor'
      ImageIndex = 4
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxDBTextEdit6: TcxDBTextEdit
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
        object cxDBImageComboBox5: TcxDBImageComboBox
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
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 187
          Top = 82
          DataBinding.DataField = 'GU_ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 150
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 187
          Top = 109
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
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 187
          Top = 136
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
          Top = 163
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
        object cxDBImageComboBox6: TcxDBImageComboBox
          Left = 187
          Top = 190
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
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 187
          Top = 217
          DataBinding.DataField = 'GU_POB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 150
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 187
          Top = 244
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
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 187
          Top = 271
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
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 187
          Top = 298
          DataBinding.DataField = 'GU_EMAIL'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 150
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 187
          Top = 325
          DataBinding.DataField = 'GU_CELLPHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 150
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 187
          Top = 352
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
          Top = 379
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
          Top = 425
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
          Top = 452
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
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 187
          Top = 479
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
          Top = 506
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
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 187
          Top = 533
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
          Left = 355
          Top = 10
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
          Width = 315
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 840
          Top = 28
          DataBinding.DataField = 'GU_JOBS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 150
        end
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 840
          Top = 55
          DataBinding.DataField = 'GU_LAST_POSITION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 150
        end
        object cxDBTextEdit25: TcxDBTextEdit
          Left = 840
          Top = 82
          DataBinding.DataField = 'GU_JOBS_COMPANY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 150
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 840
          Top = 109
          DataBinding.DataField = 'GU_JOBS_COMPANY_TYPE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 150
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 840
          Top = 136
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
          Left = 840
          Top = 163
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
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 840
          Top = 190
          DataBinding.DataField = 'GU_JOBS_POSTALCODE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 150
        end
        object cxDBTextEdit30: TcxDBTextEdit
          Left = 840
          Top = 217
          DataBinding.DataField = 'GU_JOBS_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 32
          Width = 150
        end
        object cxDBTextEdit31: TcxDBTextEdit
          Left = 840
          Top = 244
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
          Left = 840
          Top = 271
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
          Properties.OnCloseUp = SOFWBIPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Width = 150
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 840
          Top = 298
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
          Left = 840
          Top = 325
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
        object cxDBTextEdit33: TcxDBTextEdit
          Left = 840
          Top = 352
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
          Left = 452
          Top = 55
          DataBinding.DataField = 'GU_ADDRESS2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Height = 37
          Width = 206
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 452
          Top = 98
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
          Width = 206
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 452
          Top = 125
          DataBinding.DataField = 'GU_POSTALCODE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 206
        end
        object cxDBLookupComboBox9: TcxDBLookupComboBox
          Left = 452
          Top = 152
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
          Width = 206
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 452
          Top = 179
          DataBinding.DataField = 'GU_PHONE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 206
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
          CaptionOptions.Text = 'Guarantor Personal Data'
          Parent = dxLayoutGroup7
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Guarantor Name'
          Parent = GuarantorPanel
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relationship With Account Owner'
          Parent = GuarantorPanel
          Control = cxDBImageComboBox5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ID Number Of Guarantor'
          Parent = GuarantorPanel
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Valid To'
          Parent = GuarantorPanel
          Control = cxDBDateEdit3
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item13: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Taxpayer No. Of Guarantor'
          Parent = GuarantorPanel
          Control = cxDBTextEdit8
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item56: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Nationality'
          Parent = GuarantorPanel
          Control = cxDBLookupComboBox13
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Gender'
          Parent = GuarantorPanel
          Control = cxDBImageComboBox6
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item19: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Place Of Birth'
          Parent = GuarantorPanel
          Control = cxDBTextEdit10
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item20: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date Of Birth'
          Parent = GuarantorPanel
          Control = cxDBDateEdit4
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item21: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Marital Status'
          Parent = GuarantorPanel
          Control = cxDBImageComboBox7
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl1Item22: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'E-Mail Address'
          Parent = GuarantorPanel
          Control = cxDBTextEdit11
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item23: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cell Phone No.'
          Parent = GuarantorPanel
          Control = cxDBTextEdit12
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Parent = GuarantorPanel
          Control = cxDBTextEdit13
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl1Item25: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address Of Guarantor'
          Parent = GuarantorPanel
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Province'
          Parent = GuarantorPanel
          Control = txtGuProvince
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl1Item28: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = GuarantorPanel
          Control = guCityCode
          ControlOptions.ShowBorder = False
          Index = 15
        end
        object dxLayoutControl1Item27: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Parent = GuarantorPanel
          Control = cxDBTextEdit15
          ControlOptions.ShowBorder = False
          Index = 16
        end
        object dxLayoutControl1Item52: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = GuarantorPanel
          Control = cxDBLookupComboBox7
          ControlOptions.ShowBorder = False
          Index = 17
        end
        object dxLayoutControl1Item30: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Home Phone No.'
          Parent = GuarantorPanel
          Control = cxDBTextEdit18
          ControlOptions.ShowBorder = False
          Index = 18
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl7Group2
          Control = GuarantorCurrAddress
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object GuarantorWorkInfo: TdxLayoutGroup
          CaptionOptions.Text = 'Guarantor Work Info && Source Of Fund'
          Parent = dxLayoutGroup6
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl1Item37: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit23
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item38: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Last Position'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit24
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item39: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit25
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item40: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Business Sector'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit26
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item41: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Address'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit27
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl1Item26: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = GuarantorWorkInfo
          Control = gucaCity
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl1Item43: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit29
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl1Item44: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone No.'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit30
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl1Item45: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit31
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl1Item46: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Souce Of Fund will be invested'
          Parent = GuarantorWorkInfo
          Control = SOFWBI
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object OtherSourceOfFund: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = GuarantorWorkInfo
          Visible = False
          Control = cxDBTextEdit32
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl1Item48: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Income/Annual Salary'
          Parent = GuarantorWorkInfo
          Control = cxDBImageComboBox9
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl1Item50: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Mother Maiden Name'
          Parent = GuarantorWorkInfo
          Control = cxDBTextEdit33
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object GuarantorCurrentAddress: TdxLayoutGroup
          CaptionOptions.Text = 'Guarantor Current Address'
          Parent = dxLayoutControl7Group2
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object pnlGuarantorCurAddress: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address'
          Parent = GuarantorCurrentAddress
          Control = cxDBMemo2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item53: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = GuarantorCurrentAddress
          Control = cxDBLookupComboBox8
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item34: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Postal Code'
          Parent = GuarantorCurrentAddress
          Control = cxDBTextEdit20
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item54: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = GuarantorCurrentAddress
          Control = cxDBLookupComboBox9
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl1Item36: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Home Phone No.'
          Parent = GuarantorCurrentAddress
          Control = cxDBTextEdit22
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutGroup7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object TabAddress: TcxTabSheet
      Caption = 'Address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
        Align = alClient
        TabOrder = 0
        object cmbTypeOfResidence: TcxDBImageComboBox
          Left = 141
          Top = 28
          DataBinding.DataField = 'RESIDENT_TYPE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'House'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Dornitory'
              Value = '2'
            end
            item
              Description = 'Apartement'
              Value = '3'
            end
            item
              Description = 'Rent'
              Value = '4'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object cxDBImageComboBox12: TcxDBImageComboBox
          Left = 141
          Top = 55
          DataBinding.DataField = 'OWNERSHIP_STATUS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Owned'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Family'
              Value = '2'
            end
            item
              Description = 'Company'
              Value = '3'
            end
            item
              Description = 'Rent'
              Value = '4'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cxDBMemo3: TcxDBMemo
          Left = 141
          Top = 82
          DataBinding.DataField = 'STREET'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Height = 43
          Width = 150
        end
        object cxDBTextEdit35: TcxDBTextEdit
          Left = 141
          Top = 158
          DataBinding.DataField = 'KELURAHAN'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 150
        end
        object cxDBTextEdit36: TcxDBTextEdit
          Left = 141
          Top = 185
          DataBinding.DataField = 'KECAMATAN'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 150
        end
        object cxDBTextEdit39: TcxDBTextEdit
          Left = 141
          Top = 293
          DataBinding.DataField = 'ZIP_CODE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.MaxLength = 5
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 150
        end
        object TypeOfResident: TcxDBImageComboBox
          Left = 417
          Top = 28
          DataBinding.DataField = 'RESIDENT_TYPE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'House'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Dornitory'
              Value = 2
            end
            item
              Description = 'Apartement'
              Value = 3
            end
            item
              Description = 'Other'
              Value = 4
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 121
        end
        object cxDBTextEdit40: TcxDBTextEdit
          Left = 417
          Top = 55
          DataBinding.DataField = 'RESIDENT_TYPE2_OTHERS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 150
        end
        object OwnershipStatus: TcxDBImageComboBox
          Left = 417
          Top = 82
          DataBinding.DataField = 'OWNERSHIP_STATUS2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Owned'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Family'
              Value = 2
            end
            item
              Description = 'Company'
              Value = 3
            end
            item
              Description = 'Rent'
              Value = 4
            end
            item
              Description = 'Other'
              Value = 5
            end>
          Properties.OnCloseUp = OwnershipStatusPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 121
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 417
          Top = 109
          DataBinding.DataField = 'OWNERSHIP_STATUS2_OTHERS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 150
        end
        object cxDBTextEdit44: TcxDBTextEdit
          Left = 417
          Top = 212
          DataBinding.DataField = 'KELURAHAN2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 150
        end
        object cxDBTextEdit45: TcxDBTextEdit
          Left = 417
          Top = 239
          DataBinding.DataField = 'KECAMATAN2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 150
        end
        object cxDBTextEdit48: TcxDBTextEdit
          Left = 417
          Top = 347
          DataBinding.DataField = 'ZIP_CODE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.MaxLength = 5
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 84
        end
        object TcxDBTextEdit
          Left = 141
          Top = 320
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 150
        end
        object cxDBTextEdit50: TcxDBTextEdit
          Left = 141
          Top = 374
          DataBinding.DataField = 'HOME_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 150
        end
        object cxDBTextEdit51: TcxDBTextEdit
          Left = 141
          Top = 401
          DataBinding.DataField = 'CELL_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 150
        end
        object cxDBTextEdit52: TcxDBTextEdit
          Left = 141
          Top = 428
          DataBinding.DataField = 'FAX_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 150
        end
        object cxDBImageComboBox15: TcxDBImageComboBox
          Left = 141
          Top = 455
          DataBinding.DataField = 'CORESP_ADDR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'ID'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Current Address'
              Value = 2
            end
            item
              Description = 'Office Address'
              Value = 3
            end
            item
              Description = 'Email Address'
              Value = 4
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 121
        end
        object cxDBMemo5: TcxDBMemo
          Left = 417
          Top = 136
          DataBinding.DataField = 'STREET2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Alignment = taLeftJustify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Height = 43
          Width = 150
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 141
          Top = 212
          RepositoryItem = dmGlobal.luProvince
          DataBinding.DataField = 'PROVINCE'
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
          TabOrder = 6
          OnExit = cxDBLookupComboBox2Exit
          Width = 150
        end
        object cbCountry: TcxDBLookupComboBox
          Left = 141
          Top = 266
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'COUNTRY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'COUNTNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          OnExit = cbCountryExit
          Width = 150
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 417
          Top = 266
          RepositoryItem = dmGlobal.luProvince
          DataBinding.DataField = 'PROVINCE2'
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
          TabOrder = 24
          OnExit = cxDBLookupComboBox4Exit
          Width = 150
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 417
          Top = 320
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'COUNTRY2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'COUNTNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 26
          Width = 150
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 141
          Top = 131
          DataBinding.DataField = 'RT_RW'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.EditMask = '000/000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 83
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 417
          Top = 185
          DataBinding.DataField = 'RT_RW2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.EditMask = '000/000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 85
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 141
          Top = 347
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 150
        end
        object chkCurrentAddress: TcxDBCheckBox
          Left = 22
          Top = 320
          Caption = 'Current Address if different from ID Address'
          DataBinding.DataField = 'CHKCURRADR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          OnClick = chkCurrentAddressClick
          Width = 269
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 141
          Top = 239
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'CITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          OnExit = cxDBLookupComboBox6Exit
          Width = 150
        end
        object cxDBLookupComboBox16: TcxDBLookupComboBox
          Left = 417
          Top = 293
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'CITY2'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 25
          OnExit = cxDBLookupComboBox16Exit
          Width = 150
        end
        object dxLayoutGroup8: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup9: TdxLayoutGroup
          CaptionOptions.Text = 'As State In The ID'
          Parent = dxLayoutControl2Group3
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object CurrentAddress: TdxLayoutGroup
          CaptionOptions.Text = 'Current Address'
          Parent = dxLayoutControl2Group2
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl2Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Type Of Residence'
          Parent = dxLayoutGroup9
          Control = cmbTypeOfResidence
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Ownership Status'
          Parent = dxLayoutGroup9
          Control = cxDBImageComboBox12
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = '* Street Address'
          Parent = dxLayoutGroup9
          Control = cxDBMemo3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Kelurahan'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit35
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Kecamatan'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit36
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl2Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Zip Code'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit39
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl2Item11: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Type Of Residence'
          Parent = CurrentAddress
          Control = TypeOfResident
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object TypeOfResidentOth: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = CurrentAddress
          Visible = False
          Control = cxDBTextEdit40
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item13: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Ownership Status'
          Parent = CurrentAddress
          Control = OwnershipStatus
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object OwnershipStatusOth: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Parent = CurrentAddress
          Visible = False
          Control = cxDBTextEdit41
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl2Item17: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Kelurahan'
          Parent = CurrentAddress
          Control = cxDBTextEdit44
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl2Item18: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Kecamatan'
          Parent = CurrentAddress
          Control = cxDBTextEdit45
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl2Item21: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = CurrentAddress
          Control = cxDBTextEdit48
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl2Item23: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Home Phone *'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit50
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl2Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cell Phone *'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit51
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutControl2Item25: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax no.'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit52
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl2Item26: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Correspondent Address'
          Parent = dxLayoutGroup9
          Control = cxDBImageComboBox15
          ControlOptions.ShowBorder = False
          Index = 15
        end
        object dxLayoutControl2Item27: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Street Address'
          Parent = CurrentAddress
          Control = cxDBMemo5
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl2Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Province'
          Parent = dxLayoutGroup9
          Control = cxDBLookupComboBox2
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl2Item28: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Country'
          Parent = dxLayoutGroup9
          Control = cbCountry
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Province'
          Parent = CurrentAddress
          Control = cxDBLookupComboBox4
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl2Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = CurrentAddress
          Control = cxDBLookupComboBox5
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl2Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl2Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item19: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* RT / RW'
          Parent = dxLayoutGroup9
          Control = cxDBMaskEdit1
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'RT / RW'
          Parent = CurrentAddress
          Control = cxDBMaskEdit2
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Email *'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl2Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup9
          Control = chkCurrentAddress
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutItem7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* City'
          Parent = dxLayoutGroup9
          Control = cxDBLookupComboBox6
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = CurrentAddress
          Control = cxDBLookupComboBox16
          ControlOptions.ShowBorder = False
          Index = 9
        end
      end
    end
    object TabSourceOfFund: TcxTabSheet
      Caption = 'Source Of Fund'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit54: TcxDBTextEdit
          Left = 165
          Top = 82
          DataBinding.DataField = 'COMPANY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 164
        end
        object cxDBTextEdit56: TcxDBTextEdit
          Left = 165
          Top = 190
          DataBinding.DataField = 'JOB_DIVISION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 164
        end
        object cxLabel1: TcxLabel
          Left = 22
          Top = 217
          AutoSize = False
          Caption = 'Years Of Service'
          ParentColor = False
          ParentFont = False
          Style.HotTrack = False
          Height = 17
          Width = 100
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 163
          Top = 217
          DataBinding.DataField = 'YOS_YEAR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 50
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 163
          Top = 244
          DataBinding.DataField = 'YOS_MONTH'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 50
        end
        object cxDBTextEdit57: TcxDBTextEdit
          Left = 165
          Top = 271
          DataBinding.DataField = 'COMPANY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 82
        end
        object cxDBTextEdit58: TcxDBTextEdit
          Left = 274
          Top = 271
          DataBinding.DataField = 'COMPANY_PHONE_EXT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 41
        end
        object cxDBMemo4: TcxDBMemo
          Left = 165
          Top = 298
          DataBinding.DataField = 'COMPANY_ADDRESS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Height = 37
          Width = 164
        end
        object cmbSourceOfFund: TcxDBImageComboBox
          Left = 165
          Top = 341
          DataBinding.DataField = 'FUND_SOURCE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ClearKey = 46
          Properties.Items = <
            item
              Description = 'Others'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Salary'
              Value = 2
            end
            item
              Description = 'Business Profit'
              Value = 3
            end
            item
              Description = 'Interest'
              Value = 4
            end
            item
              Description = 'Heritage'
              Value = 5
            end
            item
              Description = 'Grant From Parent or Kids'
              Value = 6
            end
            item
              Description = 'Grant from Spouse'
              Value = 7
            end
            item
              Description = 'Pension Funds'
              Value = 8
            end
            item
              Description = 'Lottery'
              Value = 9
            end
            item
              Description = 'Proceed From Investment'
              Value = 10
            end
            item
              Description = 'Deposit'
              Value = 11
            end>
          Properties.OnChange = cmbSourceOfFundPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 164
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 165
          Top = 368
          DataBinding.DataField = 'SOURCE_FUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 164
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 165
          Top = 55
          DataBinding.DataField = 'OCCUPATION_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 164
        end
        object Invs_Objectives: TcxDBImageComboBox
          Left = 546
          Top = 502
          DataBinding.DataField = 'INVS_OBJ'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Others'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Price Appreciation'
              Value = 2
            end
            item
              Description = 'Investment'
              Value = 3
            end
            item
              Description = 'Speculation'
              Value = 4
            end
            item
              Description = 'Income'
              Value = 5
            end>
          Properties.OnCloseUp = Invs_ObjectivesPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 26
          Width = 150
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 546
          Top = 529
          DataBinding.DataField = 'INVS_OBJ_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 150
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 546
          Top = 391
          DataBinding.DataField = 'NAT_BUSINESS_ENTREPRENEUR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 307
        end
        object cxDBLookupComboBox14: TcxDBLookupComboBox
          Left = 165
          Top = 395
          RepositoryItem = dmGlobal.luSecAnnualIncome
          DataBinding.DataField = 'ANNUAL_INCOME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SEC_INCCODE'
          Properties.ListColumns = <
            item
              Caption = 'Income Code'
              FieldName = 'SEC_INCCODE'
            end
            item
              Caption = 'Income Description'
              FieldName = 'SEC_INCDESC'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 164
        end
        object cxGrid1: TcxGrid
          Left = 359
          Top = 28
          Width = 644
          Height = 141
          TabOrder = 21
          object gvwCOBBank: TcxGridDBBandedTableView
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
            DataController.DataSource = dsCOBBank
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsView.GridLineColor = clCream
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle2
            Bands = <
              item
              end>
            object gvwCOBBankCUST_REG_NO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUST_REG_NO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwCOBBankACC_NO: TcxGridDBBandedColumn
              Caption = 'Account No.'
              DataBinding.FieldName = 'ACC_NO'
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwCOBBankBANK_NAME: TcxGridDBBandedColumn
              Caption = 'Bank Name'
              DataBinding.FieldName = 'BANK_NAME'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ListColumns = <>
              RepositoryItem = dmGlobal.luBank
              Width = 175
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn
              Caption = 'Bank Branch'
              DataBinding.FieldName = 'BANK_BRANCH'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwCOBBankBENEFICIARY: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BENEFICIARY'
              Width = 163
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwCOBBankACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwCOBBankCCY: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CCY'
              RepositoryItem = dmGlobal.luCurrency
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwCOBBank
          end
        end
        object cxGrid2: TcxGrid
          Left = 359
          Top = 205
          Width = 644
          Height = 150
          TabOrder = 22
          object gvwCOBBankCustody: TcxGridDBBandedTableView
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
            OptionsView.GridLineColor = 10930928
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwCOBBankCustodyACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyCUSTODYCODE: TcxGridDBBandedColumn
              Caption = 'Custody Code'
              DataBinding.FieldName = 'CUSTODYCODE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ListColumns = <>
              RepositoryItem = dmGlobal.luBankCustody
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyCUSTODYACCNO: TcxGridDBBandedColumn
              Caption = 'Custody Account No.'
              DataBinding.FieldName = 'CUSTODYACCNO'
              Width = 128
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyCUSTODYACCNAME: TcxGridDBBandedColumn
              Caption = 'Custody Acc Name'
              DataBinding.FieldName = 'CUSTODYACCNAME'
              Width = 123
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyCUSTODYBRANCH: TcxGridDBBandedColumn
              Caption = 'Custody Branch'
              DataBinding.FieldName = 'CUSTODYBRANCH'
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyACTLED_SEQID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACTLED_SEQID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwCOBBankCustodyID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = gvwCOBBankCustody
          end
        end
        object cxDBLookupComboBox11: TcxDBLookupComboBox
          Left = 546
          Top = 418
          RepositoryItem = dmGlobal.luBankRDN
          DataBinding.DataField = 'RDNBANKCODE'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 164
        end
        object cxDBImageComboBox22: TcxDBImageComboBox
          Left = 546
          Top = 475
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
          TabOrder = 25
          Width = 42
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 764
          Top = 475
          DataBinding.DataField = 'INIT_DEPOSIT_FUND'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 148
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 764
          Top = 502
          DataBinding.DataField = 'INIT_DEPOSIT_SHARES'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 148
        end
        object cbFieldWork: TcxDBImageComboBox
          Left = 165
          Top = 109
          DataBinding.DataField = 'FIELD_WORK'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
          Properties.Items = <
            item
              Description = 'Finance'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Insurance'
              Value = '2'
            end
            item
              Description = 'Asset Management'
              Value = '3'
            end
            item
              Description = 'Securities Company'
              Value = '4'
            end
            item
              Description = 'Pension Fund'
              Value = '5'
            end
            item
              Description = 'Services'
              Value = '6'
            end
            item
              Description = 'Mining'
              Value = '7'
            end
            item
              Description = 'Contractor'
              Value = '8'
            end
            item
              Description = 'Transportation'
              Value = '9'
            end
            item
              Description = 'Foundation'
              Value = '10'
            end
            item
              Description = 'Plantation'
              Value = '11'
            end
            item
              Description = 'Industry'
              Value = '12'
            end
            item
              Description = 'Trading'
              Value = '13'
            end
            item
              Description = 'Professional'
              Value = '14'
            end>
          Properties.OnChange = cbFieldWorkPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 164
        end
        object cxDBImageComboBox24: TcxDBImageComboBox
          Left = 165
          Top = 163
          DataBinding.DataField = 'POSITION'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
          Properties.Items = <
            item
              Description = 'Owner'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Commissioner'
              Value = '2'
            end
            item
              Description = 'Director'
              Value = '3'
            end
            item
              Description = 'Manager'
              Value = '4'
            end
            item
              Description = 'Supervisor'
              Value = '5'
            end
            item
              Description = 'Staff'
              Value = '6'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 164
        end
        object cxDBTextEdit53: TcxDBTextEdit
          Left = 165
          Top = 136
          DataBinding.DataField = 'FIELD_WORK_DESC'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 164
        end
        object cxDBLookupComboBox17: TcxDBLookupComboBox
          Left = 165
          Top = 476
          RepositoryItem = dmGlobal.luSecAnnualIncome
          DataBinding.DataField = 'ADD_INCOME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ClearKey = 46
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SEC_INCCODE'
          Properties.ListColumns = <
            item
              Caption = 'Income Code'
              FieldName = 'SEC_INCCODE'
            end
            item
              Caption = 'Income Description'
              FieldName = 'SEC_INCDESC'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 164
        end
        object cbAnnualIncomeSource: TcxDBImageComboBox
          Left = 165
          Top = 422
          DataBinding.DataField = 'ANNUAL_INCOME_SOURCE'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
          Properties.Items = <
            item
              Description = 'Operating Income'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Salary'
              Value = '2'
            end
            item
              Description = 'Deposit Account'
              Value = '3'
            end
            item
              Description = 'Investment Proceeds'
              Value = '4'
            end
            item
              Description = 'Grant'
              Value = '5'
            end
            item
              Description = 'Inheritance'
              Value = '6'
            end
            item
              Description = 'Rental Fee'
              Value = '7'
            end
            item
              Description = 'Husband / Wife'
              Value = '8'
            end
            item
              Description = 'Parents / Children'
              Value = '9'
            end
            item
              Description = 'Allowance'
              Value = '10'
            end
            item
              Description = 'Loan'
              Value = '11'
            end
            item
              Description = 'Lottery'
              Value = '12'
            end
            item
              Description = 'Others'
              Value = '13'
            end>
          Properties.OnChange = cbAnnualIncomeSourcePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 164
        end
        object cxDBTextEdit55: TcxDBTextEdit
          Left = 165
          Top = 449
          DataBinding.DataField = 'ANNUAL_INCOME_SOURCE_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 164
        end
        object cbAddIncomeSource: TcxDBImageComboBox
          Left = 165
          Top = 503
          DataBinding.DataField = 'ADD_INCOME_SOURCE'
          DataBinding.DataSource = dsSubject
          Properties.ClearKey = 46
          Properties.Items = <
            item
              Description = 'Operating Income'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Salary'
              Value = '2'
            end
            item
              Description = 'Deposit Account'
              Value = '3'
            end
            item
              Description = 'Investment Proceeds'
              Value = '4'
            end
            item
              Description = 'Grant'
              Value = '5'
            end
            item
              Description = 'Inheritance'
              Value = '6'
            end
            item
              Description = 'Rental Fee'
              Value = '7'
            end
            item
              Description = 'Husband / Wife'
              Value = '8'
            end
            item
              Description = 'Parents / Children'
              Value = '9'
            end
            item
              Description = 'Allowance'
              Value = '10'
            end
            item
              Description = 'Loan'
              Value = '11'
            end
            item
              Description = 'Lottery'
              Value = '12'
            end
            item
              Description = 'Others'
              Value = '13'
            end>
          Properties.OnChange = cbAddIncomeSourcePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 19
          Width = 164
        end
        object cxDBTextEdit72: TcxDBTextEdit
          Left = 165
          Top = 530
          DataBinding.DataField = 'ADD_INCOME_SOURCE_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 164
        end
        object cmbOccupation: TcxDBLookupComboBox
          Left = 165
          Top = 28
          DataBinding.DataField = 'OCCUPATION'
          DataBinding.DataSource = dsSubject
          Properties.KeyFieldNames = 'OC_CODE'
          Properties.ListColumns = <
            item
              FieldName = 'OCCUPATION'
            end>
          Properties.ListSource = dmLookup.dsLuOccupation
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          OnExit = cmbOccupationExit
          Width = 164
        end
        object dxLayoutGroup10: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit54
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Job Function/Division'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit56
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group2
          Control = cxLabel1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          CaptionOptions.Text = 'Years'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          CaptionOptions.Text = 'Month'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone No.'
          Parent = dxLayoutControl3Group3
          Control = cxDBTextEdit57
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          CaptionOptions.Text = 'Ext'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit58
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item11: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Company Address'
          Parent = dxLayoutControl3Group6
          Control = cxDBMemo4
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl3Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Source Of Fund'
          Parent = dxLayoutControl3Group6
          Control = cmbSourceOfFund
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Personal Bank Account'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          AlignVert = avTop
          CaptionOptions.Text = 'Source Of Fund'
          Parent = dxLayoutGroup10
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 7
        end
        object dxLayoutGroup11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 8
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group7
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object SourceOfFundOther: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl3Group6
          Visible = False
          Control = cxDBTextEdit19
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object Ocupation_other: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Occupation Others'
          Parent = dxLayoutControl3Group6
          Visible = False
          Control = cxDBTextEdit28
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl5Group1
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup10
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Investment Objectives'
          Parent = dxLayoutControl3Group5
          Control = Invs_Objectives
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object Invs_Objective_Others: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl3Group5
          Visible = False
          Control = cxDBTextEdit37
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Nature Business for The Entrepreneur'
          Parent = dxLayoutControl5Group3
          Control = cxDBTextEdit38
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          CaptionOptions.Text = '* Annual Income (In IDR)'
          Parent = dxLayoutControl3Group6
          Control = cxDBLookupComboBox14
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutItem9: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group4
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup12: TdxLayoutGroup
          CaptionOptions.Text = 'Bank Custody'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup12
          Control = cxGrid2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem10: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Bank RDN Request'
          Parent = dxLayoutControl5Group3
          Control = cxDBLookupComboBox11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Investment Experience'
          Parent = dxLayoutControl3Group5
          Control = cxDBImageComboBox22
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          CaptionOptions.Text = 'Fund'
          Parent = dxLayoutControl5Group2
          Control = cxDBCurrencyEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl5Item4: TdxLayoutItem
          CaptionOptions.Text = 'Shares'
          Parent = dxLayoutControl5Group2
          Control = cxDBCurrencyEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          AlignVert = avTop
          CaptionOptions.Text = 'Initial Deposit'
          Parent = dxLayoutControl5Group1
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl5Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fields Of Work'
          Parent = dxLayoutControl3Group6
          Control = cbFieldWork
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl5Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Parent = dxLayoutControl3Group6
          Control = cxDBImageComboBox24
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object lcFieldWorkDesc: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fields Of Work Description'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit53
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl5Item7: TdxLayoutItem
          CaptionOptions.Text = 'Additional Income (In IDR)'
          Parent = dxLayoutControl3Group6
          Control = cxDBLookupComboBox17
          ControlOptions.ShowBorder = False
          Index = 15
        end
        object dxLayoutControl5Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Annual Income Source'
          Parent = dxLayoutControl3Group6
          Control = cbAnnualIncomeSource
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object AnnIncomeSourceOther: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Annual Income Source Other'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit55
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl5Item10: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Add Income Source'
          Parent = dxLayoutControl3Group6
          Visible = False
          Control = cbAddIncomeSource
          ControlOptions.ShowBorder = False
          Index = 16
        end
        object AddIncomeSourceOther: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Add Income Source Other'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit72
          ControlOptions.ShowBorder = False
          Index = 17
        end
        object dxLayoutControl5Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Occupation'
          Parent = dxLayoutControl3Group6
          Control = cmbOccupation
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Nature Of Business'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 2
        end
      end
    end
    object TabKnowYourCust: TcxTabSheet
      Caption = 'Know Your Customer'
      ImageIndex = 4
      object lcKYC: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxLabel2: TcxLabel
          Left = 10
          Top = 10
          AutoSize = False
          Caption = '1. '
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 60
          AutoSize = False
          Caption = '2.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 110
          AutoSize = False
          Caption = '3.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 160
          AutoSize = False
          Caption = '4.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 210
          AutoSize = False
          Caption = '5.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 260
          AutoSize = False
          Caption = '6.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 310
          AutoSize = False
          Caption = '7.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 360
          AutoSize = False
          Caption = '8.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = 423
          AutoSize = False
          Caption = '9.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 523
          AutoSize = False
          Caption = '11.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel12: TcxLabel
          Left = 41
          Top = 10
          Caption = 'Do you have an existing Securities Account in this Company?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel13: TcxLabel
          Left = 41
          Top = 60
          Caption = 
            'Do you have any relationship with shareholder/Commissioner/Direc' +
            'tor/employee in this Company?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel14: TcxLabel
          Left = 41
          Top = 110
          Caption = 
            'Does your family own an existing Securities Account in this Comp' +
            'any? If yes, please disclose'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel15: TcxLabel
          Left = 41
          Top = 160
          Caption = 
            'Do you have any controls of any existing account in this Company' +
            '?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel16: TcxLabel
          Left = 41
          Top = 210
          Caption = 
            'Are you one of the controlling shareholders from any company/com' +
            'panies that own an account in this Company?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel17: TcxLabel
          Left = 41
          Top = 260
          Caption = 
            'Are you a member of the Board of Directors or one of the control' +
            'ling shareholders of a listed company?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel18: TcxLabel
          Left = 41
          Top = 310
          Caption = 
            'Are you one of the board managements or one of the shareholders ' +
            'of a securities company?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxLabel19: TcxLabel
          Left = 41
          Top = 360
          AutoSize = False
          Caption = 
            'Do you or does any of your family members work at Securities Com' +
            'pany, Stock Exchange, company regulated by Stock Exchange/Bapepa' +
            'm and LK, bank, insurance or other similar financial institution' +
            '?'
          ParentColor = False
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 30
          Width = 616
        end
        object cxLabel20: TcxLabel
          Left = 41
          Top = 423
          AutoSize = False
          Caption = 
            'Are you now / previously / will hold / be nominated for any posi' +
            'tion exposed to public (Politically Exposed Person)?'
          ParentColor = False
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 17
          Width = 616
        end
        object cxLabel21: TcxLabel
          Left = 41
          Top = 523
          Caption = 'Have you ever/still own an investment product in capital market?'
          ParentColor = False
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
          Properties.OnCloseUp = chkInfoPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 47
        end
        object cxDBTextEdit9: TcxDBTextEdit
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
        object cxDBTextEdit14: TcxDBTextEdit
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
        object cxDBImageComboBox1: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox1PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 47
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox4PropertiesCloseUp
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
          Properties.OnCloseUp = cxDBImageComboBox8PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 17
          Width = 47
        end
        object cxDBImageComboBox10: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox10PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 42
        end
        object cxDBImageComboBox11: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox11PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 46
        end
        object cxDBImageComboBox13: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox13PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Width = 49
        end
        object cxDBImageComboBox14: TcxDBImageComboBox
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
          Properties.OnCloseUp = cxDBImageComboBox14PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 40
          Width = 48
        end
        object cxDBImageComboBox16: TcxDBImageComboBox
          Left = 41
          Top = 446
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
          OnExit = cxDBImageComboBox16Exit
          Width = 48
        end
        object cxDBImageComboBox17: TcxDBImageComboBox
          Left = 41
          Top = 546
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
          Properties.OnCloseUp = cxDBImageComboBox17PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 50
          Width = 46
        end
        object cxDBTextEdit16: TcxDBTextEdit
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
        object cxDBTextEdit21: TcxDBTextEdit
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
        object cxDBTextEdit34: TcxDBTextEdit
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
        object cxDBTextEdit42: TcxDBTextEdit
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
        object cxDBTextEdit43: TcxDBTextEdit
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
        object cxDBTextEdit46: TcxDBTextEdit
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
        object cxDBTextEdit47: TcxDBTextEdit
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
        object cxDBTextEdit49: TcxDBTextEdit
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
        object cxDBTextEdit59: TcxDBTextEdit
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
        object cxDBTextEdit60: TcxDBTextEdit
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
        object cxDBTextEdit61: TcxDBTextEdit
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
        object cxDBTextEdit62: TcxDBTextEdit
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
        object cxDBTextEdit63: TcxDBTextEdit
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
        object cxDBTextEdit64: TcxDBTextEdit
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
        object cxDBTextEdit65: TcxDBTextEdit
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
        object cxDBTextEdit66: TcxDBTextEdit
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
        object cxDBTextEdit67: TcxDBTextEdit
          Left = 204
          Top = 546
          DataBinding.DataField = 'INFO_EXISTING_MARKET_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 51
          Width = 121
        end
        object cxLabel22: TcxLabel
          Left = 41
          Top = 473
          Caption = 
            'Does your family now / previously / will hold / be nominated for' +
            ' any position exposed to public (Politically Exposed Person)?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxDBImageComboBox18: TcxDBImageComboBox
          Left = 41
          Top = 496
          DataBinding.DataField = 'INFO_EXISTING_FAMILY_PUB_CHK'
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
          TabOrder = 47
          Width = 46
        end
        object cxLabel23: TcxLabel
          Left = 10
          Top = 473
          AutoSize = False
          Caption = '10.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel24: TcxLabel
          Left = 10
          Top = 573
          AutoSize = False
          Caption = '12.'
          ParentColor = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 25
          AnchorX = 35
        end
        object cxLabel25: TcxLabel
          Left = 41
          Top = 573
          Caption = 
            'If we provide online trading, would you like to receive the info' +
            'rmation from us?'
          ParentColor = False
          Style.HotTrack = False
        end
        object cxDBImageComboBox19: TcxDBImageComboBox
          Left = 41
          Top = 596
          DataBinding.DataField = 'INFO_ONLINE_TRADING'
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
          TabOrder = 54
          Width = 46
        end
        object txtFamily: TcxDBTextEdit
          Left = 845
          Top = 28
          DataBinding.DataField = 'REL_FAMILY_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 55
          Width = 150
        end
        object cxDBImageComboBox20: TcxDBImageComboBox
          Left = 845
          Top = 55
          RepositoryItem = dmGlobal.luFamilyRelationship
          DataBinding.DataField = 'REL_FAMILY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
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
            end
            item
              Description = 'Brother'
              ImageIndex = 0
              Value = 110
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 56
          Width = 100
        end
        object cxDBTextEdit68: TcxDBTextEdit
          Left = 845
          Top = 82
          DataBinding.DataField = 'REL_FAMILY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 57
          Width = 150
        end
        object cxDBTextEdit69: TcxDBTextEdit
          Left = 845
          Top = 109
          DataBinding.DataField = 'BENEFICIARY_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 58
          Width = 150
        end
        object cxDBImageComboBox21: TcxDBImageComboBox
          Left = 845
          Top = 136
          RepositoryItem = dmGlobal.luFamilyRelationship
          DataBinding.DataField = 'BENEFICIARY_RELATION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.Items = <
            item
              Description = 'Brother'
              ImageIndex = 0
              Value = '110'
            end
            item
              Description = 'Sister'
              Value = '100'
            end
            item
              Description = 'Mother'
              Value = '102'
            end
            item
              Description = 'Father'
              Value = '103'
            end
            item
              Description = 'Doughter'
              Value = '104'
            end
            item
              Description = 'Son'
              Value = '105'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 59
          Width = 100
        end
        object cxDBTextEdit70: TcxDBTextEdit
          Left = 845
          Top = 163
          DataBinding.DataField = 'BENEFICIARY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 60
          Width = 150
        end
        object cxDBTextEdit71: TcxDBTextEdit
          Left = 845
          Top = 190
          DataBinding.DataField = 'BENEFICIARY_ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 61
          Width = 150
        end
        object cxDBTextEdit76: TcxDBTextEdit
          Left = 699
          Top = 229
          DataBinding.DataField = 'HOBBIES'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 62
          Width = 317
        end
        object dxLayoutGroup13: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem11: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group4
          Control = cxLabel2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group6
          Control = cxLabel3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group14
          Control = cxLabel4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = lcKYCGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group15
          Control = cxLabel5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group5
          Control = cxLabel6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group7
          Control = cxLabel7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group8
          Control = cxLabel8
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem12: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel8'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group9
          Control = cxLabel9
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel9'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group10
          Control = cxLabel10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel10'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group11
          Control = cxLabel11
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item12: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel12'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup14
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
          Index = 10
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
        object dxLayoutGroup14: TdxLayoutGroup
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
          Control = cxDBTextEdit9
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup14
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
          Control = cxDBTextEdit14
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item24: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group23
          Control = cxDBImageComboBox1
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
          Control = cxDBImageComboBox4
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
          Control = cxDBImageComboBox10
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
          Control = cxDBImageComboBox11
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
          Control = cxDBImageComboBox13
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
          Control = cxDBImageComboBox14
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
          Control = cxDBImageComboBox16
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
          Control = cxDBImageComboBox17
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
          Control = cxDBTextEdit16
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
          Control = cxDBTextEdit21
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
          Control = cxDBTextEdit34
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item36: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account No.'
          Parent = dxLayoutControl4Group24
          Control = cxDBTextEdit42
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item37: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group25
          Control = cxDBTextEdit43
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
          Control = cxDBTextEdit46
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item39: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl4Group26
          Control = cxDBTextEdit47
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
          Control = cxDBTextEdit49
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item41: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relation'
          Parent = dxLayoutControl4Group26
          Control = cxDBTextEdit59
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item42: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Listed Company Name'
          Parent = dxLayoutControl4Group27
          Control = cxDBTextEdit60
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
          Control = cxDBTextEdit61
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item44: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Stock (%)'
          Parent = dxLayoutControl4Group27
          Control = cxDBTextEdit62
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item45: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl4Group28
          Control = cxDBTextEdit63
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
          Control = cxDBTextEdit64
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item47: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Stock (%)'
          Parent = dxLayoutControl4Group28
          Control = cxDBTextEdit65
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item48: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company or Institution Name'
          Parent = dxLayoutControl4Group29
          Control = cxDBTextEdit66
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
          Control = cxDBTextEdit67
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
        object lcKYCItem1: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel22'
          CaptionOptions.Visible = False
          Parent = lcKYCGroup2
          Control = cxLabel22
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcKYCItem2: TdxLayoutItem
          AlignHorz = ahLeft
          Parent = lcKYCGroup2
          Control = cxDBImageComboBox18
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcKYCItem3: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel23'
          CaptionOptions.Visible = False
          Parent = lcKYCGroup1
          Control = cxLabel23
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcKYCGroup1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 9
        end
        object lcKYCGroup2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = lcKYCGroup1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object lcKYCItem4: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel24'
          CaptionOptions.Visible = False
          Parent = lcKYCGroup3
          Control = cxLabel24
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcKYCItem5: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel25'
          CaptionOptions.Visible = False
          Parent = lcKYCGroup4
          Control = cxLabel25
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcKYCItem6: TdxLayoutItem
          AlignHorz = ahLeft
          Parent = lcKYCGroup4
          Control = cxDBImageComboBox19
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcKYCGroup3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = lcKYCGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object lcKYCGroup4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = lcKYCGroup3
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object lcKYCGroup5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup13
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup16: TdxLayoutGroup
          AlignVert = avTop
          CaptionOptions.Text = 'Family Relation'
          Parent = lcKYCGroup6
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutItem13: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Family / Relative can be contacted'
          Parent = dxLayoutGroup16
          Control = txtFamily
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem14: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Family Relationship'
          Parent = dxLayoutGroup16
          Control = cxDBImageComboBox20
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem15: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone Number / Cell Phone'
          Parent = dxLayoutGroup16
          Control = cxDBTextEdit68
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem16: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Beneficiary Name'
          Parent = dxLayoutGroup16
          Control = cxDBTextEdit69
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem17: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Relation with Beneficiary'
          Parent = dxLayoutGroup16
          Control = cxDBImageComboBox21
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone Number / Cell Phone'
          Parent = dxLayoutGroup16
          Control = cxDBTextEdit70
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem19: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ID No (KTP / Other)'
          Parent = dxLayoutGroup16
          Control = cxDBTextEdit71
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object lcKYCItem7: TdxLayoutItem
          CaptionOptions.Text = 'Hobby'
          Parent = lcKYCGroup6
          Control = cxDBTextEdit76
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcKYCGroup6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup13
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object TabDoc: TcxTabSheet
      Caption = 'Documents'
      ImageIndex = 5
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1027
        Height = 627
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
        object cxGridLevel1: TcxGridLevel
          GridView = gvwUploadDocs
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsCOBDetails
    Left = 758
    Top = 302
  end
  object FileOpen: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 758
    Top = 249
  end
  object dsCOBBank: TDataSource
    DataSet = frmCOBList.cdsCOBBankAcc
    Left = 831
    Top = 298
  end
  object cdsCOBBank: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBBank'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCOBBankNewRecord
    AutoSequence = True
    AutoApplyUpdate = True
    AutoSequenceField = 'CPDID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 902
    Top = 304
    object cdsCOBBankCPDID: TIntegerField
      FieldName = 'CPDID'
      Required = True
    end
    object cdsCOBBankCID: TLargeintField
      FieldName = 'CID'
      Required = True
    end
    object cdsCOBBankBRCODE: TStringField
      FieldName = 'BRCODE'
      Size = 30
    end
    object cdsCOBBankBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
    end
    object cdsCOBBankACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 50
    end
    object cdsCOBBankACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 50
    end
    object cdsCOBBankCCY: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CCY'
    end
  end
  object dsDocs: TDataSource
    DataSet = frmCOBList.cdsCOBDoc
    Left = 835
    Top = 253
  end
  object dsCOBBankCustody: TDataSource
    DataSet = frmCOBList.cdsCOBClientCustody
    Left = 914
    Top = 251
  end
  object odDocs: TOpenDialog
    Left = 638
    Top = 259
  end
  object ActionList1: TActionList
    Left = 729
    Top = 390
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View Document'
      OnExecute = actViewExecute
      CheckPermission = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 729
    Top = 444
    object BankRDNReceiveMonitor1: TMenuItem
      Action = actView
    end
  end
end
