object frmReportTotalTransaction: TfrmReportTotalTransaction
  Left = 0
  Top = 0
  Caption = 'Total Transaction RDN & DMA'
  ClientHeight = 172
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 411
    Height = 73
    Align = alTop
    TabOrder = 0
    object dtMonth: TcxImageComboBox
      Left = 45
      Top = 10
      RepositoryItem = dmGlobal.luMonth
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtYear: TcxSpinEdit
      Left = 172
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 85
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 37
      Width = 247
      Height = 25
      Caption = 'Generate'
      TabOrder = 2
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
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Period'
      Control = dtMonth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxSpinEdit1'
      CaptionOptions.Visible = False
      Control = dtYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Generate'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 247
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  object mmLog: TcxMemo
    Left = 0
    Top = 73
    Align = alClient
    TabOrder = 1
    Height = 99
    Width = 411
  end
  object cdsTotalTransaction: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PERIOD'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryMonthlyTransaction'
    RemoteServer = dmGlobal.dspConnection
    Left = 304
    Top = 16
    object cdsTotalTransactionChannel: TStringField
      FieldName = 'Channel'
      ReadOnly = True
      Required = True
      Size = 14
    end
    object cdsTotalTransactionPeriod: TStringField
      FieldName = 'Period'
      ReadOnly = True
      Size = 10
    end
    object cdsTotalTransactionNilaiTransaksiBeli: TFloatField
      FieldName = 'Nilai Transaksi Beli'
      ReadOnly = True
    end
    object cdsTotalTransactionNilaiTransaksiJual: TFloatField
      FieldName = 'Nilai Transaksi Jual'
      ReadOnly = True
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xlsx'
    Left = 351
    Top = 16
  end
end
