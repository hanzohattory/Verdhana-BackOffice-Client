inherited frmDealTicket: TfrmDealTicket
  Caption = 'Deal Ticket'
  ClientHeight = 598
  ClientWidth = 925
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ExplicitWidth = 941
  ExplicitHeight = 637
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 925
    Height = 265
    Align = alTop
    ExplicitWidth = 925
    ExplicitHeight = 265
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 237
      Top = 10
      DataBinding.DataField = 'DEALTICKETCODE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 166
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 437
      Top = 10
      DataBinding.DataField = 'DEALTICKETDATE'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cbStock: TcxDBLookupComboBox [2]
      Left = 92
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
      OnEnter = cbStockEnter
      OnExit = cbStockExit
      Width = 91
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 198
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
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 198
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
    object cbMarket: TcxDBLookupComboBox [5]
      Left = 92
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
    object cxDBLookupComboBox4: TcxDBLookupComboBox [6]
      Left = 377
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
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 237
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
    object cxDBImageComboBox1: TcxDBImageComboBox [8]
      Left = 92
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
    object cxDBLookupComboBox5: TcxDBLookupComboBox [9]
      Left = 576
      Top = 118
      RepositoryItem = dmGlobal.luDealer
      DataBinding.DataField = 'DEALERID'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 120
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox [10]
      Left = 92
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
      TabOrder = 10
      Width = 442
    end
    object cxDBTextEdit5: TcxDBTextEdit [11]
      Left = 92
      Top = 145
      DataBinding.DataField = 'DUESTOCK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 50
    end
    object cxDBTextEdit6: TcxDBTextEdit [12]
      Left = 199
      Top = 145
      DataBinding.DataField = 'DUECASH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 50
    end
    object edDealQty: TcxDBTextEdit [13]
      Left = 92
      Top = 172
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit [14]
      Left = 256
      Top = 172
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 120
    end
    object cxDBTextEdit9: TcxDBTextEdit [15]
      Left = 440
      Top = 172
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 151
    end
    object edAllocQty: TcxDBTextEdit [16]
      Left = 92
      Top = 199
      DataBinding.DataField = 'ALLOCQTY'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 80
    end
    object txtAccount: TcxDBButtonEdit [17]
      Left = 92
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 91
    end
    object cxDBTextEdit10: TcxDBTextEdit [18]
      Left = 256
      Top = 199
      DataBinding.DataField = 'ROUNDPRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit [19]
      Left = 92
      Top = 226
      DataBinding.DataField = 'ROUNDVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 151
    end
    object cxDBTextEdit12: TcxDBTextEdit [20]
      Left = 300
      Top = 226
      AutoSize = False
      DataBinding.DataField = 'DIFFVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Height = 25
      Width = 147
    end
    object btnEmptyAllocation: TcxButton [21]
      Left = 453
      Top = 226
      Width = 100
      Height = 25
      Caption = 'Empty Allocation'
      TabOrder = 23
      OnClick = btnEmptyAllocationClick
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [22]
      Left = 315
      Top = 145
      RepositoryItem = dmGlobal.luCommission
      DataBinding.DataField = 'COMM_ID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 176
    end
    object cxDBCheckBox1: TcxDBCheckBox [23]
      Left = 382
      Top = 199
      Caption = 'Change Price'
      DataBinding.DataField = 'CHG_PRICE'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 7
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 166
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cbStock
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = cbMarket
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Channel'
      Control = cxDBLookupComboBox4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Buy / Sell'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      Visible = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Dealer'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales'
      Control = cxDBLookupComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 442
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Stock'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Cash'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = edDealQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Average Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Value'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Allocation Qty'
      Control = edAllocQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '&Account'
      Control = txtAccount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Deal Avg. Price'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Deal Total Value'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Diff Value'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnEmptyAllocation
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Commission'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 529
    Width = 925
    ExplicitTop = 530
    ExplicitWidth = 925
    inherited dbNavLog: TDBNavigator
      Left = 811
      Hints.Strings = ()
      ExplicitLeft = 811
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 578
    Width = 925
    ExplicitTop = 579
    ExplicitWidth = 925
  end
  inherited tabEditorData: TTabSet
    Top = 508
    Width = 925
    ExplicitTop = 509
    ExplicitWidth = 925
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 265
    Width = 925
    Height = 243
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabExecution
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 244
    ClientRectBottom = 239
    ClientRectLeft = 4
    ClientRectRight = 921
    ClientRectTop = 24
    object tabExecution: TcxTabSheet
      Caption = 'Execution'
      ImageIndex = 0
      ExplicitHeight = 216
      object grdDealTicketExec: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 215
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 216
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
          ScrollbarAnnotations.CustomAnnotations = <>
          OnInitEdit = gvwDealTicketExecInitEdit
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
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'EXVALUE'
              Column = gvwDealTicketExecEXVALUE
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
          object gvwDealTicketExecBOARDID: TcxGridDBColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDID'
            RepositoryItem = dmGlobal.luBoard
            Width = 40
          end
          object gvwDealTicketExecEXQTY: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'EXQTY'
            Width = 100
          end
          object gvwDealTicketExecEXPRICE: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'EXPRICE'
            Width = 80
          end
          object gvwDealTicketExecEXVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'EXVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 120
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
            Visible = False
          end
          object gvwDealTicketExecCPACCID: TcxGridDBColumn
            Caption = 'Counter Part Account'
            DataBinding.FieldName = 'CPACCID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            RepositoryItem = dmGlobal.luAccountInit
            Width = 110
          end
          object gvwDealTicketExecDUESTOCK: TcxGridDBColumn
            Caption = 'Due Stock'
            DataBinding.FieldName = 'DUESTOCK'
            Width = 80
          end
          object gvwDealTicketExecDUECASH: TcxGridDBColumn
            Caption = 'Due Cash'
            DataBinding.FieldName = 'DUECASH'
            Width = 80
          end
          object gvwDealTicketExecORDSOURCE: TcxGridDBColumn
            Caption = 'Order Source'
            DataBinding.FieldName = 'ORDSOURCE'
            RepositoryItem = dmGlobal.luOrderSource
            Width = 100
          end
        end
        object grdDealTicketExecLevel1: TcxGridLevel
          GridView = gvwDealTicketExec
        end
      end
    end
    object tabAllocation: TcxTabSheet
      Caption = 'Allocation'
      ImageIndex = 1
      ExplicitHeight = 216
      object grdDealTicketAlloc: TcxGrid
        Left = 0
        Top = 0
        Width = 917
        Height = 215
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 216
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
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsDealTicketAlloc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'AQTY'
              Column = gvwDealTicketAllocAQTY
            end
            item
              Format = '#,##0.####'
              Kind = skSum
              FieldName = 'AVALUE'
              Column = gvwDealTicketAllocAVALUE
            end
            item
              Format = '#,##0.####'
              Kind = skSum
              FieldName = 'ADIFFVALUE'
              Column = gvwDealTicketAllocADIFFVALUE
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
          object gvwDealTicketAllocACCID: TcxGridDBColumn
            Caption = 'Account Code'
            DataBinding.FieldName = 'ACCID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ACCID'
            Properties.ListColumns = <
              item
                Width = 150
                FieldName = 'EXTREF_CODE'
              end
              item
                Width = 250
                FieldName = 'ACCNAME'
              end
              item
                FieldName = 'ACCINIT'
              end
              item
                FieldName = 'ACCTYPE'
              end
              item
                FieldName = 'ACCCODE'
              end>
            Properties.ListFieldIndex = 4
            Properties.ListSource = dmLookup.dsLuAllocAccount
            Width = 80
          end
          object gvwDealTicketAllocACCNAME: TcxGridDBColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'ACCID'
            Properties.ListColumns = <
              item
                SortOrder = soAscending
                FieldName = 'ACCNAME'
              end
              item
                Caption = 'Account Initial'
                Width = 100
                FieldName = 'ACCINIT'
              end
              item
                Sorting = False
                FieldName = 'EXTREF_CODE'
              end
              item
                FieldName = 'ACCCODE'
              end>
            Properties.ListSource = dmLookup.dsLuAllocAccount
            Width = 216
          end
          object gvwDealTicketAllocAQTY: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'AQTY'
            Width = 100
          end
          object gvwDealTicketAllocAPRICE: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'APRICE'
            Width = 52
          end
          object gvwDealTicketAllocCALC_METHOD: TcxGridDBColumn
            Caption = 'Calc Method'
            DataBinding.FieldName = 'CALC_METHOD'
            RepositoryItem = dmGlobal.luCommCalcMethod
            Visible = False
            VisibleForCustomization = False
            Width = 65
          end
          object gvwDealTicketAllocCOMM_RATE: TcxGridDBColumn
            Caption = 'Comm Rate'
            DataBinding.FieldName = 'COMM_RATE'
            Visible = False
            VisibleForCustomization = False
          end
          object gvwDealTicketAllocAVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'AVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 97
          end
          object gvwDealTicketAllocCOMM_ID: TcxGridDBColumn
            Caption = 'Commission'
            DataBinding.FieldName = 'COMM_ID'
            RepositoryItem = dmGlobal.luCommission
            Width = 142
          end
          object gvwDealTicketAllocADIFFVALUE: TcxGridDBColumn
            Caption = 'Diff Value'
            DataBinding.FieldName = 'ADIFFVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 90
          end
          object gvwDealTicketAllocEXT_REF: TcxGridDBColumn
            Caption = 'Allocation Code'
            DataBinding.FieldName = 'ACCID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ACCID'
            Properties.ListColumns = <
              item
                FieldName = 'EXTREF_CODE'
              end
              item
                FieldName = 'ACCCODE'
              end
              item
                FieldName = 'ACCNAME'
              end>
            Properties.ListSource = dmLookup.dsLuAllocAccount
            Width = 80
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwDealTicketAlloc
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmDealTickets.cdsDealTicket
    Left = 32
    Top = 288
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsDealTicketExec: TDataSource
    DataSet = frmDealTickets.cdsDealTicketExec
    Left = 104
    Top = 288
  end
  object dsDealTicketAlloc: TDataSource
    DataSet = frmDealTickets.cdsDealTicketAlloc
    OnDataChange = dsDealTicketAllocDataChange
    Left = 192
    Top = 288
  end
  object ActionList1: TActionList
    Left = 321
    Top = 288
    object actAddNew: TAction
      Caption = 'Add New'
      ShortCut = 45
      OnExecute = actAddNewExecute
    end
    object actAccount: TAction
      Caption = 'actAccount'
      ShortCut = 16449
      OnExecute = actAccountExecute
    end
    object actChangeCommission: TNAction
      Category = 'NActions'
      Caption = 'Change Commission'
      OnExecute = actChangeCommissionExecute
      OnUpdate = actChangeCommissionUpdate
      CheckPermission = False
    end
  end
end
