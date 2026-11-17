object frmBankRefference: TfrmBankRefference
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 77
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 267
    Height = 43
    Align = alTop
    TabOrder = 0
    object txtRefference: TcxTextEdit
      Left = 69
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 187
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Refference'
      Parent = dxLayoutControl1Group_Root
      Control = txtRefference
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxButton1: TcxButton
    Left = 181
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 1
  end
end
