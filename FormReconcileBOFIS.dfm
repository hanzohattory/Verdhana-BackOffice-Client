object frmReconcileBOFIS: TfrmReconcileBOFIS
  Left = 0
  Top = 0
  Caption = 'Generate Reconcile ACT & Bal'
  ClientHeight = 245
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 482
    Height = 73
    Align = alTop
    TabOrder = 0
    object dtReport: TcxDateEdit
      Left = 74
      Top = 10
      Enabled = False
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 37
      Width = 185
      Height = 25
      Caption = 'Execute'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Report Date'
      Control = dtReport
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 73
    Width = 482
    Height = 172
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tsCompanyData
    Properties.CustomButtons.Buttons = <>
    Properties.MultiLine = True
    Properties.Style = 9
    LookAndFeel.Kind = lfStandard
    ClientRectBottom = 172
    ClientRectRight = 482
    ClientRectTop = 20
    object tsCompanyData: TcxTabSheet
      Caption = 'Log Message'
      ImageIndex = 0
      object mmReport: TMemo
        Left = 0
        Top = 0
        Width = 482
        Height = 152
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object cdsUploadACT: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIUploadACT'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 8
    object cdsUploadACTUploadACT: TMemoField
      FieldName = 'UploadACT'
      BlobType = ftMemo
    end
  end
  object cdsUploadBal: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIUploadBal'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 56
    object cdsUploadBalUploadBal: TMemoField
      FieldName = 'UploadBal'
      BlobType = ftMemo
    end
  end
  object cdsACTSummary: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIACTSummary'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 32
    object cdsACTSummaryKSEIActSummary: TMemoField
      FieldName = 'KSEIActSummary'
      BlobType = ftMemo
    end
  end
  object cdsACTDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIACTDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 80
    object cdsACTDetailKSEIActDetail: TMemoField
      FieldName = 'KSEIActDetail'
      BlobType = ftMemo
    end
  end
  object cdsBalSummary: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIBalSummary'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 8
    object cdsBalSummaryKSEIBalSummary: TMemoField
      FieldName = 'KSEIBalSummary'
      BlobType = ftMemo
    end
  end
  object cdsBalDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'reportDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryKSEIBalDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 56
    object cdsBalDetailKSEIBalDetail: TMemoField
      FieldName = 'KSEIBalDetail'
      BlobType = ftMemo
    end
  end
end
