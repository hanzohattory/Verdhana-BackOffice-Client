object frmModifyEntitlement: TfrmModifyEntitlement
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Modify Entitlement'
  ClientHeight = 228
  ClientWidth = 292
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
    Top = 178
    Width = 292
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOk: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnOkClick
    end
    object cxButton1: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
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
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 292
    Height = 178
    Align = alClient
    TabOrder = 1
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 89
      Top = 37
      DataBinding.DataField = 'CA_QTY'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      Properties.DecimalPlaces = 9
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 83
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 89
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 176
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 89
      Top = 64
      DataBinding.DataField = 'CA_AMT'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      Properties.DecimalPlaces = 9
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 83
    end
    object edTaxRate: TcxDBCurrencyEdit
      Left = 89
      Top = 91
      DataBinding.DataField = 'TAXRATE'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      Properties.DecimalPlaces = 9
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 56
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 89
      Top = 172
      DataBinding.DataField = 'TAXAMT'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      Properties.DecimalPlaces = 9
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 143
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Left = 89
      Top = 199
      DataBinding.DataField = 'CA_NETAMT'
      DataBinding.DataSource = frmCorpActEntitlement.dsCorpActEnt
      Properties.DecimalPlaces = 9
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 143
    end
    object txtTax: TcxCurrencyEdit
      Left = 89
      Top = 118
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 9
      Properties.DisplayFormat = '#,##0.######;(#,##0.######);0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      OnExit = txtTaxExit
      Width = 56
    end
    object txtTaxAmount: TcxCurrencyEdit
      Left = 89
      Top = 145
      TabStop = False
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 143
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CA Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CA Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl2Item4: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tax Rate (%)'
      Visible = False
      Control = edTaxRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl2Item5: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tax Amount'
      Visible = False
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl2Item6: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'CA Net Amount'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutControl2Item7: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tax Rate (%)'
      Control = txtTax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl2Item8: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tax Amount'
      Control = txtTaxAmount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
end
