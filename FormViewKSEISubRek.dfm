object frmViewKSEISubRek: TfrmViewKSEISubRek
  Left = 0
  Top = 0
  Caption = 'View KSEI Sub Rek'
  ClientHeight = 177
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 437
    Height = 128
    Align = alClient
    BevelKind = bkTile
    TabOrder = 0
    ExplicitLeft = 57
    ExplicitTop = 27
    ExplicitWidth = 527
    ExplicitHeight = 194
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 100
      Top = 10
      TabStop = False
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = 16777151
      Style.HotTrack = False
      TabOrder = 0
      Width = 213
    end
    object txtSubRek: TcxDBTextEdit
      Left = 100
      Top = 37
      TabStop = False
      DataBinding.DataField = 'SUBREK01'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = 16777151
      Style.HotTrack = False
      TabOrder = 1
      Width = 318
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 100
      Top = 64
      TabStop = False
      DataBinding.DataField = 'SUBREK04'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = 16777151
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 100
      Top = 91
      TabStop = False
      DataBinding.DataField = 'SID'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = 16777151
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Client name'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Keterangan: TdxLayoutItem
      CaptionOptions.Text = 'KSEI Sub Rek 001'
      Parent = dxLayoutGroup1
      Control = txtSubRek
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
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'KSEI Sub Rek 004'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'SID'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object LayoutControlFooter: TdxLayoutControl
    Left = 0
    Top = 128
    Width = 437
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitLeft = 57
    ExplicitTop = 221
    ExplicitWidth = 527
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 87
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 103
      Top = 10
      Width = 82
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlFooterItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsSubject: TDataSource
    DataSet = frmCOBList.cdsViewKSEISubrek
    Left = 383
    Top = 192
  end
end
