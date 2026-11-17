inherited frmVD510Config: TfrmVD510Config
  Caption = 'VD-5.10 Config'
  ClientHeight = 408
  ClientWidth = 522
  ExplicitWidth = 528
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 522
    Height = 318
    ExplicitTop = -6
    ExplicitWidth = 596
    ExplicitHeight = 402
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 112
      Top = 139
      DataBinding.DataField = 'CONTRACT_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [1]
      Left = 112
      Top = 193
      DataBinding.DataField = 'START_OFFER_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit4: TcxDBDateEdit [2]
      Left = 112
      Top = 220
      DataBinding.DataField = 'END_OFFER_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBDateEdit5: TcxDBDateEdit [3]
      Left = 112
      Top = 247
      DataBinding.DataField = 'DISTRIBUTION_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit6: TcxDBDateEdit [4]
      Left = 112
      Top = 274
      DataBinding.DataField = 'LISTING_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [5]
      Left = 112
      Top = 166
      DataBinding.DataField = 'EFFECTIVE_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 112
      Top = 28
      DataBinding.DataField = 'GUARANTEE_TYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Kesanggupan Penuh'
          ImageIndex = 0
          Value = 'Kesanggupan Penuh'
        end
        item
          Description = 'Usaha Terbaik'
          Value = 'Usaha Terbaik'
        end
        item
          Description = 'Pembeli Siaga'
          Value = 'Pembeli Siaga'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 386
    end
    object cxDBTextEdit1: TcxDBTextEdit [7]
      Left = 112
      Top = 55
      DataBinding.DataField = 'GUARANTEED_PARTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 386
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [8]
      Left = 112
      Top = 82
      DataBinding.DataField = 'GUARANTEE_STATUS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Efektif'
          ImageIndex = 0
          Value = 'Efektif'
        end
        item
          Description = 'Masa Penawaran'
          Value = 'Masa Penawaran'
        end
        item
          Description = 'Masa Penjatahan'
          Value = 'Masa Penjatahan'
        end
        item
          Description = 'Pembeli Siaga'
          Value = 'Pembeli Siaga'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 386
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [9]
      Left = 377
      Top = 139
      DataBinding.DataField = 'COMMITMENT_VALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [10]
      Left = 377
      Top = 166
      DataBinding.DataField = 'HAIRCUT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [11]
      Left = 377
      Top = 193
      DataBinding.DataField = 'NOT_ABSORBED_VALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [12]
      Left = 377
      Top = 220
      DataBinding.DataField = 'BANK_GUARANTEE_CREDIT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [13]
      Left = 377
      Top = 247
      DataBinding.DataField = 'LIABILITY_RANK_VALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Maintenance Date'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Contract Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Start Offering'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'End Offering'
      Control = cxDBDateEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Distribution'
      Control = cxDBDateEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Listing Date'
      Control = cxDBDateEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Effective Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = 'Guarantee Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Guarantee Party'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Guarantee Status'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Commitment Value'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Haircut'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Not Absorbed Value'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Guarantee Credit'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Liabilty Rank Value'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 339
    Width = 522
    inherited dbNavLog: TDBNavigator
      Left = 408
      Hints.Strings = ()
      ExplicitLeft = 408
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 388
    Width = 522
  end
  inherited tabEditorData: TTabSet
    Top = 318
    Width = 522
  end
  inherited dsSubject: TDataSource
    DataSet = cdsVD510Config
    Left = 240
    Top = 160
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 240
    Top = 208
  end
  object cdsVD510Config: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'VD510ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMKBD_qryVD510Config'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsVD510ConfigNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 240
    Top = 264
    object cdsVD510ConfigCONTRACT_DATE: TDateField
      DisplayLabel = 'Contract Date'
      FieldName = 'CONTRACT_DATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigEFFECTIVE_DATE: TDateField
      DisplayLabel = 'Effective Date'
      FieldName = 'EFFECTIVE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigSTART_OFFER_DATE: TDateField
      DisplayLabel = 'Start Offering Date'
      FieldName = 'START_OFFER_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigEND_OFFER_DATE: TDateField
      DisplayLabel = 'End Offering Date'
      FieldName = 'END_OFFER_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigDISTRIBUTION_DATE: TDateField
      DisplayLabel = 'Distribution Date'
      FieldName = 'DISTRIBUTION_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigLISTING_DATE: TDateField
      DisplayLabel = 'Listing Date'
      FieldName = 'LISTING_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsVD510ConfigGUARANTEE_TYPE: TStringField
      DisplayLabel = 'Guarantee Type'
      FieldName = 'GUARANTEE_TYPE'
      Size = 100
    end
    object cdsVD510ConfigGUARANTEED_PARTY: TStringField
      DisplayLabel = 'Guarantee Party'
      FieldName = 'GUARANTEED_PARTY'
      Size = 100
    end
    object cdsVD510ConfigGUARANTEE_STATUS: TStringField
      DisplayLabel = 'Guarantee Status'
      FieldName = 'GUARANTEE_STATUS'
      Size = 100
    end
    object cdsVD510ConfigCOMMITMENT_VALUE: TFloatField
      DisplayLabel = 'Commitment Value'
      FieldName = 'COMMITMENT_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsVD510ConfigHAIRCUT: TFloatField
      DisplayLabel = 'Haircut'
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsVD510ConfigNOT_ABSORBED_VALUE: TFloatField
      DisplayLabel = 'Not Absorbed Value'
      FieldName = 'NOT_ABSORBED_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsVD510ConfigBANK_GUARANTEE_CREDIT: TFloatField
      DisplayLabel = 'Bank Guarantee Credit'
      FieldName = 'BANK_GUARANTEE_CREDIT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsVD510ConfigLIABILITY_RANK_VALUE: TFloatField
      DisplayLabel = 'Liability Rank Value'
      FieldName = 'LIABILITY_RANK_VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsVD510ConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsVD510ConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsVD510ConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsVD510ConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsVD510ConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsVD510ConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsVD510ConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsVD510ConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsVD510ConfigID: TLargeintField
      FieldName = 'ID'
    end
    object cdsVD510ConfigVD510_ID: TLargeintField
      FieldName = 'VD510_ID'
      Required = True
    end
  end
end
