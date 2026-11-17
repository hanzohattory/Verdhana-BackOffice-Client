object frmProgressBar: TfrmProgressBar
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Please wait until process finished . . .'
  ClientHeight = 61
  ClientWidth = 523
  Color = clBtnFace
  TransparentColorValue = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 523
    Height = 61
    Align = alClient
    TabOrder = 0
    object barProses: TcxProgressBar
      Left = 10
      Top = 10
      Properties.Max = 100.000000000000000000
      Properties.PeakValue = 50.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Width = 500
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object pbProses: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Process...'
      CaptionOptions.Layout = clBottom
      Control = barProses
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
