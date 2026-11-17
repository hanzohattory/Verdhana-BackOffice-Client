inherited frmCOBRetail: TfrmCOBRetail
  Caption = 'Client On Boarding Retail'
  ClientHeight = 753
  ClientWidth = 1015
  ExplicitWidth = 1021
  ExplicitHeight = 782
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Left = 774
    Top = 300
    Width = 279
    Height = 400
    Align = alNone
    ExplicitLeft = 774
    ExplicitTop = 300
    ExplicitWidth = 279
    ExplicitHeight = 400
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 684
    Width = 1015
    ExplicitTop = 684
    ExplicitWidth = 1015
    inherited dbNavLog: TDBNavigator
      Left = 901
      Hints.Strings = ()
      ExplicitLeft = 901
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
    Top = 733
    Width = 1015
    ExplicitTop = 733
    ExplicitWidth = 1015
  end
  inherited tabEditorData: TTabSet
    Top = 663
    Width = 1015
    ExplicitTop = 663
    ExplicitWidth = 1015
  end
  object OATabs: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 1015
    Height = 663
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = TabPaticular
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    ClientRectBottom = 663
    ClientRectRight = 1015
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
        Width = 1015
        Height = 643
        Align = alClient
        TabOrder = 0
        object txtName: TcxDBTextEdit
          Left = 153
          Top = 217
          DataBinding.DataField = 'NAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 8
          Width = 166
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 153
          Top = 244
          DataBinding.DataField = 'POB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 166
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 153
          Top = 271
          DataBinding.DataField = 'DOB'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 166
        end
        object id_type: TcxDBImageComboBox
          Left = 153
          Top = 298
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
          TabOrder = 11
          Width = 166
        end
        object id_valid: TcxDBDateEdit
          Left = 153
          Top = 352
          DataBinding.DataField = 'ID_VALID'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 92
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 153
          Top = 379
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
          TabOrder = 15
          Width = 166
        end
        object TaxStatus: TcxDBImageComboBox
          Left = 492
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
          TabOrder = 23
          Width = 166
        end
        object MaritalStatus: TcxDBImageComboBox
          Left = 153
          Top = 433
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
          TabOrder = 17
          Width = 166
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 153
          Top = 541
          DataBinding.DataField = 'MOTHER_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 166
        end
        object txtIDNumber: TcxDBTextEdit
          Left = 153
          Top = 325
          DataBinding.DataField = 'ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          OnExit = txtIDNumberExit
          Width = 166
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 153
          Top = 406
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
          TabOrder = 16
          Width = 166
        end
        object chkIDLifeTime: TcxCheckBox
          Left = 251
          Top = 352
          Caption = 'Life Time'
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          OnClick = chkIDLifeTimeClick
          Width = 66
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 153
          Top = 460
          DataBinding.DataField = 'SPOUSE_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 166
        end
        object EduBackground: TcxDBImageComboBox
          Left = 153
          Top = 487
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
          TabOrder = 19
          Width = 166
        end
        object eduBackgroundOthers: TcxDBTextEdit
          Left = 153
          Top = 514
          DataBinding.DataField = 'EDU_BACKGOUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 166
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 492
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
          TabOrder = 25
          Width = 166
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 88
          Top = 37
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
          Width = 231
        end
        object chkEvent: TcxDBCheckBox
          Left = 10
          Top = 172
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'On Event'
          DataBinding.DataField = 'ONEVENT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          OnClick = chkEventClick
          Width = 72
        end
        object cmbEvent: TcxDBLookupComboBox
          Left = 88
          Top = 172
          DataBinding.DataField = 'EVID'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 231
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 153
          Top = 568
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
          TabOrder = 22
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
          Width = 231
        end
        object imgPhoto: TcxImage
          Left = 676
          Top = 10
          Properties.Stretch = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 26
          Height = 234
          Width = 192
        end
        object luChannel: TcxDBLookupComboBox
          Left = 88
          Top = 145
          RepositoryItem = dmGlobal.luChannel
          DataBinding.DataField = 'CHANNELCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 231
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 88
          Top = 64
          DataBinding.DataField = 'ALT_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 231
        end
        object btnCheck: TButton
          Left = 676
          Top = 250
          Width = 75
          Height = 25
          Caption = 'Check'
          TabOrder = 27
          OnClick = btnCheckClick
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 88
          Top = 91
          RepositoryItem = dmGlobal.luLocalForeign
          DataBinding.DataField = 'INV_TYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 231
        end
        object cxDBLookupComboBox12: TcxDBLookupComboBox
          Left = 88
          Top = 118
          RepositoryItem = dmGlobal.luBussCat
          DataBinding.DataField = 'BUS_CAT_ID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Width = 231
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 492
          Top = 55
          DataBinding.DataField = 'TAXPAYER_REG'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '99.999.999.9-999.999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 121
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
          AlignVert = avTop
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
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Personal Data'
          Parent = dxLayoutControl3Group1
          ButtonOptions.Buttons = <>
          Index = 1
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
          AlignHorz = ahLeft
          CaptionOptions.Text = '* Branch'
          Parent = dxLayoutControl3Group11
          Control = cxDBLookupComboBox15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item32: TdxLayoutItem
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group9
          Control = chkEvent
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object EventCode: TdxLayoutItem
          CaptionOptions.Text = 'cxDBLookupComboBox6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group9
          Visible = False
          Control = cmbEvent
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
          AlignHorz = ahLeft
          CaptionOptions.Text = '* Product'
          Parent = dxLayoutControl3Group11
          Control = cxDBLookupComboBox10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group9: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group11
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          CaptionOptions.Text = 'cxImage1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group10
          Control = imgPhoto
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Channel'
          Parent = dxLayoutControl3Group11
          Control = luChannel
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Alternate Code'
          Parent = dxLayoutControl3Group11
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item21: TdxLayoutItem
          CaptionOptions.Text = 'Button1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group10
          Control = btnCheck
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item22: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Inv. Type'
          Parent = dxLayoutControl3Group11
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item23: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Business Type'
          Parent = dxLayoutControl3Group11
          Control = cxDBLookupComboBox12
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Indonesia Taxpayer Reg No.'
          Parent = dxLayoutControl1Group3
          Control = cxDBMaskEdit3
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Data Guarantor'
      ImageIndex = 4
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1015
        Height = 643
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
          Left = 22
          Top = 560
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
          Left = 519
          Top = 209
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
          Left = 519
          Top = 236
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
          Left = 519
          Top = 263
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
          Left = 519
          Top = 290
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
          Left = 519
          Top = 317
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
          Top = 344
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
          Left = 519
          Top = 371
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
          Left = 519
          Top = 398
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
          Left = 519
          Top = 425
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
          Top = 452
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
          Left = 519
          Top = 479
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
          Top = 506
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
          Left = 519
          Top = 533
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
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 519
          Top = 98
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
          Top = 125
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
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 519
          Top = 152
          DataBinding.DataField = 'GU_PHONE2'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 150
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 187
          Top = 136
          DataBinding.DataField = 'GU_TAXPAYER_NO'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '99.999.999.9-999.999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 150
        end
        object dxLayoutControl7Group_Root: TdxLayoutGroup
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
          Parent = dxLayoutControl7Group1
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
          Parent = GuarantorPanel
          Control = GuarantorCurrAddress
          ControlOptions.ShowBorder = False
          Index = 19
        end
        object GuarantorWorkInfo: TdxLayoutGroup
          CaptionOptions.Text = 'Guarantor Work Info && Source Of Fund'
          Parent = dxLayoutControl7Group2
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 1
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
          Index = 0
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
        object dxLayoutControl7Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl7Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl7Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Taxpayer No. Of Guarantor'
          Parent = GuarantorPanel
          Control = cxDBMaskEdit4
          ControlOptions.ShowBorder = False
          Index = 4
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
        Width = 1015
        Height = 643
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
          Properties.OnCloseUp = TypeOfResidentPropertiesCloseUp
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
          Width = 150
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
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
          Width = 150
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup7: TdxLayoutGroup
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
          Parent = dxLayoutGroup6
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Type Of Residence'
          Parent = dxLayoutGroup7
          Control = cmbTypeOfResidence
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Ownership Status'
          Parent = dxLayoutGroup7
          Control = cxDBImageComboBox12
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = '* Street Address'
          Parent = dxLayoutGroup7
          Control = cxDBMemo3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Kelurahan'
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit35
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Kecamatan'
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit36
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl2Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = dxLayoutGroup7
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
          CaptionOptions.Text = 'Home Phone'
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit50
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl2Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cell Phone *'
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit51
          ControlOptions.ShowBorder = False
          Index = 13
        end
        object dxLayoutControl2Item25: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax no.'
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit52
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl2Item26: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Correspondent Address'
          Parent = dxLayoutGroup7
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
          Parent = dxLayoutGroup7
          Control = cxDBLookupComboBox2
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl2Item28: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Country'
          Parent = dxLayoutGroup7
          Control = cxDBLookupComboBox3
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
          Parent = dxLayoutGroup7
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
          Parent = dxLayoutGroup7
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutControl2Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup7
          Control = chkCurrentAddress
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutItem6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* City'
          Parent = dxLayoutGroup7
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
        Width = 1015
        Height = 643
        Align = alClient
        TabOrder = 0
        object cmbOccupation: TcxDBImageComboBox
          Left = 164
          Top = 28
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
          TabOrder = 0
          Width = 106
        end
        object cxDBTextEdit53: TcxDBTextEdit
          Left = 164
          Top = 82
          DataBinding.DataField = 'FIELD_WORK'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 150
        end
        object cxDBTextEdit54: TcxDBTextEdit
          Left = 164
          Top = 109
          DataBinding.DataField = 'COMPANY'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 150
        end
        object cxDBTextEdit55: TcxDBTextEdit
          Left = 164
          Top = 136
          DataBinding.DataField = 'POSITION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 150
        end
        object cxDBTextEdit56: TcxDBTextEdit
          Left = 164
          Top = 163
          DataBinding.DataField = 'JOB_DIVISION'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 150
        end
        object cxLabel1: TcxLabel
          Left = 22
          Top = 190
          AutoSize = False
          Caption = 'Years Of Service'
          ParentFont = False
          Style.HotTrack = False
          Height = 17
          Width = 100
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 163
          Top = 190
          DataBinding.DataField = 'YOS_YEAR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 50
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 163
          Top = 217
          DataBinding.DataField = 'YOS_MONTH'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.DisplayFormat = '0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 50
        end
        object cxDBTextEdit57: TcxDBTextEdit
          Left = 164
          Top = 244
          DataBinding.DataField = 'COMPANY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 82
        end
        object cxDBTextEdit58: TcxDBTextEdit
          Left = 273
          Top = 244
          DataBinding.DataField = 'COMPANY_PHONE_EXT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 41
        end
        object cxDBMemo4: TcxDBMemo
          Left = 164
          Top = 271
          DataBinding.DataField = 'COMPANY_ADDRESS'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Height = 58
          Width = 150
        end
        object cmbSourceOfFund: TcxDBImageComboBox
          Left = 164
          Top = 335
          DataBinding.DataField = 'FUND_SOURCE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          Properties.OnCloseUp = cmbSourceOfFundPropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 150
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 164
          Top = 362
          DataBinding.DataField = 'SOURCE_FUND_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 150
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 164
          Top = 55
          DataBinding.DataField = 'OCCUPATION_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 150
        end
        object Invs_Objectives: TcxDBImageComboBox
          Left = 458
          Top = 433
          DataBinding.DataField = 'INVEST_OBJECTIVE'
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
          TabOrder = 19
          Width = 150
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 458
          Top = 460
          DataBinding.DataField = 'INVEST_OBJECTIVE_OTHER'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 150
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 22
          Top = 434
          DataBinding.DataField = 'NAT_BUSINESS_ENTREPRENEUR'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 15
          Width = 292
        end
        object cxDBLookupComboBox14: TcxDBLookupComboBox
          Left = 164
          Top = 389
          RepositoryItem = dmGlobal.luSecAnnualIncome
          DataBinding.DataField = 'ANNUAL_INCOME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
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
          TabOrder = 14
          Width = 150
        end
        object cxGrid1: TcxGrid
          Left = 344
          Top = 28
          Width = 644
          Height = 162
          TabOrder = 17
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
              Width = 78
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
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn
              Caption = 'Bank Branch'
              DataBinding.FieldName = 'BANK_BRANCH'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 5
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
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwCOBBankCCY: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CCY'
              RepositoryItem = dmGlobal.luCurrency
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwCOBBankBANK_CODE: TcxGridDBBandedColumn
              Caption = 'Bank Code'
              DataBinding.FieldName = 'BANK_NAME'
              RepositoryItem = dmGlobal.luBankCode
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwCOBBank
          end
        end
        object cxGrid2: TcxGrid
          Left = 344
          Top = 226
          Width = 644
          Height = 171
          TabOrder = 18
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
          Left = 164
          Top = 461
          RepositoryItem = dmGlobal.luBankRDN
          DataBinding.DataField = 'RDNBANKCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 150
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
        object dxLayoutItem7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Occupation'
          Parent = dxLayoutControl3Group6
          Control = cmbOccupation
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fields Of Work'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit53
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit54
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Position'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit55
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Job Function/Division'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit56
          ControlOptions.ShowBorder = False
          Index = 5
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
          Parent = dxLayoutGroup9
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          CaptionOptions.Text = 'Month'
          Parent = dxLayoutGroup9
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
          Index = 8
        end
        object dxLayoutControl3Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Source Of Fund'
          Parent = dxLayoutControl3Group6
          Control = cmbSourceOfFund
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Personal Bank Account'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Source Of Fund'
          Parent = dxLayoutGroup8
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
          Index = 6
        end
        object dxLayoutGroup9: TdxLayoutGroup
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
          Index = 7
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
          Index = 10
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
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup8
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
          Index = 0
        end
        object Invs_Objective_Others: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl3Group5
          Visible = False
          Control = cxDBTextEdit37
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          CaptionOptions.Text = 'Nature Business for The Entrepreneur'
          CaptionOptions.Layout = clTop
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit38
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          CaptionOptions.Text = '* Annual Income (In Rupiah)'
          Parent = dxLayoutControl3Group6
          Control = cxDBLookupComboBox14
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object dxLayoutItem8: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group4
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup10: TdxLayoutGroup
          CaptionOptions.Text = 'Bank Custody'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup10
          Control = cxGrid2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Bank RDN Request'
          Parent = dxLayoutControl3Group6
          Control = cxDBLookupComboBox11
          ControlOptions.ShowBorder = False
          Index = 13
        end
      end
    end
    object TabKnowYourCust: TcxTabSheet
      Caption = 'Know Your Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1015
        Height = 643
        Align = alClient
        TabOrder = 0
        object txtFamily: TcxDBTextEdit
          Left = 201
          Top = 28
          DataBinding.DataField = 'REL_FAMILY_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 150
        end
        object cxDBImageComboBox19: TcxDBImageComboBox
          Left = 201
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
              Description = 'Doughter'
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
          TabOrder = 1
          Width = 100
        end
        object cxDBTextEdit60: TcxDBTextEdit
          Left = 201
          Top = 82
          DataBinding.DataField = 'REL_FAMILY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 150
        end
        object cxDBTextEdit61: TcxDBTextEdit
          Left = 201
          Top = 109
          DataBinding.DataField = 'BENEFICIARY_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 150
        end
        object cxDBImageComboBox20: TcxDBImageComboBox
          Left = 201
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
          TabOrder = 4
          Width = 100
        end
        object cxDBTextEdit62: TcxDBTextEdit
          Left = 201
          Top = 163
          DataBinding.DataField = 'BENEFICIARY_PHONE'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 150
        end
        object cxDBTextEdit63: TcxDBTextEdit
          Left = 201
          Top = 190
          DataBinding.DataField = 'BENEFICIARY_ID_NO'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 150
        end
        object cxLabel3: TcxLabel
          AlignWithMargins = True
          Left = 381
          Top = 28
          AutoSize = False
          Caption = 
            'Does any of your family or relative works for this Company Group' +
            ' ?'
          ParentFont = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Properties.WordWrap = True
          Height = 59
          Width = 164
          AnchorX = 545
        end
        object KYC12: TcxDBTextEdit
          Left = 605
          Top = 82
          DataBinding.DataField = 'FAM_WORK_AT_BHN_DEPT'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 150
        end
        object cxLabel4: TcxLabel
          Left = 381
          Top = 109
          AutoSize = False
          Caption = 
            'Does any of your family or relative work for other Securities Ho' +
            'use, Stock Exchange, Bapepam or ohter similiar finance'
          ParentFont = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Properties.WordWrap = True
          Height = 82
          Width = 164
          AnchorX = 545
        end
        object KYC21: TcxDBTextEdit
          Left = 605
          Top = 136
          DataBinding.DataField = 'FAM_WORK_AT_FIN_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 150
        end
        object KYC22: TcxDBTextEdit
          Left = 605
          Top = 163
          DataBinding.DataField = 'FAM_WORK_AT_FIN_INST_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 150
        end
        object cxLabel5: TcxLabel
          Left = 381
          Top = 197
          AutoSize = False
          Caption = 
            'Does any of your family or relative works as Director, or having' +
            ' controls of listed limited liabilities company (minimum 5% of o' +
            'wnership)?'
          ParentFont = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Properties.WordWrap = True
          Height = 74
          Width = 164
          AnchorX = 545
        end
        object KYC31: TcxDBTextEdit
          Left = 605
          Top = 224
          DataBinding.DataField = 'FAM_WORK_AS_DIR_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Width = 150
        end
        object KYC32: TcxDBTextEdit
          Left = 605
          Top = 251
          DataBinding.DataField = 'FAM_WORK_AS_DIR_INST_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 150
        end
        object cxLabel6: TcxLabel
          Left = 381
          Top = 278
          AutoSize = False
          Caption = 
            'Does any of your family or close relative works as senior execut' +
            'ive of State Own Enterprise, Ministry, Senate, Judicative or Oth' +
            'er Government bodies in Indonesia'
          ParentFont = False
          Style.HotTrack = False
          Properties.Alignment.Horz = taRightJustify
          Properties.WordWrap = True
          Height = 74
          Width = 164
          AnchorX = 545
        end
        object KYC41: TcxDBTextEdit
          Left = 605
          Top = 305
          DataBinding.DataField = 'FAM_WORK_AT_GOV_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 150
        end
        object KYC42: TcxDBTextEdit
          Left = 605
          Top = 332
          DataBinding.DataField = 'FAM_WORK_AT_GOV_INST_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 150
        end
        object cxDBTextEdit76: TcxDBTextEdit
          Left = 528
          Top = 371
          DataBinding.DataField = 'HOBBIES'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 239
        end
        object KYC1: TcxDBImageComboBox
          Left = 551
          Top = 28
          DataBinding.DataField = 'FAM_WORK_AT_BHN'
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
          Properties.OnChange = KYC1PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 74
        end
        object KYC11: TcxDBTextEdit
          Left = 605
          Top = 55
          DataBinding.DataField = 'FAM_WORK_AT_BHN_NAME'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 150
        end
        object KYC2: TcxDBImageComboBox
          Left = 551
          Top = 109
          DataBinding.DataField = 'FAM_WORK_AT_FIN'
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
          Properties.OnChange = KYC2PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 74
        end
        object KYC3: TcxDBImageComboBox
          Left = 551
          Top = 197
          DataBinding.DataField = 'FAM_WORK_AS_DIR'
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
          Properties.OnChange = KYC3PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 74
        end
        object KYC4: TcxDBImageComboBox
          Left = 551
          Top = 278
          DataBinding.DataField = 'FAM_WORK_AT_GOV'
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
          Properties.OnChange = KYC4PropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 74
        end
        object dxLayoutGroup11: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem9: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Family / Relative can be contacted'
          Parent = dxLayoutGroup12
          Control = txtFamily
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Family Relationship'
          Parent = dxLayoutGroup12
          Control = cxDBImageComboBox19
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone Number / Cell Phone'
          Parent = dxLayoutGroup12
          Control = cxDBTextEdit60
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Beneficiary Name'
          Parent = dxLayoutGroup12
          Control = cxDBTextEdit61
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '* Relation with Beneficiary'
          Parent = dxLayoutGroup12
          Control = cxDBImageComboBox20
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone Number / Cell Phone'
          Parent = dxLayoutGroup12
          Control = cxDBTextEdit62
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ID No (KTP / Other)'
          Parent = dxLayoutGroup12
          Control = cxDBTextEdit63
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl4Item14: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group8
          Control = cxLabel3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item17: TdxLayoutItem
          CaptionOptions.Text = 'Dept'
          Parent = dxLayoutControl4Group2
          Control = KYC12
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item18: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group11
          Control = cxLabel4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item20: TdxLayoutItem
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group4
          Control = KYC21
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item21: TdxLayoutItem
          CaptionOptions.Text = 'Institution'
          Parent = dxLayoutControl4Group4
          Control = KYC22
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item22: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group19
          Control = cxLabel5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item24: TdxLayoutItem
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group5
          Control = KYC31
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item25: TdxLayoutItem
          CaptionOptions.Text = 'Instituion'
          Parent = dxLayoutControl4Group5
          Control = KYC32
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item26: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group20
          Control = cxLabel6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item28: TdxLayoutItem
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group3
          Control = KYC41
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item29: TdxLayoutItem
          CaptionOptions.Text = 'Instituion'
          Parent = dxLayoutControl4Group3
          Control = KYC42
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item30: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '                                         Hobby'
          Parent = dxLayoutControl4Group7
          Control = cxDBTextEdit76
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item31: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox21'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group2
          Control = KYC1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item15: TdxLayoutItem
          CaptionOptions.Text = 'Name'
          Parent = dxLayoutControl4Group2
          Control = KYC11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item16: TdxLayoutItem
          AlignHorz = ahLeft
          Parent = dxLayoutControl4Group4
          Control = KYC2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item19: TdxLayoutItem
          AlignHorz = ahLeft
          Parent = dxLayoutControl4Group5
          Control = KYC3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item23: TdxLayoutItem
          AlignHorz = ahLeft
          Parent = dxLayoutControl4Group3
          Control = KYC4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup12: TdxLayoutGroup
          CaptionOptions.Text = 'Family Relation'
          Parent = dxLayoutControl4Group6
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup11
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group15: TdxLayoutGroup
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl4Group7
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group15
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group15
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group19: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group15
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group20: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group15
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group11
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group19
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group20
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup11
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsCOBDetails
    Left = 682
    Top = 356
  end
  object dsCOBBank: TDataSource
    DataSet = frmCOBList.cdsCOBBankAcc
    Left = 609
    Top = 356
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
    Left = 608
    Top = 306
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
  object dsCOBBankCustody: TDataSource
    DataSet = frmCOBList.cdsCOBClientCustody
    Left = 764
    Top = 357
  end
  object dsDocs: TDataSource
    DataSet = frmCOBList.cdsCOBDoc
    Left = 677
    Top = 303
  end
  object FileOpen: TOpenDialog
    Left = 760
    Top = 304
  end
end
