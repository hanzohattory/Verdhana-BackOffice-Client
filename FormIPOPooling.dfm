object frmIPOPooling: TfrmIPOPooling
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'IPO Pooling'
  ClientHeight = 394
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 635
    Height = 345
    Align = alClient
    TabOrder = 0
    object txtPoolingCode: TcxDBTextEdit
      Left = 79
      Top = 37
      DataBinding.DataField = 'POOLINGCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object txtPoolingDate: TcxDBDateEdit
      Left = 279
      Top = 37
      DataBinding.DataField = 'POOLINGDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object txtPoolingDesc: TcxDBTextEdit
      Left = 79
      Top = 64
      DataBinding.DataField = 'POOLINGDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 470
    end
    object rgPoolingType: TcxDBRadioGroup
      Left = 10
      Top = 91
      Caption = 'Pooling Type'
      DataBinding.DataField = 'POOLINGTYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Customer'
          Value = 'C'
        end
        item
          Caption = 'Non Customer'
          Value = 'N'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      OnExit = rgPoolingTypeExit
      Height = 54
      Width = 360
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 194
      Top = 151
      DataBinding.DataField = 'CUST_NAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 426
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 79
      Top = 178
      RepositoryItem = dmGlobal.luIDType
      DataBinding.DataField = 'CUST_IDCARDTYPE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 279
      Top = 178
      DataBinding.DataField = 'CUST_IDCARDNO'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 499
      Top = 178
      DataBinding.DataField = 'CUST_IDCARDEXPIRE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 79
      Top = 205
      DataBinding.DataField = 'CUST_ADDRESS'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 470
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 79
      Top = 232
      DataBinding.DataField = 'CUST_PHONE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 279
      Top = 232
      DataBinding.DataField = 'CUST_FAX'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 79
      Top = 259
      DataBinding.DataField = 'CUST_MAIL'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 470
    end
    object edMaxPrice: TcxDBTextEdit
      Left = 279
      Top = 286
      DataBinding.DataField = 'FIXEDPRICE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object txtOrderQty: TcxDBTextEdit
      Left = 79
      Top = 313
      DataBinding.DataField = 'ORDERQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object txtCCY: TcxDBLookupComboBox
      Left = 79
      Top = 286
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'ORDERCCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 121
    end
    object cbIPO: TcxDBLookupComboBox
      Left = 79
      Top = 10
      DataBinding.DataField = 'IPOID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'IPOID'
      Properties.ListColumns = <
        item
          FieldName = 'IPOCODE'
        end
        item
          FieldName = 'SCRIPNAME'
        end>
      Properties.ListSource = frmIPOList.dsBrowseMaster
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 122
    end
    object txtIPO: TcxDBTextEdit
      Left = 216
      Top = 10
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 332
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 279
      Top = 313
      DataBinding.DataField = 'ORDERAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object edAccount: TcxDBButtonEdit
      Left = 79
      Top = 151
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccountPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 100
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Pooling Code'
      Parent = dxLayoutGroup2
      Control = txtPoolingCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Pooling Date'
      Parent = dxLayoutGroup2
      Control = txtPoolingDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = txtPoolingDesc
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Visible = False
      Control = rgPoolingType
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card Type'
      Parent = dxLayoutControl1Group7
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card No.'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ID Card Exp. Date'
      Parent = dxLayoutControl1Group7
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Address'
      Parent = dxLayoutGroup1
      Visible = False
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 6
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Phone'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Fax'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Email'
      Parent = dxLayoutGroup1
      Visible = False
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 8
    end
    object lcMaxPrice: TdxLayoutItem
      CaptionOptions.Text = 'Order Price'
      Parent = dxLayoutControl1Group4
      Control = edMaxPrice
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Order Qty'
      Parent = dxLayoutControl1Group5
      Control = txtOrderQty
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group4
      Control = txtCCY
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      Visible = False
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'IPO'
      Parent = dxLayoutControl1Group6
      Control = cbIPO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group6
      Control = txtIPO
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Order Amount'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcCustomer: TdxLayoutItem
      AlignVert = avCenter
      CaptionOptions.Text = 'Customer'
      Parent = dxLayoutControl1Group1
      Control = edAccount
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      Visible = False
      ButtonOptions.Buttons = <>
      Enabled = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 345
    Width = 635
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
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
      Left = 91
      Top = 10
      Width = 75
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
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = frmIPOPoolings.cdsIPOPooling
    Left = 400
    Top = 96
  end
end
