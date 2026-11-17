inherited frmGLInterfaces: TfrmGLInterfaces
  Caption = 'frmGLInterfaces'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 49
    Height = 328
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 691
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -178
    ExplicitWidth = 869
    object dtReport: TcxDateEdit
      Left = 74
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 201
      Top = 10
      Width = 88
      Height = 25
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 295
      Top = 10
      Width = 114
      Height = 25
      TabOrder = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Report Date'
      Parent = dxLayoutControl1Group2
      Control = dtReport
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
end
