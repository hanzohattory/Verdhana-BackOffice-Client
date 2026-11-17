inherited frmSplash: TfrmSplash
  Caption = 'Nayaga OMS Client'
  ClientHeight = 388
  ClientWidth = 660
  Font.Height = -11
  Font.Name = 'Tahoma'
  ExplicitWidth = 660
  ExplicitHeight = 388
  TextHeight = 13
  inherited lblVersion: TLabel
    Left = 578
    Top = 350
    ExplicitLeft = 578
    ExplicitTop = 350
  end
  inherited imgCompany: TImage
    Top = 103
    ExplicitTop = 103
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 347
    Width = 660
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object lblProgress: TLabel
      Left = 5
      Top = 2
      Width = 73
      Height = 17
      Caption = 'Initialize.........'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pbProgress: TcxProgressBar
      AlignWithMargins = True
      Left = 3
      Top = 17
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
      TabOrder = 0
      Width = 654
    end
  end
  object pnlRight: TPanel
    Left = 456
    Top = 0
    Width = 204
    Height = 347
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object lblReleaseNotes: TcxLabel
      Left = 8
      Top = 0
      Caption = 'Release Notes:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
end
