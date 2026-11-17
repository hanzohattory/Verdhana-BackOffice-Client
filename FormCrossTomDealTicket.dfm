inherited frmCrossTomDealTicket: TfrmCrossTomDealTicket
  Caption = 'Crossing Tomorrow Deal Ticket'
  ClientHeight = 570
  ClientWidth = 1166
  ExplicitWidth = 1172
  ExplicitHeight = 599
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1166
    Height = 480
    ExplicitWidth = 1211
    ExplicitHeight = 480
    object dxLayoutControl3: TdxLayoutControl [0]
      Left = 12
      Top = 30
      Width = 565
      Height = 435
      Align = alTop
      TabOrder = 0
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 208
        Top = 10
        DataBinding.DataField = 'DEALTICKETCODE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 160
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 402
        Top = 10
        DataBinding.DataField = 'DEALTICKETDATE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Width = 100
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 63
        Top = 64
        RepositoryItem = dmGlobal.luTradingAccount
        DataBinding.DataField = 'ACCID'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 6
        Width = 91
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 63
        Top = 91
        RepositoryItem = dmGlobal.luInstrument
        DataBinding.DataField = 'STOCKID'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Width = 91
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 169
        Top = 64
        DataBinding.DataField = 'ACCNAME'
        DataBinding.DataSource = dsSubject
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Width = 336
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 169
        Top = 91
        DataBinding.DataField = 'STOCKNAME'
        DataBinding.DataSource = dsSubject
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Width = 336
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 63
        Top = 37
        RepositoryItem = dmGlobal.luMarket
        DataBinding.DataField = 'MARKETCODE'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 3
        Width = 90
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 348
        Top = 37
        RepositoryItem = dmGlobal.luChannel
        DataBinding.DataField = 'CHANNELCODE'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 5
        Width = 100
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 208
        Top = 37
        DataBinding.DataField = 'CCYCODE'
        DataBinding.DataSource = dsSubject
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 90
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 63
        Top = 10
        RepositoryItem = dmGlobal.luBuySell
        DataBinding.DataField = 'BS'
        DataBinding.DataSource = dsSubject
        Properties.Items = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 90
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 63
        Top = 118
        RepositoryItem = dmGlobal.luDealer
        DataBinding.DataField = 'DEALERID'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 10
        Width = 120
      end
      object cxDBLookupComboBox6: TcxDBLookupComboBox
        Left = 219
        Top = 118
        RepositoryItem = dmGlobal.luSales
        DataBinding.DataField = 'SALESID'
        DataBinding.DataSource = dsSubject
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 11
        Width = 120
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 63
        Top = 145
        DataBinding.DataField = 'DUESTOCK'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 12
        Width = 50
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 170
        Top = 145
        DataBinding.DataField = 'DUECASH'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 13
        Width = 50
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 63
        Top = 172
        DataBinding.DataField = 'DEALQTY'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 14
        Width = 100
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 265
        Top = 172
        DataBinding.DataField = 'DEALPRICE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 15
        Width = 100
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 451
        Top = 172
        DataBinding.DataField = 'DEALVALUE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 17
        Width = 100
      end
      object grdDealTicketExec: TcxGrid
        Left = 10
        Top = 253
        Width = 495
        Height = 171
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 20
        object gvwDealTicketExec: TcxGridDBTableView
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
          Navigator.Visible = True
          DataController.DataSource = dsDealTicketExec
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXQTY'
              Column = gvwDealTicketExecEXQTY
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXVALUE'
              Column = gvwDealTicketExecEXVALUE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = frmDealTickets.BlueToggle
          object gvwDealTicketExecBOARDID: TcxGridDBColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDID'
            RepositoryItem = dmGlobal.luBoard
          end
          object gvwDealTicketExecEXQTY: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'EXQTY'
            Width = 60
          end
          object gvwDealTicketExecEXPRICE: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'EXPRICE'
            Width = 75
          end
          object gvwDealTicketExecEXVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'EXVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 112
          end
          object gvwDealTicketExecEXTIME: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'EXTIME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
          object gvwDealTicketExecBROKERCODE: TcxGridDBColumn
            Caption = 'Broker'
            DataBinding.FieldName = 'BROKERCODE'
            RepositoryItem = dmGlobal.luBroker
          end
          object gvwDealTicketExecCPACCID: TcxGridDBColumn
            Caption = 'Counter Part Account'
            DataBinding.FieldName = 'CPACCID'
            RepositoryItem = dmGlobal.luAccount
            Width = 122
          end
        end
        object grdDealTicketExecLevel1: TcxGridLevel
          GridView = gvwDealTicketExec
        end
      end
      object cxDBTextEdit19: TcxDBTextEdit
        Left = 265
        Top = 199
        DataBinding.DataField = 'ROUNDPRICE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 16
        Width = 100
      end
      object cxDBTextEdit20: TcxDBTextEdit
        Left = 451
        Top = 199
        DataBinding.DataField = 'ROUNDVALUE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 18
        Width = 100
      end
      object cxDBTextEdit21: TcxDBTextEdit
        Left = 451
        Top = 226
        DataBinding.DataField = 'DIFFVALUE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 19
        Width = 100
      end
      object dxLayoutGroup4: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Crossing Account 1'
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Code'
        Parent = dxLayoutControl1Group3
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Date'
        Parent = dxLayoutControl1Group3
        Control = cxDBDateEdit1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Account'
        Parent = dxLayoutControl1Group1
        Control = cxDBLookupComboBox1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Stock'
        Parent = dxLayoutControl1Group2
        Control = cxDBLookupComboBox2
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = '-'
        Parent = dxLayoutControl1Group1
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = '-'
        Parent = dxLayoutControl1Group2
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item7: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Market'
        Parent = dxLayoutControl1Group6
        Control = cxDBLookupComboBox3
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Channel'
        Parent = dxLayoutControl1Group6
        Control = cxDBLookupComboBox4
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group6: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Currency'
        Parent = dxLayoutControl1Group6
        Control = cxDBTextEdit4
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item10: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Buy / Sell'
        Parent = dxLayoutControl1Group3
        Control = cxDBImageComboBox1
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item11: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Dealer'
        Parent = dxLayoutControl1Group4
        Control = cxDBLookupComboBox5
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item12: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Sales'
        Parent = dxLayoutControl1Group4
        Control = cxDBLookupComboBox6
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object dxLayoutControl1Item13: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Due Stock'
        Parent = dxLayoutControl1Group5
        Control = cxDBTextEdit5
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item14: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Due Cash'
        Parent = dxLayoutControl1Group5
        Control = cxDBTextEdit6
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Group5: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutControl1Item15: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Quantity'
        Parent = dxLayoutControl1Group7
        Control = cxDBTextEdit7
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item16: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Deal Avg Price'
        Parent = dxLayoutControl3Group4
        Control = cxDBTextEdit8
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item17: TdxLayoutItem
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Total Value'
        Parent = dxLayoutControl3Group6
        Control = cxDBTextEdit9
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group7: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 6
      end
      object dxLayoutControl3Item1: TdxLayoutItem
        Parent = dxLayoutControl3Group5
        Control = grdDealTicketExec
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object dxLayoutControl3Item2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Req Deal Avg Price'
        Parent = dxLayoutControl3Group4
        Control = cxDBTextEdit19
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Group1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl1Group7
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Item3: TdxLayoutItem
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Req Total Value'
        Parent = dxLayoutControl3Group6
        Control = cxDBTextEdit20
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Group3: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group1
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Different'
        Parent = dxLayoutControl3Group6
        Control = cxDBTextEdit21
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl3Group5: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup4
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Group6: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group3
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Group4: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl3Group3
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
    end
    object dxLayoutControl4: TdxLayoutControl [1]
      Left = 587
      Top = 30
      Width = 566
      Height = 435
      Align = alRight
      TabOrder = 1
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 208
        Top = 10
        DataBinding.DataField = 'DEALTICKETCODE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 160
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 402
        Top = 10
        DataBinding.DataField = 'DEALTICKETDATE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Width = 100
      end
      object cxDBLookupComboBox7: TcxDBLookupComboBox
        Left = 63
        Top = 64
        RepositoryItem = dmGlobal.luTradingAccount
        DataBinding.DataField = 'ACCID'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 6
        Width = 91
      end
      object cxDBLookupComboBox8: TcxDBLookupComboBox
        Left = 63
        Top = 91
        RepositoryItem = dmGlobal.luInstrument
        DataBinding.DataField = 'STOCKID'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Width = 91
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 169
        Top = 64
        DataBinding.DataField = 'ACCNAME'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Width = 336
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 169
        Top = 91
        DataBinding.DataField = 'STOCKNAME'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Width = 336
      end
      object cxDBLookupComboBox9: TcxDBLookupComboBox
        Left = 63
        Top = 37
        RepositoryItem = dmGlobal.luMarket
        DataBinding.DataField = 'MARKETCODE'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 3
        Width = 90
      end
      object cxDBLookupComboBox10: TcxDBLookupComboBox
        Left = 348
        Top = 37
        RepositoryItem = dmGlobal.luChannel
        DataBinding.DataField = 'CHANNELCODE'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 5
        Width = 100
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 208
        Top = 37
        DataBinding.DataField = 'CCYCODE'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 90
      end
      object cxDBImageComboBox2: TcxDBImageComboBox
        Left = 63
        Top = 10
        RepositoryItem = dmGlobal.luBuySell
        DataBinding.DataField = 'BS'
        DataBinding.DataSource = dsSubjectTemp
        Properties.Items = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 0
        Width = 90
      end
      object cxDBLookupComboBox11: TcxDBLookupComboBox
        Left = 63
        Top = 118
        RepositoryItem = dmGlobal.luDealer
        DataBinding.DataField = 'DEALERID'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 10
        Width = 120
      end
      object cxDBLookupComboBox12: TcxDBLookupComboBox
        Left = 219
        Top = 118
        RepositoryItem = dmGlobal.luSales
        DataBinding.DataField = 'SALESID'
        DataBinding.DataSource = dsSubjectTemp
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 11
        Width = 120
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 63
        Top = 145
        DataBinding.DataField = 'DUESTOCK'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 12
        Width = 50
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 170
        Top = 145
        DataBinding.DataField = 'DUECASH'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 13
        Width = 50
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 63
        Top = 172
        DataBinding.DataField = 'DEALQTY'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 14
        Width = 100
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 265
        Top = 172
        DataBinding.DataField = 'DEALPRICE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 15
        Width = 100
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 453
        Top = 172
        DataBinding.DataField = 'DEALVALUE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 17
        Width = 100
      end
      object cxGrid1: TcxGrid
        Left = 10
        Top = 253
        Width = 534
        Height = 171
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 20
        object cxGridDBTableView1: TcxGridDBTableView
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
          Navigator.Visible = True
          DataController.DataSource = dsDealTicketExecTemp
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXQTY'
              Column = cxGridDBColumn2
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXVALUE'
              Column = cxGridDBColumn4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = frmDealTickets.BlueToggle
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDID'
            RepositoryItem = dmGlobal.luBoard
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'EXQTY'
            Width = 60
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'EXPRICE'
            Width = 75
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'EXVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 112
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'EXTIME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Broker'
            DataBinding.FieldName = 'BROKERCODE'
            RepositoryItem = dmGlobal.luBroker
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Counter Part Account'
            DataBinding.FieldName = 'CPACCID'
            RepositoryItem = dmGlobal.luAccount
            Width = 122
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxDBTextEdit22: TcxDBTextEdit
        Left = 265
        Top = 199
        DataBinding.DataField = 'ROUNDPRICE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 16
        Width = 102
      end
      object cxDBTextEdit23: TcxDBTextEdit
        Left = 453
        Top = 199
        DataBinding.DataField = 'ROUNDVALUE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 18
        Width = 100
      end
      object cxDBTextEdit24: TcxDBTextEdit
        Left = 453
        Top = 226
        DataBinding.DataField = 'DIFFVALUE'
        DataBinding.DataSource = dsSubjectTemp
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 19
        Width = 100
      end
      object dxLayoutGroup5: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Crossing Account 2'
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Code'
        Parent = dxLayoutGroup8
        Control = cxDBTextEdit10
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Date'
        Parent = dxLayoutGroup8
        Control = cxDBDateEdit2
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Account'
        Parent = dxLayoutGroup6
        Control = cxDBLookupComboBox7
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Stock'
        Parent = dxLayoutGroup7
        Control = cxDBLookupComboBox8
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = '-'
        Parent = dxLayoutGroup6
        Control = cxDBTextEdit11
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = '-'
        Parent = dxLayoutGroup7
        Control = cxDBTextEdit12
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem9: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Market'
        Parent = dxLayoutGroup9
        Control = cxDBLookupComboBox9
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Channel'
        Parent = dxLayoutGroup9
        Control = cxDBLookupComboBox10
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup6: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup7: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutGroup8: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup9: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem11: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Currency'
        Parent = dxLayoutGroup9
        Control = cxDBTextEdit13
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem12: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Buy / Sell'
        Parent = dxLayoutGroup8
        Control = cxDBImageComboBox2
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Dealer'
        Parent = dxLayoutGroup10
        Control = cxDBLookupComboBox11
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem14: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Sales'
        Parent = dxLayoutGroup10
        Control = cxDBLookupComboBox12
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup10: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object dxLayoutItem15: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Due Stock'
        Parent = dxLayoutGroup11
        Control = cxDBTextEdit14
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem16: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Due Cash'
        Parent = dxLayoutGroup11
        Control = cxDBTextEdit15
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup11: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 5
      end
      object dxLayoutItem17: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Quantity'
        Parent = dxLayoutGroup12
        Control = cxDBTextEdit16
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem18: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Avg Price'
        Parent = dxLayoutControl4Group1
        Control = cxDBTextEdit17
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem19: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Total Value'
        Parent = dxLayoutControl4Group2
        Control = cxDBTextEdit18
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup12: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup5
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 6
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup5
        Control = cxGrid1
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object dxLayoutControl4Group1: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup12
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl4Group2: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup12
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl4Item1: TdxLayoutItem
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Req Deal Avg Price'
        Parent = dxLayoutControl4Group1
        Control = cxDBTextEdit22
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl4Item2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Req Total Value'
        Parent = dxLayoutControl4Group2
        Control = cxDBTextEdit23
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl4Item3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Different'
        Parent = dxLayoutControl4Group2
        Control = cxDBTextEdit24
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Hidden = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Crossing Account 1'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group8
      Control = dxLayoutControl3
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Crossing Account 2'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group8
      Control = dxLayoutControl4
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 501
    Width = 1166
    ExplicitTop = 501
    ExplicitWidth = 1211
    inherited dbNavLog: TDBNavigator
      Left = 1052
      Hints.Strings = ()
      ExplicitLeft = 1052
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 550
    Width = 1166
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Crossing Tomorrow'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    ExplicitTop = 550
    ExplicitWidth = 1211
  end
  inherited tabEditorData: TTabSet
    Top = 480
    Width = 1166
    ExplicitTop = 480
    ExplicitWidth = 1211
  end
  inherited dsSubject: TDataSource
    DataSet = frmDealTickets.cdsDealTicket
    Left = 376
    Top = 144
  end
  object dsDealTicketExec: TDataSource
    DataSet = frmDealTickets.cdsDealTicketExec
    Left = 464
    Top = 144
  end
  object dsDealTicketExecTemp: TDataSource
    DataSet = frmDealTickets.cdsDealTicketExecX
    Left = 1008
    Top = 144
  end
  object dsSubjectTemp: TDataSource
    DataSet = frmDealTickets.cdsDealTicketX
    Left = 928
    Top = 144
  end
end
