inherited frmOpeningAccountIns: TfrmOpeningAccountIns
  Caption = 'Opening Account Institutional'
  ClientHeight = 721
  ClientWidth = 994
  ExplicitWidth = 1010
  ExplicitHeight = 760
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 314
    Height = 121
    Align = alNone
    ExplicitWidth = 314
    ExplicitHeight = 121
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 652
    Width = 994
    ExplicitTop = 652
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
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
  object pageEntity: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 994
    Height = 631
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 627
    ClientRectLeft = 4
    ClientRectRight = 990
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'Company Data'
      ImageIndex = 4
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 603
        Align = alClient
        TabOrder = 0
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 408
          Top = 325
          DataBinding.DataField = 'INS_DATEOFGAZETTE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 29
          Width = 120
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 437
          Top = 217
          DataBinding.DataField = 'INS_DATEOFESTABLIZED'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 120
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 155
          Top = 325
          DataBinding.DataField = 'INS_NOOFGAZETTE'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 28
          Width = 145
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 368
          Top = 379
          DataBinding.DataField = 'NPWP_REGDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 32
          Width = 120
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 155
          Top = 244
          RepositoryItem = dmGlobal.luInsBusType
          DataBinding.DataField = 'INS_BUSSTYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 23
          Width = 166
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 155
          Top = 379
          DataBinding.DataField = 'NPWP'
          DataBinding.DataSource = dsSubject
          Properties.EditMask = '9999999999999999'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 155
          Top = 352
          RepositoryItem = dmGlobal.luTaxID
          DataBinding.DataField = 'TAXID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 30
          Width = 121
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 155
          Top = 406
          DataBinding.DataField = 'KITAS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 33
          Width = 121
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 368
          Top = 406
          DataBinding.DataField = 'KITAS_EXPDATE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 34
          Width = 120
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 155
          Top = 190
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'CNTREST'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 19
          Width = 166
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 155
          Top = 217
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'DEED_ESTABLISH_PLACE'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 21
          Width = 166
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 155
          Top = 298
          DataBinding.DataField = 'ARTICLE_ASSOCIATION'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 448
        end
        object cxDBImageComboBox12: TcxDBImageComboBox
          Left = 155
          Top = 433
          RepositoryItem = dmGlobal.luSupplementaryDocType
          DataBinding.DataField = 'SUPPLEMENTARY_DOCTYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 35
          Width = 234
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 448
          Top = 433
          DataBinding.DataField = 'SUPPLEMENTARY_DOCEXP'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 36
          Width = 121
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
          Left = 305
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
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 88
          Top = 37
          RepositoryItem = dmGlobal.luProduct
          DataBinding.DataField = 'PRDCODE'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 145
        end
        object cbBranch: TcxDBLookupComboBox
          Left = 315
          Top = 37
          RepositoryItem = dmGlobal.luBranch
          DataBinding.DataField = 'BRANCHID'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 145
        end
        object cbSales: TcxDBLookupComboBox
          Left = 539
          Top = 37
          RepositoryItem = dmGlobal.luSales
          DataBinding.DataField = 'SALESID'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          OnEnter = cbSalesEnter
          OnExit = cbSalesExit
          Width = 259
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 368
          Top = 163
          DataBinding.DataField = 'ENTDESC'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 235
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 155
          Top = 136
          DataBinding.DataField = 'ENTNAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 15
          Width = 448
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 10
          Top = 91
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Existing Client'
          DataBinding.DataField = 'EXISTING_CLIENT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
        end
        object cxDBButtonEdit1: TcxDBButtonEdit
          Left = 149
          Top = 91
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
          TabOrder = 13
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 285
          Top = 91
          TabStop = False
          DataBinding.DataField = 'PARENT_ACCNAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 312
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 432
          Top = 10
          Caption = 'Affiliation'
          DataBinding.DataField = 'AFFIL'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
        end
        object cxDBTextEdit39: TcxDBTextEdit
          Left = 659
          Top = 136
          DataBinding.DataField = 'BICCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 121
        end
        object cmbRisk: TcxDBImageComboBox
          Left = 559
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
        object cxDBLookupComboBox6: TcxDBLookupComboBox
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
          TabOrder = 6
          Width = 145
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 315
          Top = 64
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
          TabOrder = 8
          Width = 145
        end
        object edInitial: TcxDBTextEdit
          Left = 155
          Top = 163
          AutoSize = False
          DataBinding.DataField = 'INITIAL'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 17
          Height = 21
          Width = 121
        end
        object cxDBTextEdit41: TcxDBTextEdit
          Left = 437
          Top = 190
          DataBinding.DataField = 'EMAIL_ADDR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 20
          Width = 166
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 155
          Top = 271
          RepositoryItem = dmGlobal.luCompanyType
          DataBinding.DataField = 'INS_COMPTYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 24
          Width = 166
        end
        object edBussTypeOther: TcxDBTextEdit
          Left = 327
          Top = 244
          DataBinding.DataField = 'INS_BUSSTYPE_OT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 230
        end
        object edCompTypeOther: TcxDBTextEdit
          Left = 327
          Top = 271
          DataBinding.DataField = 'INS_COMPTYPE_OT'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 230
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 539
          Top = 64
          RepositoryItem = dmGlobal.luInvestorCategory
          DataBinding.DataField = 'INVESTORCAT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 100
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 698
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
        object cxDBImageComboBox28: TcxDBImageComboBox
          Left = 755
          Top = 10
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
          TabOrder = 4
          Height = 21
          Width = 92
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date of Registration'
          Control = cxDBDateEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutGroup5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date of Establishment'
          Control = cxDBDateEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Registration No.'
          Control = cxDBTextEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item15: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP Reg. Date'
          Control = cxDBDateEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Type of Business'
          Control = cxDBImageComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group12: TdxLayoutGroup
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Index = 3
        end
        object dxLayoutControl3Item11: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'NPWP'
          Control = cxDBMaskEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item12: TdxLayoutItem
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax ID'
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl3Item13: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'SKD'
          Control = cxDBMaskEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          Parent = dxLayoutControl3Group4
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'SKD Exp. Date'
          Control = cxDBDateEdit5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item26: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Legal Domicile'
          Control = cxDBLookupComboBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item25: TdxLayoutItem
          Parent = dxLayoutGroup5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Place of Establishment'
          Control = cxDBLookupComboBox5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item27: TdxLayoutItem
          Parent = dxLayoutControl3Group12
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Article of Association'
          Control = cxDBTextEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 448
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 8
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 6
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Supplementary Documents'
          Control = cxDBImageComboBox12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 234
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item17: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Exp. Date'
          Control = cxDBDateEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 10
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          Parent = dxLayoutControl3Group12
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 9
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Request Code'
          Control = cxDBTextEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Request Date'
          Control = cxDBDateEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          CaptionOptions.Text = 'Product'
          Control = cxDBLookupComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          CaptionOptions.Text = 'Branch'
          Control = cbBranch
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item21: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup8
          CaptionOptions.Text = 'Sales'
          Control = cbSales
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 140
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item23: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          Visible = False
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Description'
          Control = cxDBTextEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 235
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item24: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 448
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item28: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'cxDBCheckBox2'
          CaptionOptions.Visible = False
          Control = cxDBCheckBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 89
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcAccNo: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = 'Account'
          Control = cxDBButtonEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object lcAccName: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.Text = '-'
          Control = cxDBTextEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 312
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item31: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Visible = False
          Control = cxDBCheckBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 67
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group9
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'BIC Code'
          Control = cxDBTextEdit39
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
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
          Index = 0
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Client Risk'
          Control = cmbRisk
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 138
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Bussiness Type'
          Control = cxDBLookupComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group7
          Index = 0
        end
        object dxLayoutItem12: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignVert = avTop
          CaptionOptions.Text = 'Event Program'
          Control = cxDBLookupComboBox7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 145
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group7
          Index = 1
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Initial'
          Control = edInitial
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group12
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem15: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Email'
          Control = cxDBTextEdit41
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group12
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup5
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Type'
          Control = cxDBImageComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup6
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 0
        end
        object dxLayoutItem16: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBTextEdit42'
          CaptionOptions.Visible = False
          Control = edBussTypeOther
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 230
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group12
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 4
        end
        object dxLayoutItem17: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignVert = avBottom
          CaptionOptions.Text = 'cxDBTextEdit43'
          CaptionOptions.Visible = False
          Control = edCompTypeOther
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup6
          Index = 1
        end
        object dxLayoutControl3Item22: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup9
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Inv. Category'
          Control = cxDBImageComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl3Group7
          Index = 2
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup9
          AlignVert = avClient
          CaptionOptions.Text = 'Direct SID'
          Control = cxDBTextEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup8
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutItem18: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          AlignVert = avClient
          CaptionOptions.Text = 'Inv. Type'
          Control = cxDBImageComboBox28
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 92
          ControlOptions.ShowBorder = False
          Index = 4
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
        Height = 603
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
          object glvAddressOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
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
          object glvAddressRTRW: TcxGridDBLayoutViewItem
            Caption = 'RT/RW'
            DataBinding.FieldName = 'RTRW'
            LayoutItem = glvAddressLayoutItem25
          end
          object glvAddressRESIDENCETYPE: TcxGridDBLayoutViewItem
            Caption = 'Jenis Tempat Usaha'
            DataBinding.FieldName = 'RESIDENCETYPE'
            RepositoryItem = dmGlobal.luJenisRumah
            LayoutItem = glvAddressLayoutItem26
          end
          object glvAddressOWNERSHIPSTATUS: TcxGridDBLayoutViewItem
            Caption = 'Status Kepemilikan'
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
          object dxLayoutGroup11: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAddressLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 6
          end
          object glvAddressLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 7
          end
          object glvAddressLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem6: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAddressLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvAddressLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            SizeOptions.Width = 400
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvAddressLayoutItem9: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            CaptionOptions.AlignHorz = taRightJustify
            Index = 8
          end
          object glvAddressLayoutItem10: TcxGridLayoutItem
            Parent = glvAddressGroup4
            AlignHorz = ahLeft
            SizeOptions.Width = 199
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem11: TcxGridLayoutItem
            Parent = glvAddressGroup3
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem12: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 11
          end
          object glvAddressLayoutItem13: TcxGridLayoutItem
            Parent = glvAddressGroup4
            AlignHorz = ahLeft
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
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 10
          end
          object glvAddressLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object glvAddressLayoutItem2: TcxGridLayoutItem
            Parent = glvAddressGroup1
            SizeOptions.Width = 142
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem24: TcxGridLayoutItem
            Parent = glvAddressGroup1
            AlignHorz = ahClient
            CaptionOptions.Visible = False
            Index = 1
          end
          object glvAddressGroup1: TdxLayoutGroup
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object glvAddressLayoutItem25: TcxGridLayoutItem
            Parent = dxLayoutGroup11
            CaptionOptions.AlignHorz = taRightJustify
            Index = 5
          end
          object glvAddressLayoutItem26: TcxGridLayoutItem
            Parent = glvAddressGroup2
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem27: TcxGridLayoutItem
            Parent = glvAddressGroup5
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAddressLayoutItem28: TcxGridLayoutItem
            Parent = glvAddressGroup2
            AlignVert = avClient
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressLayoutItem29: TcxGridLayoutItem
            Parent = glvAddressGroup5
            AlignVert = avClient
            SizeOptions.Width = 199
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAddressGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup11
            LayoutDirection = ldHorizontal
            Index = 12
          end
          object glvAddressGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup11
            LayoutDirection = ldHorizontal
            Index = 13
          end
          object glvAddressGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup11
            LayoutDirection = ldHorizontal
            Index = 9
          end
        end
        object grdAddressLevel1: TcxGridLevel
          GridView = glvAddress
        end
      end
    end
    object tabBOD: TcxTabSheet
      Caption = 'Board Of Director'
      ImageIndex = 6
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 603
        Align = alClient
        TabOrder = 0
        object cxGrid4: TcxGrid
          Left = 10
          Top = 10
          Width = 966
          Height = 255
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
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsBOD
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
                Caption = 'Board of Director'
                Width = 933
              end>
            object gvwBODBODNAME: TcxGridDBBandedColumn
              Caption = 'Name'
              DataBinding.FieldName = 'BODNAME'
              Width = 229
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwBODIDCARDTYPE: TcxGridDBBandedColumn
              Caption = 'Card Type'
              DataBinding.FieldName = 'IDCARDTYPE'
              RepositoryItem = dmGlobal.luIDType
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwBODIDCARDNUM: TcxGridDBBandedColumn
              Caption = 'Card Number'
              DataBinding.FieldName = 'IDCARDNUM'
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwBODBOD_POSITION: TcxGridDBBandedColumn
              Caption = 'Position'
              DataBinding.FieldName = 'BOD_POSITION'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn
              Caption = 'Phone'
              DataBinding.FieldName = 'BOD_CELLPHONE'
              Width = 122
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwBODBOD_EMAIL: TcxGridDBBandedColumn
              Caption = 'Email'
              DataBinding.FieldName = 'BOD_EMAIL'
              Width = 139
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn
              Caption = 'Nationality'
              DataBinding.FieldName = 'BOD_NATIONALITY'
              RepositoryItem = dmGlobal.luNationality
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwBODBOD_VALID_ID: TcxGridDBBandedColumn
              Caption = 'ID Card Exp.'
              DataBinding.FieldName = 'BOD_VALID_ID'
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = gvwBOD
          end
        end
        object cxGrid3: TcxGrid
          Left = 10
          Top = 271
          Width = 966
          Height = 322
          TabOrder = 1
          object gvwSHL: TcxGridDBBandedTableView
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
            DataController.DataSource = dsSHL
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
                Caption = 'Shareholders'
                Width = 350
              end>
            object gvwSHLSHLNAME: TcxGridDBBandedColumn
              Caption = 'Name'
              DataBinding.FieldName = 'SHLNAME'
              Width = 198
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwSHLSHLPERCENT: TcxGridDBBandedColumn
              Caption = 'Ownership (%)'
              DataBinding.FieldName = 'SHLPERCENT'
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = gvwSHL
          end
        end
        object dxLayoutGroup6: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup6
          AlignVert = avTop
          Control = cxGrid4
          ControlOptions.OriginalHeight = 255
          ControlOptions.OriginalWidth = 780
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          Parent = dxLayoutGroup6
          AlignVert = avClient
          Control = cxGrid3
          ControlOptions.OriginalHeight = 230
          ControlOptions.OriginalWidth = 374
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Beneficial Owner'
      ImageIndex = 10
      object cxGrid10: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 603
        Align = alClient
        TabOrder = 0
        object gvwBeneficialOwner: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object gvwBeneficialOwnerGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
        object cxGrid10Level1: TcxGridLevel
          GridView = gvwBeneficialOwner
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
        Height = 603
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
            LayoutItem = glvAuthLayoutItem1
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
            Properties.EditMask = '99.999.999.9-999.999'
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
          object dxLayoutGroup7: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvAuthLayoutItem3: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem4: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvAuthLayoutItem5: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvAuthLayoutItem6: TcxGridLayoutItem
            Parent = dxLayoutGroup7
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvAuthLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup8
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvAuthLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup8
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
            Parent = dxLayoutGroup7
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
            Parent = dxLayoutGroup7
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
          object dxLayoutGroup8: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object glvAuthGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object glvAuthGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object glvAuthGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object glvAuthGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object glvAuthLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object glvAuthLayoutItem2: TcxGridLayoutItem
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
        Height = 603
        Align = alClient
        TabOrder = 0
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 403
          Top = 171
          Caption = 'Income per annum'
          DataBinding.DataField = 'ANUALINCOME'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Caption = '< Rp 10 Billion'
              Value = '1'
            end
            item
              Caption = 'Rp 10 Billion - Rp 100 Billion'
              Value = '2'
            end
            item
              Caption = 'Rp 100 Billion - Rp 500 Billion'
              Value = '3'
            end
            item
              Caption = '> 500 Biliion'
              Value = '4'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 8
          Height = 118
          Width = 338
        end
        object cxDBRadioGroup3: TcxDBRadioGroup
          Left = 403
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
          Width = 338
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
          Width = 191
        end
        object cxDBCheckGroup2: TcxDBCheckGroup
          Left = 207
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
        object edSourceFundOther: TcxDBTextEdit
          Left = 22
          Top = 458
          DataBinding.DataField = 'SOURCEFUNDOTHERS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 167
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 22
          Top = 401
          DataBinding.DataField = 'SOURCEFUNDKSEI'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 167
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 219
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
        object cxDBImageComboBox6: TcxDBImageComboBox
          Left = 541
          Top = 295
          RepositoryItem = dmGlobal.luInvestorAsset
          DataBinding.DataField = 'INVESTOR_ASSET_1'
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
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 541
          Top = 322
          RepositoryItem = dmGlobal.luInvestorAsset
          DataBinding.DataField = 'INVESTOR_ASSET_2'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 200
        end
        object cxDBImageComboBox8: TcxDBImageComboBox
          Left = 541
          Top = 349
          RepositoryItem = dmGlobal.luInvestorAsset
          DataBinding.DataField = 'INVESTOR_ASSET_3'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 200
        end
        object cxDBImageComboBox9: TcxDBImageComboBox
          Left = 541
          Top = 376
          RepositoryItem = dmGlobal.luInvestorOperatingProfit
          DataBinding.DataField = 'INVESTOR_OPERATING_PROFIT_1'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 200
        end
        object cxDBImageComboBox10: TcxDBImageComboBox
          Left = 541
          Top = 403
          RepositoryItem = dmGlobal.luInvestorOperatingProfit
          DataBinding.DataField = 'INVESTOR_OPERATING_PROFIT_2'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 13
          Width = 200
        end
        object cxDBImageComboBox11: TcxDBImageComboBox
          Left = 541
          Top = 430
          RepositoryItem = dmGlobal.luInvestorOperatingProfit
          DataBinding.DataField = 'INVESTOR_OPERATING_PROFIT_3'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 200
        end
        object cxDBImageComboBox13: TcxDBImageComboBox
          Left = 274
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
          Left = 207
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
        object dxLayoutGroup9: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Visible = False
          Control = cxDBRadioGroup2
          ControlOptions.OriginalHeight = 118
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Control = cxDBRadioGroup3
          ControlOptions.OriginalHeight = 155
          ControlOptions.OriginalWidth = 250
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          Parent = dxLayoutGroup9
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          Parent = dxLayoutGroup9
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup10
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup1
          ControlOptions.OriginalHeight = 367
          ControlOptions.OriginalWidth = 185
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup2
          ControlOptions.OriginalHeight = 149
          ControlOptions.OriginalWidth = 190
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          Parent = lcSourceFundOther
          Control = edSourceFundOther
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 167
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup10: TdxLayoutGroup
          Parent = dxLayoutGroup9
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object lcSourceFundOther: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Source Fund Other'
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group4
          Control = cxDBTextEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 161
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          Parent = dxLayoutGroup10
          CaptionOptions.Text = 'Source of Funds KSEI Format'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item8: TdxLayoutItem
          Parent = dxLayoutControl4Group5
          Control = cxDBTextEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 166
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'Investment Objectives KSEI Format'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Latest year financial assets'
          Control = cxDBImageComboBox6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 200
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Last 2 year financial assets'
          Control = cxDBImageComboBox7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item11: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Last 3 year financial assets'
          Control = cxDBImageComboBox8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item12: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Latest year operating profit'
          Control = cxDBImageComboBox9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl4Item13: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Last 2 year operating profit'
          Control = cxDBImageComboBox10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl4Item14: TdxLayoutItem
          Parent = dxLayoutControl4Group2
          CaptionOptions.Text = 'Last 3 year operating profit'
          Control = cxDBImageComboBox11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl4Item15: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'Asset Owner'
          Control = cxDBImageComboBox13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'cxDBCheckGroup3'
          CaptionOptions.Visible = False
          Control = cxDBCheckGroup3
          ControlOptions.OriginalHeight = 120
          ControlOptions.OriginalWidth = 185
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object tabBankCustody: TcxTabSheet
      Caption = 'Bank | Custody'
      ImageIndex = 7
      object cxGrid1: TcxGrid
        Left = 0
        Top = 301
        Width = 986
        Height = 165
        Align = alClient
        TabOrder = 0
        object gvwBank: TcxGridDBTableView
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
          DataController.DataSource = dsBank
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
          object gvwBankOAID: TcxGridDBColumn
            DataBinding.FieldName = 'OAID'
            Visible = False
          end
          object gvwBankSEQID: TcxGridDBColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
          end
          object gvwBankBANKCODE: TcxGridDBColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
            RepositoryItem = dmGlobal.luBank
          end
          object gvwBankBANKACCNO: TcxGridDBColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
          end
          object gvwBankBANKACCNAME: TcxGridDBColumn
            Caption = 'Bank Account Name'
            DataBinding.FieldName = 'BANKACCNAME'
          end
          object gvwBankCCYCODE: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Width = 50
          end
          object gvwBankBANKBRANCH: TcxGridDBColumn
            Caption = 'Branch'
            DataBinding.FieldName = 'BANKBRANCH'
            Width = 132
          end
          object gvwBankMODDA: TcxGridDBColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
          end
          object gvwBankMODUI: TcxGridDBColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
          end
          object gvwBankAPPDA: TcxGridDBColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
          end
          object gvwBankAPPUI: TcxGridDBColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
          end
          object gvwBankUNDER4Y: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
          end
          object gvwBankUNDER4YDA: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
          end
          object gvwBankNOTES4Y: TcxGridDBColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
          end
          object gvwBankISDEL: TcxGridDBColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
          end
          object gvwBankID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gvwBankDEFAULT_BANK: TcxGridDBColumn
            Caption = 'Default'
            DataBinding.FieldName = 'DEFAULT_BANK'
            RepositoryItem = dmGlobal.chkStandard
            Width = 41
          end
          object gvwBankPAYMENT_BANK: TcxGridDBColumn
            Caption = 'Payment Bank'
            DataBinding.FieldName = 'PAYMENT_BANK'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwBank
        end
      end
      object cxGrid5: TcxGrid
        Left = 0
        Top = 466
        Width = 986
        Height = 137
        Align = alBottom
        TabOrder = 1
        object gvwCustody: TcxGridDBTableView
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
          DataController.DataSource = dsCustody
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
          object gvwCustodyOAID: TcxGridDBColumn
            DataBinding.FieldName = 'OAID'
            Visible = False
          end
          object gvwCustodySEQID: TcxGridDBColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
          end
          object gvwCustodyCUSTODYCODE: TcxGridDBColumn
            Caption = 'Custody Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            RepositoryItem = dmGlobal.luCustody
          end
          object gvwCustodyCUSTODYACCNO: TcxGridDBColumn
            Caption = 'Custody Account No.'
            DataBinding.FieldName = 'CUSTODYACCNO'
          end
          object gvwCustodyCUSTODYACCNAME: TcxGridDBColumn
            Caption = 'Custody Account Name'
            DataBinding.FieldName = 'CUSTODYACCNAME'
          end
          object gvwCustodyCUSTODYBRANCH: TcxGridDBColumn
            Caption = 'Branch'
            DataBinding.FieldName = 'CUSTODYBRANCH'
            Width = 173
          end
          object gvwCustodyMODDA: TcxGridDBColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
          end
          object gvwCustodyMODUI: TcxGridDBColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
          end
          object gvwCustodyAPPDA: TcxGridDBColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
          end
          object gvwCustodyAPPUI: TcxGridDBColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
          end
          object gvwCustodyUNDER4Y: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
          end
          object gvwCustodyUNDER4YDA: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
          end
          object gvwCustodyNOTES4Y: TcxGridDBColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
          end
          object gvwCustodyISDEL: TcxGridDBColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
          end
          object gvwCustodyID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = gvwCustody
        end
      end
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 301
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
        object cxGrid7: TcxGrid
          Left = 10
          Top = 167
          Width = 966
          Height = 120
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
          object cxGridLevel7: TcxGridLevel
            GridView = gvwRDNRequest
          end
        end
        object cxGrid8: TcxGrid
          Left = 10
          Top = 37
          Width = 966
          Height = 124
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
          object cxGridLevel8: TcxGridLevel
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
        object cxDBTextEdit15: TcxDBTextEdit
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
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 773
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
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          Visible = False
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Control = cxDBCheckBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 153
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avBottom
          Control = cxGrid7
          ControlOptions.OriginalHeight = 120
          ControlOptions.OriginalWidth = 959
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          AlignHorz = ahClient
          AlignVert = avClient
          Control = cxGrid8
          ControlOptions.OriginalHeight = 124
          ControlOptions.OriginalWidth = 943
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item1: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'KSEI Client Code'
          Control = cxDBTextEdit14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group1: TdxLayoutGroup
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item2: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'SID No.'
          Control = cxDBTextEdit15
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          CaptionOptions.Text = 'Preffered Bank RDN'
          Control = cxDBLookupComboBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutControl6Group1
          Visible = False
          CaptionOptions.Text = 'Branch'
          Control = cxDBLookupComboBox8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
    object tabContact: TcxTabSheet
      Caption = 'Contact'
      ImageIndex = 6
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 603
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
          OptionsData.Appending = True
          OptionsView.ShowOnlyEntireRecords = False
          OptionsView.ViewMode = lvvmMultiColumn
          object glvContactOAID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OAID'
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
            Visible = False
            LayoutItem = glvContactLayoutItem4
          end
          object glvContactADDRTYPE_REF: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ADDRTYPE_REF'
            RepositoryItem = dmGlobal.luAddressTypeInstitution
            Visible = False
            LayoutItem = glvContactLayoutItem5
          end
          object glvContactCOUNTCODE: TcxGridDBLayoutViewItem
            Caption = 'Country'
            DataBinding.FieldName = 'COUNTCODE'
            RepositoryItem = dmGlobal.luCountry
            LayoutItem = glvContactLayoutItem6
          end
          object glvContactPROVCODE: TcxGridDBLayoutViewItem
            Caption = 'Province'
            DataBinding.FieldName = 'PROVCODE'
            RepositoryItem = dmGlobal.luProvince
            LayoutItem = glvContactLayoutItem7
          end
          object glvContactCITY: TcxGridDBLayoutViewItem
            Caption = 'City'
            DataBinding.FieldName = 'CITY'
            RepositoryItem = dmGlobal.luCity
            LayoutItem = glvContactLayoutItem8
          end
          object glvContactADDRESS1: TcxGridDBLayoutViewItem
            Caption = 'Address 1'
            DataBinding.FieldName = 'ADDRESS1'
            LayoutItem = glvContactLayoutItem9
          end
          object glvContactADDRESS2: TcxGridDBLayoutViewItem
            Caption = 'Address 2'
            DataBinding.FieldName = 'ADDRESS2'
            LayoutItem = glvContactLayoutItem10
          end
          object glvContactADDRESS3: TcxGridDBLayoutViewItem
            Caption = 'Address 3'
            DataBinding.FieldName = 'ADDRESS3'
            LayoutItem = glvContactLayoutItem11
          end
          object glvContactZIPCODE: TcxGridDBLayoutViewItem
            Caption = 'ZIP Code'
            DataBinding.FieldName = 'ZIPCODE'
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
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 4
          end
          object glvContactLayoutItem7: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 5
          end
          object glvContactLayoutItem8: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 6
          end
          object glvContactLayoutItem9: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
          end
          object glvContactLayoutItem10: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 2
          end
          object glvContactLayoutItem11: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            SizeOptions.Width = 200
            CaptionOptions.AlignHorz = taRightJustify
            Index = 3
          end
          object glvContactLayoutItem12: TcxGridLayoutItem
            Parent = glvContactGroup6
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem13: TcxGridLayoutItem
            Parent = dxLayoutGroup14
            AlignHorz = ahLeft
            SizeOptions.Width = 250
            CaptionOptions.AlignHorz = taRightJustify
            Index = 8
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
            Parent = glvContactGroup6
            AlignHorz = ahRight
            CaptionOptions.AlignHorz = taRightJustify
            Index = 1
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
          object glvContactGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 12
          end
          object glvContactGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 10
          end
          object glvContactGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 11
          end
          object glvContactGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object glvContactGroup6: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object glvContactGroup7: TdxLayoutGroup
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Notification For'
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            Index = 13
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
        object cxGridLevel9: TcxGridLevel
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
        Height = 603
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
            Width = 163
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
            Width = 185
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwDocument
        end
      end
    end
    object tabTrackingInfo: TcxTabSheet
      Caption = 'Tracking Info'
      ImageIndex = 6
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 603
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
            Properties.PopupWidth = 400
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
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 603
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 10000
          Top = 10000
          Width = 273
          Height = 26
          AutoSize = False
          Caption = 
            'Apakah Perusahaan adalah perusahaan Amerika Serikat?'#13#10'/ Is the L' +
            'egal Entity a US entity?'
          Visible = False
        end
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
          TabOrder = 58
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
          TabOrder = 54
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
          TabOrder = 55
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
          TabOrder = 57
          Visible = False
          Width = 74
        end
        object cxLabel1: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah Perusahaan didirikan di Amerika Serikat? '#13#10'/ Is the Compa' +
            'ny incorporated in U.S.?'
          Style.HotTrack = False
          Visible = False
          Height = 30
          Width = 273
        end
        object cxLabel3: TcxLabel
          Left = 10000
          Top = 10000
          Caption = 
            'Apakah Perusahaan memiliki identitas kependudukan dan/atau alama' +
            't korespondensi dan/atau PO BOX '#13#10'dan/atau nomor telepon di Amer' +
            'ika Serikat?'#13#10'/ Does the Company have a U.S residence and/or U.S' +
            ' correspondence and/or U.S. P.O.Box and/or U.S telephone number?'
          Style.HotTrack = False
          Visible = False
        end
        object cxLabel4: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah Perusahaan memiliki Direktur yang berasal dari Amerika Se' +
            'rikat dan/atau pemegang saham perseorangan '#13#10'dan/atau badan huku' +
            'm Amerika Serikat dengan kepemilikan lebih dari 10%?'#13#10'/ Does the' +
            ' Company have any US directors and/or shareholders with more tha' +
            'n 10% ownership or equivalent?'
          Style.HotTrack = False
          Visible = False
          Height = 43
          Width = 594
        end
        object cxDBImageComboBox14: TcxDBImageComboBox
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
          TabOrder = 60
          Visible = False
          Width = 74
        end
        object cxLabel5: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah Perusahaan memberikan Surat Kuasa atau kewenangan tandata' +
            'ngan yang masih berlaku kepada seseorang '#13#10'yang memiliki alamat ' +
            'di Amerika Serikat?'#13#10'/ Does the Company grant any effective Powe' +
            'r of Attorney (POA) or signatory authority to person with U.S. a' +
            'ddress?'
          Style.HotTrack = False
          Visible = False
          Height = 43
          Width = 594
        end
        object cxLabel6: TcxLabel
          Left = 10000
          Top = 10000
          AutoSize = False
          Caption = 
            'Apakah Perusahaan memberikan instruksi otomatis untuk melakukan ' +
            'transfer dana '#13#10'ke rekening yang dikelola di Amerika Serikat?'#13#10'/' +
            ' Does the Company give standing instructions to transfer funds t' +
            'o U.S accounts?'
          Style.HotTrack = False
          Visible = False
          Height = 43
          Width = 594
        end
        object cxDBImageComboBox15: TcxDBImageComboBox
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
          TabOrder = 62
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox16: TcxDBImageComboBox
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
          TabOrder = 65
          Visible = False
          Width = 74
        end
        object cxDBImageComboBox17: TcxDBImageComboBox
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
          TabOrder = 67
          Visible = False
          Width = 74
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 10000
          Top = 10000
          DataBinding.DataField = 'FATCA_B2_DESC'
          DataBinding.DataSource = dsSubject
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 63
          Visible = False
          Width = 92
        end
        object cxLabel2: TcxLabel
          Left = 45
          Top = 44
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda pernah/masih memiliki investasi di pasar ' +
            'modal? '#13#10'/ Does/has your company previously had/have an existing' +
            ' investment in capital market?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object edKYC2: TcxLabel
          Left = 45
          Top = 109
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda pernah memiliki Rekening di [SECURITIES] ' +
            'Group? '#13#10'/ Has your company previously had a securities account ' +
            'at [SECURITIES] Group?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel8: TcxLabel
          Left = 45
          Top = 174
          AutoSize = False
          Caption = 
            'Apakah Pengurus atau Pejabat berwenang pada Perusahaan Anda beke' +
            'rja di Perusahaan Efek; Bursa Efek; atau Perusahaan yang diatur ' +
            'oleh Bursa Efek/Bapepam dan LK, Bank, Asuransi atau Lembaga Keua' +
            'ngan sejenis? '#13#10'/ Does any of your  director(s) / shareholder(s)' +
            ' or your company'#8217's authorized person(s) work at Securities Compa' +
            'ny, Stock Exchange, company regulated by Stock Exchange/Bapepam ' +
            'and LK, Bank, Insurance or other similar financial institution?'
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 56
          Width = 906
        end
        object cxLabel9: TcxLabel
          Left = 45
          Top = 265
          AutoSize = False
          Caption = 
            'Apakah terdapat pengurus/pemegang saham/pejabat berwenang yang s' +
            'ebelumnya/sekarang memegang jabatan atau akan menduduki suatu po' +
            'sisi atau jabatan publik/politis yang penting? '#13#10'/ Does any of y' +
            'our directors/shareholders or authorized personnel hold/have pre' +
            'viously held or actively seeking a position or being considered ' +
            'for a prominent public position?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel10: TcxLabel
          Left = 45
          Top = 330
          AutoSize = False
          Caption = 
            'Apakah ada anggota keluarga dari pengurus, pemegang saham atau p' +
            'ejabat berwenang menjabat, pernah menjabat atau aktif menjajaki ' +
            'posisi atau sedang dipertimbangkan untuk sebuah jabatan publik/p' +
            'olitis yang prominen? '#13#10'/ Does any immediate family members of y' +
            'our directors, shareholders or authorized personnel hold, have p' +
            'reviously held or actively seeking a position or being considere' +
            'd for a prominent public position?'
          Style.HotTrack = False
          Properties.WordWrap = True
          Height = 56
          Width = 906
        end
        object edKYC6: TcxLabel
          Left = 45
          Top = 421
          AutoSize = False
          Caption = 
            'Apakah Pengurus atau Pejabat berwenang pada Perusahaan Anda pern' +
            'ah/masih memiliki Rekening Efek/Investasi lainnya di [SECURITIES' +
            '] Group?'#10'/ Does/has your director(s) or your company'#8217's authorize' +
            'd person(s) previously had / have existing Securities Account at' +
            ' [SECURITIES] Group?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel12: TcxLabel
          Left = 45
          Top = 486
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda mempunyai investasi/usaha di luar negeri?' +
            ' '#13#10'/ Does your company have an existing investment/business over' +
            'seas?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object edKYC8: TcxLabel
          Left = 45
          Top = 551
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda atau Pengurus atau Pejabat Berwenang pada' +
            ' Perusahaan Anda memiliki hubungan dengan Pemegang Saham/Komisar' +
            'is/Direksi/Karyawan [SECURITIES] Group?'#10'/ Does your company, dir' +
            'ector(s) or your company'#8217's authorized person(s) have any relatio' +
            'nship with the shareholder(s)/Commissioner(s)/ Director(s)/Emplo' +
            'yee(s) of [SECURITIES] Group?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object edKYC9: TcxLabel
          Left = 45
          Top = 616
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda merupakan pemegang saham pengendali dari ' +
            'Perusahaan yang memiliki rekening di [SECURITIES] Group?'#13#10'/ Does' +
            ' your company have any controls over any existing securities acc' +
            'ount owned by other company(s) at [SECURITIES] Group?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object edKYC10: TcxLabel
          Left = 45
          Top = 681
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda memiliki kuasa untuk melakukan transaksi ' +
            'terhadap salah satu Rekening di [SECURITIES] Group?'#13#10'/ Does your' +
            ' company have any authorization to conduct a transaction to one ' +
            'account at [SECURITIES] Group?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel16: TcxLabel
          Left = 45
          Top = 746
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda atau Pengurus atau Pejabat berwenang pada' +
            ' Perusahaan Anda, merupakan pengurus atau saham pengendali ('#8805' 35' +
            '%) pada salah satu Perusahaan Publik?'#13#10'/ Is your company, direct' +
            'or(s) or your company'#8217's authorized person(s) part of management ' +
            'or controlling shareholder ('#8805' 35%) on one of the Public Company?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel17: TcxLabel
          Left = 45
          Top = 811
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda atau Pengurus atau Pejabat berwenang pada' +
            ' Perusahaan Anda, merupakan pengurus atau pemegang saham Perusah' +
            'aan Efek (PE) di Indonesia?'#13#10'/ Is your company, director(s) or y' +
            'our company'#8217's authorized person(s) part of management or control' +
            'ling shareholder ('#8805' 35%) on one of the Securities Company?'
          Style.HotTrack = False
          Height = 30
          Width = 906
        end
        object cxLabel18: TcxLabel
          Left = 45
          Top = 876
          AutoSize = False
          Caption = 
            'Apakah Perusahaan Anda memiliki 5% atau lebih saham suatu perusa' +
            'haan publik? '#13#10'/ Does your company currently hold 5% or more sha' +
            're ownership in any of a publicly listed company?'#13#10
          Style.HotTrack = False
          Height = 30
          Width = 906
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 74
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
          Left = 45
          Top = 145
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
          TabOrder = 6
          Width = 74
        end
        object cxDBImageComboBox5: TcxDBImageComboBox
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 74
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 74
        end
        object cxDBImageComboBox19: TcxDBImageComboBox
          Left = 45
          Top = 392
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 74
        end
        object cxDBImageComboBox20: TcxDBImageComboBox
          Left = 45
          Top = 457
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 74
        end
        object cxDBImageComboBox21: TcxDBImageComboBox
          Left = 45
          Top = 522
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 25
          Width = 74
        end
        object cxDBImageComboBox22: TcxDBImageComboBox
          Left = 45
          Top = 587
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 74
        end
        object cxDBImageComboBox23: TcxDBImageComboBox
          Left = 45
          Top = 652
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 33
          Width = 74
        end
        object cxDBImageComboBox24: TcxDBImageComboBox
          Left = 45
          Top = 717
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 37
          Width = 74
        end
        object cxDBImageComboBox25: TcxDBImageComboBox
          Left = 45
          Top = 782
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 42
          Width = 74
        end
        object cxDBImageComboBox26: TcxDBImageComboBox
          Left = 45
          Top = 847
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
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 47
          Width = 74
        end
        object cxDBImageComboBox27: TcxDBImageComboBox
          Left = 45
          Top = 912
          RepositoryItem = dmGlobal.luYesNo
          DataBinding.DataField = 'INFO_13'
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
          TabOrder = 52
          Width = 74
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 205
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
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 600
          Top = 80
          DataBinding.DataField = 'INFO_01_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 791
          Top = 80
          DataBinding.DataField = 'INFO_01_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 205
          Top = 145
          DataBinding.DataField = 'INFO_02_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 300
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 600
          Top = 145
          DataBinding.DataField = 'INFO_02_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 791
          Top = 145
          DataBinding.DataField = 'INFO_02_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 205
          Top = 236
          DataBinding.DataField = 'INFO_03_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 300
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 600
          Top = 236
          DataBinding.DataField = 'INFO_03_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 121
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 791
          Top = 236
          DataBinding.DataField = 'INFO_03_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Width = 121
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 205
          Top = 457
          DataBinding.DataField = 'INFO_06_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Width = 300
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 600
          Top = 457
          DataBinding.DataField = 'INFO_06_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 121
        end
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 791
          Top = 457
          DataBinding.DataField = 'INFO_06_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 23
          Width = 121
        end
        object cxDBTextEdit25: TcxDBTextEdit
          Left = 205
          Top = 522
          DataBinding.DataField = 'INFO_07_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 300
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 205
          Top = 587
          DataBinding.DataField = 'INFO_08_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 29
          Width = 300
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 600
          Top = 587
          DataBinding.DataField = 'INFO_08_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 30
          Width = 121
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 791
          Top = 587
          DataBinding.DataField = 'INFO_08_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 31
          Width = 121
        end
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 205
          Top = 652
          DataBinding.DataField = 'INFO_09_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 34
          Width = 300
        end
        object cxDBTextEdit30: TcxDBTextEdit
          Left = 600
          Top = 652
          DataBinding.DataField = 'INFO_09_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 35
          Width = 121
        end
        object cxDBTextEdit31: TcxDBTextEdit
          Left = 205
          Top = 717
          DataBinding.DataField = 'INFO_10_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 38
          Width = 300
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 600
          Top = 717
          DataBinding.DataField = 'INFO_10_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 39
          Width = 121
        end
        object cxDBTextEdit33: TcxDBTextEdit
          Left = 791
          Top = 717
          DataBinding.DataField = 'INFO_10_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 40
          Width = 121
        end
        object cxDBTextEdit34: TcxDBTextEdit
          Left = 205
          Top = 782
          DataBinding.DataField = 'INFO_11_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 43
          Width = 300
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 600
          Top = 782
          DataBinding.DataField = 'INFO_11_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 35.000000000000000000
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 44
          Width = 121
        end
        object cxDBTextEdit35: TcxDBTextEdit
          Left = 791
          Top = 782
          DataBinding.DataField = 'INFO_11_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 45
          Width = 121
        end
        object cxDBTextEdit36: TcxDBTextEdit
          Left = 205
          Top = 847
          DataBinding.DataField = 'INFO_12_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 48
          Width = 300
        end
        object cxDBSpinEdit2: TcxDBSpinEdit
          Left = 600
          Top = 847
          DataBinding.DataField = 'INFO_12_DESC1'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 35.000000000000000000
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 49
          Width = 121
        end
        object cxDBTextEdit37: TcxDBTextEdit
          Left = 791
          Top = 847
          DataBinding.DataField = 'INFO_12_DESC2'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 50
          Width = 121
        end
        object cxDBTextEdit38: TcxDBTextEdit
          Left = 205
          Top = 912
          DataBinding.DataField = 'INFO_13_NAME'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 53
          Width = 300
        end
        object dxLayoutGroup12: TdxLayoutGroup
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
        object dxLayoutControl4Item31: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          AlignHorz = ahLeft
          Control = KYC1
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
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
        object dxLayoutControl4Group15: TdxLayoutGroup
          Parent = dxLayoutGroup12
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
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.Text = '1.'
          Control = Label1
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 273
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutControl6Group2
          CaptionOptions.Text = '2.'
          Control = cxLabel1
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 273
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
        object dxLayoutGroup13: TdxLayoutGroup
          Parent = dxLayoutControl4Group15
          CaptionOptions.Text = 'Bagian B / Section B'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl6Item4: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.Text = '1.'
          Control = cxLabel3
          ControlOptions.OriginalHeight = 43
          ControlOptions.OriginalWidth = 594
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          Parent = dxLayoutControl6Group6
          CaptionOptions.Text = '2.'
          Control = cxLabel4
          ControlOptions.OriginalHeight = 43
          ControlOptions.OriginalWidth = 594
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item6: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          Control = cxDBImageComboBox14
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group5: TdxLayoutGroup
          Parent = dxLayoutGroup13
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
          ControlOptions.OriginalHeight = 43
          ControlOptions.OriginalWidth = 594
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item8: TdxLayoutItem
          Parent = dxLayoutControl6Group8
          CaptionOptions.Text = '4.'
          Control = cxLabel6
          ControlOptions.OriginalHeight = 43
          ControlOptions.OriginalWidth = 594
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item11: TdxLayoutItem
          Parent = dxLayoutControl6Group3
          AlignHorz = ahLeft
          Control = cxDBImageComboBox15
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item12: TdxLayoutItem
          Parent = dxLayoutControl6Group7
          Control = cxDBImageComboBox16
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item13: TdxLayoutItem
          Parent = dxLayoutControl6Group8
          Control = cxDBImageComboBox17
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group6: TdxLayoutGroup
          Parent = dxLayoutGroup13
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group7: TdxLayoutGroup
          Parent = dxLayoutGroup13
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Group8: TdxLayoutGroup
          Parent = dxLayoutGroup13
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutControl6Group3
          CaptionOptions.Text = 'Jika iya, % saham / If yes, % of shares'
          Control = cxDBTextEdit5
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 92
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group3: TdxLayoutGroup
          Parent = dxLayoutControl6Group6
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item1: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '1.'
          Control = cxLabel2
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item2: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '2.'
          Control = edKYC2
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Group1: TdxLayoutGroup
          Parent = dxLayoutGroup12
          CaptionOptions.Text = 'INFORMASI TAMBAHAN / ADDITIONAL INFORMATION'
          ButtonOptions.Buttons = <>
          ItemIndex = 15
          Index = 0
        end
        object dxLayoutControl7Item3: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '3.'
          Control = cxLabel8
          ControlOptions.OriginalHeight = 56
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl7Item4: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '4.'
          Control = cxLabel9
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl7Item5: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '5.'
          Control = cxLabel10
          ControlOptions.OriginalHeight = 56
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl7Item6: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '6.'
          Control = edKYC6
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutControl7Item7: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '7.'
          Control = cxLabel12
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 12
        end
        object dxLayoutControl7Item8: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '8.'
          Control = edKYC8
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 14
        end
        object dxLayoutControl7Item9: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '9.'
          Control = edKYC9
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 16
        end
        object dxLayoutControl7Item10: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '10.'
          Control = edKYC10
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 18
        end
        object dxLayoutControl7Item11: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '11.'
          Control = cxLabel16
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 20
        end
        object dxLayoutControl7Item12: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '12.'
          Control = cxLabel17
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 22
        end
        object dxLayoutControl7Item13: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '13.'
          Control = cxLabel18
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 906
          ControlOptions.ShowBorder = False
          Index = 24
        end
        object dxLayoutControl7Item14: TdxLayoutItem
          Parent = dxLayoutControl7Group2
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cmb
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item15: TdxLayoutItem
          Parent = dxLayoutControl7Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox4
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item16: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox5
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item17: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox18
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl7Item18: TdxLayoutItem
          Parent = dxLayoutControl7Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox19
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutControl7Item19: TdxLayoutItem
          Parent = dxLayoutControl7Group6
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox20
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item20: TdxLayoutItem
          Parent = dxLayoutControl7Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox21
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item21: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox22
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item22: TdxLayoutItem
          Parent = dxLayoutControl7Group9
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox23
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item23: TdxLayoutItem
          Parent = dxLayoutControl7Group10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox24
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item24: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox25
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item25: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox26
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item26: TdxLayoutItem
          Parent = dxLayoutControl7Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = ' '
          Control = cxDBImageComboBox27
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 74
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item27: TdxLayoutItem
          Parent = dxLayoutControl7Group2
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item28: TdxLayoutItem
          Parent = dxLayoutControl7Group2
          CaptionOptions.Text = 'Investment Type'
          Control = cxDBTextEdit9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item29: TdxLayoutItem
          Parent = dxLayoutControl7Group2
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item30: TdxLayoutItem
          Parent = dxLayoutControl7Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit16
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group4: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item31: TdxLayoutItem
          Parent = dxLayoutControl7Group4
          CaptionOptions.Text = 'Investment Type'
          Control = cxDBTextEdit17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item32: TdxLayoutItem
          Parent = dxLayoutControl7Group4
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item33: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit19
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group5: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl7Item34: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit20
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item35: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.Text = 'Designation'
          Control = cxDBTextEdit21
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item36: TdxLayoutItem
          Parent = dxLayoutControl7Group6
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit22
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group6: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 11
        end
        object dxLayoutControl7Item37: TdxLayoutItem
          Parent = dxLayoutControl7Group6
          CaptionOptions.Text = 'Investment Type'
          Control = cxDBTextEdit23
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item38: TdxLayoutItem
          Parent = dxLayoutControl7Group6
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit24
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item39: TdxLayoutItem
          Parent = dxLayoutControl7Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Control = cxDBTextEdit25
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group7: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 13
        end
        object dxLayoutControl7Item40: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name'
          Control = cxDBTextEdit26
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group8: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 15
        end
        object dxLayoutControl7Item41: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.Text = 'Relationship'
          Control = cxDBTextEdit27
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item42: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.Text = 'Designation'
          Control = cxDBTextEdit28
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item43: TdxLayoutItem
          Parent = dxLayoutControl7Group9
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit29
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group9: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 17
        end
        object dxLayoutControl7Item44: TdxLayoutItem
          Parent = dxLayoutControl7Group9
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit30
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item45: TdxLayoutItem
          Parent = dxLayoutControl7Group10
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit31
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group10: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 19
        end
        object dxLayoutControl7Item46: TdxLayoutItem
          Parent = dxLayoutControl7Group10
          CaptionOptions.Text = 'Investment Type'
          Control = cxDBTextEdit32
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item47: TdxLayoutItem
          Parent = dxLayoutControl7Group10
          CaptionOptions.Text = 'Account No.'
          Control = cxDBTextEdit33
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item48: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit34
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group11: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 21
        end
        object dxLayoutControl7Item49: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.Text = 'Shareholding (%)'
          Control = cxDBSpinEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item50: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit35
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item51: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit36
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group12: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 23
        end
        object dxLayoutControl7Item52: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.Text = 'Shareholding (%)'
          Control = cxDBSpinEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item53: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.Text = 'Position'
          Control = cxDBTextEdit37
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item54: TdxLayoutItem
          Parent = dxLayoutControl7Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Name'
          Control = cxDBTextEdit38
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group13: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 25
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsOA
    Left = 800
    Top = 88
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 272
    Top = 504
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
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
    AfterOpen = cdsOAAfterOpen
    BeforePost = cdsOABeforePost
    OnNewRecord = cdsOANewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 856
    Top = 88
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
      OnChange = cdsOAENTNAMEChange
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
      Tag = -1
      FieldName = 'CREATEDATE'
      Required = True
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
      Required = True
    end
    object cdsOAKTP: TStringField
      FieldName = 'KTP'
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
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAINS_DATEOFGAZETTE: TDateField
      FieldName = 'INS_DATEOFGAZETTE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOAINS_NOOFGAZETTE: TStringField
      FieldName = 'INS_NOOFGAZETTE'
      Size = 30
    end
    object cdsOAINS_COMPTYPE: TStringField
      FieldName = 'INS_COMPTYPE'
      OnChange = cdsOAINS_COMPTYPEChange
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
      OnChange = cdsOAINS_BUSSTYPEChange
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
    object cdsOAGU_ID_EXP: TDateTimeField
      FieldName = 'GU_ID_EXP'
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
    object cdsOAGU_DOB: TDateTimeField
      FieldName = 'GU_DOB'
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
      OnChange = cdsOAFATCA_B2Change
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
      OnChange = cdsOAINFO_06Change
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
      OnChange = cdsOAINFO_07Change
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
      OnChange = cdsOAINFO_08Change
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
      OnChange = cdsOAINFO_09Change
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
      OnChange = cdsOAINFO_10Change
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
      OnChange = cdsOAINFO_11Change
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
      OnChange = cdsOAINFO_12Change
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
      OnChange = cdsOAINFO_13Change
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
    object cdsOAINS_BUSSTYPE_OT: TStringField
      FieldName = 'INS_BUSSTYPE_OT'
      Size = 250
    end
    object cdsOAINS_COMPTYPE_OT: TStringField
      FieldName = 'INS_COMPTYPE_OT'
      Size = 250
    end
    object cdsOAqryOABeneficialOwner: TDataSetField
      FieldName = 'qryOABeneficialOwner'
    end
  end
  object dsAddress: TDataSource
    DataSet = cdsOAAddress
    Left = 648
    Top = 208
  end
  object dsDocument: TDataSource
    DataSet = cdsOADOC
    Left = 648
    Top = 256
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
    Left = 728
    Top = 208
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
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object cdsOAAddressADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 50
    end
    object cdsOAAddressADDRESS3: TStringField
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
    Left = 728
    Top = 256
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
  object dsTrackInfo: TDataSource
    DataSet = cdsOATrackInfo
    Left = 848
    Top = 320
  end
  object dsBank: TDataSource
    DataSet = cdsOABank
    Left = 848
    Top = 368
  end
  object dsCustody: TDataSource
    DataSet = cdsOACustody
    Left = 848
    Top = 416
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
    Left = 928
    Top = 416
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
    Left = 928
    Top = 368
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
    Left = 928
    Top = 320
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
    Left = 912
    Top = 85
  end
  object dsSHL: TDataSource
    DataSet = cdsOASHL
    Left = 656
    Top = 392
  end
  object dsBOD: TDataSource
    DataSet = cdsOABOD
    Left = 848
    Top = 512
  end
  object dsAuth: TDataSource
    DataSet = cdsOAAuth
    Left = 848
    Top = 464
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
    Left = 928
    Top = 464
    object cdsOAAuthOAID: TIntegerField
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
  end
  object cdsOABOD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOABOD
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 928
    Top = 512
    object cdsOABODOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOABODSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOABODBODNAME: TStringField
      FieldName = 'BODNAME'
      Size = 30
    end
    object cdsOABODIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsOABODIDCARDNUM: TStringField
      FieldName = 'IDCARDNUM'
      Size = 30
    end
    object cdsOABODMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOABODMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOABODAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOABODAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOABODUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOABODUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOABODNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOABODISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOABODID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOABODBOD_POSITION: TStringField
      FieldName = 'BOD_POSITION'
      Size = 50
    end
    object cdsOABODBOD_CELLPHONE: TStringField
      FieldName = 'BOD_CELLPHONE'
    end
    object cdsOABODBOD_EMAIL: TStringField
      FieldName = 'BOD_EMAIL'
      Size = 50
    end
    object cdsOABODBOD_NATIONALITY: TStringField
      FieldName = 'BOD_NATIONALITY'
      Size = 50
    end
    object cdsOABODBOD_ID_NO: TStringField
      FieldName = 'BOD_ID_NO'
      Size = 30
    end
    object cdsOABODBOD_VALID_ID: TDateTimeField
      FieldName = 'BOD_VALID_ID'
    end
  end
  object cdsOASHL: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOASHL
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 728
    Top = 392
    object cdsOASHLOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOASHLSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsOASHLSHLNAME: TStringField
      FieldName = 'SHLNAME'
      Size = 30
    end
    object cdsOASHLSHLPERCENT: TFloatField
      FieldName = 'SHLPERCENT'
    end
    object cdsOASHLMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOASHLMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOASHLAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOASHLAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOASHLUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOASHLUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOASHLNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOASHLISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOASHLID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsKSEI: TDataSource
    DataSet = cdsOAKSEI
    Left = 648
    Top = 440
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
    Left = 728
    Top = 440
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
    Left = 728
    Top = 488
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
  object dsRDN: TDataSource
    DataSet = cdsOARDN
    Left = 648
    Top = 488
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
    Left = 800
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
    Left = 800
    Top = 352
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
  object cdsOAContact: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOAContact
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 728
    Top = 536
    object cdsOAContactOAID: TIntegerField
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
      Size = 50
    end
    object cdsOAContactADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 50
    end
    object cdsOAContactADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 50
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
    Left = 648
    Top = 536
  end
  object PopupMenu1: TPopupMenu
    Left = 860
    Top = 152
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
    Left = 564
    Top = 344
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
  object cdsBeneficiallOwner: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOAqryOABeneficialOwner
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 564
    Top = 544
  end
  object dsBeneficiallOwner: TDataSource
    DataSet = cdsBeneficiallOwner
    Left = 564
    Top = 600
  end
end
