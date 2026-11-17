inherited frmCorpAct: TfrmCorpAct
  Caption = 'Corporate Action Announce'
  ClientHeight = 758
  ClientWidth = 1075
  ExplicitWidth = 1091
  ExplicitHeight = 797
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1075
    Height = 136
    Align = alTop
    ExplicitWidth = 1075
    ExplicitHeight = 136
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 74
      Top = 10
      DataBinding.DataField = 'CAID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 98
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 74
      Top = 37
      TabStop = False
      DataBinding.DataField = 'CANO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 347
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [2]
      Left = 74
      Top = 64
      RepositoryItem = dmGlobal.luInstrumentAll
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Inatrument Code'
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Instrument Name'
          FieldName = 'SHORTNAME'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentAll
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      OnExit = cxDBLookupComboBox2Exit
      Width = 98
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 178
      Top = 64
      TabStop = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 240
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 74
      Top = 91
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 192
    end
    object cxButton1: TcxButton [5]
      Left = 898
      Top = 28
      Width = 136
      Height = 25
      Caption = 'Generate Entitlement'
      TabOrder = 12
      OnClick = cxButton1Click
    end
    object txtCAType: TcxTextEdit [6]
      Left = 248
      Top = 10
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 141
    end
    object cxButton2: TcxButton [7]
      Left = 898
      Top = 59
      Width = 136
      Height = 25
      Caption = 'Print Entitlement'
      TabOrder = 13
    end
    object cxDBDateEdit53: TcxDBDateEdit [8]
      Left = 534
      Top = 28
      DataBinding.DataField = 'NGRG_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBDateEdit54: TcxDBDateEdit [9]
      Left = 747
      Top = 28
      DataBinding.DataField = 'NGRG_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit55: TcxDBDateEdit [10]
      Left = 534
      Top = 55
      DataBinding.DataField = 'TN_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit56: TcxDBDateEdit [11]
      Left = 747
      Top = 55
      DataBinding.DataField = 'TN_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBDateEdit57: TcxDBDateEdit [12]
      Left = 534
      Top = 82
      DataBinding.DataField = 'RECDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBDateEdit58: TcxDBDateEdit [13]
      Left = 747
      Top = 82
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CorpAct ID'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CorpAct No.'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 347
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 192
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = CorpActButton
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object CorpActButton: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Corpact Type'
      Control = txtCAType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = CorpActButton
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl8Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cum Date (RG/NG)'
      Control = cxDBDateEdit53
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl8Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ex Date (RG/NG)'
      Control = cxDBDateEdit54
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl8Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cum Date (TN)'
      Control = cxDBDateEdit55
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl8Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ex Date (TN)'
      Control = cxDBDateEdit56
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl8Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Recording Date'
      Control = cxDBDateEdit57
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl8Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Payment Date'
      Control = cxDBDateEdit58
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 689
    Width = 1075
    ExplicitTop = 689
    ExplicitWidth = 1075
    inherited dbNavLog: TDBNavigator
      Left = 961
      Hints.Strings = ()
      ExplicitLeft = 961
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 738
    Width = 1075
    ExplicitTop = 738
    ExplicitWidth = 1075
  end
  inherited tabEditorData: TTabSet
    Top = 668
    Width = 1075
    ExplicitTop = 668
    ExplicitWidth = 1075
  end
  object pageAnnouncement: TcxPageControl [4]
    Left = 0
    Top = 136
    Width = 1075
    Height = 532
    Hint = 'HMETD'
    Align = alClient
    ParentBackground = False
    TabOrder = 4
    Properties.ActivePage = tsHMETD
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 9
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    ClientRectBottom = 532
    ClientRectRight = 1075
    ClientRectTop = 20
    object tsHMETD: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 5
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Hint = 'HMETD'
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 168
          Top = 28
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 100
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 381
          Top = 28
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 100
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 381
          Top = 55
          DataBinding.DataField = 'GET_RI_QTY'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 100
        end
        object cxDBCurrencyEdit18: TcxDBCurrencyEdit
          Left = 168
          Top = 55
          DataBinding.DataField = 'BASE_RI_QTY'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 100
        end
        object cxDBCurrencyEdit19: TcxDBCurrencyEdit
          Left = 540
          Top = 55
          DataBinding.DataField = 'RI_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 100
        end
        object cxDBCurrencyEdit20: TcxDBCurrencyEdit
          Left = 168
          Top = 109
          DataBinding.DataField = 'BASE_WR_QTY'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 100
        end
        object cxDBCurrencyEdit21: TcxDBCurrencyEdit
          Left = 381
          Top = 109
          DataBinding.DataField = 'GET_WR_QTY'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 8
          Width = 100
        end
        object cxDBCurrencyEdit24: TcxDBCurrencyEdit
          Left = 540
          Top = 109
          DataBinding.DataField = 'WR_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 10
          Width = 100
        end
        object cxDBDateEdit35: TcxDBDateEdit
          Left = 381
          Top = 136
          DataBinding.DataField = 'DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 100
        end
        object cxDBDateEdit36: TcxDBDateEdit
          Left = 168
          Top = 274
          DataBinding.DataField = 'RI_STR_LISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 100
        end
        object cxDBDateEdit37: TcxDBDateEdit
          Left = 168
          Top = 301
          DataBinding.DataField = 'RI_STR_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 15
          Width = 100
        end
        object cxDBDateEdit38: TcxDBDateEdit
          Left = 168
          Top = 328
          DataBinding.DataField = 'RI_STR_EXERDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 17
          Width = 100
        end
        object cxDBDateEdit39: TcxDBDateEdit
          Left = 381
          Top = 301
          DataBinding.DataField = 'RI_END_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 16
          Width = 100
        end
        object cxDBDateEdit40: TcxDBDateEdit
          Left = 381
          Top = 328
          DataBinding.DataField = 'RI_END_EXERDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 18
          Width = 100
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 168
          Top = 193
          DataBinding.DataField = 'RIGHTCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 168
          Top = 247
          DataBinding.DataField = 'RI_ISINCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 169
        end
        object cxDBDateEdit41: TcxDBDateEdit
          Left = 168
          Top = 355
          DataBinding.DataField = 'STR_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 19
          Width = 100
        end
        object cxDBDateEdit42: TcxDBDateEdit
          Left = 381
          Top = 355
          DataBinding.DataField = 'END_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 20
          Width = 100
        end
        object cxDBDateEdit44: TcxDBDateEdit
          Left = 168
          Top = 382
          DataBinding.DataField = 'RI_LASTPAY_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 21
          Width = 100
        end
        object cxDBDateEdit45: TcxDBDateEdit
          Left = 168
          Top = 409
          DataBinding.DataField = 'ALLOTMENT_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 22
          Width = 100
        end
        object cxDBDateEdit46: TcxDBDateEdit
          Left = 168
          Top = 436
          DataBinding.DataField = 'REFUND_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 23
          Width = 100
        end
        object cxDBCurrencyEdit22: TcxDBCurrencyEdit
          Left = 168
          Top = 463
          DataBinding.DataField = 'RI_EXER_ADM_FEE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 24
          Width = 100
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 634
          Top = 193
          DataBinding.DataField = 'WAARANTCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 25
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 634
          Top = 247
          DataBinding.DataField = 'WR_ISINCODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 27
          Width = 198
        end
        object cxDBDateEdit47: TcxDBDateEdit
          Left = 634
          Top = 274
          DataBinding.DataField = 'WR_STR_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 28
          Width = 100
        end
        object cxDBDateEdit48: TcxDBDateEdit
          Left = 634
          Top = 301
          DataBinding.DataField = 'RGNG_WR_STR_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 29
          Width = 100
        end
        object cxDBDateEdit49: TcxDBDateEdit
          Left = 634
          Top = 328
          DataBinding.DataField = 'TN_WR_STR_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 30
          Width = 100
        end
        object cxDBDateEdit50: TcxDBDateEdit
          Left = 634
          Top = 355
          DataBinding.DataField = 'WR_STR_EXERDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 31
          Width = 100
        end
        object cxDBDateEdit51: TcxDBDateEdit
          Left = 634
          Top = 382
          DataBinding.DataField = 'WR_END_EXERDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 32
          Width = 100
        end
        object cxDBDateEdit52: TcxDBDateEdit
          Left = 634
          Top = 409
          DataBinding.DataField = 'WR_EXPDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 33
          Width = 100
        end
        object cxDBCurrencyEdit23: TcxDBCurrencyEdit
          Left = 168
          Top = 82
          DataBinding.DataField = 'EXER_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 100
        end
        object cxDBCurrencyEdit25: TcxDBCurrencyEdit
          Left = 168
          Top = 136
          DataBinding.DataField = 'WR_EXER_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Width = 100
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 168
          Top = 220
          DataBinding.DataField = 'RIGTHNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 235
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 634
          Top = 220
          DataBinding.DataField = 'WARRANTNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 26
          Width = 261
        end
        object dxLayoutControl7Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl7Group1: TdxLayoutGroup
          Parent = dxLayoutControl7Group3
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl7Group3: TdxLayoutGroup
          Parent = dxLayoutControl7Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item1: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Every Script (Qty)'
          Control = cxDBCurrencyEdit15
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item2: TdxLayoutItem
          Parent = dxLayoutControl7Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Get HMETD (Qty)'
          Control = cxDBCurrencyEdit16
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item3: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Can Buy Script (Qty)'
          Control = cxDBCurrencyEdit17
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
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
          Index = 0
        end
        object dxLayoutControl7Item4: TdxLayoutItem
          Parent = dxLayoutControl7Group19
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Every HMETD (Qty)'
          Control = cxDBCurrencyEdit18
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group4: TdxLayoutGroup
          Parent = dxLayoutControl7Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item5: TdxLayoutItem
          Parent = dxLayoutControl7Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'With Price'
          Control = cxDBCurrencyEdit19
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item6: TdxLayoutItem
          Parent = dxLayoutControl7Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Every HMETD (Qty)'
          Control = cxDBCurrencyEdit20
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item7: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Get Warrant (Qty)'
          Control = cxDBCurrencyEdit21
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group7: TdxLayoutGroup
          Parent = dxLayoutControl7Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group8: TdxLayoutGroup
          Parent = dxLayoutControl7Group4
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item10: TdxLayoutItem
          Parent = dxLayoutControl7Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'With Price'
          Control = cxDBCurrencyEdit24
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item14: TdxLayoutItem
          Parent = dxLayoutControl7Group12
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Distribution Date'
          Control = cxDBDateEdit35
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item15: TdxLayoutItem
          Parent = dxLayoutControl7Group15
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'HMETD Listing Date'
          Control = cxDBDateEdit36
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item16: TdxLayoutItem
          Parent = dxLayoutControl7Group13
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'HMETD Trade Period'
          Control = cxDBDateEdit37
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item17: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'HMETD Exercise Period'
          Control = cxDBDateEdit38
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item18: TdxLayoutItem
          Parent = dxLayoutControl7Group13
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'To'
          Control = cxDBDateEdit39
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group14: TdxLayoutGroup
          Parent = dxLayoutControl7Group9
          CaptionOptions.Text = 'Right'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl7Item19: TdxLayoutItem
          Parent = dxLayoutControl7Group11
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'To'
          Control = cxDBDateEdit40
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group6: TdxLayoutGroup
          Parent = dxLayoutControl7Group14
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group10: TdxLayoutGroup
          Parent = dxLayoutControl7Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item20: TdxLayoutItem
          Parent = dxLayoutControl7Group15
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Right Code'
          Control = cxDBTextEdit5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item21: TdxLayoutItem
          Parent = dxLayoutControl7Group15
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ISIN Code'
          Control = cxDBTextEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 169
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item22: TdxLayoutItem
          Parent = dxLayoutControl7Group22
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Distribute Exercise Period'
          Control = cxDBDateEdit41
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item23: TdxLayoutItem
          Parent = dxLayoutControl7Group22
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'To'
          Control = cxDBDateEdit42
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group18: TdxLayoutGroup
          Parent = dxLayoutControl7Group6
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group11: TdxLayoutGroup
          Parent = dxLayoutControl7Group6
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item11: TdxLayoutItem
          Parent = dxLayoutControl7Group18
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Additional Last Payment Date'
          Control = cxDBDateEdit44
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item25: TdxLayoutItem
          Parent = dxLayoutControl7Group18
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Allotment Date'
          Control = cxDBDateEdit45
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item26: TdxLayoutItem
          Parent = dxLayoutControl7Group18
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Payment Return Date'
          Control = cxDBDateEdit46
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item27: TdxLayoutItem
          Parent = dxLayoutControl7Group18
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Exercise Admin Fee'
          Control = cxDBCurrencyEdit22
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl7Group17: TdxLayoutGroup
          Parent = dxLayoutControl7Group10
          CaptionOptions.Text = 'Warrant'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl7Item28: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Warrant Code'
          Control = cxDBTextEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item29: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ISIN Code'
          Control = cxDBTextEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 198
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl7Item30: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Start Trade Date'
          Control = cxDBDateEdit47
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl7Item31: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'End Trade Date (RG/NG)'
          Control = cxDBDateEdit48
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl7Item32: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'End Trade Date (TN)'
          Control = cxDBDateEdit49
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl7Item33: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Start Exercise Date'
          Control = cxDBDateEdit50
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl7Item34: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'End Exercise Date'
          Control = cxDBDateEdit51
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl7Item35: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Expire Date'
          Control = cxDBDateEdit52
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutControl7Item36: TdxLayoutItem
          Parent = dxLayoutControl7Group19
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'HMETD Exercise Price'
          Control = cxDBCurrencyEdit23
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group19: TdxLayoutGroup
          Parent = dxLayoutControl7Group8
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item37: TdxLayoutItem
          Parent = dxLayoutControl7Group20
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Warrant Exercise Price'
          Control = cxDBCurrencyEdit25
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group20: TdxLayoutGroup
          Parent = dxLayoutControl7Group7
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Item38: TdxLayoutItem
          Parent = dxLayoutControl7Group15
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Right Name'
          Control = cxDBTextEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 235
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Item39: TdxLayoutItem
          Parent = dxLayoutControl7Group17
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Warrant Name'
          Control = cxDBTextEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 261
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group12: TdxLayoutGroup
          Parent = dxLayoutControl7Group7
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl7Group2: TdxLayoutGroup
          Parent = dxLayoutControl7Group14
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group22: TdxLayoutGroup
          Parent = dxLayoutControl7Group18
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group15: TdxLayoutGroup
          Parent = dxLayoutControl7Group2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl7Group13: TdxLayoutGroup
          Parent = dxLayoutControl7Group15
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutControl7Group9: TdxLayoutGroup
          Parent = dxLayoutControl7Group10
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tsCashDividen: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 2
      object st: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Hint = 'Cash Deviden'
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 128
          Top = 28
          Hint = 'Cash Deviden'
          DataBinding.DataField = 'BASE_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 68
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 443
          Top = 28
          DataBinding.DataField = 'GET_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 133
        end
        object cxDBCurrencyEdit26: TcxDBCurrencyEdit
          Left = 128
          Top = 85
          DataBinding.DataField = 'LOCAL_TAX'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0.0000 %'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit27: TcxDBCurrencyEdit
          Left = 317
          Top = 85
          DataBinding.DataField = 'FOR_TAX'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = '#,##0.0000 %'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 251
          Top = 28
          RepositoryItem = dmGlobal.luCurrency
          DataBinding.DataField = 'CCYCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 59
        end
        object stGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object stGroup1: TdxLayoutGroup
          Parent = stGroup3
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object stItem2: TdxLayoutItem
          Parent = stGroup1
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit7
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 68
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object stItem1: TdxLayoutItem
          Parent = stGroup1
          CaptionOptions.Text = 'Will Receive Cash Dividen'
          Control = cxDBCurrencyEdit8
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 133
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object stGroup3: TdxLayoutGroup
          Parent = stGroup_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object stGroup6: TdxLayoutGroup
          Parent = stGroup_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object stItem9: TdxLayoutItem
          Parent = stGroup6
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Local Tax'
          Control = cxDBCurrencyEdit26
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object stItem10: TdxLayoutItem
          Parent = stGroup6
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Foreign Tax'
          Control = cxDBCurrencyEdit27
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object stItem11: TdxLayoutItem
          Parent = stGroup1
          CaptionOptions.Text = 'Currency'
          Control = cxDBLookupComboBox3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 59
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object tsStockDividen: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Hint = 'Stock Deviden'
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit9: TcxDBCurrencyEdit
          Left = 133
          Top = 28
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 419
          Top = 28
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
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
          Parent = dxLayoutControl5Group_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl5Item7: TdxLayoutItem
          Parent = dxLayoutControl5Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Every Script (Qty)'
          Control = cxDBCurrencyEdit9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item8: TdxLayoutItem
          Parent = dxLayoutControl5Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Receive Script Dividen (Qty)'
          Control = cxDBCurrencyEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object tsDividenMix: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl8: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Hint = 'Stock Mix'
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit28: TcxDBCurrencyEdit
          Left = 149
          Top = 28
          DataBinding.DataField = 'BASE_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit29: TcxDBCurrencyEdit
          Left = 149
          Top = 82
          DataBinding.DataField = 'GET_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxDBCurrencyEdit30: TcxDBCurrencyEdit
          Left = 439
          Top = 139
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.000000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBCurrencyEdit31: TcxDBCurrencyEdit
          Left = 149
          Top = 196
          DataBinding.DataField = 'LOCAL_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxDBCurrencyEdit32: TcxDBCurrencyEdit
          Left = 439
          Top = 196
          DataBinding.DataField = 'FOR_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 149
          Top = 55
          DataBinding.DataField = 'CCYCODE'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 68
        end
        object cxDBCurrencyEdit34: TcxDBCurrencyEdit
          Left = 149
          Top = 139
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object dxLayoutControl8Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl8Group1: TdxLayoutGroup
          Parent = dxLayoutControl8Group4
          CaptionOptions.Text = 'Cash Deviden'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl8Group3: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutControl8Group4: TdxLayoutGroup
          Parent = dxLayoutControl8Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item1: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit28
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item2: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Receive Cash Dividen'
          Control = cxDBCurrencyEdit29
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl8Item3: TdxLayoutItem
          Parent = dxLayoutControl8Group9
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Receive Script Divident (Qty)'
          Control = cxDBCurrencyEdit30
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item10: TdxLayoutItem
          Parent = dxLayoutControl8Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Local Tax'
          Control = cxDBCurrencyEdit31
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Item11: TdxLayoutItem
          Parent = dxLayoutControl8Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Foreign Tax'
          Control = cxDBCurrencyEdit32
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Item12: TdxLayoutItem
          Parent = dxLayoutControl8Group7
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Currency'
          Control = cxDBLookupComboBox4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 68
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl8Group9: TdxLayoutGroup
          Parent = dxLayoutControl8Group4
          CaptionOptions.Text = 'Stock Deviden'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutControl8Item13: TdxLayoutItem
          Parent = dxLayoutControl8Group9
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit34
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl8Group7: TdxLayoutGroup
          Parent = dxLayoutControl8Group1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tsStockBonus: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 156
          Top = 28
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 91
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 398
          Top = 28
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 89
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          Parent = dxLayoutControl4Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script Ratio (Qty)'
          Control = cxDBCurrencyEdit5
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 91
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          Parent = dxLayoutControl4Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Receive New Script (Qty)'
          Control = cxDBCurrencyEdit6
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 89
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          Parent = dxLayoutControl4Group_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          Parent = dxLayoutControl4Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tsStockSplit: TcxTabSheet
      Caption = 'Announcement'
      Color = clBtnFace
      ImageIndex = 0
      ParentColor = False
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 128
          Top = 28
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 370
          Top = 28
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
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
          Parent = dxLayoutControl3Group7
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          Parent = dxLayoutControl3Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will Be Splited To (Qty)'
          Control = cxDBCurrencyEdit2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group3: TdxLayoutGroup
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group8: TdxLayoutGroup
          Parent = dxLayoutControl3Group3
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
    end
    object tsStockReverse: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBDateEdit26: TcxDBDateEdit
          Left = 390
          Top = 109
          DataBinding.DataField = 'DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit28: TcxDBDateEdit
          Left = 390
          Top = 82
          DataBinding.DataField = 'RI_STR_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 121
        end
        object cxDBCurrencyEdit11: TcxDBCurrencyEdit
          Left = 128
          Top = 28
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCurrencyEdit12: TcxDBCurrencyEdit
          Left = 390
          Top = 28
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBCurrencyEdit13: TcxDBCurrencyEdit
          Left = 128
          Top = 55
          DataBinding.DataField = 'BASE_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBCurrencyEdit14: TcxDBCurrencyEdit
          Left = 390
          Top = 55
          DataBinding.DataField = 'GET_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit29: TcxDBDateEdit
          Left = 128
          Top = 82
          DataBinding.DataField = 'END_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 121
        end
        object cxDBDateEdit30: TcxDBDateEdit
          Left = 390
          Top = 136
          DataBinding.DataField = 'STR_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 121
        end
        object dxLayoutControl6Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl6Group2: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          Index = -1
        end
        object dxLayoutControl4Group5: TdxLayoutGroup
          Parent = dxLayoutControl6Group3
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutControl6Group3: TdxLayoutGroup
          Parent = dxLayoutControl6Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item2: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Distribution Date'
          Control = cxDBDateEdit26
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl6Item4: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Start Trade Date (RG/NG)'
          Control = cxDBDateEdit28
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item5: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit11
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Group4: TdxLayoutGroup
          Parent = dxLayoutControl4Group5
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item6: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Will be Reversed into (Qty)'
          Control = cxDBCurrencyEdit12
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Group5: TdxLayoutGroup
          Parent = dxLayoutControl4Group5
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item7: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Old Price'
          Control = cxDBCurrencyEdit13
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item8: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'New Price'
          Control = cxDBCurrencyEdit14
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl6Item9: TdxLayoutItem
          Parent = dxLayoutControl6Group4
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'End Setlement Date'
          Control = cxDBDateEdit29
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl6Item10: TdxLayoutItem
          Parent = dxLayoutControl6Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Start Setlement Date'
          Control = cxDBDateEdit30
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
    object tsStockMerge: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 7
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl9: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 182
          Top = 28
          DataBinding.DataField = 'NEW_STOCKID'
          DataBinding.DataSource = dsSubject
          Properties.ListColumns = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          OnExit = cxDBLookupComboBox1Exit
          Width = 110
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 298
          Top = 28
          DataBinding.DataField = 'NEW_STOCKNAME'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 282
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 182
          Top = 55
          DataBinding.DataField = 'NEW_ISINCODE'
          DataBinding.DataSource = dsSubject
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 212
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 182
          Top = 112
          DataBinding.DataField = 'BASE_STK_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 130
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 458
          Top = 112
          DataBinding.DataField = 'GET_STK_RT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 130
        end
        object cxDBCurrencyEdit33: TcxDBCurrencyEdit
          Left = 182
          Top = 139
          DataBinding.DataField = 'GET_CASH_RATIO'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit59: TcxDBDateEdit
          Left = 182
          Top = 196
          DataBinding.DataField = 'NGRG_CUMDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 121
        end
        object cxDBDateEdit60: TcxDBDateEdit
          Left = 182
          Top = 223
          DataBinding.DataField = 'RECDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 121
        end
        object cxDBDateEdit61: TcxDBDateEdit
          Left = 182
          Top = 250
          DataBinding.DataField = 'NGRG_EXDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 121
        end
        object cxDBDateEdit62: TcxDBDateEdit
          Left = 182
          Top = 277
          DataBinding.DataField = 'STR_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Width = 121
        end
        object cxDBDateEdit63: TcxDBDateEdit
          Left = 329
          Top = 277
          DataBinding.DataField = 'END_DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 121
        end
        object cxDBDateEdit64: TcxDBDateEdit
          Left = 182
          Top = 304
          DataBinding.DataField = 'RI_END_TRDDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Width = 121
        end
        object cxDBDateEdit65: TcxDBDateEdit
          Left = 182
          Top = 331
          DataBinding.DataField = 'ALLOTMENT_DATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 12
          Width = 121
        end
        object cxDBDateEdit66: TcxDBDateEdit
          Left = 182
          Top = 358
          DataBinding.DataField = 'RI_STR_TRDDATE'
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
        object cxDBDateEdit67: TcxDBDateEdit
          Left = 182
          Top = 385
          DataBinding.DataField = 'PAYDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 14
          Width = 121
        end
        object dxLayoutControl9Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl9Group1: TdxLayoutGroup
          Parent = dxLayoutControl9Group7
          CaptionOptions.Text = 'Merger With'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl9Item1: TdxLayoutItem
          Parent = dxLayoutControl9Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Stock Code'
          Control = cxDBLookupComboBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Item2: TdxLayoutItem
          Parent = dxLayoutControl9Group3
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBTextEdit9'
          CaptionOptions.Visible = False
          Control = cxDBTextEdit9
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 282
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Item3: TdxLayoutItem
          Parent = dxLayoutControl9Group1
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'ISIN Code'
          Control = cxDBTextEdit10
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 212
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Group3: TdxLayoutGroup
          Parent = dxLayoutControl9Group1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Group2: TdxLayoutGroup
          Parent = dxLayoutControl9Group7
          CaptionOptions.Text = 'Qty Stock Ratio'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutControl9Item4: TdxLayoutItem
          Parent = dxLayoutControl9Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'For Each Script (Qty)'
          Control = cxDBCurrencyEdit3
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 130
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Item5: TdxLayoutItem
          Parent = dxLayoutControl9Group2
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Equal to Script Merger (Qty)'
          Control = cxDBCurrencyEdit4
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 130
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Item6: TdxLayoutItem
          Parent = dxLayoutControl9Group5
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Merger Price'
          Control = cxDBCurrencyEdit33
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Group5: TdxLayoutGroup
          Parent = dxLayoutControl9Group2
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Group6: TdxLayoutGroup
          Parent = dxLayoutControl9Group7
          ButtonOptions.Buttons = <>
          Index = 2
        end
        object dxLayoutControl9Item7: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Effective Issuance From OJK'
          Control = cxDBDateEdit59
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Item8: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Recording Date'
          Control = cxDBDateEdit60
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Item9: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'RUPSLB Date'
          Control = cxDBDateEdit61
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl9Item10: TdxLayoutItem
          Parent = dxLayoutControl9Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Statement Of Requirement Date'
          Control = cxDBDateEdit62
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl9Item11: TdxLayoutItem
          Parent = dxLayoutControl9Group8
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'To '
          Control = cxDBDateEdit63
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl9Group8: TdxLayoutGroup
          Parent = dxLayoutControl9Group6
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 3
        end
        object dxLayoutControl9Item12: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Last Trade Date Before Merger'
          Control = cxDBDateEdit64
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl9Item13: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Effective Merger Date'
          Control = cxDBDateEdit65
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl9Item14: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Start Trade Merger Date'
          Control = cxDBDateEdit66
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl9Item15: TdxLayoutItem
          Parent = dxLayoutControl9Group6
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Payment Date for Merger Script'
          Control = cxDBDateEdit67
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl9Group7: TdxLayoutGroup
          Parent = dxLayoutControl9Group_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tsCouponPayment: TcxTabSheet
      Caption = 'Announcement'
      ImageIndex = 10
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dxLayoutControl10: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxDBDateEdit69: TcxDBDateEdit
          Left = 95
          Top = 28
          DataBinding.DataField = 'DISTDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Properties.OnCloseUp = cxDBDateEdit69PropertiesCloseUp
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 121
        end
        object cxDBDateEdit70: TcxDBDateEdit
          Left = 95
          Top = 55
          DataBinding.DataField = 'PAYDATE'
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
        object dxLayoutControl10Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl10Group1: TdxLayoutGroup
          Parent = dxLayoutControl10Group_Root
          CaptionOptions.Text = 'Coupon Payment Date'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl10Item2: TdxLayoutItem
          Parent = dxLayoutControl10Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Coupon Date'
          Control = cxDBDateEdit69
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl10Item3: TdxLayoutItem
          Parent = dxLayoutControl10Group1
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Payment Date'
          Control = cxDBDateEdit70
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object tsEntitlement: TcxTabSheet
      Caption = 'Entitlement'
      ImageIndex = 8
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object gvwEntetlement: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCorpActEnt
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwEntetlementCAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwEntetlementACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwEntetlementACCNO: TcxGridDBBandedColumn
            Caption = 'A/C Number'
            DataBinding.FieldName = 'ACCNO'
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwEntetlementACCNAME: TcxGridDBBandedColumn
            Caption = 'A/C Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 220
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwEntetlementCUSTODYNO: TcxGridDBBandedColumn
            Caption = 'Custody No.'
            DataBinding.FieldName = 'CUSTODYNO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwEntetlementSTOCKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwEntetlementSTOCKCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwEntetlementACCTYPE: TcxGridDBBandedColumn
            Caption = 'Acc Type'
            DataBinding.FieldName = 'ACCTYPE'
            Visible = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwEntetlementAV_QTY: TcxGridDBBandedColumn
            Caption = 'Av Qty'
            DataBinding.FieldName = 'AV_QTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0;(#,##0)'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwEntetlementCA_QTY: TcxGridDBBandedColumn
            Caption = 'CA Qty'
            DataBinding.FieldName = 'CA_QTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0;(#,##0)'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwEntetlementCA_AMT: TcxGridDBBandedColumn
            Caption = 'CA Amount'
            DataBinding.FieldName = 'CA_AMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwEntetlementTAXRATE: TcxGridDBBandedColumn
            Caption = 'Tax Rate'
            DataBinding.FieldName = 'TAXRATE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwEntetlementTAXAMT: TcxGridDBBandedColumn
            Caption = 'Tax Amt'
            DataBinding.FieldName = 'TAXAMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwEntetlementCA_NETAMT: TcxGridDBBandedColumn
            Caption = 'CA Net Amt'
            DataBinding.FieldName = 'CA_NETAMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwEntetlementCDIV_PAYDATE: TcxGridDBBandedColumn
            Caption = 'Cash Div Pay Date'
            DataBinding.FieldName = 'CDIV_PAYDATE'
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwEntetlementSTAT: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STAT'
            Width = 43
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwEntetlementDIV_PAID: TcxGridDBBandedColumn
            Caption = 'Div Paid'
            DataBinding.FieldName = 'DIV_PAID'
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwEntetlementMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwEntetlementMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwEntetlementAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwEntetlementAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwEntetlementUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwEntetlementNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwEntetlementISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwEntetlementID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwEntetlementAVGPRICE: TcxGridDBBandedColumn
            Caption = 'Avg Price'
            DataBinding.FieldName = 'AVGPRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwEntetlementCA_PRICE: TcxGridDBBandedColumn
            Caption = 'CA Price'
            DataBinding.FieldName = 'CA_PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwEntetlementPAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwEntetlementPAID_DATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PAID_DATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwEntetlementCCYCODE: TcxGridDBBandedColumn
            Caption = 'CCY Code'
            DataBinding.FieldName = 'CCYCODE'
            Width = 54
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwEntetlement
        end
      end
    end
    object tsExercise: TcxTabSheet
      Caption = 'Exercise'
      ImageIndex = 9
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1075
        Height = 512
        Align = alClient
        TabOrder = 0
        object gvwCorpActExer: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCorpActExer
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
            end>
          object gvwCorpActExerCAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXERTYPE: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'EXERTYPE'
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCorpActExerACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCorpActExerACCNO: TcxGridDBBandedColumn
            Caption = 'A/C Number'
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCorpActExerACCNAME: TcxGridDBBandedColumn
            Caption = 'A/C Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCorpActExerCA_QTY: TcxGridDBBandedColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'CA_QTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0;(#,##0)'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCorpActExerCA_AMT: TcxGridDBBandedColumn
            Caption = 'CA Amount'
            DataBinding.FieldName = 'CA_AMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXERQTY: TcxGridDBBandedColumn
            Caption = 'Exer Qty'
            DataBinding.FieldName = 'EXERQTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXER_AMT: TcxGridDBBandedColumn
            Caption = 'Exer Amount'
            DataBinding.FieldName = 'EXER_AMT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXER_WARRQTY: TcxGridDBBandedColumn
            Caption = 'Exer Warrant Qty'
            DataBinding.FieldName = 'EXER_WARRQTY'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0;#,##0'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXER_PAYDATE: TcxGridDBBandedColumn
            Caption = 'Exer Pay Date'
            DataBinding.FieldName = 'EXER_PAYDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'dd mmm yyyy'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwCorpActExerEXER_PAID: TcxGridDBBandedColumn
            Caption = 'Exer Paid'
            DataBinding.FieldName = 'EXER_PAID'
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwCorpActExerMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwCorpActExerMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwCorpActExerAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwCorpActExerAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwCorpActExerUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwCorpActExerUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwCorpActExerNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwCorpActExerISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwCorpActExerID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwCorpActExer
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 922
    Top = 341
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsLuInstrumentStock: TDataSource
    DataSet = dmLookup.cdsLuInstrumentStock
    Left = 894
    Top = 228
  end
  object dsCorpActEnt: TDataSource
    Left = 966
    Top = 228
  end
  object cdsInstrumentByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'INSTRUMENT_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryInstrumentByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 783
    Top = 294
    object cdsInstrumentByParamINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentByParamINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentByParamSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsInstrumentByParamISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentByParamMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentByParamCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
  end
  object cdsStockPos_ByCorpAct: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATEINPUT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmSettlement_qryStockPos_ByCorpAct'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 780
    Top = 336
    object cdsStockPos_ByCorpActBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsStockPos_ByCorpActBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsStockPos_ByCorpActBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsStockPos_ByCorpActSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsStockPos_ByCorpActSalesCode: TStringField
      FieldName = 'SalesCode'
      Size = 10
    end
    object cdsStockPos_ByCorpActSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsStockPos_ByCorpActAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsStockPos_ByCorpActAccNo: TStringField
      FieldName = 'AccNo'
      Size = 30
    end
    object cdsStockPos_ByCorpActAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object cdsStockPos_ByCorpActStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockPos_ByCorpActStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsStockPos_ByCorpActStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsStockPos_ByCorpActAvgPrice: TFloatField
      FieldName = 'AvgPrice'
    end
    object cdsStockPos_ByCorpActClosePrice: TFloatField
      FieldName = 'ClosePrice'
    end
    object cdsStockPos_ByCorpActStockOnHand: TFloatField
      FieldName = 'StockOnHand'
    end
    object cdsStockPos_ByCorpActStockOnHold: TFloatField
      FieldName = 'StockOnHold'
    end
    object cdsStockPos_ByCorpActStockOuts: TFloatField
      FieldName = 'StockOuts'
    end
    object cdsStockPos_ByCorpActStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object cdsStockPos_ByCorpActStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
    end
    object cdsStockPos_ByCorpActStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
    end
    object cdsStockPos_ByCorpActUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
    end
    object cdsStockPos_ByCorpActLastCP: TDateField
      FieldName = 'LastCP'
    end
    object cdsStockPos_ByCorpActInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
  end
  object cdsInstrument: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryInstrumentList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 783
    Top = 243
    object cdsInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsInstrumentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsInstrumentLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsInstrumentMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsInstrumentSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsInstrumentLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object cdsInstrumentISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsInstrumentCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInstrumentISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsInstrumentISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsInstrumentMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsInstrumentSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsInstrumentDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsInstrumentLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsInstrumentLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsInstrumentLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsInstrumentSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsInstrumentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInstrumentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInstrumentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInstrumentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInstrumentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInstrumentID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsCorpActExer: TDataSource
    Left = 930
    Top = 276
  end
  object PopupMenu1: TPopupMenu
    Images = frmCorpActList.imlBrowse
    Left = 783
    Top = 411
    object Process1: TMenuItem
      Action = actProcess
    end
    object Modify1: TMenuItem
      Action = actModify
    end
    object Recalculate1: TMenuItem
      Action = actRecalculate
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ChangeTaxPercentage1: TMenuItem
      Action = actChangeTax
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CTSendWT1: TMenuItem
      Action = actCTSendWT
    end
    object SubAccountAllocation1: TMenuItem
      Action = actSubAccAlloc
    end
  end
  object ActionList1: TActionList
    Images = frmCorpActList.imlBrowse
    Left = 792
    Top = 456
    object actModify: TNAction
      Category = 'NActions'
      Caption = 'Modify'
      ImageIndex = 6
      CheckPermission = False
    end
    object actRecalculate: TNAction
      Category = 'NActions'
      Caption = 'Recalculate'
      ImageIndex = 7
      CheckPermission = False
    end
    object actProcess: TNAction
      Category = 'NActions'
      Caption = 'Process'
      CheckPermission = False
    end
    object actChangeTax: TNAction
      Category = 'NActions'
      Caption = 'Change Tax Percentage'
      ImageIndex = 6
      CheckPermission = False
    end
    object actCTSendWT: TNAction
      Category = 'NActions'
      Caption = 'CT Send WT'
      CheckPermission = False
    end
    object actSubAccAlloc: TNAction
      Category = 'NActions'
      Caption = 'Sub Account Allocation'
      ImageIndex = 14
      OnExecute = actSubAccAllocExecute
      CheckPermission = False
    end
  end
end
