inherited frmInstrumentBond: TfrmInstrumentBond
  Caption = 'Instrument Bond'
  ClientHeight = 617
  ClientWidth = 760
  ExplicitTop = 7
  ExplicitWidth = 766
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 488
    Height = 527
    ExplicitWidth = 488
    ExplicitHeight = 527
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 123
      Top = 10
      DataBinding.DataField = 'INSTRUMENT_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = cxDBTextEdit1Exit
      Width = 169
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 355
      Top = 10
      DataBinding.DataField = 'LOCALCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [2]
      Left = 123
      Top = 91
      DataBinding.DataField = 'REGIONALBONDS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Local'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Foreign'
          Value = '2'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
      Left = 355
      Top = 118
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 123
      Top = 37
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 353
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 123
      Top = 64
      DataBinding.DataField = 'LONGNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 353
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [6]
      Left = 123
      Top = 145
      DataBinding.DataField = 'CATEGORY'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Corporate'
          ImageIndex = 0
          Value = 'Corporate'
        end
        item
          Description = 'Government'
          Value = 'Government'
        end
        item
          Description = 'Euroclear'
          Value = 'Euroclear'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [7]
      Left = 123
      Top = 172
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 178
    end
    object cxDBDateEdit1: TcxDBDateEdit [8]
      Left = 359
      Top = 172
      DataBinding.DataField = 'ISINDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 117
    end
    object cxDBTextEdit6: TcxDBTextEdit [9]
      Left = 123
      Top = 199
      DataBinding.DataField = 'RATING'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [10]
      Left = 355
      Top = 199
      DataBinding.DataField = 'REMARKS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'lmob'
          ImageIndex = 0
          Value = 'Imob'
        end
        item
          Description = 'Script'
          Value = 'Script'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [11]
      Left = 123
      Top = 226
      DataBinding.DataField = 'MATURITYDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [12]
      Left = 123
      Top = 253
      DataBinding.DataField = 'COMMONCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [13]
      Left = 355
      Top = 253
      DataBinding.DataField = 'EFFECTIVEDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [14]
      Left = 123
      Top = 334
      DataBinding.DataField = 'OFFERING_PERIODBEG'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 18
      Width = 121
    end
    object cxDBDateEdit5: TcxDBDateEdit [15]
      Left = 355
      Top = 334
      DataBinding.DataField = 'OFFERING_PERIODEND'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [16]
      Left = 123
      Top = 280
      DataBinding.DataField = 'ISSUERNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 353
    end
    object cxDBDateEdit6: TcxDBDateEdit [17]
      Left = 123
      Top = 307
      DataBinding.DataField = 'ISSUEDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 121
    end
    object cxDBDateEdit7: TcxDBDateEdit [18]
      Left = 123
      Top = 361
      DataBinding.DataField = 'LISTINGDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 20
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [19]
      Left = 355
      Top = 361
      DataBinding.DataField = 'NO_OFCERTIFICATES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [20]
      Left = 123
      Top = 388
      DataBinding.DataField = 'LEAD_UNDERWRITER'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 353
    end
    object cxDBTextEdit11: TcxDBTextEdit [21]
      Left = 123
      Top = 415
      DataBinding.DataField = 'SELLING_AGENT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 353
    end
    object cxDBTextEdit12: TcxDBTextEdit [22]
      Left = 123
      Top = 442
      DataBinding.DataField = 'TRUSTEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 353
    end
    object cxDBImageComboBox4: TcxDBImageComboBox [23]
      Left = 123
      Top = 469
      DataBinding.DataField = 'ACCRUEDTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Konvensional'
          ImageIndex = 0
          Value = 'K'
        end
        item
          Description = 'Ijarah'
          Value = 'I'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 25
      Width = 121
    end
    object cxDBImageComboBox5: TcxDBImageComboBox [24]
      Left = 123
      Top = 496
      DataBinding.DataField = 'CALCULATE_DAYS_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = '30/360'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Actual/Actual'
          Value = 1
        end
        item
          Description = 'Actual/360'
          Value = 2
        end
        item
          Description = 'Actual/365'
          Value = 3
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 26
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [25]
      Left = 355
      Top = 496
      DataBinding.DataField = 'COUPON_IN_YEAR'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 50
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [26]
      Left = 123
      Top = 118
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      OnExit = cxDBLookupComboBox2Exit
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [27]
      Left = 355
      Top = 91
      DataBinding.DataField = 'LASTCLSPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Local Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Short Name'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Long Name'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 324
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Category'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'ISIN Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 117
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
      Index = 6
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rating'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Remark'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Common Code'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Effective Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Begin Offering Periode'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'End Offering Periode'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Issuer Name'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Issued Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'No Of Certificate'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Lead Underwriter'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Selling Agent'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trustee'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Acrued Type'
      Control = cxDBImageComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Method'
      Control = cxDBImageComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Coupon/Year'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Last Closing Price'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 548
    Width = 760
    ExplicitTop = 548
    ExplicitWidth = 760
    inherited btnOK: TcxButton
      ModalResult = 1
    end
    inherited dbNavLog: TDBNavigator
      Left = 646
      Hints.Strings = ()
      ExplicitLeft = 646
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 597
    Width = 760
    ExplicitTop = 597
    ExplicitWidth = 760
  end
  inherited tabEditorData: TTabSet
    Top = 527
    Width = 760
    ExplicitTop = 527
    ExplicitWidth = 760
  end
  object cxGrid1: TcxGrid [4]
    Left = 488
    Top = 0
    Width = 272
    Height = 527
    Align = alRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object gvwCouponPayment: TcxGridDBBandedTableView
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
      DataController.DataSource = dsCouponPayment
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwCouponPaymentCOUPONDATE: TcxGridDBBandedColumn
        Caption = 'Payment Date'
        DataBinding.FieldName = 'COUPONDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCouponPaymentINTERESTRATE: TcxGridDBBandedColumn
        Caption = 'Interest Rate'
        DataBinding.FieldName = 'INTERESTRATE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCouponPaymentRECORDINGDATE: TcxGridDBBandedColumn
        Caption = 'Recording Date'
        DataBinding.FieldName = 'RECORDINGDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCouponPayment
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsInstrumentBond
    Left = 513
    Top = 76
  end
  object dsCouponPayment: TDataSource
    DataSet = cdsCouponPayment
    Left = 567
    Top = 99
  end
  object cdsInstrumentBond: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryInstrumentBond'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 609
    Top = 234
    object cdsInstrumentBondINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentBondINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentBondLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsInstrumentBondMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentBondINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentBondSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 50
    end
    object cdsInstrumentBondLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 50
    end
    object cdsInstrumentBondISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 30
    end
    object cdsInstrumentBondCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInstrumentBondISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentBondISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsInstrumentBondMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsInstrumentBondSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsInstrumentBondDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsInstrumentBondLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsInstrumentBondLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      DisplayFormat = '#,##0%;(#,##0)%;0'
    end
    object cdsInstrumentBondLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsInstrumentBondSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsInstrumentBondMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInstrumentBondMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInstrumentBondAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInstrumentBondAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInstrumentBondISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInstrumentBondID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInstrumentBondCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsInstrumentBondMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsInstrumentBondRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsInstrumentBondREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsInstrumentBondEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsInstrumentBondOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsInstrumentBondOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsInstrumentBondISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsInstrumentBondNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsInstrumentBondLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsInstrumentBondSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsInstrumentBondTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsInstrumentBondCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsInstrumentBondCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsInstrumentBondCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsInstrumentBondDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsInstrumentBondREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsInstrumentBondCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsInstrumentBondACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsInstrumentBondDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsInstrumentBondACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsInstrumentBondDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
    object cdsInstrumentBondqryCouponPayment: TDataSetField
      FieldName = 'qryCouponPayment'
    end
  end
  object cdsCouponPayment: TNClientDataset
    Aggregates = <>
    DataSetField = cdsInstrumentBondqryCouponPayment
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'COUPONPAYMENTID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 609
    Top = 282
    object cdsCouponPaymentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsCouponPaymentCOUPONPAYMENTID: TIntegerField
      FieldName = 'COUPONPAYMENTID'
      Required = True
    end
    object cdsCouponPaymentCOUPONDATE: TDateTimeField
      FieldName = 'COUPONDATE'
      Required = True
    end
    object cdsCouponPaymentINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsCouponPaymentRECORDINGDATE: TDateTimeField
      FieldName = 'RECORDINGDATE'
    end
    object cdsCouponPaymentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCouponPaymentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCouponPaymentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCouponPaymentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCouponPaymentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCouponPaymentID: TLargeintField
      FieldName = 'ID'
    end
  end
end
