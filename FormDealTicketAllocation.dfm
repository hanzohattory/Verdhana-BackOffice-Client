object frmDealTicketAllocation: TfrmDealTicketAllocation
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Deal Ticket Allocation'
  ClientHeight = 495
  ClientWidth = 777
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
    Top = 0
    Width = 777
    Height = 148
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 709
    object cxDBLabel2: TcxDBLabel
      Left = 160
      Top = 10
      DataBinding.DataField = 'DEALTICKETCODE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object cxDBLabel3: TcxDBLabel
      Left = 389
      Top = 10
      DataBinding.DataField = 'DEALTICKETDATE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 112
    end
    object cxDBLabel4: TcxDBLabel
      Left = 59
      Top = 37
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 134
    end
    object cxDBLabel5: TcxDBLabel
      Left = 248
      Top = 37
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 69
    end
    object cxDBLabel6: TcxDBLabel
      Left = 367
      Top = 37
      DataBinding.DataField = 'CHANNELCODE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 134
    end
    object txtAccount: TcxLabel
      Left = 59
      Top = 64
      AutoSize = False
      Caption = 'txtAccount'
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 17
      Width = 442
    end
    object txtStock: TcxLabel
      Left = 59
      Top = 87
      AutoSize = False
      Caption = 'txtStock'
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 19
      Width = 442
    end
    object txtBuySell: TcxLabel
      Left = 59
      Top = 10
      AutoSize = False
      Caption = 'txtBuySell'
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 19
      Width = 65
    end
    object cxDBLabel1: TcxDBLabel
      Left = 59
      Top = 112
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 101
    end
    object cxDBLabel7: TcxDBLabel
      Left = 238
      Top = 112
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 138
    end
    object cxDBLabel8: TcxDBLabel
      Left = 440
      Top = 112
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsDealTiket
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 127
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBLabel3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group2
      Control = cxDBLabel4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group2
      Control = cxDBLabel5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Channel'
      Parent = dxLayoutControl1Group2
      Control = cxDBLabel6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group_Root
      Control = txtAccount
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock'
      Parent = dxLayoutControl1Group_Root
      Control = txtStock
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Buy / Sell'
      Parent = dxLayoutControl1Group1
      Control = txtBuySell
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Quantity'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'Average Price'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Total Value'
      Parent = dxLayoutControl1Group3
      Control = cxDBLabel8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 446
    Width = 777
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 357
    ExplicitWidth = 709
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
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl2Group1
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl2Group1
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl2Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdDealTicketAlloc: TcxGrid
    Left = 0
    Top = 148
    Width = 777
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitWidth = 866
    object gvwDealTicketAlloc: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsAllocation
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'AQTY'
          Column = gvwDealTicketAllocAQTY
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'AVALUE'
          Column = gvwDealTicketAllocAVALUE
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmDealTickets.BlueToggle
      object gvwDealTicketAllocCHKSELECTED: TcxGridDBColumn
        DataBinding.FieldName = 'CHKSELECTED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 22
        IsCaptionAssigned = True
      end
      object gvwDealTicketAllocACCID: TcxGridDBColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCID'
      end
      object gvwDealTicketAllocACCNAME: TcxGridDBColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ACCID'
        Properties.ListColumns = <
          item
            FieldName = 'ACCNAME'
          end
          item
            FieldName = 'ACCCODE'
          end>
        Properties.ListSource = dmLookup.dsLuAllocAccount
        Width = 275
      end
      object gvwDealTicketAllocAQTY: TcxGridDBColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'AQTY'
        Width = 79
      end
      object gvwDealTicketAllocAPRICE: TcxGridDBColumn
        Caption = 'Price'
        DataBinding.FieldName = 'APRICE'
        Width = 94
      end
      object gvwDealTicketAllocAVALUE: TcxGridDBColumn
        Caption = 'Value'
        DataBinding.FieldName = 'AVALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 112
      end
      object gvwDealTicketAllocADIFFVALUE: TcxGridDBColumn
        Caption = 'Diff Value'
        DataBinding.FieldName = 'ADIFFVALUE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 90
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gvwDealTicketAlloc
    end
  end
  object dsDealTiket: TDataSource
    DataSet = frmDealTickets.cdsDealTicket
    Left = 585
    Top = 51
  end
  object dsAllocation: TDataSource
    DataSet = frmDealTickets.cdsDealTicketAllocTmp
    Left = 657
    Top = 51
  end
end
