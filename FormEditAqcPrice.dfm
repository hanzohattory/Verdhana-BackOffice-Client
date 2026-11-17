object frmEditAqcPrice: TfrmEditAqcPrice
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmEditAqcPrice'
  ClientHeight = 178
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 128
    Width = 195
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 118
    ExplicitWidth = 205
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Save'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 195
    Height = 128
    Align = alClient
    BevelKind = bkTile
    TabOrder = 0
    ExplicitWidth = 205
    ExplicitHeight = 125
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 59
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ACQDATE'
      DataBinding.DataSource = dsAqcBondHis
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 86
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 59
      Top = 37
      DataBinding.DataField = 'ACQ_PRICE'
      DataBinding.DataSource = dsAqcBondHis
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 59
      Top = 64
      DataBinding.DataField = 'FACEVALUE'
      DataBinding.DataSource = dsAqcBondHis
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 59
      Top = 91
      TabStop = False
      DataBinding.DataField = 'PROCEED'
      DataBinding.DataSource = dsAqcBondHis
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Aqc Date'
      Parent = dxLayoutControl2Group_Root
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Text = 'Price'
      Parent = dxLayoutControl2Group_Root
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      CaptionOptions.Text = 'Value'
      Parent = dxLayoutControl2Group_Root
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl2Item4: TdxLayoutItem
      CaptionOptions.Text = 'Proceed'
      Parent = dxLayoutControl2Group_Root
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dsAqcBondHis: TDataSource
    DataSet = frmBondsMultiDealTicket.cdsAqcHistPos
    Left = 165
    Top = 6
  end
end
