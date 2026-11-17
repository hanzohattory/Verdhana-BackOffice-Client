object frmDataDukcapil: TfrmDataDukcapil
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Dukcapil'
  ClientHeight = 406
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 357
    Width = 702
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOk: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
    object cxButton1: TcxButton
      Left = 91
      Top = 10
      Width = 166
      Height = 25
      Caption = 'Replace With Dukcapil Data'
      TabOrder = 1
      OnClick = cxButton1Click
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object mmDukcapil: TRichEdit
    Left = 0
    Top = 0
    Width = 702
    Height = 357
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Zoom = 100
  end
  object dsOA: TDataSource
    Left = 432
    Top = 128
  end
  object dsDukcapil: TDataSource
    DataSet = frmOpeningAccountRetail.cdsDukcapil
    Left = 432
    Top = 184
  end
  object dsAddress: TDataSource
    Left = 432
    Top = 240
  end
end
