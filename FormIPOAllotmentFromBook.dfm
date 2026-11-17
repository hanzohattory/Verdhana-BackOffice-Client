object frmIPOAllotmentFromBook: TfrmIPOAllotmentFromBook
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'IPO Allotment From Book'
  ClientHeight = 600
  ClientWidth = 1046
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 551
    Width = 1046
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
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
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1046
    Height = 289
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 76
      Top = 10
      DataBinding.DataField = 'IPOCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 265
      Top = 10
      DataBinding.DataField = 'ENTRYDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 120
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 440
      Top = 10
      DataBinding.DataField = 'IPODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 76
      Top = 37
      DataBinding.DataField = 'SCRIPNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 733
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 76
      Top = 64
      DataBinding.DataField = 'ORDERFROMDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 120
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 211
      Top = 64
      DataBinding.DataField = 'ORDERTODATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 87
      Top = 136
      DataBinding.DataField = 'NETFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 87
      Top = 163
      DataBinding.DataField = 'VAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 87
      Top = 190
      DataBinding.DataField = 'WHT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 76
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 277
      Top = 136
      DataBinding.DataField = 'BOTPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 277
      Top = 163
      DataBinding.DataField = 'TOPPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 277
      Top = 190
      DataBinding.DataField = 'FIXEDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 416
      Top = 91
      Caption = 'Guarantee Type'
      DataBinding.DataField = 'GUARANTEETYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Caption = 'Full Commitment'
          Value = 'F'
        end
        item
          Caption = 'Non Full Commitment'
          Value = 'N'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 15
      Height = 132
      Width = 137
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 265
      Top = 91
      RepositoryItem = dmGlobal.luBankByAccount
      DataBinding.DataField = 'ACCBANKID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 126
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 76
      Top = 229
      DataBinding.DataField = 'REMARK1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 733
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 76
      Top = 256
      DataBinding.DataField = 'REMARK2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 733
    end
    object cxDBDateEdit5: TcxDBDateEdit
      Left = 410
      Top = 64
      DataBinding.DataField = 'CONDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 675
      Top = 109
      DataBinding.DataField = 'COMMITMENTAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 675
      Top = 136
      DataBinding.DataField = 'ABSORBAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 675
      Top = 163
      DataBinding.DataField = 'BGAMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 675
      Top = 190
      DataBinding.DataField = 'HAIRCUT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'IPO Code'
      Parent = dxLayoutGroup4
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Entry Date'
      Parent = dxLayoutGroup4
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'IPO Date'
      Parent = dxLayoutGroup4
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Issuer Name'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Order Period'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Net Fee (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'VAT (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'WHT (%)'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group11
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Bottom'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Top'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Fixed'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Price Prediction'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Fee'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Guarantee Type'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group10
      Control = cxDBRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Broker Bank'
      Parent = dxLayoutControl1Group11
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Remark'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = ' '
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Contract Date'
      Parent = dxLayoutControl1Group2
      Control = cxDBDateEdit5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Commitment Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Absorb Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'BG Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'Haircut (%)'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group10
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 289
    Width = 517
    Height = 262
    Align = alLeft
    TabOrder = 2
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popBook
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBook
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'IPO Books'
        end>
      object gvwMasterBOOKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOOKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBOOKCODE: TcxGridDBBandedColumn
        Caption = 'Book Code'
        DataBinding.FieldName = 'BOOKCODE'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterBOOKDATE: TcxGridDBBandedColumn
        Caption = 'Book Date'
        DataBinding.FieldName = 'BOOKDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBOOKDESC: TcxGridDBBandedColumn
        Caption = 'Book Description'
        DataBinding.FieldName = 'BOOKDESC'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBOOKTYPE: TcxGridDBBandedColumn
        Caption = 'Book Type'
        DataBinding.FieldName = 'BOOKTYPE'
        RepositoryItem = dmGlobal.luIPOBookType
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCUST_NAME: TcxGridDBBandedColumn
        Caption = 'Cust Name'
        DataBinding.FieldName = 'CUST_NAME'
        Width = 230
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Type'
        DataBinding.FieldName = 'CUST_IDCARDTYPE'
        RepositoryItem = dmGlobal.luIDType
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn
        Caption = 'Cust ID Card No.'
        DataBinding.FieldName = 'CUST_IDCARDNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn
        Caption = 'Cust ID Card Expire'
        DataBinding.FieldName = 'CUST_IDCARDEXPIRE'
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn
        Caption = 'Cust Address'
        DataBinding.FieldName = 'CUST_ADDRESS'
        Width = 170
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_PHONE: TcxGridDBBandedColumn
        Caption = 'Cust Phone'
        DataBinding.FieldName = 'CUST_PHONE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCUST_FAX: TcxGridDBBandedColumn
        Caption = 'Cust Fax'
        DataBinding.FieldName = 'CUST_FAX'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCUST_MAIL: TcxGridDBBandedColumn
        Caption = 'Cust Mail'
        DataBinding.FieldName = 'CUST_MAIL'
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterORDERTYPE: TcxGridDBBandedColumn
        Caption = 'Order Type'
        DataBinding.FieldName = 'ORDERTYPE'
        RepositoryItem = dmGlobal.luIPOBookOrderType
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterORDERCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'ORDERCCY'
        RepositoryItem = dmGlobal.luCurrency
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterORDERMAXPRICE: TcxGridDBBandedColumn
        Caption = 'Order Max Price'
        DataBinding.FieldName = 'ORDERMAXPRICE'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterORDERVALUE: TcxGridDBBandedColumn
        Caption = 'Order Value'
        DataBinding.FieldName = 'ORDERVALUE'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        RepositoryItem = dmGlobal.luIPOStatus
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterDIST_TYPE: TcxGridDBBandedColumn
        Caption = 'Distribution Type'
        DataBinding.FieldName = 'DIST_TYPE'
        RepositoryItem = dmGlobal.luIPODistType
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterORDERBASED: TcxGridDBBandedColumn
        Caption = 'Order Based'
        DataBinding.FieldName = 'ORDERBASED'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Quantity'
            ImageIndex = 0
            Value = 'Q'
          end
          item
            Description = 'Amount'
            Value = 'A'
          end>
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object cxGrid1: TcxGrid
    Left = 525
    Top = 289
    Width = 521
    Height = 262
    Align = alClient
    TabOrder = 3
    object gvwAllotments: TcxGridDBBandedTableView
      PopupMenu = popAllotment
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAllotments
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'IPO Allotments'
        end>
      object gvwAllotmentsALLOTMENTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTMENTID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAllotmentsIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAllotmentsALLOTMENTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTMENTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAllotmentsACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAllotmentsACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAllotmentsQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwAllotmentsAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwAllotmentsNETFEE_PCT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETFEE_PCT'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwAllotmentsVAT_PCT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_PCT'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwAllotmentsWHT_PCT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT_PCT'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwAllotmentsBFEE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BFEE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwAllotmentsVAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwAllotmentsWHT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwAllotmentsNETAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETAMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwAllotmentsCDBCRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDBCRID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwAllotmentsCOUTSTANDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUTSTANDID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwAllotmentsFPPS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FPPS'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwAllotmentsDPPS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DPPS'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwAllotmentsCOFSENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COFSENT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwAllotmentsCONFIRMED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRMED'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwAllotmentsCONFORIGIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFORIGIN'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwAllotmentsPOSTEDFINANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTEDFINANCE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwAllotmentsPOSTEDCUSTODY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTEDCUSTODY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwAllotmentsIDCARD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IDCARD'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwAllotmentsQTYPROCESS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTYPROCESS'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwAllotmentsPEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PEID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwAllotmentsREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwAllotmentsBOOKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOOKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwAllotmentsMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwAllotmentsMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwAllotmentsAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwAllotmentsAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwAllotmentsUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwAllotmentsUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwAllotmentsNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwAllotmentsISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwAllotmentsID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwAllotmentsACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 295
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwAllotments
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 517
    Top = 289
    Width = 8
    Height = 262
    Control = grdMaster
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmIPOList.cdsIPO
    Left = 592
    Top = 72
  end
  object dsBook: TDataSource
    DataSet = frmIPOList.cdsIPOBookOutstanding
    Left = 240
    Top = 376
  end
  object dsAllotments: TDataSource
    DataSet = frmIPOList.cdsIPOAllotment
    Left = 728
    Top = 400
  end
  object aclAllotments: TActionList
    Left = 376
    Top = 384
    object actAdd: TNAction
      Category = 'NActions'
      Caption = 'Add Selected Book to Allotment'
      OnExecute = actAddExecute
      CheckPermission = False
    end
    object actDelete: TNAction
      Category = 'NActions'
      Caption = 'Delete'
      OnExecute = actDeleteExecute
      CheckPermission = False
    end
    object NAction3: TNAction
      Category = 'NActions'
      Caption = 'NAction3'
      CheckPermission = False
    end
  end
  object popBook: TPopupMenu
    Left = 224
    Top = 472
    object AddSelectedBooktoAllotment1: TMenuItem
      Action = actAdd
    end
  end
  object popAllotment: TPopupMenu
    Left = 672
    Top = 472
    object Delete1: TMenuItem
      Action = actDelete
    end
  end
end
