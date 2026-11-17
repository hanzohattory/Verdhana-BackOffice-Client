inherited frmReksadana: TfrmReksadana
  Caption = 'Reksadana Deposito'
  ClientHeight = 293
  ClientWidth = 592
  ExplicitWidth = 608
  ExplicitHeight = 332
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 592
    Height = 203
    ExplicitWidth = 897
    ExplicitHeight = 388
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 96
      Top = 10
      TabStop = False
      DataBinding.DataField = 'REKSADANACODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 182
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 96
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 232
      Top = 64
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 21
      Width = 350
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 232
      Top = 91
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 21
      Width = 350
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 96
      Top = 118
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'UNIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 142
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 96
      Top = 145
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'CLOSE_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 142
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 96
      Top = 172
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'TOTAL_NAV'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 142
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [7]
      Left = 96
      Top = 64
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [8]
      Left = 96
      Top = 91
      DataBinding.DataField = 'INSTRUMENT_ID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'INSTRUMENT_ID'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'LOCALCODE'
        end
        item
          Width = 200
          FieldName = 'SHORTNAME'
        end
        item
          Width = 150
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end>
      Properties.ListSource = dsInstrumentNoStock
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Reksadana Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 182
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Unit'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Close Price'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Total NAV'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 142
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Account Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 224
    Width = 592
    ExplicitTop = 409
    ExplicitWidth = 897
    inherited dbNavLog: TDBNavigator
      Left = 478
      Hints.Strings = ()
      ExplicitLeft = 478
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 273
    Width = 592
    ExplicitTop = 458
    ExplicitWidth = 897
  end
  inherited tabEditorData: TTabSet
    Top = 203
    Width = 592
    ExplicitTop = 388
    ExplicitWidth = 897
  end
  inherited dsSubject: TDataSource
    DataSet = cdsReksadana
    Left = 816
    Top = 360
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 816
    Top = 408
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsReksadana: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'REKSADANAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryReksadana'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsReksadanaBeforePost
    OnNewRecord = cdsReksadanaNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 816
    Top = 312
    object cdsReksadanaREKSADANAID: TLargeintField
      FieldName = 'REKSADANAID'
      Required = True
    end
    object cdsReksadanaREKSADANACODE: TStringField
      FieldName = 'REKSADANACODE'
      Required = True
    end
    object cdsReksadanaVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsReksadanaACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsReksadanaINSTRUMENT_ID: TIntegerField
      FieldName = 'INSTRUMENT_ID'
      Required = True
      OnChange = cdsReksadanaINSTRUMENT_IDChange
    end
    object cdsReksadanaUNIT: TFloatField
      FieldName = 'UNIT'
      Required = True
    end
    object cdsReksadanaCLOSE_PRICE: TFloatField
      FieldName = 'CLOSE_PRICE'
      Required = True
    end
    object cdsReksadanaTOTAL_NAV: TFloatField
      FieldName = 'TOTAL_NAV'
      Required = True
    end
    object cdsReksadanaSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 1
    end
    object cdsReksadanaCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
    end
    object cdsReksadanaCREATED_SYSDATE: TDateTimeField
      FieldName = 'CREATED_SYSDATE'
    end
    object cdsReksadanaCREATED_UI: TStringField
      FieldName = 'CREATED_UI'
      Size = 30
    end
    object cdsReksadanaAPPROVED_DATE: TDateTimeField
      FieldName = 'APPROVED_DATE'
    end
    object cdsReksadanaAPPROVED_SYSDATE: TDateTimeField
      FieldName = 'APPROVED_SYSDATE'
    end
    object cdsReksadanaAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsReksadanaCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsReksadanaCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsReksadanaCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsReksadanaCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsReksadanaCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsReksadanaCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsReksadanaCANCELED_NOTES: TStringField
      FieldName = 'CANCELED_NOTES'
      Size = 100
    end
    object cdsReksadanaMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReksadanaMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsReksadanaACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Lookup = True
    end
    object cdsReksadanaSTOCKNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STOCKNAME'
    end
  end
  object dsInstrumentNoStock: TDataSource
    DataSet = dmLookup.cdsLuInstrumentNotStock
    Left = 416
    Top = 392
  end
end
