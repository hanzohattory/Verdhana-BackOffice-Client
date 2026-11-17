object frmProcessWait: TfrmProcessWait
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  ClientHeight = 80
  ClientWidth = 467
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object lblInfo: TcxLabel
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Please Wait . . .'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Roboto Condensed'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitWidth = 380
    AnchorX = 234
    AnchorY = 32
  end
  object lblProcess: TcxLabel
    Left = 0
    Top = 63
    Align = alBottom
    Visible = False
    ExplicitWidth = 380
  end
end
