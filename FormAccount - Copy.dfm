inherited frmAccount: TfrmAccount
  Caption = 'Account'
  ClientHeight = 671
  ClientWidth = 994
  ExplicitWidth = 1000
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 177
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 177
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 84
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 4
      Width = 368
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [2]
      Left = 302
      Top = 10
      RepositoryItem = dmGlobal.luAccountStatus
      DataBinding.DataField = 'ACC_STS'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 167
    end
    object cxDBImageComboBox5: TcxDBImageComboBox [3]
      Left = 302
      Top = 118
      RepositoryItem = dmGlobal.luAccountSubType
      DataBinding.DataField = 'ACCSUBTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 167
    end
    object cbSales: TcxDBLookupComboBox [4]
      Left = 302
      Top = 64
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALESID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnEnter = cbSalesEnter
      OnExit = cbSalesExit
      Width = 167
    end
    object cxDBTextEdit3: TcxDBTextEdit [5]
      Left = 538
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 134
    end
    object cbBranch: TcxDBLookupComboBox [6]
      Left = 84
      Top = 64
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
    object cxDBLookupComboBox22: TcxDBLookupComboBox [7]
      Left = 531
      Top = 37
      RepositoryItem = dmGlobal.luBusinessType
      DataBinding.DataField = 'BUSSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 134
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [8]
      Left = 84
      Top = 118
      RepositoryItem = dmGlobal.luAccType
      DataBinding.DataField = 'ACCTYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 145
    end
    object cxDBTextEdit5: TcxDBTextEdit [9]
      Left = 725
      Top = 10
      DataBinding.DataField = 'KSEI_SID'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 155
    end
    object cbRefExt: TcxDBLookupComboBox [10]
      Left = 84
      Top = 91
      RepositoryItem = dmGlobal.luReferral
      DataBinding.DataField = 'REFERRAL_ID_EXT'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      OnEnter = cbRefExtEnter
      OnExit = cbRefExtExit
      Width = 80
    end
    object cxDBTextEdit7: TcxDBTextEdit [11]
      Left = 179
      Top = 91
      DataBinding.DataField = 'REFERRAL_DESC_EXT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 300
    end
    object cbRefInt: TcxDBLookupComboBox [12]
      Left = 550
      Top = 91
      RepositoryItem = dmGlobal.luReferral
      DataBinding.DataField = 'REFERRAL_ID_INT'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      OnEnter = cbRefIntEnter
      OnExit = cbRefIntExit
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit [13]
      Left = 645
      Top = 91
      DataBinding.DataField = 'REFERRAL_DESC_INT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 300
    end
    object cxDBCheckBox6: TcxDBCheckBox [14]
      Left = 475
      Top = 64
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Dorman Status'
      DataBinding.DataField = 'DORMANT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [15]
      Left = 84
      Top = 145
      RepositoryItem = dmGlobal.luEntity
      DataBinding.DataField = 'ENTTID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 145
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [16]
      Left = 302
      Top = 145
      DataBinding.DataField = 'ENTTID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ENTTID'
      Properties.ListColumns = <
        item
          FieldName = 'ENTTCODE'
        end
        item
          FieldName = 'ENTNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuEntity
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 328
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [17]
      Left = 538
      Top = 118
      RepositoryItem = dmGlobal.luProduct
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 273
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 368
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sub Type'
      Control = cxDBImageComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales'
      Control = cbSales
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Init'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Control = cbBranch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Business Type'
      Control = cxDBLookupComboBox22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'KSEI SID'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ext. Referral'
      Control = cbRefExt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Int. Referral'
      Control = cbRefInt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Entity Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group7
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Entoty Name'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 328
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 273
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 602
    Width = 994
    ExplicitTop = 602
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 651
    Width = 994
    ExplicitTop = 651
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 581
    Width = 994
    ExplicitTop = 581
    ExplicitWidth = 994
  end
  object pageAccount: TcxPageControl [4]
    Left = 0
    Top = 177
    Width = 994
    Height = 404
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabGeneral
    Properties.CustomButtons.Buttons = <>
    OnDrawTab = pageAccountDrawTab
    ClientRectBottom = 400
    ClientRectLeft = 4
    ClientRectRight = 990
    ClientRectTop = 24
    object tabGeneral: TcxTabSheet
      Caption = 'General Info'
      ImageIndex = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 376
        Align = alClient
        TabOrder = 0
        object cxGroupBox2: TcxGroupBox
          Left = 10
          Top = 95
          Caption = 'Indicators'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 284
          Width = 311
          object dxLayoutControl5: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 307
            Height = 264
            Align = alClient
            TabOrder = 0
            object cxDBCheckBox16: TcxDBCheckBox
              Left = 151
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use OMGEO'
              DataBinding.DataField = 'OMGUSE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 8
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 151
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Trading Account'
              DataBinding.DataField = 'ISTRDACCOUNT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 7
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 10
              Top = 37
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Auto Allocation'
              DataBinding.DataField = 'AUTO_ALLOC'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
            end
            object cxDBCheckBox11: TcxDBCheckBox
              Left = 10
              Top = 10
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Auto Avg. Price'
              DataBinding.DataField = 'DT_AUTOAVGPRICE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 115
              Top = 10
              DataBinding.DataField = 'AVGPRICEDEC'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 55
            end
            object cxLabel1: TcxLabel
              Left = 176
              Top = 10
              Caption = 'Digits'
              Style.HotTrack = False
            end
            object cxDBCheckBox18: TcxDBCheckBox
              Left = 151
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Stock Keep'
              DataBinding.DataField = 'STOCKKEEP'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 9
            end
            object cxDBCheckBox13: TcxDBCheckBox
              Left = 10
              Top = 64
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Use S-Invest'
              DataBinding.DataField = 'SINVUSE'
              DataBinding.DataSource = dsSubject
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
            end
            object chkWAPU: TcxDBCheckBox
              Left = 10
              Top = 118
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'WAPU'
              DataBinding.DataField = 'ISWAPU'
              DataBinding.DataSource = dsSubject
              Properties.OnChange = chkWAPUPropertiesChange
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
            end
            object cxDBCheckBox17: TcxDBCheckBox
              Left = 10
              Top = 91
              RepositoryItem = dmGlobal.chkStandard
              Caption = 'Cash Keep'
              DataBinding.DataField = 'CASHKEEP'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
            end
            object edWapuVal: TcxDBCurrencyEdit
              Left = 151
              Top = 118
              DataBinding.DataField = 'WAPU_VALUE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 10
              Width = 74
            end
            object edWapuType: TcxDBImageComboBox
              Left = 151
              Top = 145
              DataBinding.DataField = 'WAPU_TYPE'
              DataBinding.DataSource = dsSubject
              Properties.Items = <
                item
                  Description = 'VAT'
                  ImageIndex = 0
                  Value = '1'
                end
                item
                  Description = 'VAT+Broker Fee'
                  Value = '2'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 11
              Width = 74
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
              Parent = dxLayoutControl5Group2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group2: TdxLayoutGroup
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group3: TdxLayoutGroup
              Parent = dxLayoutControl5Group2
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item16: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox16'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item2: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item5: TdxLayoutItem
              Parent = dxLayoutControl5Group1
              CaptionOptions.Text = 'cxDBCheckBox7'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Item11: TdxLayoutItem
              Parent = dxLayoutControl5Group5
              AlignHorz = ahLeft
              CaptionOptions.Text = 'cxDBCheckBox11'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 99
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group5: TdxLayoutGroup
              Parent = dxLayoutControl5Group_Root
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object lcAvgDec: TdxLayoutGroup
              Parent = dxLayoutControl5Group5
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              Parent = lcAvgDec
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Avg. Price Decimal Point'
              CaptionOptions.Visible = False
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 55
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl3Item2: TdxLayoutItem
              Parent = lcAvgDec
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = cxLabel1
              ControlOptions.OriginalHeight = 17
              ControlOptions.OriginalWidth = 30
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item17: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              CaptionOptions.Text = 'cxDBCheckBox18'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl6Item2: TdxLayoutItem
              Parent = dxLayoutControl5Group1
              CaptionOptions.Text = 'cxDBCheckBox13'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 135
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Item1: TdxLayoutItem
              Parent = dxLayoutControl5Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxDBCheckBox2'
              CaptionOptions.Visible = False
              Control = chkWAPU
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 54
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutControl5Item13: TdxLayoutItem
              Parent = dxLayoutControl5Group1
              AlignHorz = ahClient
              CaptionOptions.Text = 'cxDBCheckBox17'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 75
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Wapu Value'
              CaptionOptions.Layout = clRight
              Control = edWapuVal
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 74
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutControl5Group3
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Wapu Type'
              CaptionOptions.Layout = clRight
              Control = edWapuType
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 74
              ControlOptions.ShowBorder = False
              Index = 4
            end
          end
        end
        object cbTCModel: TcxDBImageComboBox
          Left = 138
          Top = 68
          RepositoryItem = dmGlobal.luTCModel
          DataBinding.DataField = 'TC_MODEL'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 167
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 377
          Top = 28
          DataBinding.DataField = 'INIT_DEPOSIT_FUND'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 169
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 377
          Top = 55
          DataBinding.DataField = 'INIT_DEPOSIT_SHARES'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 169
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 437
          Top = 148
          DataBinding.DataField = 'LASTTR_DATE'
          DataBinding.DataSource = dsSubject
          Enabled = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 121
        end
        object cbBusType: TcxDBLookupComboBox
          Left = 138
          Top = 10
          RepositoryItem = dmGlobal.luBusinessType
          DataBinding.DataField = 'BUSSTYPE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 183
        end
        object btnGetSetting: TcxButton
          Left = 10
          Top = 37
          Width = 311
          Height = 25
          Caption = 'Generate All Setting Based On Parameter Setting'
          TabOrder = 1
          OnClick = btnGetSettingClick
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 437
          Top = 94
          DataBinding.DataField = 'DIVIDEN_TAX'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 437
          Top = 121
          DataBinding.DataField = 'CREATED_DATE'
          DataBinding.DataSource = dsSubject
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 121
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
        object dxLayoutControl3Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          CaptionOptions.Text = 'cxGroupBox2'
          CaptionOptions.Visible = False
          Control = cxGroupBox2
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 284
          ControlOptions.OriginalWidth = 311
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Trade Confirmation Model'
          Control = cbTCModel
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 167
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Fund'
          Control = cxDBCurrencyEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 169
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Shares'
          Control = cxDBCurrencyEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 169
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl3Group1
          AlignVert = avTop
          CaptionOptions.Text = 'Initial Deposit'
          Visible = False
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Last Transaction Date'
          Control = cxDBDateEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 3
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Parameter Setting'
          Control = cbBusType
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 183
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Parent = dxLayoutControl3Group2
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Visible = False
          Control = btnGetSetting
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 260
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Dividen Tax'
          Control = cxDBTextEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          Parent = dxLayoutControl3Group1
          CaptionOptions.Text = 'Account Create Date'
          Control = cxDBDateEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 2
        end
      end
    end
    object tabSettle: TcxTabSheet
      Caption = 'Settlement'
      ImageIndex = 7
      TabVisible = False
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 376
        Align = alClient
        TabOrder = 0
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 307
          Top = 10
          DataBinding.DataField = 'SETTLE_MODE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'VP'
              ImageIndex = 0
              Value = 'VP'
            end
            item
              Description = 'FOP'
              Value = 'FOP'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cbSettleType: TcxDBImageComboBox
          Left = 94
          Top = 10
          DataBinding.DataField = 'SETTLE_TYPE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <
            item
              Description = 'RDN'
              ImageIndex = 0
              Value = 'RDN'
            end
            item
              Description = 'RDN Net'
              Value = 'RDNNET'
            end
            item
              Description = 'Sub Account'
              Value = 'SubACC'
            end
            item
              Description = 'OTC'
              Value = 'OTC'
            end>
          Properties.OnChange = cbSettleTypePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
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
        object lcSettleMode: TdxLayoutItem
          Parent = dxLayoutGroup4
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Settlement Mode'
          Control = cxDBImageComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          Parent = dxLayoutGroup4
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Settlement Type'
          Control = cbSettleType
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object tabInterest: TcxTabSheet
      Caption = 'Interest'
      ImageIndex = 8
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 376
        Align = alClient
        TabOrder = 0
        object gvwInterest: TcxGridDBBandedTableView
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
          DataController.DataSource = dsInterest
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
              Caption = 'Interest Configuration'
              Width = 763
            end>
          object gvwInterestACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwInterestCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            RepositoryItem = dmGlobal.luCurrency
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwInterestINTERESTCODE: TcxGridDBBandedColumn
            Caption = 'Interest'
            DataBinding.FieldName = 'INTERESTCODE'
            RepositoryItem = dmGlobal.luInterest
            Width = 410
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwInterestMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwInterestMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwInterestAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwInterestAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwInterestUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwInterestUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwInterestNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwInterestISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwInterestID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwInterestPRINCIPLE_METHOD: TcxGridDBBandedColumn
            Caption = 'Principle Method'
            DataBinding.FieldName = 'PRINCIPLE_METHOD'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Monthly'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Request'
                Value = '2'
              end
              item
                Description = 'Trade Sell'
                Value = '3'
              end>
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = gvwInterest
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
        Height = 376
        Align = alClient
        TabOrder = 0
        object glvContact: TcxGridDBLayoutView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
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
          OptionsView.ShowOnlyEntireRecords = False
          OptionsView.ViewMode = lvvmMultiColumn
          object glvContactACCID: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'ACCID'
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
          object glvContactGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Template Card'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object glvContactLayoutItem1: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem2: TcxGridLayoutItem
            Index = -1
          end
          object glvContactLayoutItem3: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 0
          end
          object glvContactLayoutItem4: TcxGridLayoutItem
            Parent = glvContactGroup1
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem5: TcxGridLayoutItem
            Parent = glvContactGroup1
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Visible = False
            Index = 1
          end
          object glvContactLayoutItem6: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 5
          end
          object glvContactLayoutItem7: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 6
          end
          object glvContactLayoutItem8: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 7
          end
          object glvContactLayoutItem9: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 2
          end
          object glvContactLayoutItem10: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 3
          end
          object glvContactLayoutItem11: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 200
            Index = 4
          end
          object glvContactLayoutItem12: TcxGridLayoutItem
            Parent = glvContactGroup6
            CaptionOptions.AlignHorz = taRightJustify
            Index = 0
          end
          object glvContactLayoutItem13: TcxGridLayoutItem
            Parent = glvContactGroup_Root
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 250
            Index = 9
          end
          object glvContactLayoutItem14: TcxGridLayoutItem
            Parent = glvContactGroup5
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 250
            Index = 0
          end
          object glvContactLayoutItem15: TcxGridLayoutItem
            Parent = glvContactGroup3
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 250
            Index = 0
          end
          object glvContactLayoutItem16: TcxGridLayoutItem
            Parent = glvContactGroup4
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 250
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
            CaptionOptions.AlignHorz = taRightJustify
            SizeOptions.Width = 119
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
          object glvContactGroup1: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object glvContactGroup2: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 13
          end
          object glvContactGroup3: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 11
          end
          object glvContactGroup4: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 12
          end
          object glvContactGroup5: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 10
          end
          object glvContactGroup6: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 8
          end
          object glvContactGroup7: TdxLayoutGroup
            Parent = glvContactGroup_Root
            CaptionOptions.Text = 'Notification For'
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            Index = 14
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
        end
        object cxGridLevel5: TcxGridLevel
          GridView = glvContact
        end
      end
    end
    object tabCommission: TcxTabSheet
      Caption = 'Commission | Charges'
      ImageIndex = 1
      object grdComm: TcxGrid
        Left = 0
        Top = 0
        Width = 475
        Height = 376
        Align = alLeft
        TabOrder = 0
        object gvwComm: TcxGridDBTableView
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
          OnInitEdit = gvwCommInitEdit
          DataController.DataSource = dsComm
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
          object gvwCommCHANNELCODE: TcxGridDBColumn
            Caption = 'Channel'
            DataBinding.FieldName = 'CHANNELCODE'
            RepositoryItem = dmGlobal.luChannel
            Width = 45
          end
          object gvwCommMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
            Width = 39
          end
          object gvwCommCCYCODE: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Visible = False
            Width = 50
          end
          object gvwCommCOMM_ID: TcxGridDBColumn
            Caption = 'Comm Code'
            DataBinding.FieldName = 'COMM_ID'
            RepositoryItem = dmGlobal.luCommission
            Width = 63
          end
          object gvwCommDESCRIPTION: TcxGridDBColumn
            Caption = 'Comm Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 227
          end
          object gvwCommCALC_METHOD: TcxGridDBColumn
            Caption = 'Calc Method'
            DataBinding.FieldName = 'CALC_METHOD'
            RepositoryItem = dmGlobal.luCommCalcMethod
            Width = 65
          end
          object gvwCommUSE_MINCOMM: TcxGridDBColumn
            Caption = 'Min Comm'
            DataBinding.FieldName = 'USE_MINCOMM'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 54
          end
          object gvwCommWITH_SELLTAX: TcxGridDBColumn
            Caption = 'With Sell Tax'
            DataBinding.FieldName = 'WITH_SELLTAX'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 68
          end
        end
        object grdCommLevel1: TcxGridLevel
          GridView = gvwComm
        end
      end
      object Panel1: TPanel
        Left = 475
        Top = 0
        Width = 511
        Height = 376
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object grdCharge: TcxGrid
          Left = 0
          Top = 185
          Width = 511
          Height = 191
          Align = alClient
          TabOrder = 0
          object gvwCharge: TcxGridDBBandedTableView
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
            DataController.DataSource = dsCharge
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
                Caption = 'Exception Charge(s)'
              end>
            object gvwChargeACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwChargeMARKETCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MARKETCODE'
              RepositoryItem = dmGlobal.luMarket
              Width = 39
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwChargeCHARGE_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_ID'
              RepositoryItem = dmGlobal.luCharge
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwChargeISUSED: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISUSED'
              RepositoryItem = dmGlobal.chkStandard
              Width = 24
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwChargeMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwChargeMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwChargeAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwChargeAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwChargeUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwChargeUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwChargeNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwChargeISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwChargeID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwChargeDESCRIPTION: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 169
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwChargeCHARGE_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_DESC'
              Width = 180
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
          end
          object grdChargeLevel1: TcxGridLevel
            GridView = gvwCharge
          end
        end
        object grdChargeByBussType: TcxGrid
          Left = 0
          Top = 0
          Width = 511
          Height = 185
          Align = alTop
          TabOrder = 1
          TabStop = False
          object gvwChargeByBussType: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsChargeByBusType
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
                Caption = 'Charges by Business Type'
              end>
            object gvwChargeByBussTypeMARKETCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MARKETCODE'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwChargeByBussTypeCHARGE_CODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_CODE'
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwChargeByBussTypeCHARGE_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CHARGE_DESC'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object grdChargeByBussTypeLevel1: TcxGridLevel
            GridView = gvwChargeByBussType
          end
        end
      end
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 2
      TabVisible = False
    end
    object tabBank: TcxTabSheet
      Caption = 'Bank | Custody'
      ImageIndex = 3
      TabVisible = False
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 201
        Align = alTop
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
          object gvwBankBNCODE: TcxGridDBColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BNCODE'
            RepositoryItem = dmGlobal.luBank
            Width = 100
          end
          object gvwBankBANKACCNO: TcxGridDBColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
            Width = 91
          end
          object gvwBankBANKACCNAME: TcxGridDBColumn
            Caption = 'Bank Account Name'
            DataBinding.FieldName = 'BANKACCNAME'
            Width = 205
          end
          object gvwBankBANKBRANCH: TcxGridDBColumn
            Caption = 'Bank Branch'
            DataBinding.FieldName = 'BANKBRANCH'
            Width = 92
          end
          object gvwBankCCYCODE: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Width = 62
          end
          object gvwBankISRDN: TcxGridDBColumn
            Caption = 'RDN'
            DataBinding.FieldName = 'ISRDN'
            RepositoryItem = dmGlobal.chkStandard
            Width = 27
          end
          object gvwBankBNCHGSTYPE: TcxGridDBColumn
            Caption = 'Bank Charge Type'
            DataBinding.FieldName = 'BNCHGSTYPE'
            RepositoryItem = dmGlobal.luBankChargeType
            Visible = False
            VisibleForCustomization = False
            Width = 106
          end
          object gvwBankACTLED_SEQID: TcxGridDBColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'ACTLED_SEQID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'SEQID'
            Properties.ListColumns = <
              item
                FieldName = 'ALTYPE'
              end
              item
                FieldName = 'ALCODE'
              end
              item
                FieldName = 'INSTRUCTIONTYPE'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsLedgerAcc
            Width = 93
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwBank
        end
      end
      object cxGrid6: TcxGrid
        Left = 0
        Top = 201
        Width = 986
        Height = 175
        Align = alClient
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
          object gvwCustodyACCCUSTODYID: TcxGridDBColumn
            DataBinding.FieldName = 'ACCCUSTODYID'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyACCID: TcxGridDBColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyCUSTODYCODE: TcxGridDBColumn
            Caption = 'Custody Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            RepositoryItem = dmGlobal.luCustody
            Width = 74
          end
          object gvwCustodyCUSTODYTYPE: TcxGridDBColumn
            Caption = 'Custody Type'
            DataBinding.FieldName = 'CUSTODYTYPE'
            RepositoryItem = dmGlobal.luCustudyType
            Width = 85
          end
          object gvwCustodyCUSTODYACCNO: TcxGridDBColumn
            Caption = 'Custody Account No.'
            DataBinding.FieldName = 'CUSTODYACCNO'
            Width = 108
          end
          object gvwCustodyCUSTODYACCNAME: TcxGridDBColumn
            Caption = 'Custody Account Name'
            DataBinding.FieldName = 'CUSTODYACCNAME'
          end
          object gvwCustodyCUSTODYBRANCH: TcxGridDBColumn
            Caption = 'Custody Branch'
            DataBinding.FieldName = 'CUSTODYBRANCH'
            Width = 94
          end
          object gvwCustodyACTLED_SEQID: TcxGridDBColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'ACTLED_SEQID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.GridMode = True
            Properties.KeyFieldNames = 'SEQID'
            Properties.ListColumns = <
              item
                FieldName = 'ALTYPE'
              end
              item
                FieldName = 'ALCODE'
              end
              item
                FieldName = 'INSTRUCTIONTYPE'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsLedgerAcc
            Width = 100
          end
          object gvwCustodyMODDA: TcxGridDBColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyMODUI: TcxGridDBColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyAPPDA: TcxGridDBColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyAPPUI: TcxGridDBColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyUNDER4Y: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyUNDER4YDA: TcxGridDBColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyNOTES4Y: TcxGridDBColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyISDEL: TcxGridDBColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwCustodyCBEST_ACCBANKID: TcxGridDBColumn
            DataBinding.FieldName = 'CBEST_ACCBANKID'
            Visible = False
          end
          object gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTODY_DEFAULT'
            Visible = False
          end
          object gvwCustodySTAT: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STAT'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Lendable'
                ImageIndex = 0
                Value = 'L'
              end
              item
                Description = 'Block'
                Value = 'B'
              end
              item
                Description = 'Tout'
                Value = 'T'
              end
              item
                Description = 'Free'
                Value = 'F'
              end
              item
                Description = 'Close'
                Value = 'C'
              end>
            Visible = False
            Width = 89
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = gvwCustody
        end
      end
    end
    object tabLedgerAcc: TcxTabSheet
      Caption = 'Ledger Account'
      ImageIndex = 4
      TabVisible = False
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 376
        Align = alClient
        TabOrder = 0
        object gvwLedgerAcc: TcxGridDBBandedTableView
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
          DataController.DataSource = dsLedgerAcc
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
            end>
          object gvwLedgerAccACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwLedgerAccSEQID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwLedgerAccALTYPE: TcxGridDBBandedColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'ALTYPE'
            RepositoryItem = dmGlobal.luActLedgerType
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwLedgerAccALCODE: TcxGridDBBandedColumn
            Caption = 'Ledger Code'
            DataBinding.FieldName = 'ALCODE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwLedgerAccBANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANKCODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwLedgerAccBANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANKACCNO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwLedgerAccBANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANKACCNAME'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwLedgerAccBANKBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANKBRANCH'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwLedgerAccCALCINTEREST: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALCINTEREST'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwLedgerAccINTERESTCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INTERESTCODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwLedgerAccMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwLedgerAccMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwLedgerAccAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwLedgerAccAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwLedgerAccUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwLedgerAccUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwLedgerAccNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwLedgerAccISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwLedgerAccID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwLedgerAcc
        end
      end
    end
    object tabCreditLimit: TcxTabSheet
      Caption = 'Credit Limit'
      ImageIndex = 5
      OnShow = tabCreditLimitShow
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 986
        Height = 49
        Align = alTop
        TabOrder = 0
        object CreditLimitClass: TcxDBLookupComboBox
          Left = 96
          Top = 10
          RepositoryItem = dmGlobal.luCRDCONCLASS
          DataBinding.DataField = 'CCCLS_ID'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 201
        end
        object btnSetCreditLimit: TButton
          Left = 303
          Top = 10
          Width = 224
          Height = 25
          Caption = 'Set Credit Limit Based On It'#39's Class'
          TabOrder = 1
          OnClick = btnSetCreditLimitClick
        end
        object dxLayoutGroup5: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup5
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Credit Limit Class'
          Control = CreditLimitClass
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 201
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup5
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Button1'
          CaptionOptions.Visible = False
          Control = btnSetCreditLimit
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 224
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object PC: TcxPageControl
        Left = 0
        Top = 49
        Width = 986
        Height = 327
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = ctDefault
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        ClientRectBottom = 323
        ClientRectLeft = 4
        ClientRectRight = 982
        ClientRectTop = 4
        object ctDefault: TcxTabSheet
          Caption = 'ctDefault'
          ImageIndex = 0
          object dxLayoutControl7: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 319
            Align = alClient
            TabOrder = 0
            object dxLayoutGroup8: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
          end
        end
        object ctCash: TcxTabSheet
          Caption = 'ctCash'
          ImageIndex = 1
          object dxLayoutControl8: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 319
            Align = alClient
            TabOrder = 0
            object cxDBRadioGroup3: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 1
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup4: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup2: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 2
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup6: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup8: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup9: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 150
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object x: TdxLayoutGroup
              Parent = dxLayoutGroup9
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object LayoutControlItem23: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup3
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LayoutControlItem24: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup4
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object LayoutControlItem7: TdxLayoutItem
              Parent = x
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup2
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup9: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object LayoutControlGroup7: TdxLayoutGroup
              Parent = dxLayoutGroup9
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object LayoutControlItem27: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup6
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object LayoutControlItem12: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup8
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object LayoutControlItem18: TdxLayoutItem
              Parent = LayoutControlGroup7
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup9
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 150
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctReg: TcxTabSheet
          Caption = 'ctReg'
          ImageIndex = 2
          object dxLayoutControl9: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 319
            Align = alClient
            TabOrder = 0
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 361
              Top = 10
              DataBinding.DataField = 'TL_CASHVALUATE'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 53
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup5: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup7: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup11: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup13: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup14: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 8
              Height = 51
              Width = 332
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 520
              Top = 10
              DataBinding.DataField = 'TL_STOCKVALUATE'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 67
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 166
            end
            object dxLayoutGroup10: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup11: TdxLayoutGroup
              Parent = dxLayoutControl4Group3
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object LayoutControlItem13: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Valuation (%)'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup11
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup1
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup11
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup5
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup11
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup7
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup12: TdxLayoutGroup
              Parent = dxLayoutControl4Group3
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup11
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup13
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup12
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup14
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              CaptionOptions.Text = 'Stock Valuation (%)'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutControl4Group2: TdxLayoutGroup
              Parent = dxLayoutGroup10
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Group3: TdxLayoutGroup
              Parent = dxLayoutGroup10
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl4Item2: TdxLayoutItem
              Parent = dxLayoutControl4Group2
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 166
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctRatio: TcxTabSheet
          Caption = 'ctRatio'
          ImageIndex = 3
          object dxLayoutControl10: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 319
            Align = alClient
            TabOrder = 0
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 122
              Top = 55
              DataBinding.DataField = 'TL_CASHVALUATE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 67
            end
            object cxDBRadioGroup10: TcxDBRadioGroup
              Left = 22
              Top = 139
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup12: TcxDBRadioGroup
              Left = 22
              Top = 252
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 9
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup15: TcxDBRadioGroup
              Left = 22
              Top = 196
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 8
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup16: TcxDBRadioGroup
              Left = 399
              Top = 139
              Caption = 'Short Sell Order'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 10
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup17: TcxDBRadioGroup
              Left = 399
              Top = 196
              Caption = 'Sell Order When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 11
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup18: TcxDBRadioGroup
              Left = 399
              Top = 253
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 12
              Height = 51
              Width = 332
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 122
              Top = 82
              DataBinding.DataField = 'TL_STOCKVALUATE'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 67
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 349
              Top = 82
              DataBinding.DataField = 'RATIO_MRGWARING'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
              Width = 59
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 349
              Top = 55
              DataBinding.DataField = 'RATIO_MRGCALL'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
              Width = 59
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 567
              Top = 82
              DataBinding.DataField = 'FORCESELL_DAY'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
              Width = 59
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 567
              Top = 55
              DataBinding.DataField = 'RATIO_FORCESELL'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
              Width = 59
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 91
              Top = 10
              DataBinding.DataField = 'CR_VAL'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 158
            end
            object dxLayoutGroup13: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup14: TdxLayoutGroup
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutControl5Group8
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Cash Valuation (%)'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup10
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup12
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup14
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup15
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup15: TdxLayoutGroup
              Parent = dxLayoutGroup7
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup15
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup16
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup15
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup17
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup15
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup18
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutControl5Group8
              CaptionOptions.Text = 'Stock Valuation (%)'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 67
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup16: TdxLayoutGroup
              Parent = dxLayoutGroup13
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutControl5Group7
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Margin Warning Ratio (%)'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutControl5Group7
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Margin Call Ratio (%)'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutControl5Group9
              AlignHorz = ahLeft
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Force Sell Day'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutGroup16
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutControl5Group9
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'Force Sell Ratio Protection (%)'
              Control = cxDBTextEdit18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 59
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup17: TdxLayoutGroup
              Parent = dxLayoutGroup18
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutControl5Group6: TdxLayoutGroup
              Parent = dxLayoutGroup17
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup18: TdxLayoutGroup
              Parent = dxLayoutGroup16
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl5Group8: TdxLayoutGroup
              Parent = dxLayoutGroup18
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutControl5Group9: TdxLayoutGroup
              Parent = dxLayoutControl5Group6
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl5Group7: TdxLayoutGroup
              Parent = dxLayoutControl5Group6
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutGroup13
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Max Credit Limit'
              Control = cxDBTextEdit19
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 158
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object ctApprLimit: TcxTabSheet
          Caption = 'ctApprLimit'
          ImageIndex = 4
          object dxLayoutControl11: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 978
            Height = 319
            Align = alClient
            TabOrder = 0
            object cxDBRadioGroup19: TcxDBRadioGroup
              Left = 22
              Top = 55
              Caption = 'Buy Order When Over Buying Limit'
              DataBinding.DataField = 'TLB_OVERLIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 2
              Height = 51
              Width = 347
            end
            object cxDBRadioGroup20: TcxDBRadioGroup
              Left = 22
              Top = 168
              Caption = 'Buy Order When  Client has Overdue Outstanding'
              DataBinding.DataField = 'TLB_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 4
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup21: TcxDBRadioGroup
              Left = 22
              Top = 112
              Caption = 'Buy Order When  Client on Not Valid Status'
              DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 3
              Height = 50
              Width = 347
            end
            object cxDBRadioGroup22: TcxDBRadioGroup
              Left = 399
              Top = 55
              Caption = 'Sell Order when Over Selling Limit'
              DataBinding.DataField = 'TLS_SHORTSELL'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 5
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup23: TcxDBRadioGroup
              Left = 399
              Top = 112
              Caption = 'Sell Orde When Client on Not valid Status'
              DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 6
              Height = 51
              Width = 332
            end
            object cxDBRadioGroup24: TcxDBRadioGroup
              Left = 399
              Top = 169
              Caption = 'Sell Order When Client has Overdue Outstanding'
              DataBinding.DataField = 'TLS_OVERDUE'
              DataBinding.DataSource = dsAccCreditLimit
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Accept'
                  Value = 'A'
                end
                item
                  Caption = 'Reject'
                  Value = 'R'
                end
                item
                  Caption = 'Approval'
                  Value = 'P'
                end>
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              TabOrder = 7
              Height = 51
              Width = 332
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 89
              Top = 10
              DataBinding.DataField = 'BUY_LIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Width = 150
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit
              Left = 322
              Top = 10
              DataBinding.DataField = 'SELL_LIMIT'
              DataBinding.DataSource = dsAccCreditLimit
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Width = 135
            end
            object dxLayoutGroup19: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup20: TdxLayoutGroup
              Parent = dxLayoutGroup21
              CaptionOptions.Text = 'Buy Order Validation'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutGroup20
              CaptionOptions.Text = 'cxDBRadioGroup3'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup19
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 347
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutGroup20
              CaptionOptions.Text = 'cxDBRadioGroup4'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup20
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutGroup20
              CaptionOptions.Text = 'cxDBRadioGroup2'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup21
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 325
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup21: TdxLayoutGroup
              Parent = dxLayoutGroup19
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup22: TdxLayoutGroup
              Parent = dxLayoutGroup21
              CaptionOptions.Text = 'Sell Order Validation'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutGroup22
              CaptionOptions.Text = 'cxDBRadioGroup6'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup22
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 332
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutGroup22
              CaptionOptions.Text = 'cxDBRadioGroup8'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup23
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 312
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutGroup22
              CaptionOptions.Text = 'cxDBRadioGroup9'
              CaptionOptions.Visible = False
              Control = cxDBRadioGroup24
              ControlOptions.OriginalHeight = 51
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup23: TdxLayoutGroup
              Parent = dxLayoutGroup19
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutGroup23
              CaptionOptions.Text = 'Buy Credit Limit'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 150
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutGroup23
              CaptionOptions.Text = 'Sell Credit Limit'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 135
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
    object tabExtRef: TcxTabSheet
      Caption = 'External System Reference'
      ImageIndex = 5
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 376
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
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
          DataController.DataSource = dsExtRef
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
          object cxGridDBTableView2EXTSYS_ID: TcxGridDBColumn
            Caption = 'External System Code'
            DataBinding.FieldName = 'EXTSYS_ID'
            RepositoryItem = dmGlobal.luExternalSystem
            Width = 126
          end
          object cxGridDBTableView2EXTREF_CODE: TcxGridDBColumn
            Caption = 'External Reference Code'
            DataBinding.FieldName = 'EXTREF_CODE'
            Width = 371
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccount
    Left = 448
    Top = 272
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 152
    Top = 32
  end
  object dsCharge: TDataSource
    DataSet = cdsAccountCharge
    Left = 448
    Top = 368
  end
  object dsComm: TDataSource
    DataSet = cdsAccountComm
    Left = 448
    Top = 320
  end
  object dsBank: TDataSource
    DataSet = cdsAccountBank
    Left = 448
    Top = 416
  end
  object dsLedgerAcc: TDataSource
    DataSet = cdsAccountLedger
    Left = 648
    Top = 272
  end
  object dsExtRef: TDataSource
    DataSet = cdsAccountExtRef
    Left = 448
    Top = 464
  end
  object dsContact: TDataSource
    DataSet = cdsAccountContact
    Left = 648
    Top = 320
  end
  object dsCustody: TDataSource
    DataSet = cdsAccountCustody
    Left = 648
    Top = 408
  end
  object Repository: TcxEditRepository
    Left = 168
    Top = 496
    object luCashInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'LOCAL'
          ImageIndex = 0
          Value = 'LOCAL'
        end
        item
          Description = 'LLG'
          Value = 'LLG'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
    end
    object luStockDelInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DVP'
          ImageIndex = 0
          Value = 'DVP'
        end
        item
          Description = 'DFOP'
          Value = 'DFOP'
        end>
    end
    object luStockRecInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'RVP'
          ImageIndex = 0
          Value = 'RVP'
        end
        item
          Description = 'RFOP'
          Value = 'RFOP'
        end>
    end
    object luCustBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustBank
    end
    object luCustCustody: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCCUSTODYID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYACCNO'
        end
        item
          FieldName = 'CUSTODYACCNAME'
        end
        item
          FieldName = 'CUSTODYBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustCustody
    end
  end
  object cdsLuCustBank: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 576
    object cdsLuCustBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCustBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuCustBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuCustBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCustBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
  end
  object cdsLuCustCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 576
    object cdsLuCustCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCustCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCustCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 280
    Top = 576
  end
  object dsLuCustCustody: TDataSource
    DataSet = cdsLuCustCustody
    Left = 464
    Top = 576
  end
  object dsInterest: TDataSource
    DataSet = cdsAccountInterest
    Left = 648
    Top = 456
  end
  object cdsDefaultAccountContact: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryDefaultAcountContact'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 55
    Top = 492
    object cdsDefaultAccountContactACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDefaultAccountContactCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsDefaultAccountContactENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsDefaultAccountContactRET_HOMEPHONE: TStringField
      FieldName = 'RET_HOMEPHONE'
      ReadOnly = True
    end
    object cdsDefaultAccountContactRET_MOBILE: TStringField
      FieldName = 'RET_MOBILE'
      ReadOnly = True
    end
    object cdsDefaultAccountContactADDRESS: TStringField
      FieldName = 'ADDRESS'
      ReadOnly = True
      Size = 150
    end
    object cdsDefaultAccountContactRET_EMAIL: TStringField
      FieldName = 'RET_EMAIL'
      ReadOnly = True
      Size = 250
    end
    object cdsDefaultAccountContactRET_HOMEFAX: TStringField
      FieldName = 'RET_HOMEFAX'
      ReadOnly = True
    end
    object cdsDefaultAccountContactRET_IDCARDTYPE: TStringField
      FieldName = 'RET_IDCARDTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsDefaultAccountContactRET_IDCARDNO: TStringField
      FieldName = 'RET_IDCARDNO'
      ReadOnly = True
      Size = 30
    end
    object cdsDefaultAccountContactRET_IDCARDEXPIRE: TDateField
      FieldName = 'RET_IDCARDEXPIRE'
      ReadOnly = True
    end
  end
  object cdsAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
        Value = '139'
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccountAfterOpen
    OnNewRecord = cdsAccountNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 336
    Top = 272
    object cdsAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccountPRDCODE: TStringField
      FieldName = 'PRDCODE'
      OnChange = cdsAccountPRDCODEChange
      Size = 10
    end
    object cdsAccountACCCODE: TStringField
      Tag = -1
      FieldName = 'ACCCODE'
      Required = True
      OnChange = cdsAccountACCCODEChange
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
      Tag = -1
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
      OnChange = cdsAccountISWAPUChange
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
      Tag = -1
      FieldName = 'LASTTR_DATE'
      ReadOnly = True
      DisplayFormat = 'dd MMM yyyy'
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
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsAccountDORMANT: TStringField
      Tag = -1
      FieldName = 'DORMANT'
      Size = 1
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
    object cdsAccountqryAccountDataOwner: TDataSetField
      FieldName = 'qryAccountDataOwner'
    end
    object cdsAccountREFERRAL_ID_INT: TIntegerField
      FieldName = 'REFERRAL_ID_INT'
    end
    object cdsAccountREFERRAL_DESC_INT: TStringField
      DisplayLabel = 'Referral Description'
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'REFERRAL_DESC_INT'
      LookupDataSet = dmLookup.cdsLuReferral
      LookupKeyFields = 'REFERRAL_ID'
      LookupResultField = 'REFERRAL_DESC'
      KeyFields = 'REFERRAL_ID_INT'
      Size = 100
      Lookup = True
    end
    object cdsAccountREFERRAL_ID_EXT: TIntegerField
      FieldName = 'REFERRAL_ID_EXT'
    end
    object cdsAccountREFERRAL_DESC_EXT: TStringField
      DisplayLabel = 'Referral Description'
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'REFERRAL_DESC_EXT'
      LookupDataSet = dmLookup.cdsLuReferral
      LookupKeyFields = 'REFERRAL_ID'
      LookupResultField = 'REFERRAL_DESC'
      KeyFields = 'REFERRAL_ID_EXT'
      Size = 100
      Lookup = True
    end
    object cdsAccountCREATED_DATE: TDateField
      FieldName = 'CREATED_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsAccountqryAccountCreditLimit: TDataSetField
      FieldName = 'qryAccountCreditLimit'
    end
    object cdsAccountRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsAccountEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
    end
    object cdsAccountSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsAccountMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccountAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
    object cdsAccountTRANSFER_STATUS: TStringField
      FieldName = 'TRANSFER_STATUS'
      Size = 1
    end
    object cdsAccountSYNC: TStringField
      FieldName = 'SYNC'
      Size = 1
    end
    object cdsAccountYNC: TStringField
      FieldName = 'YNC'
      Size = 1
    end
    object cdsAccountCHKDUEDAYEXP: TStringField
      FieldName = 'CHKDUEDAYEXP'
      Size = 1
    end
    object cdsAccountDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsAccountDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsAccountDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsAccountDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsAccountSINVUSE: TStringField
      FieldName = 'SINVUSE'
      Size = 1
    end
    object cdsAccountWAPU_VALUE: TFloatField
      FieldName = 'WAPU_VALUE'
      DisplayFormat = '#,##0'
    end
    object cdsAccountWAPU_TYPE: TIntegerField
      FieldName = 'WAPU_TYPE'
    end
  end
  object cdsAccountComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccountqryAccountComm
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MARKETCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CHANNELCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CCYCODE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'COMM_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'NET_COMMID'
        DataType = ftLargeint
      end
      item
        Name = 'CALC_METHOD'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'USE_DAYTRADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'USE_MINCOMM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'WITH_SELLTAX'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 'cdsAccountCommIndex1'
        Fields = 'ACCID;MARKETCODE;CHANNELCODE'
        Options = [ixUnique]
      end>
    IndexName = 'cdsAccountCommIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 320
    object cdsAccountCommACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsAccountCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsAccountCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsAccountCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsAccountCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsAccountCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsAccountCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsAccountCommMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountCommMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountCommAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountCommAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountCommUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountCommUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountCommNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountCommISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountCommID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountCommDESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCommission
      LookupKeyFields = 'COMM_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'COMM_ID'
      Size = 50
      Lookup = True
    end
    object cdsAccountCommCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsAccountCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
    end
  end
  object cdsAccountCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccountqryAccountCharge
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MARKETCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CHARGE_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'ISUSED'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 'cdsAccountChargeIndex1'
        Fields = 'ACCID;MARKETCODE;CHARGE_ID'
        Options = [ixUnique]
      end>
    IndexName = 'cdsAccountChargeIndex1'
    Params = <>
    StoreDefs = True
    OnNewRecord = cdsAccountChargeNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 368
    object cdsAccountChargeACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountChargeMARKETCODE: TStringField
      DisplayLabel = 'Market'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsAccountChargeCHARGE_ID: TLargeintField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsAccountChargeISUSED: TStringField
      DisplayLabel = 'Use'
      FieldName = 'ISUSED'
      Size = 1
    end
    object cdsAccountChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountChargeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountChargeDESCRIPTION: TStringField
      DisplayLabel = 'Description Value'
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
    object cdsAccountChargeCHARGE_DESC: TStringField
      DisplayLabel = 'Charge Description'
      FieldKind = fkLookup
      FieldName = 'CHARGE_DESC'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'CHARGE_DESC'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
  end
  object cdsAccountBank: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforePost = cdsAccountBankBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 416
    object cdsAccountBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccountBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsAccountBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccountBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccountBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccountBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccountBankBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccountBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccountBankMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountBankMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountBankAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountBankAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountBankUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountBankUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountBankNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountBankISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountBankID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountBankCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsAccountBankACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsAccountBankBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsAccountBankCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsAccountBankBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
  end
  object cdsAccountExtRef: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsAccountqryAccountExtRef
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EXTSYS_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EXTREF_CODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 'cdsAccountExtRefIndex1'
        Fields = 'ACCID;EXTSYS_ID'
        Options = [ixUnique]
      end>
    IndexName = 'cdsAccountExtRefIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 464
    object cdsAccountExtRefACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountExtRefEXTSYS_ID: TIntegerField
      FieldName = 'EXTSYS_ID'
      Required = True
    end
    object cdsAccountExtRefEXTREF_CODE: TStringField
      FieldName = 'EXTREF_CODE'
      Required = True
      Size = 30
    end
    object cdsAccountExtRefMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountExtRefMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountExtRefAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountExtRefAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountExtRefUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountExtRefUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountExtRefNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountExtRefISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountExtRefID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccountContact: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccountqryAccountContact
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 320
    object cdsAccountContactACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountContactSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsAccountContactCONTNAME: TStringField
      FieldName = 'CONTNAME'
      Size = 150
    end
    object cdsAccountContactADDR_REF: TStringField
      FieldName = 'ADDR_REF'
      Size = 1
    end
    object cdsAccountContactADDRTYPE_REF: TStringField
      FieldName = 'ADDRTYPE_REF'
      Size = 10
    end
    object cdsAccountContactCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 5
    end
    object cdsAccountContactPROVCODE: TStringField
      FieldName = 'PROVCODE'
      Size = 10
    end
    object cdsAccountContactCITY: TStringField
      FieldName = 'CITY'
      Size = 10
    end
    object cdsAccountContactADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 60
    end
    object cdsAccountContactADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 60
    end
    object cdsAccountContactADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 60
    end
    object cdsAccountContactZIPCODE: TStringField
      FieldName = 'ZIPCODE'
    end
    object cdsAccountContactPHONE: TStringField
      FieldName = 'PHONE'
    end
    object cdsAccountContactMOBILEPHONE: TStringField
      FieldName = 'MOBILEPHONE'
      Size = 60
    end
    object cdsAccountContactEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsAccountContactFAX: TStringField
      FieldName = 'FAX'
      Size = 60
    end
    object cdsAccountContactIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsAccountContactIDCARDNO: TStringField
      FieldName = 'IDCARDNO'
      Size = 30
    end
    object cdsAccountContactIDCARDEXPIRE: TDateField
      FieldName = 'IDCARDEXPIRE'
    end
    object cdsAccountContactSENDBYEMAIL: TStringField
      FieldName = 'SENDBYEMAIL'
      Size = 1
    end
    object cdsAccountContactSENDBYFAX: TStringField
      FieldName = 'SENDBYFAX'
      Size = 1
    end
    object cdsAccountContactSENDBYSMS: TStringField
      FieldName = 'SENDBYSMS'
      Size = 1
    end
    object cdsAccountContactSENDBYPOSTMAIL: TStringField
      FieldName = 'SENDBYPOSTMAIL'
      Size = 1
    end
    object cdsAccountContactNOTIF_TC: TStringField
      FieldName = 'NOTIF_TC'
      Size = 1
    end
    object cdsAccountContactNOTIF_SOA: TStringField
      FieldName = 'NOTIF_SOA'
      Size = 1
    end
    object cdsAccountContactNOTIF_CORPACT: TStringField
      FieldName = 'NOTIF_CORPACT'
      Size = 1
    end
    object cdsAccountContactNOTIF_IDENTITY: TStringField
      FieldName = 'NOTIF_IDENTITY'
      Size = 1
    end
    object cdsAccountContactMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountContactMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountContactAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountContactAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountContactUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountContactUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountContactNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountContactISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountContactID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccountCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforePost = cdsAccountCustodyBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 408
    object cdsAccountCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsAccountCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsAccountCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsAccountCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsAccountCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsAccountCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccountCustodyMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountCustodyMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountCustodyAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountCustodyAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountCustodyUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountCustodyUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountCustodyNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountCustodyISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountCustodyID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountCustodyCUSTODYTYPE: TStringField
      FieldName = 'CUSTODYTYPE'
      Size = 1
    end
    object cdsAccountCustodyCBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
    object cdsAccountCustodyCUSTODY_DEFAULT: TStringField
      FieldName = 'CUSTODY_DEFAULT'
      Size = 1
    end
    object cdsAccountCustodySTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
  end
  object cdsAccountInterest: TNClientDataset
    Aggregates = <>
    DataSetField = cdsAccountqryAccountInterest
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CCY'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'INTERESTCODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PRINCIPLE_METHOD'
        DataType = ftInteger
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <
      item
        Name = 'cdsAccountInterestIndex1'
        Fields = 'ACCID;CCY'
        Options = [ixUnique]
      end>
    IndexName = 'cdsAccountInterestIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 456
    object cdsAccountInterestACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountInterestCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsAccountInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsAccountInterestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountInterestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountInterestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountInterestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountInterestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountInterestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountInterestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountInterestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountInterestID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountInterestPRINCIPLE_METHOD: TIntegerField
      FieldName = 'PRINCIPLE_METHOD'
    end
  end
  object cdsAccountLedger: TNClientDataset
    Aggregates = <>
    Params = <>
    AfterOpen = cdsAccountLedgerAfterOpen
    BeforePost = cdsAccountLedgerBeforePost
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 272
    object cdsAccountLedgerACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountLedgerSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
      OnChange = cdsAccountLedgerALTYPEChange
    end
    object cdsAccountLedgerALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      OnChange = cdsAccountLedgerALTYPEChange
      Size = 10
    end
    object cdsAccountLedgerALCODE: TStringField
      Tag = -1
      FieldName = 'ALCODE'
      Size = 30
    end
    object cdsAccountLedgerBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 30
    end
    object cdsAccountLedgerBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsAccountLedgerBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsAccountLedgerBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccountLedgerCALCINTEREST: TStringField
      FieldName = 'CALCINTEREST'
      Size = 1
    end
    object cdsAccountLedgerINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsAccountLedgerMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountLedgerMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountLedgerAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountLedgerAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountLedgerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountLedgerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountLedgerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountLedgerISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountLedgerID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BUSTYPEID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBusType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 40
    object cdsBusTypeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeBUSTYPECODE: TStringField
      FieldName = 'BUSTYPECODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeBUSTYPEDESC: TStringField
      FieldName = 'BUSTYPEDESC'
      Size = 50
    end
    object cdsBusTypeTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsBusTypeA_CLS_ORDER: TStringField
      FieldName = 'A_CLS_ORDER'
      Size = 1
    end
    object cdsBusTypeAVGPRICEDEC: TSmallintField
      FieldName = 'AVGPRICEDEC'
    end
    object cdsBusTypeOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsBusTypeCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsBusTypeSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsBusTypeISWAPU: TStringField
      FieldName = 'ISWAPU'
      Size = 1
    end
    object cdsBusTypeISUSEWHT: TStringField
      FieldName = 'ISUSEWHT'
      Size = 1
    end
    object cdsBusTypeISUSEOTC: TStringField
      FieldName = 'ISUSEOTC'
      Size = 1
    end
    object cdsBusTypeISOWNCONTACT: TStringField
      FieldName = 'ISOWNCONTACT'
      Size = 1
    end
    object cdsBusTypeISTRDACCOUNT: TStringField
      FieldName = 'ISTRDACCOUNT'
      Size = 1
    end
    object cdsBusTypeAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsBusTypeOMGUSE: TStringField
      FieldName = 'OMGUSE'
      Size = 1
    end
    object cdsBusTypeOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
    end
    object cdsBusTypeOMGALERT: TStringField
      FieldName = 'OMGALERT'
      Size = 1
    end
    object cdsBusTypeOMGSENDSSI: TStringField
      FieldName = 'OMGSENDSSI'
      Size = 1
    end
    object cdsBusTypeOMGSENDFEEINBLOCK: TStringField
      FieldName = 'OMGSENDFEEINBLOCK'
      Size = 1
    end
    object cdsBusTypeSI_SPLIT: TStringField
      FieldName = 'SI_SPLIT'
      Size = 1
    end
    object cdsBusTypeALCID: TIntegerField
      FieldName = 'ALCID'
    end
    object cdsBusTypeTALCID: TIntegerField
      FieldName = 'TALCID'
    end
    object cdsBusTypeCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
    end
    object cdsBusTypeCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
    end
    object cdsBusTypeCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsBusTypeBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsBusTypeSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
    object cdsBusTypeIS_IDX_TRX: TStringField
      FieldName = 'IS_IDX_TRX'
      Size = 1
    end
    object cdsBusTypeTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
    end
    object cdsBusTypeDEFTRDPARAM: TStringField
      FieldName = 'DEFTRDPARAM'
      Size = 30
    end
    object cdsBusTypeRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsBusTypeRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsBusTypeRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsBusTypeFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsBusTypeTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsBusTypeTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsBusTypeACCPASSWORD: TStringField
      FieldName = 'ACCPASSWORD'
      Size = 50
    end
    object cdsBusTypeCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsBusTypeBUS_CAT: TLargeintField
      FieldName = 'BUS_CAT'
    end
    object cdsBusTypeALLOC_TYPE: TStringField
      FieldName = 'ALLOC_TYPE'
      Size = 1
    end
    object cdsBusTypeTC_BASE: TStringField
      FieldName = 'TC_BASE'
      Size = 1
    end
    object cdsBusTypeAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsBusTypeDT_AUTOAVGPRICE: TStringField
      FieldName = 'DT_AUTOAVGPRICE'
      Size = 1
    end
    object cdsBusTypeSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 10
    end
    object cdsBusTypeNET_SETTLE: TStringField
      FieldName = 'NET_SETTLE'
      Size = 1
    end
    object cdsBusTypeSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsBusTypeDIVIDEN_TAX: TFloatField
      FieldName = 'DIVIDEN_TAX'
    end
    object cdsBusTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBusTypeqryBusTypeInterest: TDataSetField
      FieldName = 'qryBusTypeInterest'
    end
    object cdsBusTypeqryBusTypeComm: TDataSetField
      FieldName = 'qryBusTypeComm'
    end
    object cdsBusTypeqryBusTypeCharge: TDataSetField
      FieldName = 'qryBusTypeCharge'
    end
  end
  object cdsBusTypeCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeCharge
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 744
    Top = 40
    object cdsBusTypeChargeBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeChargeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsBusTypeChargeISUSED: TStringField
      FieldName = 'ISUSED'
      Required = True
      Size = 1
    end
    object cdsBusTypeChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeChargeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusTypeComm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeComm
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 792
    Top = 40
    object cdsBusTypeCommBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeCommMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeCommCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsBusTypeCommNET_COMMID: TLargeintField
      FieldName = 'NET_COMMID'
    end
    object cdsBusTypeCommCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsBusTypeCommUSE_DAYTRADE: TStringField
      FieldName = 'USE_DAYTRADE'
      Size = 1
    end
    object cdsBusTypeCommUSE_MINCOMM: TStringField
      FieldName = 'USE_MINCOMM'
      Size = 1
    end
    object cdsBusTypeCommWITH_SELLTAX: TStringField
      FieldName = 'WITH_SELLTAX'
      Size = 1
    end
    object cdsBusTypeCommMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeCommMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeCommAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeCommAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeCommUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeCommUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeCommNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeCommISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeCommID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBusTypeInterest: TNClientDataset
    Aggregates = <>
    DataSetField = cdsBusTypeqryBusTypeInterest
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 840
    Top = 40
    object cdsBusTypeInterestBUSTYPEID: TLargeintField
      FieldName = 'BUSTYPEID'
      Required = True
    end
    object cdsBusTypeInterestCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBusTypeInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsBusTypeInterestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBusTypeInterestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBusTypeInterestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBusTypeInterestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBusTypeInterestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBusTypeInterestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBusTypeInterestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBusTypeInterestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBusTypeInterestID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsAccCreditLimit: TNClientDataset
    Tag = -1
    Aggregates = <>
    DataSetField = cdsAccountqryAccountCreditLimit
    FieldDefs = <
      item
        Name = 'ACCID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CCCLS_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CCLSSNAME'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CC_TYPE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TL_CASHVALUATE'
        DataType = ftFloat
      end
      item
        Name = 'TL_STOCKVALUATE'
        DataType = ftFloat
      end
      item
        Name = 'TLB_OVERLIMIT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLB_NOTVALIDSTATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLB_MRG_NONVALSTOCK'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLB_OVERDUE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLS_SHORTSELL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLS_NOTVALIDSTATUS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TLS_OVERDUE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RATIO_MRGCALL'
        DataType = ftFloat
      end
      item
        Name = 'RATIO_MRGWARING'
        DataType = ftFloat
      end
      item
        Name = 'RATIO_FORCESELL'
        DataType = ftFloat
      end
      item
        Name = 'FORCESELL_DAY'
        DataType = ftInteger
      end
      item
        Name = 'CR_VAL'
        DataType = ftFloat
      end
      item
        Name = 'BUY_LIMIT'
        DataType = ftFloat
      end
      item
        Name = 'SELL_LIMIT'
        DataType = ftFloat
      end
      item
        Name = 'CREDIT_LIMIT'
        DataType = ftFloat
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'BUYAPPROVEMETHODE'
        DataType = ftInteger
      end
      item
        Name = 'SELLAPPROVEMETHODE'
        DataType = ftInteger
      end
      item
        Name = 'MCALLDAY'
        DataType = ftInteger
      end
      item
        Name = 'EMAILID'
        DataType = ftLargeint
      end
      item
        Name = 'SENDID'
        DataType = ftLargeint
      end
      item
        Name = 'LASTSENDMAIL'
        DataType = ftDate
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LASTUPDATEMCALLALERT'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'cdsAccountCreditLimitIndex1'
        Fields = 'ACCID;CCCLS_ID'
        Options = [ixUnique]
      end>
    IndexName = 'cdsAccountCreditLimitIndex1'
    Params = <>
    StoreDefs = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 520
    object cdsAccCreditLimitACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccCreditLimitCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsAccCreditLimitCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsAccCreditLimitCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsAccCreditLimitTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsAccCreditLimitTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsAccCreditLimitTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsAccCreditLimitRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitCR_VAL: TFloatField
      FieldName = 'CR_VAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitCREDIT_LIMIT: TFloatField
      FieldName = 'CREDIT_LIMIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccCreditLimitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccCreditLimitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccCreditLimitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccCreditLimitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccCreditLimitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccCreditLimitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccCreditLimitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccCreditLimitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccCreditLimitID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccCreditLimitBUYAPPROVEMETHODE: TIntegerField
      FieldName = 'BUYAPPROVEMETHODE'
    end
    object cdsAccCreditLimitSELLAPPROVEMETHODE: TIntegerField
      FieldName = 'SELLAPPROVEMETHODE'
    end
    object cdsAccCreditLimitMCALLDAY: TIntegerField
      FieldName = 'MCALLDAY'
    end
    object cdsAccCreditLimitEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsAccCreditLimitSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsAccCreditLimitLASTSENDMAIL: TDateField
      FieldName = 'LASTSENDMAIL'
    end
    object cdsAccCreditLimitSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object dsAccCreditLimit: TDataSource
    DataSet = cdsAccCreditLimit
    Left = 448
    Top = 520
  end
  object cdsChargeByBusType: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BUSTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBusTypeByCharge'
    RemoteServer = dmGlobal.dspConnection
    Left = 609
    Top = 209
    object cdsChargeByBusTypeMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsChargeByBusTypeCHARGE_CODE: TStringField
      DisplayLabel = 'Charge Code'
      FieldName = 'CHARGE_CODE'
      ReadOnly = True
    end
    object cdsChargeByBusTypeCHARGE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHARGE_DESC'
      ReadOnly = True
      Size = 50
    end
  end
  object dsChargeByBusType: TDataSource
    DataSet = cdsChargeByBusType
    Left = 249
    Top = 281
  end
  object cdsCrdConClassByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CCCLS_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCrdConClassByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 598
    Top = 523
    object cdsCrdConClassByParamCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsCrdConClassByParamCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsCrdConClassByParamCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsCrdConClassByParamTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsCrdConClassByParamTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsCrdConClassByParamRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsCrdConClassByParamRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsCrdConClassByParamFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsCrdConClassByParamCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsCrdConClassByParamBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsCrdConClassByParamSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
  end
end
