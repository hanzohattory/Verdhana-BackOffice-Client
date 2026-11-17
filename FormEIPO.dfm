inherited frmEIPO: TfrmEIPO
  Caption = 'e-IPO'
  ClientHeight = 404
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 561
    Height = 314
    ExplicitWidth = 561
    ExplicitHeight = 314
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 129
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'TICKER_ID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'LOCALCODE'
        end
        item
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          Width = 50
          FieldName = 'MARKETCODE'
        end>
      Properties.ListSource = dmLookup.dsluIPOInstrument
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Height = 21
      Width = 114
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 249
      Top = 10
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'TICKERNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 299
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 129
      Top = 37
      DataBinding.DataField = 'COMPANY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 419
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 129
      Top = 64
      DataBinding.DataField = 'SECTOR'
      DataBinding.DataSource = dsSubject
      Properties.KeyFieldNames = 'SECTOR'
      Properties.ListColumns = <
        item
          FieldName = 'SECTOR'
        end>
      Properties.ListSource = dmLookup.dsLuIPOSector
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 183
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 129
      Top = 91
      DataBinding.DataField = 'SUBSECTOR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 419
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 129
      Top = 118
      DataBinding.DataField = 'LINE_OF_BUSINESS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 419
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
      Left = 129
      Top = 145
      DataBinding.DataField = 'SHARED_OFFERED'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 183
    end
    object cxDBDateEdit1: TcxDBDateEdit [7]
      Left = 129
      Top = 172
      DataBinding.DataField = 'BOOKBUILDING_SDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [8]
      Left = 265
      Top = 172
      AutoSize = False
      DataBinding.DataField = 'BOOKBUILDING_EDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Height = 21
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [9]
      Left = 129
      Top = 199
      DataBinding.DataField = 'OFFERING_SDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [10]
      Left = 265
      Top = 199
      AutoSize = False
      DataBinding.DataField = 'OFFERING_EDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Height = 21
      Width = 121
    end
    object cxDBDateEdit5: TcxDBDateEdit [11]
      Left = 129
      Top = 226
      DataBinding.DataField = 'ALLOTMENT_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object cxDBDateEdit6: TcxDBDateEdit [12]
      Left = 129
      Top = 253
      DataBinding.DataField = 'DISTRIBUTION_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBDateEdit7: TcxDBDateEdit [13]
      Left = 129
      Top = 280
      DataBinding.DataField = 'LISTING_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 7
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ticker Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 299
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Company Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 419
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sector'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Subsector'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Line Of Business'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Shared Offered (Share)'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Book Building Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Offering Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Allotment Date'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Distribution Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 335
    Width = 561
    ExplicitTop = 335
    ExplicitWidth = 561
    inherited dbNavLog: TDBNavigator
      Left = 447
      Hints.Strings = ()
      ExplicitLeft = 447
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 384
    Width = 561
    ExplicitTop = 384
    ExplicitWidth = 561
  end
  inherited tabEditorData: TTabSet
    Top = 314
    Width = 561
    ExplicitTop = 314
    ExplicitWidth = 561
  end
  inherited dsSubject: TDataSource
    DataSet = cdsEIPO
    Left = 504
    Top = 208
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 504
    Top = 256
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsEIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryEIPO'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsEIPOBeforePost
    OnNewRecord = cdsEIPONewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 504
    Top = 160
    object cdsEIPOID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsEIPOTICKER_ID: TLargeintField
      FieldName = 'TICKER_ID'
      Required = True
      OnChange = cdsEIPOTICKER_IDChange
    end
    object cdsEIPOTICKER_CODE: TStringField
      FieldName = 'TICKER_CODE'
      Required = True
      Size = 10
    end
    object cdsEIPOCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 250
    end
    object cdsEIPOSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 150
    end
    object cdsEIPOSUBSECTOR: TStringField
      FieldName = 'SUBSECTOR'
      Size = 250
    end
    object cdsEIPOLINE_OF_BUSINESS: TStringField
      FieldName = 'LINE_OF_BUSINESS'
      Size = 500
    end
    object cdsEIPOBOOKBUILDING_SDATE: TDateField
      FieldName = 'BOOKBUILDING_SDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOBOOKBUILDING_EDATE: TDateField
      FieldName = 'BOOKBUILDING_EDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOOFFERING_SDATE: TDateField
      FieldName = 'OFFERING_SDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOOFFERING_EDATE: TDateField
      FieldName = 'OFFERING_EDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPODISTRIBUTION_DATE: TDateField
      FieldName = 'DISTRIBUTION_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOLISTING_DATE: TDateField
      FieldName = 'LISTING_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOSHARED_OFFERED: TFloatField
      FieldName = 'SHARED_OFFERED'
      DisplayFormat = '#,##0'
    end
    object cdsEIPOSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsEIPOMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEIPOMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEIPOAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEIPOAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEIPOTICKERNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TICKERNAME'
      LookupDataSet = dmLookup.cdsLuIPOInstrument
      LookupKeyFields = 'INSTRUMENT_ID'
      LookupResultField = 'SHORTNAME'
      KeyFields = 'TICKER_ID'
      Size = 250
      Lookup = True
    end
  end
end
