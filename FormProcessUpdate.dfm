inherited frmProcessUpdate: TfrmProcessUpdate
  Caption = 'frmProcessUpdate'
  ClientHeight = 119
  ClientWidth = 396
  ExplicitWidth = 396
  ExplicitHeight = 119
  TextHeight = 15
  inherited lblVersion: TLabel
    Left = 323
    Top = 72
    Width = 65
    Height = 15
    Alignment = taRightJustify
    ParentFont = True
    ExplicitLeft = 323
    ExplicitTop = 72
    ExplicitWidth = 65
    ExplicitHeight = 15
  end
  object lblInfo: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
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
    Transparent = True
    Height = 87
    Width = 396
    AnchorX = 198
    AnchorY = 44
  end
  object pbProgress: TcxProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 93
    Align = alBottom
    Properties.BarStyle = cxbsGradient
    Properties.BeginColor = clCream
    Properties.EndColor = clBlue
    Properties.OverloadBeginColor = clWhite
    Properties.PeakValue = 100.000000000000000000
    Properties.SolidTextColor = True
    Style.BorderColor = clWhite
    Style.Edges = []
    Style.Shadow = False
    Style.TransparentBorder = True
    TabOrder = 1
    ExplicitLeft = -135
    ExplicitTop = 17
    ExplicitWidth = 531
    Width = 390
  end
  object lblProgress: TcxLabel
    Left = 8
    Top = 72
    Caption = 'Initialize...'
  end
end
