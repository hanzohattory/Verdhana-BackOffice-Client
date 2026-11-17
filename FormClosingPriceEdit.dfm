inherited frmClosingPriceEit: TfrmClosingPriceEit
  Caption = 'Closing Price'
  ClientHeight = 195
  ClientWidth = 549
  ExplicitWidth = 565
  ExplicitHeight = 234
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 549
    Height = 105
    ExplicitWidth = 549
    ExplicitHeight = 97
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 75
      Top = 10
      TabStop = False
      DataBinding.DataField = 'STK_DATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 102
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 75
      Top = 37
      DataBinding.DataField = 'STK_CODE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'LOCALCODE'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'LOCALCODE'
        end
        item
          Width = 250
          FieldName = 'SHORTNAME'
        end
        item
          FieldName = 'INSTRUMENT_TYPE_DESC'
        end
        item
          Width = 800
          FieldName = 'INSTRUMENT_TYPE_CODE'
        end>
      Properties.ListSource = dsInstrumentNoStock
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 102
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 192
      Top = 37
      TabStop = False
      DataBinding.DataField = 'STK_NAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 345
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 75
      Top = 64
      RepositoryItem = dmGlobal.edCurrency
      DataBinding.DataField = 'STK_CLOS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 102
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Closing Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 345
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Closing Price'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 126
    Width = 549
    ExplicitTop = 118
    ExplicitWidth = 549
    inherited dbNavLog: TDBNavigator
      Left = 435
      Hints.Strings = ()
      ExplicitLeft = 435
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 175
    Width = 549
    ExplicitTop = 167
    ExplicitWidth = 549
  end
  inherited tabEditorData: TTabSet
    Top = 105
    Width = 549
    ExplicitTop = 97
    ExplicitWidth = 549
  end
  inherited dsSubject: TDataSource
    DataSet = cdsClosingPriceEdit
    Left = 536
    Top = 448
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 536
    Top = 496
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsClosingPriceEdit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STK_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STK_CODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryClosingPriceEdit'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsClosingPriceEditNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 536
    Top = 392
    object cdsClosingPriceEditSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsClosingPriceEditMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsClosingPriceEditSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      OnChange = cdsClosingPriceEditSTK_CODEChange
    end
    object cdsClosingPriceEditSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsClosingPriceEditSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object cdsClosingPriceEditSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object cdsClosingPriceEditSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object cdsClosingPriceEditSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object cdsClosingPriceEditSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object cdsClosingPriceEditSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object cdsClosingPriceEditSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object cdsClosingPriceEditSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object cdsClosingPriceEditSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object cdsClosingPriceEditSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object cdsClosingPriceEditSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsClosingPriceEditSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object cdsClosingPriceEditSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object cdsClosingPriceEditSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsClosingPriceEditSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object cdsClosingPriceEditSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object cdsClosingPriceEditSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object cdsClosingPriceEditSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
    object cdsClosingPriceEditMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosingPriceEditMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object dsInstrumentNoStock: TDataSource
    DataSet = dmLookup.cdsLuInstrumentNotStock
    Left = 416
    Top = 392
  end
end
