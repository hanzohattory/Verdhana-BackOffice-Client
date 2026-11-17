object frmPlaseWait: TfrmPlaseWait
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmPlaseWait'
  ClientHeight = 60
  ClientWidth = 406
  Color = clBtnFace
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
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Please Wait, Process In Progress...'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Trebuchet MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 46
    ExplicitHeight = 17
    AnchorX = 203
    AnchorY = 30
  end
end
