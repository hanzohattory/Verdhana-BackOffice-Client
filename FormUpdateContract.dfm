object frmUpdateContract: TfrmUpdateContract
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Change Charges Amount'
  ClientHeight = 423
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 367
    Width = 492
    Height = 56
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 12
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 94
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
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
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 492
    Height = 367
    Align = alClient
    TabOrder = 1
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 108
      Top = 33
      TabStop = False
      DataBinding.DataField = 'GROSSAMOUNT'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 160
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 108
      Top = 63
      TabStop = False
      DataBinding.DataField = 'BROKERFEE'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 160
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 108
      Top = 123
      TabStop = False
      DataBinding.DataField = 'LEVY'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 160
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 108
      Top = 153
      TabStop = False
      DataBinding.DataField = 'VAT_LEVY'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 160
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit
      Left = 108
      Top = 183
      TabStop = False
      DataBinding.DataField = 'KPEI'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 160
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit
      Left = 108
      Top = 213
      TabStop = False
      DataBinding.DataField = 'SALESTAX'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 160
    end
    object cxDBCurrencyEdit7: TcxDBCurrencyEdit
      Left = 108
      Top = 243
      TabStop = False
      DataBinding.DataField = 'WHT'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 160
    end
    object cxDBCurrencyEdit8: TcxDBCurrencyEdit
      Left = 108
      Top = 273
      TabStop = False
      DataBinding.DataField = 'WAPU'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 160
    end
    object cxDBCurrencyEdit9: TcxDBCurrencyEdit
      Left = 108
      Top = 303
      TabStop = False
      DataBinding.DataField = 'NETAMOUNT'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 160
    end
    object edGrossAmount: TcxDBCurrencyEdit
      Left = 303
      Top = 33
      TabStop = False
      DataBinding.DataField = 'GROSSAMOUNT'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 160
    end
    object edBrokerFee: TcxCurrencyEdit
      Left = 303
      Top = 63
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edBrokerFeePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 160
    end
    object edLevy: TcxCurrencyEdit
      Left = 303
      Top = 123
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edLevyPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 160
    end
    object edVATLevy: TcxCurrencyEdit
      Left = 303
      Top = 153
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edVATLevyPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 160
    end
    object edKPEI: TcxCurrencyEdit
      Left = 303
      Top = 183
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edKPEIPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Width = 160
    end
    object edSalesTax: TcxCurrencyEdit
      Left = 303
      Top = 213
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edSalesTaxPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Width = 160
    end
    object edWHT: TcxCurrencyEdit
      Left = 303
      Top = 243
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edWHTPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Width = 160
    end
    object edWapu: TcxCurrencyEdit
      Left = 303
      Top = 273
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edWapuPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 160
    end
    object edNetAmount: TcxCurrencyEdit
      Left = 303
      Top = 303
      TabStop = False
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 19
      Width = 160
    end
    object edVAT: TcxCurrencyEdit
      Left = 303
      Top = 93
      RepositoryItem = dmGlobal.edCurrency
      Properties.OnEditValueChanged = edVATPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 160
    end
    object cxDBCurrencyEdit10: TcxDBCurrencyEdit
      Left = 108
      Top = 93
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsUpdateContract
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 160
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Old Value'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl2Group_Root
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Value'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Gross Amount'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Broker Fee'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Levy'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'VAT Levy'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'KPEI'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Sales Tax'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'WHT'
      Control = cxDBCurrencyEdit7
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Wapu'
      Control = cxDBCurrencyEdit8
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Net Amount'
      Control = cxDBCurrencyEdit9
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCurrencyEdit10'
      CaptionOptions.Visible = False
      Control = edGrossAmount
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit1'
      CaptionOptions.Visible = False
      Control = edBrokerFee
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit2'
      CaptionOptions.Visible = False
      Control = edLevy
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit3'
      CaptionOptions.Visible = False
      Control = edVATLevy
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit4'
      CaptionOptions.Visible = False
      Control = edKPEI
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit5'
      CaptionOptions.Visible = False
      Control = edSalesTax
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit6'
      CaptionOptions.Visible = False
      Control = edWHT
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit7'
      CaptionOptions.Visible = False
      Control = edWapu
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCurrencyEdit8'
      CaptionOptions.Visible = False
      Control = edNetAmount
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxCurrencyEdit1'
      CaptionOptions.Visible = False
      Control = edVAT
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'VAT'
      Control = cxDBCurrencyEdit10
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dsUpdateContract: TDataSource
    DataSet = frmContract.cdsDataContract
    Left = 472
    Top = 304
  end
end
