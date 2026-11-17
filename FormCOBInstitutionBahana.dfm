inherited frmCOBInstitutionBahana: TfrmCOBInstitutionBahana
  Caption = 'Client On Boarding Institution'
  ClientHeight = 622
  ClientWidth = 1005
  ExplicitWidth = 1011
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Left = 774
    Top = 519
    Width = 31
    Height = 28
    Align = alNone
    ExplicitLeft = 774
    ExplicitTop = 519
    ExplicitWidth = 31
    ExplicitHeight = 28
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 553
    Width = 1005
    ExplicitTop = 553
    ExplicitWidth = 1005
    inherited dbNavLog: TDBNavigator
      Left = 891
      Hints.Strings = ()
      ExplicitLeft = 891
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
    Top = 602
    Width = 1005
    ExplicitTop = 602
    ExplicitWidth = 1005
  end
  inherited tabEditorData: TTabSet
    Top = 532
    Width = 1005
    ExplicitTop = 532
    ExplicitWidth = 1005
  end
  object PageControl: TcxPageControl [4]
    Left = 0
    Top = 0
    Width = 1005
    Height = 532
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Properties.ActivePage = pgClientData
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    ClientRectBottom = 532
    ClientRectRight = 1005
    ClientRectTop = 20
    object pgClientData: TcxTabSheet
      Caption = 'Client Data'
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
        Width = 1005
        Height = 512
        Align = alClient
        TabOrder = 0
        object cbAccSecType: TcxDBImageComboBox
          Left = 181
          Top = 10
          DataBinding.DataField = 'ACC_TYPE_SEC'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Deposit'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Non Deposit'
              Value = 1
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 124
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 353
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
          Width = 124
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 181
          Top = 37
          DataBinding.DataField = 'SID'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 296
        end
        object cmbParentID: TcxDBLookupComboBox
          Left = 194
          Top = 91
          RepositoryItem = dmGlobal.luEntity
          DataBinding.DataField = 'PACCID'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taLeftJustify
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 283
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 146
          Top = 136
          DataBinding.DataField = 'NAME'
          DataBinding.DataSource = dsSubject
          Properties.CharCase = ecUpperCase
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 319
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 146
          Top = 163
          DataBinding.DataField = 'TAXPAYER_REG'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 319
        end
        object cxDBMemo1: TcxDBMemo
          Left = 146
          Top = 190
          DataBinding.DataField = 'OFFC_ADDR_ASSKDP'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Height = 50
          Width = 319
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 146
          Top = 246
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'CITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 145
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 344
          Top = 246
          DataBinding.DataField = 'ZIP_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 146
          Top = 273
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'COUNTRY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 319
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 146
          Top = 300
          DataBinding.DataField = 'OFFC_PHONE_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 319
        end
        object cxDBMemo2: TcxDBMemo
          Left = 146
          Top = 357
          DataBinding.DataField = 'CORESP_ADDR'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 14
          Height = 50
          Width = 319
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 146
          Top = 413
          RepositoryItem = dmGlobal.luCity
          DataBinding.DataField = 'CORESP_CITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 145
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 344
          Top = 413
          DataBinding.DataField = 'CORESP_ZIPCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 16
          Width = 121
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 146
          Top = 440
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'CORESP_COUNTRY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 17
          Width = 319
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 146
          Top = 467
          DataBinding.DataField = 'OFFC_FAX_NO_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 18
          Width = 319
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 631
          Top = 28
          DataBinding.DataField = 'GU_NAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 19
          Width = 352
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 631
          Top = 55
          RepositoryItem = dmGlobal.luNationality
          DataBinding.DataField = 'GU_NATIONALITY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 352
        end
        object cxDBMemo3: TcxDBMemo
          Left = 631
          Top = 82
          DataBinding.DataField = 'GU_ADDRESS'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 21
          Height = 50
          Width = 352
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 631
          Top = 138
          DataBinding.DataField = 'GU_ID_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 22
          Width = 183
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 887
          Top = 138
          DataBinding.DataField = 'GU_ID_EXP'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 23
          Width = 94
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 631
          Top = 165
          DataBinding.DataField = 'GU_LEGALRELATION'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 352
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 631
          Top = 192
          DataBinding.DataField = 'GU_PHONE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 352
        end
        object chkIsSubAcc: TcxDBCheckBox
          Left = 10
          Top = 91
          Caption = 'Is Sub Account'
          DataBinding.DataField = 'ISPACC'
          DataBinding.DataSource = dsSubject
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          OnClick = chkIsSubAccClick
          Width = 99
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 181
          Top = 64
          DataBinding.DataField = 'ALT_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 124
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 353
          Top = 64
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
          TabOrder = 4
          Width = 124
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 631
          Top = 246
          DataBinding.DataField = 'GU_EMAIL'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 352
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 631
          Top = 219
          DataBinding.DataField = 'GU_FAX'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 352
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Type Of Securities Account'
          Parent = dxLayoutControl3Group1
          Control = cbAccSecType
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Product'
          Parent = dxLayoutControl3Group1
          Control = cxDBLookupComboBox1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Single Investor Identification (SID)'
          Parent = dxLayoutControl3Group8
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Client Data'
          Parent = dxLayoutControl3Group10
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object cmbParentAccID: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Parent Account'
          Parent = dxLayoutControl3Group3
          Visible = False
          Control = cmbParentID
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name Of Account Owner'
          Parent = dxLayoutControl3Group2
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Tax Registration Number'
          Parent = dxLayoutControl3Group2
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address'
          Parent = dxLayoutControl3Group2
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = dxLayoutControl3Group4
          Control = cxDBLookupComboBox3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = dxLayoutControl3Group4
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item11: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = dxLayoutControl3Group2
          Control = cxDBLookupComboBox4
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone / Fax No.'
          Parent = dxLayoutControl3Group2
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Correspondence Address ( if different from above )'
          Parent = dxLayoutControl3Group10
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Item13: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address'
          Parent = dxLayoutControl3Group5
          Control = cxDBMemo2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item14: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'City'
          Parent = dxLayoutControl3Group6
          Control = cxDBLookupComboBox5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Zip Code'
          Parent = dxLayoutControl3Group6
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item16: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country'
          Parent = dxLayoutControl3Group5
          Control = cxDBLookupComboBox6
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item17: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone / Fax No.'
          Parent = dxLayoutControl3Group5
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          CaptionOptions.Text = 
            'Authorized person under the power of attorney for Opening Accoun' +
            't ( if submittedd by non-Directors )'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item18: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Name of Authorized Person'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit8
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item19: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Citizenship'
          Parent = dxLayoutControl3Group7
          Control = cxDBLookupComboBox7
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item20: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.AlignVert = tavTop
          CaptionOptions.Text = 'Address'
          Parent = dxLayoutControl3Group7
          Control = cxDBMemo3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item21: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ID Card / Passport Number'
          Parent = dxLayoutControl3Group9
          Control = cxDBTextEdit9
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item22: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Expired Date'
          Parent = dxLayoutControl3Group9
          Control = cxDBDateEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item23: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Legal Relationship'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit10
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item24: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Phone No.'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit11
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item25: TdxLayoutItem
          CaptionOptions.Text = 'cxDBCheckBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group3
          Control = chkIsSubAcc
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Alternate Code'
          Parent = dxLayoutControl3Group11
          Control = cxDBTextEdit20
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Branch'
          Parent = dxLayoutControl3Group11
          Control = cxDBLookupComboBox15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group11: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item26: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Email'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit21
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl3Item27: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Fax No.'
          Parent = dxLayoutControl3Group7
          Control = cxDBTextEdit22
          ControlOptions.ShowBorder = False
          Index = 6
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Company Data'
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
        Width = 1005
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 22
          Top = 28
          Width = 960
          Height = 200
          TabOrder = 0
          object gvwShareHolders: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsCOBShareHolder
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
                Width = 402
              end>
            object gvwShareHoldersCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwShareHoldersSHAREID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SHAREID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwShareHoldersNAME_SHAREHOLDER: TcxGridDBBandedColumn
              Caption = 'Name of Shareholder'
              DataBinding.FieldName = 'NAME_SHAREHOLDER'
              Width = 292
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwShareHoldersSHARE_PERCENTAGE: TcxGridDBBandedColumn
              Caption = '% of Ownership'
              DataBinding.FieldName = 'SHARE_PERCENTAGE'
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwShareHoldersMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwShareHoldersMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwShareHoldersAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwShareHoldersAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwShareHoldersUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwShareHoldersUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwShareHoldersNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwShareHoldersISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwShareHoldersID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwShareHolders
          end
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 147
          Top = 264
          DataBinding.DataField = 'COMP_ESTABLISH_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 147
          Top = 291
          DataBinding.DataField = 'TDP_NO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 181
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 362
          Top = 291
          DataBinding.DataField = 'TDP_REG_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 147
          Top = 318
          DataBinding.DataField = 'AUTHORIZED_CAP'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0);0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 181
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 147
          Top = 345
          DataBinding.DataField = 'PAID_CAP'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0);0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 181
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 665
          Top = 264
          RepositoryItem = dmGlobal.luCompanyType
          DataBinding.DataField = 'COMPANY_CHARACTER_CHK'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          OnExit = cxDBImageComboBox2Exit
          Width = 152
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 665
          Top = 291
          DataBinding.DataField = 'COMPANY_CHARACTER_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 134
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 665
          Top = 318
          DataBinding.DataField = 'BUSINESS_ENTITY_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 317
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 665
          Top = 345
          RepositoryItem = dmGlobal.luCountry
          DataBinding.DataField = 'COMPANY_COUNTRY'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 152
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          CaptionOptions.Text = 'List of Shareholders'
          Parent = dxLayoutControl4Group_Root
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group1
          Control = cxGrid1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Company Establishment && Capital Information'
          Parent = dxLayoutControl4Group6
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date of Establishment'
          Parent = dxLayoutControl4Group2
          Control = cxDBDateEdit2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Number of State Gazette'
          Parent = dxLayoutControl4Group4
          Control = cxDBTextEdit12
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Date'
          Parent = dxLayoutControl4Group4
          Control = cxDBDateEdit3
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Authorized  Capital (Rp)'
          Parent = dxLayoutControl4Group2
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Paid in Capital (Rp)'
          Parent = dxLayoutControl4Group2
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Company Type && Business Activity'
          Parent = dxLayoutControl4Group6
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Company Type'
          Parent = dxLayoutControl4Group7
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object CompanyTypeOthers: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl4Group7
          Visible = False
          Control = cxDBTextEdit13
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Business Activity'
          Parent = dxLayoutControl4Group5
          Control = cxDBTextEdit14
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item10: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Country of Origin (for Foreign)'
          Parent = dxLayoutControl4Group5
          Control = cxDBLookupComboBox8
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Board Of Directors'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1005
        Height = 512
        Align = alClient
        TabOrder = 0
        object gvwBOD: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
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
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn
            Caption = 'Mobile Phone'
            DataBinding.FieldName = 'BOD_CELLPHONE'
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBODBOD_EMAIL: TcxGridDBBandedColumn
            Caption = 'Official EMail'
            DataBinding.FieldName = 'BOD_EMAIL'
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 6
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
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBODBOD_ID_NO: TcxGridDBBandedColumn
            Caption = 'ID Card / Passport No.'
            DataBinding.FieldName = 'BOD_ID_NO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBODBOD_VALID_ID: TcxGridDBBandedColumn
            Caption = 'Expiry Date'
            DataBinding.FieldName = 'BOD_VALID_ID'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'dd mmm yyyy'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwBOD
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Authorized Person && Settlement Instruction'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1005
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 22
          Top = 28
          Width = 960
          Height = 200
          TabOrder = 0
          object gvwAuthorizedPerson: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsCOBAuthPerson
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Bands = <
              item
              end>
            object gvwAuthorizedPersonCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonAUTHID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AUTHID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonNAME_AUTHORIZED: TcxGridDBBandedColumn
              Caption = 'Name Authorized Person'
              DataBinding.FieldName = 'NAME_AUTHORIZED'
              Width = 243
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonLEGAL_RELATION: TcxGridDBBandedColumn
              Caption = 'Legal Relationship'
              DataBinding.FieldName = 'LEGAL_RELATION'
              Width = 188
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonID_NO: TcxGridDBBandedColumn
              Caption = 'ID Card / Passport No.'
              DataBinding.FieldName = 'ID_NO'
              Width = 178
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonHOME_PHONE: TcxGridDBBandedColumn
              Caption = 'Home Phone'
              DataBinding.FieldName = 'HOME_PHONE'
              Width = 130
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonCELL_PHONE: TcxGridDBBandedColumn
              Caption = 'Cellular Phone'
              DataBinding.FieldName = 'CELL_PHONE'
              Width = 130
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonFAX_NO: TcxGridDBBandedColumn
              Caption = 'Fax Number'
              DataBinding.FieldName = 'FAX_NO'
              Width = 130
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonEMAIL: TcxGridDBBandedColumn
              Caption = 'e-Mail'
              DataBinding.FieldName = 'EMAIL'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonADDRESS: TcxGridDBBandedColumn
              Caption = 'Address'
              DataBinding.FieldName = 'ADDRESS'
              Width = 500
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonCITIZENSHIP: TcxGridDBBandedColumn
              Caption = 'Citizenship'
              DataBinding.FieldName = 'CITIZENSHIP'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.ListColumns = <>
              RepositoryItem = dmGlobal.luNationality
              Visible = False
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object gvwAuthorizedPersonID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = gvwAuthorizedPerson
          end
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 128
          Top = 264
          DataBinding.DataField = 'SEC_SETTLEMENT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Please send the securities to'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 
                'Please send the securities according to the settlement instructi' +
                'on attached'
              Value = '2'
            end>
          Properties.OnCloseUp = cxDBImageComboBox3PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 452
        end
        object cxDBImageComboBox4: TcxDBImageComboBox
          Left = 128
          Top = 291
          DataBinding.DataField = 'CASH_SETTLEMENT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Please transfer the fund to'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Please transfer the fund according to the instruction attachment'
              Value = '2'
            end>
          Properties.OnCloseUp = cxDBImageComboBox4PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Width = 452
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 586
          Top = 264
          DataBinding.DataField = 'SEC_SETTLEMENT_TO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 280
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 586
          Top = 291
          DataBinding.DataField = 'CASH_SETTLEMENT_TO'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 280
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl5Group1: TdxLayoutGroup
          CaptionOptions.Text = 
            'List of Authorized Person(s) to trade (name of authorized person' +
            ' under the power of attorney)'
          Parent = dxLayoutControl5Group3
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Settlement Instruction'
          Parent = dxLayoutControl5Group_Root
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl5Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item1: TdxLayoutItem
          CaptionOptions.Text = 'cxGrid3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl5Group1
          Control = cxGrid3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Securities Settlement'
          Parent = dxLayoutControl5Group4
          Control = cxDBImageComboBox3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Settlement'
          Parent = dxLayoutControl5Group5
          Control = cxDBImageComboBox4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object secto: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit15'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl5Group4
          Visible = False
          Control = cxDBTextEdit15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object cashto: TdxLayoutItem
          CaptionOptions.Text = 'cxDBTextEdit16'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl5Group5
          Visible = False
          Control = cxDBTextEdit16
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Bank Refference && Investment Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1005
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBImageComboBox5: TcxDBImageComboBox
          Left = 168
          Top = 320
          DataBinding.DataField = 'INVEST_OBJECTIVE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Long Term Investment'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Speculation'
              Value = '2'
            end
            item
              Description = 'Price Appreciation'
              Value = '3'
            end
            item
              Description = 'Additional Income'
              Value = '4'
            end
            item
              Description = 'Others, please specify'
              Value = '0'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          OnExit = cxDBImageComboBox5Exit
          Width = 243
        end
        object cxDBImageComboBox6: TcxDBImageComboBox
          Left = 168
          Top = 347
          DataBinding.DataField = 'INVEST_EXPERIENCE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Equity'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Fixed Income'
              Value = '2'
            end
            item
              Description = 'Others, please specify'
              Value = '0'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          OnExit = cxDBImageComboBox6Exit
          Width = 243
        end
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 168
          Top = 374
          DataBinding.DataField = 'ESTIMATE_DAILY_TRADE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = '< Rp 1 billion'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = '> Rp 1 billion - Rp 50 Billion'
              Value = '1'
            end
            item
              Description = '> Rp 50 Billion - Rp 100 Billion'
              Value = '2'
            end
            item
              Description = '> Rp 100 Billion'
              Value = '3'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 243
        end
        object cxDBImageComboBox8: TcxDBImageComboBox
          Left = 168
          Top = 401
          DataBinding.DataField = 'TOTAL_ASSET'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = '< Rp 1 Billion'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = '> Rp 1 Billion - Rp 50 Billion'
              Value = '1'
            end
            item
              Description = '> Rp 50 Billion - Rp 100 Billion'
              Value = '2'
            end
            item
              Description = '> Rp 100 Billion - Rp 1 Trillion'
              Value = '3'
            end
            item
              Description = '> Rp 1 Trillion - 10 Trillion'
              Value = '4'
            end
            item
              Description = '> Rp 10 Trillion - Rp 50 Trillion'
              Value = '5'
            end
            item
              Description = '> Rp 50 Trillion'
              Value = '6'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 243
        end
        object cxDBImageComboBox9: TcxDBImageComboBox
          Left = 168
          Top = 428
          DataBinding.DataField = 'ANNUAL_INCOME'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = '< Rp 10 Billion'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = '> Rp 10 Billion - Rp 100 Billion'
              Value = '1'
            end
            item
              Description = '> Rp 100 Billion - Rp 500 Billion'
              Value = '2'
            end
            item
              Description = '> Rp 500 Billion'
              Value = '3'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 243
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 455
          Top = 320
          DataBinding.DataField = 'INVEST_OBJECTIVE_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 179
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 455
          Top = 347
          DataBinding.DataField = 'INVEST_EXPERIENCE_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 179
        end
        object cxDBImageComboBox10: TcxDBImageComboBox
          Left = 168
          Top = 455
          DataBinding.DataField = 'FUND_SOURCE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'Business Proceeds'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Investment Proceeds'
              Value = '2'
            end
            item
              Description = 'Others, please specify'
              Value = '0'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          OnExit = cxDBImageComboBox10Exit
          Width = 243
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 455
          Top = 455
          DataBinding.DataField = 'SOURCE_FUND_OTHER'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 179
        end
        object cxGrid4: TcxGrid
          Left = 10
          Top = 10
          Width = 983
          Height = 140
          TabOrder = 0
          object gvwCOBBank: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = True
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
            OptionsData.Appending = True
            OptionsView.GridLineColor = clCream
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle2
            Bands = <
              item
                Caption = 'Bank Refference'
                Width = 784
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
              Width = 112
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
              Width = 256
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn
              Caption = 'Bank Branch'
              DataBinding.FieldName = 'BANK_BRANCH'
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwCOBBankBENEFICIARY: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BENEFICIARY'
              Width = 139
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
              Width = 70
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
          object cxGridLevel2: TcxGridLevel
            GridView = gvwCOBBank
          end
        end
        object cxGrid5: TcxGrid
          Left = 10
          Top = 156
          Width = 644
          Height = 140
          TabOrder = 1
          object gvwCOBBankCustody: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = True
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
                Caption = 'Custody Refference'
                Width = 789
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
        object dxLayoutControl6Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl6Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Investment Data'
          Parent = dxLayoutControl6Group_Root
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl6Item1: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Investment Objectives'
          Parent = dxLayoutControl6Group2
          Control = cxDBImageComboBox5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Investment Experience'
          Parent = dxLayoutControl6Group3
          Control = cxDBImageComboBox6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Estimated Daily Trading Value'
          Parent = dxLayoutControl6Group1
          Control = cxDBImageComboBox7
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Total Asset'
          Parent = dxLayoutControl6Group1
          Control = cxDBImageComboBox8
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Gross Annual income'
          Parent = dxLayoutControl6Group1
          Control = cxDBImageComboBox9
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object InvObj_Other: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl6Group2
          Visible = False
          Control = cxDBTextEdit17
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl6Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object invExpOther: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl6Group3
          Visible = False
          Control = cxDBTextEdit18
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl6Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Source Of Funds'
          Parent = dxLayoutControl6Group4
          Control = cxDBImageComboBox10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object SourceFund_Other: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Others'
          Parent = dxLayoutControl6Group4
          Visible = False
          Control = cxDBTextEdit19
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl6Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 5
        end
        object dxLayoutControl6Item6: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          Control = cxGrid4
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item7: TdxLayoutItem
          Parent = dxLayoutControl6Group_Root
          Control = cxGrid5
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsCOBDetails
    Left = 324
    Top = 535
  end
  object dsCOBBOD: TDataSource
    DataSet = frmCOBList.cdsCOBBOD
    Left = 399
    Top = 537
  end
  object dsCOBBankAcc: TDataSource
    DataSet = frmCOBList.cdsCOBBankAcc
    Left = 465
    Top = 537
  end
  object dsCOBShareHolder: TDataSource
    DataSet = frmCOBList.cdsCOBShareHolder
    Left = 666
    Top = 531
  end
  object dsCOBAuthPerson: TDataSource
    DataSet = frmCOBList.cdsCOBAuthPerson
    Left = 807
    Top = 537
  end
  object dsCOBBankCustody: TDataSource
    DataSet = frmCOBList.cdsCOBClientCustody
    Left = 556
    Top = 533
  end
end
