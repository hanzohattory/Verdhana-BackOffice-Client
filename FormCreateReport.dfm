object frmCreateReport: TfrmCreateReport
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'NAWC - MKB Create Report'
  ClientHeight = 305
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TopLayout: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 474
    Height = 105
    Align = alTop
    TabOrder = 0
    object btnExecute: TcxButton
      Left = 10
      Top = 64
      Width = 79
      Height = 25
      Caption = 'Execute'
      TabOrder = 2
      OnClick = btnExecuteClick
    end
    object dtpCreate: TcxDateEdit
      Left = 75
      Top = 37
      Enabled = False
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 115
    end
    object lurptType: TcxLookupComboBox
      Left = 75
      Top = 10
      RepositoryItem = dmGlobal.luRptGrpType
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'RPTTYPEGRP'
      Properties.ListColumns = <
        item
          FieldName = 'RPTDESC'
        end>
      Properties.ListSource = dmLookup.dsLuRptGrpType
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 382
    end
    object TopLayoutGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object TopLayoutGroup2: TdxLayoutGroup
      Parent = TopLayoutGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object TopLayoutGroup1: TdxLayoutGroup
      Parent = TopLayoutGroup2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object TopLayoutItem1: TdxLayoutItem
      Parent = TopLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Select Date'
      Control = dtpCreate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object TopLayoutItem2: TdxLayoutItem
      Parent = TopLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnExecute
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object TopLayoutItem4: TdxLayoutItem
      Parent = TopLayoutGroup3
      CaptionOptions.Text = 'Report Type'
      Control = lurptType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 382
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object TopLayoutGroup3: TdxLayoutGroup
      Parent = TopLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 105
    Width = 474
    Height = 200
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsCompanyData
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Style = 9
    LookAndFeel.Kind = lfStandard
    ClientRectBottom = 200
    ClientRectRight = 474
    ClientRectTop = 20
    object tsCompanyData: TcxTabSheet
      Caption = 'Log Message'
      ImageIndex = 0
      object mmReport: TMemo
        Left = 0
        Top = 0
        Width = 474
        Height = 180
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'MKBD Report File|*.mkb'
    Left = 168
    Top = 40
  end
  object cdsRptGrpType: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPEGRP'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryRptGrpType'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 160
    object cdsRptGrpTypeRPTTYPEGRP: TStringField
      FieldName = 'RPTTYPEGRP'
      Required = True
      Size = 10
    end
    object cdsRptGrpTypeRPTDESC: TStringField
      FieldName = 'RPTDESC'
      Size = 50
    end
    object cdsRptGrpTypeCOUNTCOL: TIntegerField
      FieldName = 'COUNTCOL'
    end
    object cdsRptGrpTypeFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 50
    end
    object cdsRptGrpTypeEXTFILE: TStringField
      FieldName = 'EXTFILE'
      Size = 5
    end
    object cdsRptGrpTypeDELIMITER: TStringField
      FieldName = 'DELIMITER'
      Size = 1
    end
    object cdsRptGrpTypeDATEFORMAT: TStringField
      FieldName = 'DATEFORMAT'
    end
    object cdsRptGrpTypeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRptGrpTypeMODUI: TWideStringField
      FieldName = 'MODUI'
      FixedChar = True
      Size = 10
    end
    object cdsRptGrpTypeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRptGrpTypeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRptGrpTypeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRptGrpTypeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRptGrpTypeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRptGrpTypeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRptGrpTypeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsDelimiterData: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Value'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Delimiter'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryDelimiterData'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 160
    object cdsDelimiterDatadata: TMemoField
      FieldName = 'data'
      BlobType = ftMemo
    end
  end
  object cdsCreateReportAll: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RptType'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryCreateReportAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 208
    object cdsCreateReportAlldata: TStringField
      FieldName = 'data'
      Size = 8000
    end
  end
  object cdsCheckDifferent: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPEGRP'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryCheckDifferent'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 48
    object cdsCheckDifferentSource_Data: TStringField
      FieldName = 'Source_Data'
      Size = 100
    end
    object cdsCheckDifferentDifferent_Value: TFloatField
      FieldName = 'Different_Value'
      DisplayFormat = '#,##0.00;(#,##0.00);-'
    end
  end
end
