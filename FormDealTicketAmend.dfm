inherited frmDealTicketAmend: TfrmDealTicketAmend
  Caption = 'Deal Ticket Amend'
  ClientHeight = 522
  ClientWidth = 854
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ExplicitWidth = 870
  ExplicitHeight = 561
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 854
    Height = 209
    Align = alTop
    ExplicitWidth = 854
    ExplicitHeight = 209
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 208
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
      Left = 408
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
      OnEnter = cbStockEnter
      OnExit = cbStockExit
      Width = 91
    end
    object cbMarket: TcxDBLookupComboBox [3]
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
    object cxDBLookupComboBox4: TcxDBLookupComboBox [4]
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
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 208
      Top = 37
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 90
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
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
    object cxDBLookupComboBox5: TcxDBLookupComboBox [7]
      Left = 547
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
      Left = 63
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
    object cxDBTextEdit5: TcxDBTextEdit [9]
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
    object cxDBTextEdit6: TcxDBTextEdit [10]
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
    object edDealQty: TcxDBTextEdit [11]
      Left = 63
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
      Left = 221
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
      Left = 405
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
    object cxDBTextEdit3: TcxDBTextEdit [14]
      Left = 169
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
    object cxDBButtonEdit1: TcxDBButtonEdit [15]
      Left = 63
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 91
    end
    object cxDBTextEdit2: TcxDBTextEdit [16]
      Left = 169
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
    object cxDBLookupComboBox1: TcxDBLookupComboBox [17]
      Left = 286
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
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = edDealQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Average Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Value'
      Control = cxDBTextEdit9
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
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
    Top = 209
    Width = 854
    Height = 223
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabExecution
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 219
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
        Height = 195
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
  object ActionList1: TActionList
    Left = 321
    Top = 288
    object actAddNew: TAction
      Caption = 'Add New'
      ShortCut = 45
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
      Origin = 'main.B_DEALTICKET.DEALTICKETID'
      Required = True
    end
    object cdsDealTicketDEALTICKETCODE: TStringField
      Tag = -1
      FieldName = 'DEALTICKETCODE'
      Origin = 'main.B_DEALTICKET.DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object cdsDealTicketDEALTICKETDATE: TDateField
      Tag = -1
      FieldName = 'DEALTICKETDATE'
      Origin = 'main.B_DEALTICKET.DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketACCNO: TStringField
      FieldName = 'ACCNO'
      Origin = 'main.B_DEALTICKET.ACCNO'
      Size = 30
    end
    object cdsDealTicketACCNAME: TStringField
      FieldName = 'ACCNAME'
      Origin = 'main.B_DEALTICKET.ACCNAME'
      Size = 150
    end
    object cdsDealTicketSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Origin = 'main.B_DEALTICKET.STOCKID'
      Required = True
    end
    object cdsDealTicketSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Origin = 'main.B_DEALTICKET.STOCKCODE'
    end
    object cdsDealTicketSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Origin = 'main.B_DEALTICKET.STOCKNAME'
      Size = 150
    end
    object cdsDealTicketBS: TStringField
      FieldName = 'BS'
      Origin = 'main.B_DEALTICKET.BS'
      Required = True
      Size = 1
    end
    object cdsDealTicketMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Origin = 'main.B_DEALTICKET.MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsDealTicketCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Origin = 'main.B_DEALTICKET.CCYCODE'
      Required = True
      Size = 5
    end
    object cdsDealTicketCHANNELCODE: TStringField
      FieldName = 'CHANNELCODE'
      Origin = 'main.B_DEALTICKET.CHANNELCODE'
      Required = True
      Size = 10
    end
    object cdsDealTicketOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      Origin = 'main.B_DEALTICKET.OMNIBUSTRADE'
      Size = 1
    end
    object cdsDealTicketDEALQTY: TLargeintField
      Tag = -1
      FieldName = 'DEALQTY'
      Origin = 'main.B_DEALTICKET.DEALQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketDEALPRICE: TFloatField
      Tag = -1
      FieldName = 'DEALPRICE'
      Origin = 'main.B_DEALTICKET.DEALPRICE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object cdsDealTicketDEALVALUE: TFloatField
      Tag = -1
      FieldName = 'DEALVALUE'
      Origin = 'main.B_DEALTICKET.DEALVALUE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object cdsDealTicketALLOCQTY: TLargeintField
      Tag = -1
      FieldName = 'ALLOCQTY'
      Origin = 'main.B_DEALTICKET.ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object cdsDealTicketSALESID: TLargeintField
      FieldName = 'SALESID'
      Origin = 'main.B_DEALTICKET.SALESID'
    end
    object cdsDealTicketDEALERID: TLargeintField
      FieldName = 'DEALERID'
      Origin = 'main.B_DEALTICKET.DEALERID'
    end
    object cdsDealTicketDUESTOCK: TIntegerField
      FieldName = 'DUESTOCK'
      Origin = 'main.B_DEALTICKET.DUESTOCK'
    end
    object cdsDealTicketPOSTED: TStringField
      Tag = -1
      FieldName = 'POSTED'
      Origin = 'main.B_DEALTICKET.POSTED'
      Size = 1
    end
    object cdsDealTicketMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
      Origin = 'main.B_DEALTICKET.MODDA'
    end
    object cdsDealTicketMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Origin = 'main.B_DEALTICKET.MODUI'
      Size = 30
    end
    object cdsDealTicketAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
      Origin = 'main.B_DEALTICKET.APPDA'
    end
    object cdsDealTicketAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Origin = 'main.B_DEALTICKET.APPUI'
      Size = 30
    end
    object cdsDealTicketDUECASH: TIntegerField
      Tag = -1
      FieldName = 'DUECASH'
      Origin = 'main.B_DEALTICKET.DUECASH'
    end
    object cdsDealTicketISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
      Origin = 'main.B_DEALTICKET.ISDEL'
    end
    object cdsDealTicketID: TLargeintField
      Tag = -1
      FieldName = 'ID'
      Origin = 'main.B_DEALTICKET.ID'
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
      Origin = 'main.B_DEALTICKET.ACCID'
    end
    object cdsDealTicketDAYTRADE: TStringField
      FieldName = 'DAYTRADE'
      Origin = 'main.B_DEALTICKET.DAYTRADE'
      Size = 1
    end
    object cdsDealTicketCONID: TLargeintField
      Tag = -1
      FieldName = 'CONID'
      Origin = 'main.B_DEALTICKET.CONID'
    end
    object cdsDealTicketSTAT: TStringField
      Tag = -1
      FieldName = 'STAT'
      Origin = 'main.B_DEALTICKET.STAT'
      Size = 1
    end
    object cdsDealTicketCDUEDATE: TDateField
      Tag = -1
      FieldName = 'CDUEDATE'
      Origin = 'main.B_DEALTICKET.CDUEDATE'
    end
    object cdsDealTicketSDUEDATE: TDateField
      Tag = -1
      FieldName = 'SDUEDATE'
      Origin = 'main.B_DEALTICKET.SDUEDATE'
    end
    object cdsDealTicketSTATUS: TStringField
      Tag = -1
      FieldName = 'STATUS'
      Origin = 'main.B_DEALTICKET.STATUS'
      Size = 1
    end
    object cdsDealTicketOLD_DEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'OLD_DEALTICKETID'
      Origin = 'main.B_DEALTICKET.OLD_DEALTICKETID'
    end
    object cdsDealTicketCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Origin = 'main.B_DEALTICKET.CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      Origin = 'main.B_DEALTICKET.COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketROUNDPRICE: TFloatField
      Tag = -1
      FieldName = 'ROUNDPRICE'
      Origin = 'main.B_DEALTICKET.ROUNDPRICE'
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object cdsDealTicketROUNDVALUE: TFloatField
      Tag = -1
      FieldName = 'ROUNDVALUE'
      Origin = 'main.B_DEALTICKET.ROUNDVALUE'
      DisplayFormat = '#,##0.############'
      EditFormat = '#'
    end
    object cdsDealTicketDIFFVALUE: TFloatField
      Tag = -1
      FieldName = 'DIFFVALUE'
      Origin = 'main.B_DEALTICKET.DIFFVALUE'
      DisplayFormat = '#,##0.############;(#,##0.############);0'
      EditFormat = '#'
    end
    object cdsDealTicketACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
      Origin = 'main.B_DEALTICKET.ACCSOPID'
    end
    object cdsDealTicketAUTO_ALLOC: TStringField
      FieldName = 'AUTO_ALLOC'
      Origin = 'main.B_DEALTICKET.AUTO_ALLOC'
      Size = 1
    end
    object cdsDealTicketSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Origin = 'main.B_DEALTICKET.SETTLE_CCYCODE'
      Size = 5
    end
    object cdsDealTicketDCCYAMT: TFloatField
      FieldName = 'DCCYAMT'
      Origin = 'main.B_DEALTICKET.DCCYAMT'
    end
    object cdsDealTicketCNNO: TStringField
      FieldName = 'CNNO'
      Origin = 'main.B_DEALTICKET.CNNO'
    end
    object cdsDealTicketRVSD: TStringField
      FieldName = 'RVSD'
      Origin = 'main.B_DEALTICKET.RVSD'
      Size = 1
    end
    object cdsDealTicketCXLD: TStringField
      FieldName = 'CXLD'
      Origin = 'main.B_DEALTICKET.CXLD'
      Size = 1
    end
    object cdsDealTicketRVSD_DTID: TIntegerField
      FieldName = 'RVSD_DTID'
      Origin = 'main.B_DEALTICKET.RVSD_DTID'
    end
    object cdsDealTicketRVSDDATE: TDateTimeField
      FieldName = 'RVSDDATE'
      Origin = 'main.B_DEALTICKET.RVSDDATE'
    end
    object cdsDealTicketRVS: TStringField
      FieldName = 'RVS'
      Origin = 'main.B_DEALTICKET.RVS'
      Size = 1
    end
    object cdsDealTicketRVS_STS: TStringField
      FieldName = 'RVS_STS'
      Origin = 'main.B_DEALTICKET.RVS_STS'
      Size = 1
    end
    object cdsDealTicketEXTERNALID: TStringField
      FieldName = 'EXTERNALID'
      Origin = 'main.B_DEALTICKET.EXTERNALID'
    end
    object cdsDealTicketSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
      Origin = 'main.B_DEALTICKET.SALES_BRANCHID'
    end
    object cdsDealTicketISOMG: TStringField
      FieldName = 'ISOMG'
      Origin = 'main.B_DEALTICKET.ISOMG'
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
    object cdsDealTicketORIG_DTID: TLargeintField
      FieldName = 'ORIG_DTID'
      Origin = 'main.B_DEALTICKET.ORIG_DTID'
    end
    object cdsDealTicketCPBROKER: TStringField
      FieldName = 'CPBROKER'
      Origin = 'main.B_DEALTICKET.CPBROKER'
      Size = 10
    end
    object cdsDealTicketCPACCID: TLargeintField
      FieldName = 'CPACCID'
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
      Origin = 'main.B_DEALTICKET_EXECS.DEALTICKETID'
      Required = True
    end
    object cdsDealTicketExecSEQID: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Origin = 'main.B_DEALTICKET_EXECS.SEQID'
      Required = True
    end
    object cdsDealTicketExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Origin = 'main.B_DEALTICKET_EXECS.BOARDID'
    end
    object cdsDealTicketExecBROKERCODE: TStringField
      FieldName = 'BROKERCODE'
      Origin = 'main.B_DEALTICKET_EXECS.BROKERCODE'
      Size = 10
    end
    object cdsDealTicketExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      Origin = 'main.B_DEALTICKET_EXECS.EXQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketExecEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      Origin = 'main.B_DEALTICKET_EXECS.EXPRICE'
      DisplayFormat = '#,##0.########'
      EditFormat = '#.########'
    end
    object cdsDealTicketExecEXVALUE: TFloatField
      Tag = -1
      FieldName = 'EXVALUE'
      Origin = 'main.B_DEALTICKET_EXECS.EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object cdsDealTicketExecEXTIME: TTimeField
      Tag = -1
      FieldName = 'EXTIME'
      Origin = 'main.B_DEALTICKET_EXECS.EXTIME'
    end
    object cdsDealTicketExecTRDID: TStringField
      Tag = -1
      FieldName = 'TRDID'
      Origin = 'main.B_DEALTICKET_EXECS.TRDID'
    end
    object cdsDealTicketExecMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
      Origin = 'main.B_DEALTICKET_EXECS.MODDA'
    end
    object cdsDealTicketExecMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Origin = 'main.B_DEALTICKET_EXECS.MODUI'
      Size = 30
    end
    object cdsDealTicketExecAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
      Origin = 'main.B_DEALTICKET_EXECS.APPDA'
    end
    object cdsDealTicketExecAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Origin = 'main.B_DEALTICKET_EXECS.APPUI'
      Size = 30
    end
    object cdsDealTicketExecISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
      Origin = 'main.B_DEALTICKET_EXECS.ISDEL'
    end
    object cdsDealTicketExecID: TLargeintField
      Tag = -1
      FieldName = 'ID'
      Origin = 'main.B_DEALTICKET_EXECS.ID'
    end
    object cdsDealTicketExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
      Origin = 'main.B_DEALTICKET_EXECS.CPACCID'
      Required = True
    end
    object cdsDealTicketExecDUECASH: TDateTimeField
      Tag = -1
      FieldName = 'DUECASH'
      Origin = 'main.B_DEALTICKET_EXECS.DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDealTicketExecDUESTOCK: TDateTimeField
      Tag = -1
      FieldName = 'DUESTOCK'
      Origin = 'main.B_DEALTICKET_EXECS.DUESTOCK'
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
      Origin = 'main.B_DEALTICKET_EXECS.ORDSOURCE'
      Size = 30
    end
    object cdsDealTicketExecORDID: TStringField
      FieldName = 'ORDID'
      Origin = 'main.B_DEALTICKET_EXECS.ORDID'
    end
  end
  object cdsDealTicketTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 187
    Top = 336
    object LargeintField1: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object StringField1: TStringField
      Tag = -1
      FieldName = 'DEALTICKETCODE'
      Required = True
      Size = 30
    end
    object DateField1: TDateField
      Tag = -1
      FieldName = 'DEALTICKETDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object StringField2: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object LargeintField2: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'STOCKCODE'
    end
    object StringField5: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'BS'
      Required = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object StringField9: TStringField
      FieldName = 'CHANNELCODE'
      Required = True
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'OMNIBUSTRADE'
      Size = 1
    end
    object LargeintField3: TLargeintField
      Tag = -1
      FieldName = 'DEALQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object FloatField1: TFloatField
      Tag = -1
      FieldName = 'DEALPRICE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object FloatField2: TFloatField
      Tag = -1
      FieldName = 'DEALVALUE'
      DisplayFormat = '#,##0.####'
      EditFormat = '#.####'
    end
    object LargeintField4: TLargeintField
      Tag = -1
      FieldName = 'ALLOCQTY'
      DisplayFormat = '#,##0'
    end
    object LargeintField5: TLargeintField
      FieldName = 'SALESID'
    end
    object LargeintField6: TLargeintField
      FieldName = 'DEALERID'
    end
    object IntegerField1: TIntegerField
      FieldName = 'DUESTOCK'
    end
    object StringField11: TStringField
      Tag = -1
      FieldName = 'POSTED'
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object StringField12: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object DateTimeField2: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object StringField13: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object IntegerField2: TIntegerField
      Tag = -1
      FieldName = 'DUECASH'
    end
    object IntegerField3: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object LargeintField7: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ACCID'
      LookupDataSet = dmLookup.cdsLuTradingAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
    end
    object StringField14: TStringField
      FieldName = 'DAYTRADE'
      Size = 1
    end
    object LargeintField8: TLargeintField
      Tag = -1
      FieldName = 'CONID'
    end
    object StringField15: TStringField
      Tag = -1
      FieldName = 'STAT'
      Size = 1
    end
    object DateField2: TDateField
      Tag = -1
      FieldName = 'CDUEDATE'
    end
    object DateField3: TDateField
      Tag = -1
      FieldName = 'SDUEDATE'
    end
    object StringField16: TStringField
      Tag = -1
      FieldName = 'STATUS'
      Size = 1
    end
    object LargeintField9: TLargeintField
      Tag = -1
      FieldName = 'OLD_DEALTICKETID'
    end
    object StringField17: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object FloatField3: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object FloatField4: TFloatField
      Tag = -1
      FieldName = 'ROUNDPRICE'
      DisplayFormat = '#,##0.############'
      EditFormat = '#.############'
    end
    object FloatField5: TFloatField
      Tag = -1
      FieldName = 'ROUNDVALUE'
      DisplayFormat = '#,##0.############'
      EditFormat = '#'
    end
    object FloatField6: TFloatField
      Tag = -1
      FieldName = 'DIFFVALUE'
      DisplayFormat = '#,##0.############;(#,##0.############);0'
      EditFormat = '#'
    end
    object LargeintField10: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object StringField18: TStringField
      FieldName = 'AUTO_ALLOC'
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object FloatField7: TFloatField
      FieldName = 'DCCYAMT'
    end
    object StringField20: TStringField
      FieldName = 'CNNO'
    end
    object StringField21: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object StringField22: TStringField
      FieldName = 'CXLD'
      Size = 1
    end
    object IntegerField5: TIntegerField
      FieldName = 'RVSD_DTID'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'RVSDDATE'
    end
    object StringField23: TStringField
      FieldName = 'RVS'
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'RVS_STS'
      Size = 1
    end
    object StringField25: TStringField
      FieldName = 'EXTERNALID'
    end
    object LargeintField11: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object StringField26: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object FloatField8: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'LASTDEALPRICECHANGED'
    end
    object cdsDealTicketTmpCPBROKER: TStringField
      FieldName = 'CPBROKER'
      Origin = 'main.B_DEALTICKET.CPBROKER'
      Size = 10
    end
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'PRDCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'PRDCODE'
      KeyFields = 'ACCID'
      Size = 10
      Lookup = True
    end
    object cdsDealTicketTmpCPACCID: TLargeintField
      FieldName = 'CPACCID'
    end
  end
  object cdsDealTicketExecTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 352
    object LargeintField12: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object IntegerField6: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Required = True
    end
    object LargeintField13: TLargeintField
      FieldName = 'BOARDID'
    end
    object StringField28: TStringField
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object LargeintField14: TLargeintField
      FieldName = 'EXQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object FloatField9: TFloatField
      FieldName = 'EXPRICE'
      DisplayFormat = '#,##0.########'
      EditFormat = '#.########'
    end
    object FloatField10: TFloatField
      Tag = -1
      FieldName = 'EXVALUE'
      DisplayFormat = '#,##0.####'
    end
    object TimeField1: TTimeField
      Tag = -1
      FieldName = 'EXTIME'
    end
    object StringField29: TStringField
      Tag = -1
      FieldName = 'TRDID'
    end
    object DateTimeField4: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object StringField30: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object DateTimeField5: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object StringField31: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object IntegerField7: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object LargeintField15: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'CPACCID'
      Required = True
    end
    object DateTimeField6: TDateTimeField
      Tag = -1
      FieldName = 'DUECASH'
      DisplayFormat = 'dd MMM yyyy'
    end
    object DateTimeField7: TDateTimeField
      Tag = -1
      FieldName = 'DUESTOCK'
      DisplayFormat = 'dd MMM yyyy'
    end
    object StringField32: TStringField
      FieldKind = fkLookup
      FieldName = 'CPTYPE'
      LookupDataSet = dmLookup.cdsLuBoard
      LookupKeyFields = 'BOARDID'
      LookupResultField = 'CPTYPE'
      KeyFields = 'BOARDID'
      Size = 5
      Lookup = True
    end
    object StringField33: TStringField
      FieldName = 'ORDSOURCE'
      Size = 30
    end
    object StringField34: TStringField
      FieldName = 'ORDID'
    end
  end
  object cdsDealTicketAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDealTicketqryDealTicketAlloc
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 336
    object cdsDealTicketAllocDEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Origin = 'main.B_DEALTICKET_ALLOC.DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocSEQID: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Origin = 'main.B_DEALTICKET_ALLOC.SEQID'
      Required = True
    end
    object cdsDealTicketAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Origin = 'main.B_DEALTICKET_ALLOC.ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocAQTY: TLargeintField
      FieldName = 'AQTY'
      Origin = 'main.B_DEALTICKET_ALLOC.AQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      Origin = 'main.B_DEALTICKET_ALLOC.APRICE'
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocAVALUE: TFloatField
      Tag = -1
      FieldName = 'AVALUE'
      Origin = 'main.B_DEALTICKET_ALLOC.AVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
      Origin = 'main.B_DEALTICKET_ALLOC.MODDA'
    end
    object cdsDealTicketAllocMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Origin = 'main.B_DEALTICKET_ALLOC.MODUI'
      Size = 30
    end
    object cdsDealTicketAllocAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
      Origin = 'main.B_DEALTICKET_ALLOC.APPDA'
    end
    object cdsDealTicketAllocAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Origin = 'main.B_DEALTICKET_ALLOC.APPUI'
      Size = 30
    end
    object cdsDealTicketAllocISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
      Origin = 'main.B_DEALTICKET_ALLOC.ISDEL'
    end
    object cdsDealTicketAllocID: TLargeintField
      Tag = -1
      FieldName = 'ID'
      Origin = 'main.B_DEALTICKET_ALLOC.ID'
    end
    object cdsDealTicketAllocACCID: TIntegerField
      FieldName = 'ACCID'
      Origin = 'main.B_DEALTICKET_ALLOC.ACCID'
    end
    object cdsDealTicketAllocADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      Origin = 'main.B_DEALTICKET_ALLOC.ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocEXT_REF: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXT_REF'
      Origin = 'main.B_DEALTICKET_ALLOC.EXT_REF'
    end
    object cdsDealTicketAllocACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
      Origin = 'main.B_DEALTICKET_ALLOC.ACCSOPID'
    end
    object cdsDealTicketAllocCCY: TStringField
      FieldName = 'CCY'
      Origin = 'main.B_DEALTICKET_ALLOC.CCY'
      Size = 5
    end
    object cdsDealTicketAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Origin = 'main.B_DEALTICKET_ALLOC.CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      Origin = 'main.B_DEALTICKET_ALLOC.COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Origin = 'main.B_DEALTICKET_ALLOC.ACCNO'
      Size = 30
    end
  end
  object cdsDealTicketAllocTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 360
    object cdsDealTicketAllocTmpDEALTICKETID: TLargeintField
      Tag = -1
      FieldName = 'DEALTICKETID'
      Required = True
    end
    object cdsDealTicketAllocTmpSEQID: TIntegerField
      Tag = -1
      FieldName = 'SEQID'
      Required = True
    end
    object cdsDealTicketAllocTmpACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDealTicketAllocTmpAQTY: TLargeintField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
    object cdsDealTicketAllocTmpAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.##########'
      EditFormat = '#.##########'
    end
    object cdsDealTicketAllocTmpAVALUE: TFloatField
      Tag = -1
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocTmpMODDA: TDateTimeField
      Tag = -1
      FieldName = 'MODDA'
    end
    object cdsDealTicketAllocTmpMODUI: TStringField
      Tag = -1
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDealTicketAllocTmpAPPDA: TDateTimeField
      Tag = -1
      FieldName = 'APPDA'
    end
    object cdsDealTicketAllocTmpAPPUI: TStringField
      Tag = -1
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDealTicketAllocTmpISDEL: TIntegerField
      Tag = -1
      FieldName = 'ISDEL'
    end
    object cdsDealTicketAllocTmpID: TLargeintField
      Tag = -1
      FieldName = 'ID'
    end
    object cdsDealTicketAllocTmpACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsDealTicketAllocTmpADIFFVALUE: TFloatField
      FieldName = 'ADIFFVALUE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsDealTicketAllocTmpEXT_REF: TStringField
      DisplayLabel = 'External Refference'
      FieldName = 'EXT_REF'
    end
    object cdsDealTicketAllocTmpACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsDealTicketAllocTmpCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsDealTicketAllocTmpCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsDealTicketAllocTmpCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.#### %'
      EditFormat = '#.####'
    end
    object cdsDealTicketAllocTmpACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
  end
end
