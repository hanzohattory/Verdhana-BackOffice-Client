inherited frmCorpActHMETD: TfrmCorpActHMETD
  Caption = 'Corporate Action HMETD (Right Issue)'
  ClientHeight = 602
  ClientWidth = 1089
  ExplicitWidth = 1095
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1089
    Height = 512
    ExplicitWidth = 1089
    ExplicitHeight = 512
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 138
      Top = 28
      TabStop = False
      DataBinding.DataField = 'CANO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 180
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 138
      Top = 55
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Stock Code'
          Width = 80
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Stock Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'ISIN Code'
          Width = 90
          FieldName = 'ISINCODE'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentStock
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 113
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 138
      Top = 109
      TabStop = False
      DataBinding.DataField = 'ISINCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 180
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 138
      Top = 331
      DataBinding.DataField = 'BASE_STK_RATIO'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 35
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
      Left = 264
      Top = 331
      DataBinding.DataField = 'GET_STK_RT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 35
    end
    object cxLabel1: TcxLabel [5]
      Left = 305
      Top = 331
      AutoSize = False
      Caption = 'Rights'
      Style.HotTrack = False
      Height = 21
      Width = 37
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 138
      Top = 358
      DataBinding.DataField = 'BASE_RI_QTY'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 35
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [7]
      Left = 264
      Top = 358
      DataBinding.DataField = 'GET_RI_QTY'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 35
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [8]
      Left = 410
      Top = 358
      DataBinding.DataField = 'RI_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 50
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit [9]
      Left = 138
      Top = 385
      DataBinding.DataField = 'BASE_WR_QTY'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 35
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit [10]
      Left = 264
      Top = 385
      DataBinding.DataField = 'GET_WR_QTY'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 35
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit [11]
      Left = 138
      Top = 412
      DataBinding.DataField = 'WR_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 50
    end
    object cxLabel4: TcxLabel [12]
      Left = 305
      Top = 385
      Caption = 'pershare series warrant granted'
      Style.HotTrack = False
    end
    object cxLabel5: TcxLabel [13]
      Left = 194
      Top = 412
      Caption = 'pershare'
      Style.HotTrack = False
    end
    object cxDBDateEdit1: TcxDBDateEdit [14]
      Left = 135
      Top = 208
      DataBinding.DataField = 'NGRG_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit [15]
      Left = 333
      Top = 208
      DataBinding.DataField = 'NGRG_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 106
    end
    object cxDBDateEdit3: TcxDBDateEdit [16]
      Left = 135
      Top = 235
      DataBinding.DataField = 'TN_CUMDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 100
    end
    object cxDBDateEdit4: TcxDBDateEdit [17]
      Left = 333
      Top = 235
      DataBinding.DataField = 'TN_EXDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 106
    end
    object cxDBDateEdit5: TcxDBDateEdit [18]
      Left = 135
      Top = 262
      DataBinding.DataField = 'RECDATE'
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
    object cxDBDateEdit6: TcxDBDateEdit [19]
      Left = 333
      Top = 262
      DataBinding.DataField = 'DISTDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 106
    end
    object cxDBDateEdit7: TcxDBDateEdit [20]
      Left = 645
      Top = 127
      DataBinding.DataField = 'REPORT_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 26
      Width = 85
    end
    object cxDBDateEdit8: TcxDBDateEdit [21]
      Left = 645
      Top = 154
      DataBinding.DataField = 'RI_STR_TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 27
      Width = 85
    end
    object cxDBDateEdit9: TcxDBDateEdit [22]
      Left = 751
      Top = 154
      DataBinding.DataField = 'RI_END_TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 28
      Width = 85
    end
    object cxDBDateEdit10: TcxDBDateEdit [23]
      Left = 645
      Top = 181
      DataBinding.DataField = 'RI_STR_EXERDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 29
      Width = 85
    end
    object cxDBDateEdit11: TcxDBDateEdit [24]
      Left = 751
      Top = 181
      DataBinding.DataField = 'RI_END_EXERDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 30
      Width = 85
    end
    object cxDBDateEdit12: TcxDBDateEdit [25]
      Left = 645
      Top = 208
      DataBinding.DataField = 'STR_DISTDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 31
      Width = 85
    end
    object cxDBDateEdit13: TcxDBDateEdit [26]
      Left = 751
      Top = 208
      DataBinding.DataField = 'END_DISTDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 32
      Width = 85
    end
    object cxDBDateEdit14: TcxDBDateEdit [27]
      Left = 962
      Top = 127
      DataBinding.DataField = 'PAYDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 33
      Width = 85
    end
    object cxDBDateEdit15: TcxDBDateEdit [28]
      Left = 962
      Top = 154
      DataBinding.DataField = 'ALLOTMENT_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 34
      Width = 85
    end
    object cxDBDateEdit16: TcxDBDateEdit [29]
      Left = 962
      Top = 181
      DataBinding.DataField = 'REFUND_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 35
      Width = 85
    end
    object cxDBDateEdit17: TcxDBDateEdit [30]
      Left = 645
      Top = 349
      DataBinding.DataField = 'WR_STR_TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 39
      Width = 85
    end
    object cxDBDateEdit18: TcxDBDateEdit [31]
      Left = 645
      Top = 376
      DataBinding.DataField = 'WR_END_TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 40
      Width = 85
    end
    object cxDBDateEdit19: TcxDBDateEdit [32]
      Left = 645
      Top = 403
      DataBinding.DataField = 'TN_WR_STR_TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 41
      Width = 85
    end
    object cxDBDateEdit20: TcxDBDateEdit [33]
      Left = 645
      Top = 430
      DataBinding.DataField = 'WR_STR_EXERDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 42
      Width = 85
    end
    object cxDBDateEdit21: TcxDBDateEdit [34]
      Left = 751
      Top = 430
      DataBinding.DataField = 'WR_END_EXERDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 43
      Width = 85
    end
    object cxDBDateEdit22: TcxDBDateEdit [35]
      Left = 645
      Top = 457
      DataBinding.DataField = 'WR_EXPDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 44
      Width = 85
    end
    object cxDBTextEdit4: TcxDBTextEdit [36]
      Left = 653
      Top = 28
      DataBinding.DataField = 'RIGTHNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 292
    end
    object cxDBTextEdit5: TcxDBTextEdit [37]
      Left = 568
      Top = 55
      DataBinding.DataField = 'RI_ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 162
    end
    object cxDBTextEdit7: TcxDBTextEdit [38]
      Left = 653
      Top = 277
      DataBinding.DataField = 'WARRANTNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 37
      Width = 292
    end
    object cxDBTextEdit8: TcxDBTextEdit [39]
      Left = 568
      Top = 304
      DataBinding.DataField = 'WR_ISINCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 38
      Width = 162
    end
    object cxDBTextEdit9: TcxDBTextEdit [40]
      Left = 138
      Top = 82
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 314
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [41]
      Left = 568
      Top = 277
      DataBinding.DataField = 'WARRANTID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Warrant Code'
          Width = 80
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Warrant Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'ISIN Code'
          Width = 90
          FieldName = 'ISINCODE'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentWarrant
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 36
      Width = 79
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [42]
      Left = 568
      Top = 28
      DataBinding.DataField = 'RIGHTID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Right Code'
          Width = 80
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Stock Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'ISIN Code'
          Width = 90
          FieldName = 'ISINCODE'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentRight
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Width = 79
    end
    object cxDBMemo1: TcxDBMemo [43]
      Left = 138
      Top = 136
      DataBinding.DataField = 'CA_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 48
      Width = 314
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [44]
      Left = 568
      Top = 82
      DataBinding.DataField = 'EXER_PRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 105
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group19
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CorpAct No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group35
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group23
      CaptionOptions.Text = '.:: Script ::.'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ratio Distribution is'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'shares for every'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.Text = 'for every'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'right can buy'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'share with price (Rp)'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group18
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Attach to every'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group18
      AlignHorz = ahLeft
      CaptionOptions.Text = 'new shares is'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group15: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      AlignHorz = ahLeft
      CaptionOptions.Text = 'with warrant price (Rp)'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group15
      CaptionOptions.Text = 'pershare'
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group15
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group17
      CaptionOptions.Text = 'cxLabel5'
      CaptionOptions.Visible = False
      Control = cxLabel5
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group17: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group18: TdxLayoutGroup
      Parent = dxLayoutControl1Group16
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group29
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cum Date (RG / NG)'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group29
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ex Date (RG / NG)'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group36
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Cum Date (TN)'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group36
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Ex Date (TN)'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutControl1Group44
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Recording Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group44
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Distribution Period'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group28
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      Parent = dxLayoutControl1Group41
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trading Period'
      Control = cxDBDateEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      Parent = dxLayoutControl1Group41
      AlignHorz = ahLeft
      CaptionOptions.Text = 'to'
      Control = cxDBDateEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      Parent = dxLayoutControl1Group40
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Exercise Period'
      Control = cxDBDateEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      Parent = dxLayoutControl1Group40
      CaptionOptions.Text = 'to'
      Control = cxDBDateEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item30: TdxLayoutItem
      Parent = dxLayoutControl1Group25
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Distribution Period'
      Control = cxDBDateEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item31: TdxLayoutItem
      Parent = dxLayoutControl1Group25
      CaptionOptions.Text = 'to'
      Control = cxDBDateEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item32: TdxLayoutItem
      Parent = dxLayoutControl1Group37
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Last Payment Date'
      Control = cxDBDateEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item33: TdxLayoutItem
      Parent = dxLayoutControl1Group37
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Allotment Date'
      Control = cxDBDateEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item34: TdxLayoutItem
      Parent = dxLayoutControl1Group37
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Refund Date'
      Control = cxDBDateEdit16
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item35: TdxLayoutItem
      Parent = dxLayoutControl1Group38
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Warrant start Trade'
      Control = cxDBDateEdit17
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group26: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group27: TdxLayoutGroup
      Parent = dxLayoutControl1Group26
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item36: TdxLayoutItem
      Parent = dxLayoutControl1Group38
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Warrant end trade (RG/NG)'
      Control = cxDBDateEdit18
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item37: TdxLayoutItem
      Parent = dxLayoutControl1Group38
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Warrant end trade (TN)'
      Control = cxDBDateEdit19
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item38: TdxLayoutItem
      Parent = dxLayoutControl1Group39
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Warrant exercise period'
      Control = cxDBDateEdit20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item39: TdxLayoutItem
      Parent = dxLayoutControl1Group39
      AlignHorz = ahLeft
      CaptionOptions.Text = 'to'
      Control = cxDBDateEdit21
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item40: TdxLayoutItem
      Parent = dxLayoutControl1Group38
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Warrant Maturity Date'
      Control = cxDBDateEdit22
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item42: TdxLayoutItem
      Parent = dxLayoutControl1Group32
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxDBTextEdit4'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 292
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item43: TdxLayoutItem
      Parent = dxLayoutControl1Group21
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = ' ISIN Code'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item45: TdxLayoutItem
      Parent = dxLayoutControl1Group34
      CaptionOptions.Text = 'cxDBTextEdit7'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 292
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item46: TdxLayoutItem
      Parent = dxLayoutControl1Group33
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'ISIN Code'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group20
      CaptionOptions.Text = ' '
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 314
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group31: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'HMETD Right'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group32: TdxLayoutGroup
      Parent = dxLayoutControl1Group21
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group33: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'HMETD Warrant'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group34: TdxLayoutGroup
      Parent = dxLayoutControl1Group33
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item47: TdxLayoutItem
      Parent = dxLayoutControl1Group34
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Warrant Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item44: TdxLayoutItem
      Parent = dxLayoutControl1Group32
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Right Code'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group30: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = '.:: Right ::.'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group22: TdxLayoutGroup
      Parent = dxLayoutControl1Group30
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group25: TdxLayoutGroup
      Parent = dxLayoutControl1Group22
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group24: TdxLayoutGroup
      Parent = dxLayoutControl1Group22
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group37: TdxLayoutGroup
      Parent = dxLayoutControl1Group14
      CaptionOptions.Text = '-::Request Additional Stock Option ::-'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group38: TdxLayoutGroup
      Parent = dxLayoutControl1Group33
      CaptionOptions.Text = '-:: Warrant ::-'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group39: TdxLayoutGroup
      Parent = dxLayoutControl1Group38
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group28: TdxLayoutGroup
      Parent = dxLayoutControl1Group24
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group40: TdxLayoutGroup
      Parent = dxLayoutControl1Group28
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group41: TdxLayoutGroup
      Parent = dxLayoutControl1Group28
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group19: TdxLayoutGroup
      Parent = dxLayoutControl1Group35
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group42: TdxLayoutGroup
      Parent = dxLayoutControl1Group19
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group42
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group43: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group23: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group35: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group21: TdxLayoutGroup
      Parent = dxLayoutControl1Group31
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group14: TdxLayoutGroup
      Parent = dxLayoutControl1Group21
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group20: TdxLayoutGroup
      Parent = dxLayoutControl1Group43
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group29: TdxLayoutGroup
      Parent = dxLayoutControl1Group27
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group36: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group44: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remarks'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 48
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group21
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Exercise Price'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 533
    Width = 1089
    ExplicitTop = 533
    ExplicitWidth = 1089
    inherited dbNavLog: TDBNavigator
      Left = 975
      Hints.Strings = ()
      ExplicitLeft = 975
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 582
    Width = 1089
    ExplicitTop = 582
    ExplicitWidth = 1089
  end
  inherited tabEditorData: TTabSet
    Top = 512
    Width = 1089
    ExplicitTop = 512
    ExplicitWidth = 1089
  end
  inherited dsSubject: TDataSource
    DataSet = frmCorpActList.cdsCorpAct
    Left = 429
    Top = 25
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
end
