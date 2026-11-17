inherited frmACS: TfrmACS
  Caption = 'ACS'
  ClientHeight = 437
  ClientWidth = 575
  ExplicitWidth = 591
  ExplicitHeight = 476
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 575
    Height = 347
    ExplicitWidth = 575
    ExplicitHeight = 347
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 98
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ACS_NO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 98
      Top = 37
      DataBinding.DataField = 'ACS_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 98
      Top = 64
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          Width = 200
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = cxDBLookupComboBox1Exit
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 225
      Top = 64
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          Width = 200
          FieldName = 'ACCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      OnExit = cxDBLookupComboBox2Exit
      Width = 325
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [4]
      Left = 98
      Top = 91
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Stock Code'
          Width = 100
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Stock Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'Stock Type'
          Width = 50
          FieldName = 'INSTRUMENT_TYPE_CODE'
        end>
      Properties.ListSource = dmLookup.dsLuInstrumentAll
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      OnExit = cxDBLookupComboBox3Exit
      Width = 121
    end
    object cxDBRadioGroup1: TcxDBRadioGroup [5]
      Left = 10
      Top = 226
      Caption = 'Buy / Sell'
      DataBinding.DataField = 'BS'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Buy'
          Value = 'B'
        end
        item
          Caption = 'Sell'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 11
      Height = 51
      Width = 185
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
      Left = 260
      Top = 244
      DataBinding.DataField = 'PRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      OnExit = cxDBCurrencyEdit1Exit
      Width = 90
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [7]
      Left = 260
      Top = 271
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      OnExit = cxDBCurrencyEdit2Exit
      Width = 90
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [8]
      Left = 260
      Top = 298
      TabStop = False
      DataBinding.DataField = 'VALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 90
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [9]
      Left = 449
      Top = 244
      TabStop = False
      DataBinding.DataField = 'FEE_PERCENT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 90
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [10]
      Left = 449
      Top = 271
      TabStop = False
      DataBinding.DataField = 'FEE_AMOUNT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 90
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [11]
      Left = 449
      Top = 298
      TabStop = False
      DataBinding.DataField = 'TOTAL_AMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 90
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [12]
      Left = 225
      Top = 91
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Caption = 'Stock Code'
          Width = 100
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          Caption = 'Stock Name'
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Caption = 'Stock Type'
          Width = 50
          FieldName = 'INSTRUMENT_TYPE_CODE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuInstrumentAll
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      OnExit = cxDBLookupComboBox4Exit
      Width = 325
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [13]
      Left = 98
      Top = 118
      DataBinding.DataField = 'BOARDID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'BOARDID'
      Properties.ListColumns = <
        item
          FieldName = 'BOARDID'
        end
        item
          FieldName = 'BOARDCODE'
        end
        item
          FieldName = 'BOARDDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBoard
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox [14]
      Left = 98
      Top = 199
      DataBinding.DataField = 'CPACCID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuAccount
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object txtCPAccName: TcxTextEdit [15]
      Left = 225
      Top = 199
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Text = 'txtCPAccName'
      Width = 325
    end
    object cxDBLookupComboBox7: TcxDBLookupComboBox [16]
      Left = 98
      Top = 145
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
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
    object cxDBLookupComboBox8: TcxDBLookupComboBox [17]
      Left = 98
      Top = 172
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      OnExit = cxDBLookupComboBox8Exit
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ACS No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account No'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Account Name'
      CaptionOptions.Visible = False
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 325
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxDBRadioGroup1
      ControlOptions.OriginalHeight = 51
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Price'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Value'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Fee (%)'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Fee Amount'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Total Amount'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'cxDBLookupComboBox4'
      CaptionOptions.Visible = False
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 325
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Board'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'CP Account Code'
      Control = cxDBLookupComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = txtCPAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 325
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Market Code'
      Control = cxDBLookupComboBox8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 368
    Width = 575
    ExplicitTop = 368
    ExplicitWidth = 575
    inherited dbNavLog: TDBNavigator
      Left = 461
      Hints.Strings = ()
      ExplicitLeft = 461
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 417
    Width = 575
    ExplicitTop = 417
    ExplicitWidth = 575
  end
  inherited tabEditorData: TTabSet
    Top = 347
    Width = 575
    ExplicitTop = 347
    ExplicitWidth = 575
  end
  inherited dsSubject: TDataSource
    DataSet = frmACSList.cdsACS
    Left = 423
    Top = 13
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsACSBoard: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryACSBoard'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 12
    object cdsACSBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsACSBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsACSBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsACSBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsACSBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsACSBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsACSBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsACSBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsACSBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsACSBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsACSBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsACSBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsACSBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsACSBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsACSBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsACSBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object LargeintField1: TLargeintField
      FieldName = 'ID'
    end
    object cdsACSBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
  end
end
