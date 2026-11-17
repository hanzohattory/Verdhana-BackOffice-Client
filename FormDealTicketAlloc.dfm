inherited frmDealTicketAlloc: TfrmDealTicketAlloc
  Caption = 'Deal Ticket Allocation'
  ClientHeight = 522
  ClientWidth = 854
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ExplicitWidth = 870
  ExplicitHeight = 561
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 854
    Height = 241
    Align = alTop
    ExplicitWidth = 854
    ExplicitHeight = 241
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 227
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
      Left = 427
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
      Left = 82
      Top = 91
      RepositoryItem = dmGlobal.luInstrument
      DataBinding.DataField = 'STOCKID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
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
    object cbMarket: TcxDBLookupComboBox [3]
      Left = 82
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 90
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [4]
      Left = 367
      Top = 37
      RepositoryItem = dmGlobal.luChannel
      DataBinding.DataField = 'CHANNELCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 100
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 227
      Top = 37
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 90
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 82
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
    object cxDBLookupComboBox5: TcxDBLookupComboBox [7]
      Left = 566
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
    object cxDBLookupComboBox6: TcxDBLookupComboBox [8]
      Left = 82
      Top = 118
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALESID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 442
    end
    object cxDBTextEdit5: TcxDBTextEdit [9]
      Left = 82
      Top = 145
      DataBinding.DataField = 'DUESTOCK'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 50
    end
    object cxDBTextEdit6: TcxDBTextEdit [10]
      Left = 189
      Top = 145
      DataBinding.DataField = 'DUECASH'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 50
    end
    object edDealQty: TcxDBTextEdit [11]
      Left = 82
      Top = 172
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 80
    end
    object cxDBTextEdit8: TcxDBTextEdit [12]
      Left = 246
      Top = 172
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 120
    end
    object cxDBTextEdit9: TcxDBTextEdit [13]
      Left = 454
      Top = 172
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 100
    end
    object edAllocQty: TcxDBTextEdit [14]
      Left = 82
      Top = 199
      DataBinding.DataField = 'ALLOCQTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 80
    end
    object cxDBTextEdit10: TcxDBTextEdit [15]
      Left = 246
      Top = 199
      DataBinding.DataField = 'ROUNDPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit [16]
      Left = 454
      Top = 199
      TabStop = False
      DataBinding.DataField = 'ROUNDVALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 100
    end
    object cxDBTextEdit12: TcxDBTextEdit [17]
      Left = 611
      Top = 199
      TabStop = False
      DataBinding.DataField = 'DIFFVALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 100
    end
    object btnEmptyAllocation: TcxButton [18]
      Left = 717
      Top = 199
      Width = 100
      Height = 25
      Caption = 'Empty Allocation'
      TabOrder = 22
      OnClick = btnEmptyAllocationClick
    end
    object cxDBTextEdit13: TcxDBTextEdit [19]
      Left = 82
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 91
    end
    object cxDBTextEdit3: TcxDBTextEdit [20]
      Left = 188
      Top = 91
      AutoSize = False
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 21
      Width = 336
    end
    object cxDBTextEdit2: TcxDBTextEdit [21]
      Left = 188
      Top = 64
      AutoSize = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 21
      Width = 336
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [22]
      Left = 305
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
      Width = 145
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
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cbStock
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
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
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
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
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Deal Total Value'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Diff Value'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnEmptyAllocation
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 336
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Commission'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 453
    Width = 854
    ExplicitTop = 453
    ExplicitWidth = 854
    inherited dbNavLog: TDBNavigator
      Left = 740
      Hints.Strings = ()
      ExplicitLeft = 740
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 502
    Width = 854
    ExplicitTop = 502
    ExplicitWidth = 854
  end
  inherited tabEditorData: TTabSet
    Top = 432
    Width = 854
    ExplicitTop = 432
    ExplicitWidth = 854
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 241
    Width = 854
    Height = 191
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabAllocation
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 187
    ClientRectLeft = 4
    ClientRectRight = 850
    ClientRectTop = 24
    object tabExecution: TcxTabSheet
      Caption = 'Execution'
      ImageIndex = 0
      object grdDealTicketExec: TcxGrid
        Left = 0
        Top = 0
        Width = 846
        Height = 163
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object gvwDealTicketExec: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
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
      Highlighted = True
      ImageIndex = 1
      object grdDealTicketAlloc: TcxGrid
        Left = 0
        Top = 0
        Width = 846
        Height = 163
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
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
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'ACCID'
            Properties.ListColumns = <
              item
                FieldName = 'ACCCODE'
              end
              item
                Width = 400
                FieldName = 'ACCNAME'
              end
              item
                Width = 100
                FieldName = 'EXTREF_CODE'
              end>
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
          object gvwDealTicketAllocCOMM_ID: TcxGridDBColumn
            Caption = 'Commission'
            DataBinding.FieldName = 'COMM_ID'
            RepositoryItem = dmGlobal.luCommission
            Width = 101
          end
          object gvwDealTicketAllocAVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'AVALUE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 97
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
    DataSet = cdsDealTicket
    Left = 32
    Top = 288
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 432
    Top = 304
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsDealTicketExec: TDataSource
    DataSet = cdsDealTicketExec
    Left = 104
    Top = 288
  end
  object dsDealTicketAlloc: TDataSource
    DataSet = cdsDealTicketAlloc
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
  end
  object cdsDealTicket: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALTICKETID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicket'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsDealTicketAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 19
    Top = 352
    object cdsDealTicketDEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketDEALTICKETCODE: TStringField
      Tag = -1
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketDEALTICKETDATE: TDateField
      Tag = -1
      FieldName = 'DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      ReadOnly = True
      Required = True
    end
    object cdsDealTicketSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDealTicketSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsDealTicketBS: TStringField
      FieldName = 'BS'
      Required = True
      Size = 1
    end
    object cdsDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDealTicketCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsDealTicketCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDealTicketOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketDEALQTY: TLargeintField
      Tag = -1
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketDEALPRICE: TFloatField
      Tag = -1
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object cdsDealTicketDEALVALUE: TFloatField
      Tag = -1
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object cdsDealTicketALLOCQTY: TLargeintField
      Tag = -1
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketSALESID: TLargeintField
      FieldName = 'SALESID'
      ReadOnly = True
    end
    object cdsDealTicketDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsDealTicketDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object cdsDealTicketPOSTED: TStringField
      Tag = -1
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsDealTicketMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object cdsDealTicketMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object cdsDealTicketAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketDUECASH: TIntegerField
      Tag = -1
      FieldName = 'DUECASH'
    end
    object cdsDealTicketISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object cdsDealTicketID: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object cdsDealTicketqryDealTicketExec: TDataSetField
      FieldName = 'qryDealTicketExec'
    end
    object cdsDealTicketqryDealTicketAlloc: TDataSetField
      FieldName = 'qryDealTicketAlloc'
    end
    object cdsDealTicketACCID: TIntegerField
      FieldName = 'ACCID'
      LookupDataSet = dmLookup.cdsLuTradingAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
    end
    object cdsDealTicketDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object cdsDealTicketCONID: TLargeintField
      Tag = -1
      FieldName = 'CONID'
    end
    object cdsDealTicketSTAT: TStringField
      Tag = -1
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDealTicketCDUEDATE: TDateField
      Tag = -1
      FieldName = 'CDUEDATE'
    end
    object cdsDealTicketSDUEDATE: TDateField
      Tag = -1
      FieldName = 'SDUEDATE'
    end
    object cdsDealTicketSTATUS: TStringField
      Tag = -1
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDealTicketOLD_DEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'OLD_DEALTICKETID'
    end
    object cdsDealTicketCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      ReadOnly = True
      Size = 2
    end
    object cdsDealTicketCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketROUNDPRICE: TFloatField
      Tag = -1
      FieldName = 'ROUNDPRICE'
      OnChange = cdsDealTicketROUNDPRICEChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsDealTicketROUNDVALUE: TFloatField
      Tag = -1
      FieldName = 'ROUNDVALUE'
      OnChange = cdsDealTicketROUNDVALUEChange
      DisplayFormat = '#,##0.############'
      EditFormat = '#'
    end
    object cdsDealTicketDIFFVALUE: TFloatField
      Tag = -1
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############;(#,##0.############);0'
      EditFormat = '#'
    end
    object cdsDealTicketACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object cdsDealTicketSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
    end
    object cdsDealTicketCNNO: TStringField
      FieldName = 'CNNO'
    end
    object cdsDealTicketRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsDealTicketCXLD: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object cdsDealTicketRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object cdsDealTicketRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object cdsDealTicketRVS: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object cdsDealTicketRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object cdsDealTicketEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
    end
    object cdsDealTicketSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsDealTicketISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsDealTicketLASTDEALPRICECHANGED: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'LASTDEALPRICECHANGED'
    end
    object cdsDealTicketPRDCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'PRDCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'PRDCODE'
      KeyFields = 'ACCID'
      Size = 10
      Lookup = True
    end
    object cdsDealTicketCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
  end
  object cdsDealTicketExec: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketqryDealTicketExec
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 352
    object cdsDealTicketExecDEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketExecSEQID: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsDealTicketExecBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object cdsDealTicketExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      DisplayFormat = '#,##0.########'
      EditFormat = '#.########'
    end
    object cdsDealTicketExecEXVALUE: TFloatField
      Tag = -1
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object cdsDealTicketExecEXTIME: TTimeField
      Tag = -1
      FieldName = 'EXTIME'
    end
    object cdsDealTicketExecTRDID: TStringField
      Tag = -1
      FieldName = 'TRDID'
    end
    object cdsDealTicketExecMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object cdsDealTicketExecMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketExecAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object cdsDealTicketExecAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketExecISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object cdsDealTicketExecID: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object cdsDealTicketExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
      Required = True
    end
    object cdsDealTicketExecDUECASH: TDateTimeField
      Tag = -1
      FieldName = 'DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecDUESTOCK: TDateTimeField
      Tag = -1
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecCPTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'CPTYPE'
      LookupDataSet = dmLookup.cdsLuBoard
      LookupKeyFields = 'BOARDID'
      LookupResultField = 'CPTYPE'
      KeyFields = 'BOARDID'
      Size = 5
      Lookup = True
    end
    object cdsDealTicketExecORDSOURCE: TStringField
      FieldName = 'ORDSOURCE'
      Size = 30
    end
    object cdsDealTicketExecORDID: TStringField
      FieldName = 'ORDID'
    end
  end
  object cdsDealTicketAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketqryDealTicketAlloc
    Params = <>
    AfterOpen = cdsDealTicketAllocAfterOpen
    BeforeEdit = cdsDealTicketAllocBeforeEdit
    BeforePost = cdsDealTicketAllocBeforePost
    BeforeDelete = cdsDealTicketAllocBeforeDelete
    OnNewRecord = cdsDealTicketAllocNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 208
    Top = 352
    object cdsDealTicketAllocDEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocSEQID: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocAQTY: TLargeintField
      FieldName = 'AQTY'
      OnChange = cdsDealTicketAllocAQTYChange
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      OnChange = cdsDealTicketAllocAPRICEChange
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocAVALUE: TFloatField
      Tag = -1
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocID: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object cdsDealTicketAllocACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsDealTicketAllocACCIDChange
    end
    object cdsDealTicketAllocADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocEXT_REF: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXT_REF'
    end
    object cdsDealTicketAllocACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAllocCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDealTicketAllocCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
  end
  object cdsOmgAlloc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DEALTICKETID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryOmgAlloc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 320
    Top = 341
    object cdsOmgAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsOmgAllocOMG_ALLOC: TIntegerField
      FieldName = 'OMG_ALLOC'
    end
    object cdsOmgAllocALLOC_QTY: TLargeintField
      FieldName = 'ALLOC_QTY'
      ReadOnly = True
    end
  end
end
