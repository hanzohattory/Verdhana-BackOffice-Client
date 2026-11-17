inherited frmContract: TfrmContract
  Caption = 'Contract'
  ClientHeight = 671
  ClientWidth = 994
  OnKeyPress = FormKeyPress
  ExplicitWidth = 1010
  ExplicitHeight = 710
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 994
    Height = 193
    Align = alTop
    ExplicitWidth = 994
    ExplicitHeight = 193
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 99
      Top = 10
      DataBinding.DataField = 'CONCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 99
      Top = 37
      DataBinding.DataField = 'CONDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 319
      Top = 37
      DataBinding.DataField = 'CASHSETTLEDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [3]
      Left = 534
      Top = 37
      DataBinding.DataField = 'STOCKSETTLEDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [4]
      Left = 319
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 99
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 234
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 414
    end
    object cxDBTextEdit6: TcxDBTextEdit [7]
      Left = 174
      Top = 91
      DataBinding.DataField = 'NETAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 150
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [8]
      Left = 99
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clBtnFace
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 60
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [9]
      Left = 534
      Top = 10
      RepositoryItem = dmGlobal.luTCModel
      DataBinding.DataField = 'TC_MODEL'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cbSettleCcy: TcxDBLookupComboBox [10]
      Left = 410
      Top = 91
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'FOREIGN_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 60
    end
    object cxDBTextEdit8: TcxDBTextEdit [11]
      Left = 559
      Top = 91
      DataBinding.DataField = 'FOREIGN_EXRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      OnEditing = cxDBTextEdit8Editing
      Width = 80
    end
    object cxDBTextEdit9: TcxDBTextEdit [12]
      Left = 319
      Top = 118
      DataBinding.DataField = 'NETSETTLEAMOUNT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 174
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [13]
      Left = 504
      Top = 91
      DataBinding.DataField = 'FOREIGN_EXRATE_MODE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taCenter
      Properties.Items = <
        item
          Description = '/'
          ImageIndex = 0
          Value = '/'
        end
        item
          Description = '*'
          Value = '*'
        end>
      Properties.PopupAlignment = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 40
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [14]
      Left = 745
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'S_SETTLEMODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'KEEP'
          ImageIndex = 0
          Value = 'KEEP'
        end
        item
          Description = 'VP'
          Value = 'VP'
        end
        item
          Description = 'FOP'
          Value = 'FOP'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [15]
      Left = 823
      Top = 145
      AutoSize = False
      DataBinding.DataField = 'ADDITIONAL_FEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Height = 21
      Width = 90
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [16]
      Left = 99
      Top = 145
      AutoSize = False
      DataBinding.DataField = 'MIN_COMM'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Height = 21
      Width = 83
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [17]
      Left = 238
      Top = 145
      AutoSize = False
      DataBinding.DataField = 'TOTAL_FEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Height = 21
      Width = 90
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [18]
      Left = 441
      Top = 145
      AutoSize = False
      DataBinding.DataField = 'ADDMINFEE_BRKFEE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Height = 21
      Width = 90
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [19]
      Left = 611
      Top = 145
      AutoSize = False
      DataBinding.DataField = 'ADDMINFEE_VAT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Height = 21
      Width = 90
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [20]
      Left = 99
      Top = 118
      AutoSize = False
      DataBinding.DataField = 'EMATERAI'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Height = 21
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Settle Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock Settle Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 414
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Net Amount'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Model'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Currency'
      Control = cbSettleCcy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Net Amount'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 174
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Rate'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Settlement Type'
      Control = cxDBImageComboBox3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Additional Minimum Fee'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Minimum Fee'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Total Fee'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Additional Broker Fee'
      Control = cxDBCurrencyEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Additional VAT'
      Control = cxDBCurrencyEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'e-Materai Charge'
      Control = cxDBCurrencyEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 602
    Width = 994
    ExplicitTop = 602
    ExplicitWidth = 994
    inherited dbNavLog: TDBNavigator
      Left = 880
      Hints.Strings = ()
      ExplicitLeft = 880
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 651
    Width = 994
    ExplicitTop = 651
    ExplicitWidth = 994
  end
  inherited tabEditorData: TTabSet
    Top = 581
    Width = 994
    ExplicitTop = 581
    ExplicitWidth = 994
  end
  object cxPageControl1: TcxPageControl [4]
    Left = 0
    Top = 193
    Width = 994
    Height = 388
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tabAllocation
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 384
    ClientRectLeft = 4
    ClientRectRight = 990
    ClientRectTop = 24
    object tabAllocation: TcxTabSheet
      Caption = 'Orders'
      ImageIndex = 1
      object grdAllocation: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 360
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object gvwAllocation: TcxGridDBTableView
          PopupMenu = popAlloc
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsConAlloc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'AVALUE'
              Column = gvwAllocationAVALUE
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'BROKERFEE'
              Column = gvwAllocationBROKERFEE
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'NETAMT'
              Column = gvwAllocationALLOCAMT
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'TOTAL_CHARGES'
              Column = gvwAllocationTOTAL_CHARGES
            end
            item
              Format = '#,##0.00;(#,##0.00);0.00'
              Kind = skSum
              FieldName = 'FOREIGN_NETAMT'
              Column = gvwAllocationFOREIGN_ALLOCAMT
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
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwAllocationBS: TcxGridDBColumn
            Caption = 'B / S'
            DataBinding.FieldName = 'BS'
            RepositoryItem = dmGlobal.luBuySell
            Options.Editing = False
            Width = 28
          end
          object gvwAllocationBOARDID: TcxGridDBColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDID'
            RepositoryItem = dmGlobal.luBoard
            Options.Editing = False
          end
          object gvwAllocationSTOCKCODE: TcxGridDBColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Options.Editing = False
            Width = 60
          end
          object gvwAllocationSTOCKNAME: TcxGridDBColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'STOCKNAME'
            Options.Editing = False
            Width = 150
          end
          object gvwAllocationVALID_CALC_METHOD: TcxGridDBColumn
            Caption = 'Calc Method'
            DataBinding.FieldName = 'VALID_CALC_METHOD'
            RepositoryItem = dmGlobal.luCommCalcMethod
            Options.Editing = False
            Width = 65
          end
          object gvwAllocationVALID_COMM_RATE: TcxGridDBColumn
            DataBinding.FieldName = 'VALID_COMM_RATE'
            Options.Editing = False
          end
          object gvwAllocationAPRICE: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'APRICE'
            Options.Editing = False
            Width = 60
          end
          object gvwAllocationAQTY: TcxGridDBColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'AQTY'
            Options.Editing = False
            Width = 60
          end
          object gvwAllocationAVALUE: TcxGridDBColumn
            Caption = 'Value'
            DataBinding.FieldName = 'AVALUE'
            Options.Editing = False
            Width = 80
          end
          object gvwAllocationBROKERFEE: TcxGridDBColumn
            Caption = 'Broker Fee'
            DataBinding.FieldName = 'BROKERFEE'
            Options.Editing = False
            Width = 80
          end
          object gvwAllocationTOTAL_CHARGES: TcxGridDBColumn
            Caption = 'Total Charges'
            DataBinding.FieldName = 'TOTAL_CHARGES'
            Options.Editing = False
            Width = 80
          end
          object gvwAllocationWAPU: TcxGridDBColumn
            Caption = 'Wapu'
            DataBinding.FieldName = 'WAPU'
            Options.Editing = False
            Width = 94
          end
          object gvwAllocationALLOCAMT: TcxGridDBColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'ALLOCAMT'
            Options.Editing = False
            Width = 100
          end
          object gvwAllocationFOREIGN_ALLOCAMT: TcxGridDBColumn
            Caption = 'Fx Amount'
            DataBinding.FieldName = 'FOREIGN_ALLOCAMT'
            Options.Editing = False
            Width = 100
          end
        end
        object gvwExecution: TcxGridDBBandedTableView
          PopupMenu = popExec
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsConAllocExec
          DataController.DetailKeyFieldNames = 'CONID;SEQID'
          DataController.KeyFieldNames = 'EXECID'
          DataController.MasterKeyFieldNames = 'CONID;SEQID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.####;(#,##0.####);0'
              Kind = skSum
              FieldName = 'QTY'
              Column = gvwExecutionQTY
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'VALUE'
              Column = gvwExecutionVALUE
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'BROKERFEE'
              Column = gvwExecutionBROKERFEE
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'BROKERFEE_LEG2'
              Column = gvwExecutionBROKERFEE_LEG2
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CHARGES_LEG2'
              Column = gvwExecutionCHARGES_LEG2
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'NET_AMOUNT_TMP'
              Column = gvwExecutionNET_AMOUNT_TMP
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
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end>
          object gvwExecutionEXECID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXECID'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwExecutionCONID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONID'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwExecutionSEQID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SEQID'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwExecutionBOARDID: TcxGridDBBandedColumn
            Caption = 'Board'
            DataBinding.FieldName = 'BOARDID'
            RepositoryItem = dmGlobal.luBoard
            Options.Editing = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwExecutionCPACCID: TcxGridDBBandedColumn
            Caption = 'CP Account'
            DataBinding.FieldName = 'CPACCID'
            RepositoryItem = dmGlobal.luAccount
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwExecutionDUECASH: TcxGridDBBandedColumn
            Caption = 'Due Cash'
            DataBinding.FieldName = 'DUECASH'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwExecutionDUESTOCK: TcxGridDBBandedColumn
            Caption = 'Due Stock'
            DataBinding.FieldName = 'DUESTOCK'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwExecutionPRICE: TcxGridDBBandedColumn
            Caption = 'Price'
            DataBinding.FieldName = 'PRICE'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwExecutionQTY: TcxGridDBBandedColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'QTY'
            Options.Editing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwExecutionVALUE: TcxGridDBBandedColumn
            Caption = 'Value'
            DataBinding.FieldName = 'VALUE'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwExecutionCOMM_RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMM_RATE'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwExecutionBROKERFEE: TcxGridDBBandedColumn
            Caption = 'Broker Fee'
            DataBinding.FieldName = 'BROKERFEE'
            Options.Editing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwExecutionALLIN_RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALLIN_RATE'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwExecutionMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwExecutionMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwExecutionAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwExecutionAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwExecutionUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwExecutionUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwExecutionNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwExecutionISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwExecutionID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwExecutionqryConAllocCharge: TcxGridDBBandedColumn
            DataBinding.FieldName = 'qryConAllocCharge'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwExecutionCOMM_RATE_LEG2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMM_RATE_LEG2'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwExecutionBROKERFEE_LEG2: TcxGridDBBandedColumn
            Caption = 'Broker Fee Leg 2'
            DataBinding.FieldName = 'BROKERFEE_LEG2'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwExecutionALLIN_RATE_LEG2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALLIN_RATE_LEG2'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwExecutionVALID_CALC_METHOD_LEG2: TcxGridDBBandedColumn
            Caption = 'Calc Method Leg 2'
            DataBinding.FieldName = 'VALID_CALC_METHOD_LEG2'
            RepositoryItem = dmGlobal.luCommCalcMethod
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwExecutionVALID_COMM_RATE_LEG2: TcxGridDBBandedColumn
            Caption = 'Comm Rate Leg 2'
            DataBinding.FieldName = 'VALID_COMM_RATE_LEG2'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwExecutionqryConAllocChargeLeg2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'qryConAllocChargeLeg2'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwExecutionCHARGES_LEG2: TcxGridDBBandedColumn
            Caption = 'Charges Leg2'
            DataBinding.FieldName = 'CHARGES_LEG2'
            Options.Editing = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwExecutionNETAMOUNT_LEG2: TcxGridDBBandedColumn
            Caption = 'Net Amount Leg2'
            DataBinding.FieldName = 'NETAMOUNT_LEG2'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwExecutionFOREIGN_CCYCODE: TcxGridDBBandedColumn
            Caption = 'Settle Ccy Leg2'
            DataBinding.FieldName = 'FOREIGN_CCYCODE'
            RepositoryItem = dmGlobal.luCurrency
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwExecutionFOREIGN_EXRATE_MODE: TcxGridDBBandedColumn
            Caption = 'ExRate Mode Leg2'
            DataBinding.FieldName = 'FOREIGN_EXRATE_MODE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Items = <
              item
                Description = '/'
                ImageIndex = 0
                Value = '/'
              end
              item
                Description = '*'
                Value = '*'
              end>
            Properties.PopupAlignment = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwExecutionFOREIGN_EXRATE: TcxGridDBBandedColumn
            Caption = 'Settle ExRate Leg2'
            DataBinding.FieldName = 'FOREIGN_EXRATE'
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwExecutionFOREIGN_NETAMT: TcxGridDBBandedColumn
            Caption = 'Settle Net Amount Leg2'
            DataBinding.FieldName = 'FOREIGN_NETAMT'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwExecutionSETTLE_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_TYPE'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwExecutionNET_AMOUNT_TMP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_AMOUNT_TMP'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
        end
        object gvwChargeLeg1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAllocCharge
          DataController.DetailKeyFieldNames = 'EXECID'
          DataController.KeyFieldNames = 'EXECID;CHARGE_ID;LEG'
          DataController.MasterKeyFieldNames = 'EXECID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CHARGE_VAL1'
              Column = gvwChargeLeg1CHARGE_VAL1
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CHARGE_VAL2'
              Column = gvwChargeLeg1CHARGE_VAL2
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CHARGE_DIFF'
              Column = gvwChargeLeg1CHARGE_DIFF
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
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end>
          object gvwChargeLeg1EXECID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXECID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CHARGE_ID: TcxGridDBBandedColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CHARGE_ID'
            RepositoryItem = dmGlobal.luCharge
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwChargeLeg1LEG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LEG'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwChargeLeg1ALLIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALLIN'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwChargeLeg1POSITION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSITION'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwChargeLeg1BASIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASIS'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwChargeLeg1RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwChargeLeg1RATE_SOURCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RATE_SOURCE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwChargeLeg1AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CALC_BASIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_BASIS'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CALC_RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_RATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CALC_RATE_SOURCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_RATE_SOURCE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CALC_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_AMOUNT'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CHARGE_VAL1: TcxGridDBBandedColumn
            Caption = 'Value Based Client Price'
            DataBinding.FieldName = 'CHARGE_VAL1'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CHARGE_VAL2: TcxGridDBBandedColumn
            Caption = 'Value Based Real Price'
            DataBinding.FieldName = 'CHARGE_VAL2'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CHARGE_DIFF: TcxGridDBBandedColumn
            Caption = 'Different Value'
            DataBinding.FieldName = 'CHARGE_DIFF'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwChargeLeg1MODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwChargeLeg1MODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwChargeLeg1APPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwChargeLeg1APPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwChargeLeg1UNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwChargeLeg1UNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwChargeLeg1NOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwChargeLeg1ISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwChargeLeg1ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwChargeLeg1DESCRIPTION: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwChargeLeg1CHARGE_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGE_DESC'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
        end
        object gvwChargeLeg2: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAllocChargeLeg2
          DataController.DetailKeyFieldNames = 'EXECID'
          DataController.KeyFieldNames = 'EXECID;CHARGE_ID;LEG'
          DataController.MasterKeyFieldNames = 'EXECID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CHARGE_VAL1'
              Column = gvwChargeLeg2CHARGE_VAL1
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
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end>
          object gvwChargeLeg2CHARGE_ID: TcxGridDBBandedColumn
            Caption = 'Code'
            DataBinding.FieldName = 'CHARGE_ID'
            RepositoryItem = dmGlobal.luCharge
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwChargeLeg2EXECID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXECID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwChargeLeg2LEG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LEG'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CHARGE_VAL1: TcxGridDBBandedColumn
            Caption = 'Charge Value'
            DataBinding.FieldName = 'CHARGE_VAL1'
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CHARGE_VAL2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGE_VAL2'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CHARGE_DIFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGE_DIFF'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwChargeLeg2RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwChargeLeg2RATE_SOURCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RATE_SOURCE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwChargeLeg2AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CALC_RATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_RATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CALC_RATE_SOURCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_RATE_SOURCE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CALC_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_AMOUNT'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwChargeLeg2ALLIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALLIN'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwChargeLeg2POSITION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSITION'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwChargeLeg2BASIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASIS'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CALC_BASIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CALC_BASIS'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwChargeLeg2MODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwChargeLeg2MODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwChargeLeg2APPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwChargeLeg2APPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwChargeLeg2UNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwChargeLeg2UNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwChargeLeg2NOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwChargeLeg2ISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwChargeLeg2ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwChargeLeg2DESCRIPTION: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwChargeLeg2CHARGE_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGE_DESC'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
        end
        object grdAllocationLevel1: TcxGridLevel
          GridView = gvwAllocation
          object grdAllocationLevel2: TcxGridLevel
            GridView = gvwExecution
            Options.DetailTabsPosition = dtpTop
            object grdAllocationLevel3: TcxGridLevel
              Caption = 'Leg 1 Charges'
              GridView = gvwChargeLeg1
              Visible = False
            end
            object grdAllocationLevel4: TcxGridLevel
              Caption = 'Leg 2 Charges'
              GridView = gvwChargeLeg2
              Visible = False
            end
          end
        end
      end
    end
    object tabCharges: TcxTabSheet
      Caption = 'Charges'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 986
        Height = 360
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object gvwCharge: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCharge
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'CHARGE_VAL1'
              Column = gvwChargeCHARGE_VAL1
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'CHARGE_VAL2'
              Column = gvwChargeCHARGE_VAL2
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'CHARGE_DIFF'
              Column = gvwChargeCHARGE_DIFF
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
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwChargeCONID: TcxGridDBColumn
            DataBinding.FieldName = 'CONID'
            Visible = False
          end
          object gvwChargeCHARGE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_ID'
            Visible = False
          end
          object gvwChargeCHARGE_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_CODE'
          end
          object gvwChargeCHARGE_DESC: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_DESC'
          end
          object gvwChargeCHARGE_VAL1: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_VAL1'
            Width = 130
          end
          object gvwChargeCHARGE_VAL2: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_VAL2'
            Width = 130
          end
          object gvwChargeCHARGE_DIFF: TcxGridDBColumn
            DataBinding.FieldName = 'CHARGE_DIFF'
            Width = 100
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwCharge
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsContract
    Left = 32
    Top = 280
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 328
    Top = 280
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsConAlloc: TDataSource
    DataSet = cdsConAlloc
    Left = 112
    Top = 280
  end
  object dsCharge: TDataSource
    DataSet = cdsChargeSummary
    Left = 200
    Top = 280
  end
  object popAlloc: TPopupMenu
    Left = 32
    Top = 336
    object ChangeCommission2: TMenuItem
      Caption = 'Change Commission Client Side'
      OnClick = ChangeCommission2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FullExpand1: TMenuItem
      Caption = 'Full Expand'
      OnClick = FullExpand1Click
    end
    object FullCollapse1: TMenuItem
      Caption = 'Full Collapse'
      OnClick = FullCollapse1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ChangeChargesAmount1: TMenuItem
      Caption = 'Change Charges Amount'
      OnClick = ChangeChargesAmount1Click
    end
  end
  object cdsContract: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryContract'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsContractCalcFields
    OnNewRecord = cdsContractNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 232
    object cdsContractCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsContractCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsContractAGCTYPE: TStringField
      FieldName = 'AGCTYPE'
      Size = 1
    end
    object cdsContractACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsContractACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsContractACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsContractCON_ADDR: TStringField
      FieldName = 'CON_ADDR'
      Size = 150
    end
    object cdsContractCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsContractZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Size = 10
    end
    object cdsContractSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsContractSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsContractSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsContractTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsContractTC_SENDBY: TStringField
      FieldName = 'TC_SENDBY'
      Size = 10
    end
    object cdsContractSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsContractDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsContractCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsContractNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsContractNETVALUE: TFloatField
      FieldName = 'NETVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractNETAMT: TFloatField
      FieldName = 'NETAMT'
      OnChange = cdsContractNETAMTChange
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 10
    end
    object cdsContractSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsContractBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsContractBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsContractBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 100
    end
    object cdsContractSETT_CLEARACC: TStringField
      FieldName = 'SETT_CLEARACC'
    end
    object cdsContractSETT_CLEARSUBACC: TStringField
      FieldName = 'SETT_CLEARSUBACC'
    end
    object cdsContractFINALSTS: TStringField
      FieldName = 'FINALSTS'
      Size = 1
    end
    object cdsContractCONSTS: TStringField
      FieldName = 'CONSTS'
      Size = 1
    end
    object cdsContractMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsContractOTC: TFloatField
      FieldName = 'OTC'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsContractFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      OnChange = cdsContractFOREIGN_CCYCODEChange
      Size = 5
    end
    object cdsContractFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      OnChange = cdsContractFOREIGN_EXRATEChange
      DisplayFormat = '#,##0.########'
    end
    object cdsContractFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsContractQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsContractROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsContractFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsContractC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsContractS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsContractCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsContractSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsContractEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsContractSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsContractPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsContractJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsContractSETTLE_CASH: TStringField
      FieldName = 'SETTLE_CASH'
      Size = 1
    end
    object cdsContractSETTLE_STOCK: TStringField
      FieldName = 'SETTLE_STOCK'
      Size = 1
    end
    object cdsContractS_STS: TStringField
      FieldName = 'S_STS'
      Size = 1
    end
    object cdsContractC_STS: TStringField
      FieldName = 'C_STS'
      Size = 1
    end
    object cdsContractENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsContractCASHMOVEDATE: TDateField
      FieldName = 'CASHMOVEDATE'
    end
    object cdsContractSTOCKMOVEDATE: TDateField
      FieldName = 'STOCKMOVEDATE'
    end
    object cdsContractACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsContractEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsContractMOVE_CSET: TStringField
      FieldName = 'MOVE_CSET'
      Size = 1
    end
    object cdsContractSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsContractqryConChargeSum: TDataSetField
      FieldName = 'qryConChargeSum'
    end
    object cdsContractqryConAlloc: TDataSetField
      FieldName = 'qryConAlloc'
    end
    object cdsContractqryConAllocExec: TDataSetField
      FieldName = 'qryConAllocExec'
    end
    object cdsContractFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      OnChange = cdsContractFOREIGN_CCYCODEChange
      Size = 1
    end
    object cdsContractADDITIONAL_FEE: TFloatField
      FieldName = 'ADDITIONAL_FEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractADDMINFEE_BRKFEE: TFloatField
      FieldName = 'ADDMINFEE_BRKFEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractADDMINFEE_VAT: TFloatField
      FieldName = 'ADDMINFEE_VAT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractMIN_COMM: TFloatField
      FieldName = 'MIN_COMM'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractTOTAL_FEE: TFloatField
      FieldName = 'TOTAL_FEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractSTOCK_SETTLE_MODE: TStringField
      FieldName = 'STOCK_SETTLE_MODE'
      Size = 1
    end
    object cdsContractACS_PRICE: TFloatField
      FieldName = 'ACS_PRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractACS_PERCENT: TFloatField
      FieldName = 'ACS_PERCENT'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsContractEMATERAI: TFloatField
      FieldName = 'EMATERAI'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractNETSETTLEAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETSETTLEAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
      Calculated = True
    end
  end
  object cdsConAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsContractqryConAlloc
    Params = <>
    BeforeEdit = cdsConAllocBeforeEdit
    BeforePost = cdsConAllocBeforePost
    OnCalcFields = cdsConAllocCalcFields
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 232
    object cdsConAllocCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsConAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsConAllocACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsConAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsConAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsConAllocACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsConAllocBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsConAllocSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsConAllocSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Size = 30
    end
    object cdsConAllocSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsConAllocCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
    object cdsConAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsConAllocVALID_CALC_METHOD: TStringField
      FieldName = 'VALID_CALC_METHOD'
      Size = 2
    end
    object cdsConAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsConAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsConAllocAQTY: TFloatField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocREALPRICE: TFloatField
      FieldName = 'REALPRICE'
    end
    object cdsConAllocREALVALUE: TFloatField
      FieldName = 'REALVALUE'
    end
    object cdsConAllocPRICE_DIFF: TFloatField
      FieldName = 'PRICE_DIFF'
    end
    object cdsConAllocCHARGES_DIFF: TFloatField
      FieldName = 'CHARGES_DIFF'
    end
    object cdsConAllocCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object cdsConAllocBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      OnChange = cdsConAllocBROKERFEEChange
      DisplayFormat = '#,##0'
    end
    object cdsConAllocVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsConAllocWAPU: TFloatField
      FieldName = 'WAPU'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocWHT: TFloatField
      FieldName = 'WHT'
    end
    object cdsConAllocSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsConAllocTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      OnChange = cdsConAllocBROKERFEEChange
      DisplayFormat = '#,##0'
    end
    object cdsConAllocROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsConAllocCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsConAllocALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
      OnChange = cdsConAllocALLOCAMTChange
      DisplayFormat = '#,##0'
    end
    object cdsConAllocISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsConAllocFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsConAllocFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsConAllocFOREIGN_ALLOCAMT: TFloatField
      FieldName = 'FOREIGN_ALLOCAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsConAllocFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsConAllocC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsConAllocS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsConAllocCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsConAllocSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsConAllocDUECASH: TDateField
      FieldName = 'DUECASH'
    end
    object cdsConAllocDUESTOCK: TDateField
      FieldName = 'DUESTOCK'
    end
    object cdsConAllocMOVEDUESTOCK: TDateField
      FieldName = 'MOVEDUESTOCK'
    end
    object cdsConAllocMOVEDUECASH: TDateField
      FieldName = 'MOVEDUECASH'
    end
    object cdsConAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsConAllocDA_SEQID: TLargeintField
      FieldName = 'DA_SEQID'
    end
    object cdsConAllocDX_SEQID: TLargeintField
      FieldName = 'DX_SEQID'
    end
    object cdsConAllocSI_STOCK: TStringField
      FieldName = 'SI_STOCK'
      Size = 1
    end
    object cdsConAllocSI_CASH: TStringField
      FieldName = 'SI_CASH'
      Size = 1
    end
    object cdsConAllocCASH_SETTLED_STAT: TStringField
      FieldName = 'CASH_SETTLED_STAT'
      Size = 1
    end
    object cdsConAllocCASH_SETTLED_AMT: TFloatField
      FieldName = 'CASH_SETTLED_AMT'
    end
    object cdsConAllocCASH_SETTLED_DATE: TDateField
      FieldName = 'CASH_SETTLED_DATE'
    end
    object cdsConAllocSTOCK_SETTLED_STAT: TStringField
      FieldName = 'STOCK_SETTLED_STAT'
      Size = 1
    end
    object cdsConAllocSTOCK_SETTLED_QTY: TFloatField
      FieldName = 'STOCK_SETTLED_QTY'
    end
    object cdsConAllocSTOCCK_SETTLED_DATE: TDateField
      FieldName = 'STOCCK_SETTLED_DATE'
    end
    object cdsConAllocMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConAllocMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConAllocAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConAllocAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConAllocUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConAllocUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConAllocNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConAllocISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConAllocID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConAllocNETAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETAMT'
      Calculated = True
    end
    object cdsConAllocFOREIGN_NETAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FOREIGN_NETAMT'
      Calculated = True
    end
    object cdsConAllocBOARDID: TIntegerField
      FieldName = 'BOARDID'
    end
    object cdsConAllocVALID_COMM_RATE: TFloatField
      DisplayLabel = 'Comm Rate'
      FieldName = 'VALID_COMM_RATE'
    end
  end
  object cdsConChargeSum: TNClientDataset
    Aggregates = <>
    Params = <>
    AfterOpen = cdsConChargeSumAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 232
    object cdsConChargeSumCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsConChargeSumCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      ReadOnly = True
      Required = True
    end
    object cdsConChargeSumCHARGE_CODE: TStringField
      FieldName = 'CHARGE_CODE'
      ReadOnly = True
    end
    object cdsConChargeSumCHARGE_DESC: TStringField
      FieldName = 'CHARGE_DESC'
      ReadOnly = True
      Size = 50
    end
    object cdsConChargeSumCHARGE_VAL1: TFloatField
      FieldName = 'CHARGE_VAL1'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConChargeSumCHARGE_VAL2: TFloatField
      FieldName = 'CHARGE_VAL2'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConChargeSumCHARGE_DIFF: TFloatField
      FieldName = 'CHARGE_DIFF'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
  end
  object cdsConAllocExec: TNClientDataset
    Aggregates = <>
    DataSetField = cdsContractqryConAllocExec
    FieldDefs = <
      item
        Name = 'EXECID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CONID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'SEQID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BOARDID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CPACCID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DUECASH'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DUESTOCK'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'PRICE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'QTY'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VALUE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COMM_RATE'
        DataType = ftFloat
      end
      item
        Name = 'BROKERFEE'
        DataType = ftFloat
      end
      item
        Name = 'ALLIN_RATE'
        DataType = ftFloat
      end
      item
        Name = 'COMM_RATE_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'BROKERFEE_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'ALLIN_RATE_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'VALID_CALC_METHOD_LEG2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VALID_COMM_RATE_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'CHARGES_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'NETAMOUNT_LEG2'
        DataType = ftFloat
      end
      item
        Name = 'FOREIGN_CCYCODE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FOREIGN_EXRATE_MODE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FOREIGN_EXRATE'
        DataType = ftFloat
      end
      item
        Name = 'FOREIGN_NETAMT'
        DataType = ftFloat
      end
      item
        Name = 'SETTLE_TYPE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CASH_SETTLED_STAT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CASH_SETTLED_AMT'
        DataType = ftFloat
      end
      item
        Name = 'CASH_SETTLED_DATE'
        DataType = ftDate
      end
      item
        Name = 'CASH_SETTLED_CSID'
        DataType = ftLargeint
      end
      item
        Name = 'STOCK_SETTLED_STAT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STOCK_SETTLED_QTY'
        DataType = ftFloat
      end
      item
        Name = 'STOCCK_SETTLED_DATE'
        DataType = ftDate
      end
      item
        Name = 'STOCK_SETTLED_SSID'
        DataType = ftLargeint
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'STOCK_SETTLED_DATE'
        DataType = ftDate
      end
      item
        Name = 'qryConAllocChargeLeg2'
        DataType = ftDataSet
      end
      item
        Name = 'qryConAllocCharge'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'cdsConAllocExecIndex1'
        Fields = 'CONID;SEQID'
      end>
    IndexFieldNames = 'CONID;SEQID'
    Params = <>
    StoreDefs = True
    BeforeEdit = cdsConAllocExecBeforeEdit
    BeforePost = cdsConAllocExecBeforePost
    OnCalcFields = cdsConAllocExecCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 336
    object cdsConAllocExecEXECID: TLargeintField
      FieldName = 'EXECID'
      Required = True
    end
    object cdsConAllocExecCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsConAllocExecSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsConAllocExecBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsConAllocExecCPACCID: TIntegerField
      FieldName = 'CPACCID'
      Required = True
    end
    object cdsConAllocExecDUECASH: TDateField
      FieldName = 'DUECASH'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsConAllocExecDUESTOCK: TDateField
      FieldName = 'DUESTOCK'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsConAllocExecPRICE: TFloatField
      FieldName = 'PRICE'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsConAllocExecQTY: TFloatField
      FieldName = 'QTY'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsConAllocExecVALUE: TFloatField
      FieldName = 'VALUE'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsConAllocExecCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      OnChange = cdsConAllocExecCOMM_RATEChange
    end
    object cdsConAllocExecBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecALLIN_RATE: TFloatField
      FieldName = 'ALLIN_RATE'
    end
    object cdsConAllocExecMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConAllocExecMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConAllocExecAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConAllocExecAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConAllocExecUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConAllocExecUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConAllocExecNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConAllocExecISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConAllocExecID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConAllocExecqryConAllocCharge: TDataSetField
      FieldName = 'qryConAllocCharge'
    end
    object cdsConAllocExecCOMM_RATE_LEG2: TFloatField
      FieldName = 'COMM_RATE_LEG2'
      OnChange = cdsConAllocExecCOMM_RATE_LEG2Change
    end
    object cdsConAllocExecBROKERFEE_LEG2: TFloatField
      FieldName = 'BROKERFEE_LEG2'
      OnChange = cdsConAllocExecBROKERFEE_LEG2Change
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecALLIN_RATE_LEG2: TFloatField
      FieldName = 'ALLIN_RATE_LEG2'
    end
    object cdsConAllocExecVALID_CALC_METHOD_LEG2: TStringField
      FieldName = 'VALID_CALC_METHOD_LEG2'
      Size = 2
    end
    object cdsConAllocExecVALID_COMM_RATE_LEG2: TFloatField
      FieldName = 'VALID_COMM_RATE_LEG2'
      OnChange = cdsConAllocExecVALID_COMM_RATE_LEG2Change
    end
    object cdsConAllocExecqryConAllocChargeLeg2: TDataSetField
      FieldName = 'qryConAllocChargeLeg2'
    end
    object cdsConAllocExecCHARGES_LEG2: TFloatField
      FieldName = 'CHARGES_LEG2'
      OnChange = cdsConAllocExecBROKERFEE_LEG2Change
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecNETAMOUNT_LEG2: TFloatField
      FieldName = 'NETAMOUNT_LEG2'
      OnChange = cdsConAllocExecFOREIGN_EXRATEChange
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      OnChange = cdsConAllocExecFOREIGN_CCYCODEChange
      Size = 5
    end
    object cdsConAllocExecFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      OnChange = cdsConAllocExecFOREIGN_CCYCODEChange
      Size = 1
    end
    object cdsConAllocExecFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      OnChange = cdsConAllocExecFOREIGN_EXRATEChange
      DisplayFormat = '#,##0.########'
    end
    object cdsConAllocExecFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecSETTLE_TYPE: TStringField
      DisplayLabel = 'Settle Type'
      FieldName = 'SETTLE_TYPE'
      Size = 10
    end
    object cdsConAllocExecNET_AMOUNT_TMP: TFloatField
      DisplayLabel = 'Settle Net Amount Leg2'
      FieldKind = fkInternalCalc
      FieldName = 'NET_AMOUNT_TMP'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocExecX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
  end
  object cdsConAllocCharge: TNClientDataset
    Aggregates = <>
    DataSetField = cdsConAllocExecqryConAllocCharge
    FieldDefs = <
      item
        Name = 'CHARGE_ID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'MODDA'
        DataType = ftDateTime
      end
      item
        Name = 'MODUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'APPDA'
        DataType = ftDateTime
      end
      item
        Name = 'APPUI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNDER4Y'
        DataType = ftInteger
      end
      item
        Name = 'UNDER4YDA'
        DataType = ftDateTime
      end
      item
        Name = 'NOTES4Y'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ISDEL'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'EXECID'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'CHARGE_VAL1'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CHARGE_VAL2'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CHARGE_DIFF'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'RATE'
        DataType = ftFloat
      end
      item
        Name = 'RATE_SOURCE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'CALC_RATE'
        DataType = ftFloat
      end
      item
        Name = 'CALC_RATE_SOURCE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALC_AMOUNT'
        DataType = ftFloat
      end
      item
        Name = 'ALLIN'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'POSITION'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BASIS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALC_BASIS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LEG'
        Attributes = [faRequired]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeEdit = cdsConAllocChargeBeforeEdit
    BeforePost = cdsConAllocChargeBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 336
    object cdsConAllocChargeEXECID: TLargeintField
      FieldName = 'EXECID'
      Required = True
    end
    object cdsConAllocChargeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsConAllocChargeLEG: TStringField
      FieldName = 'LEG'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeALLIN: TStringField
      FieldName = 'ALLIN'
      Required = True
      Size = 1
    end
    object cdsConAllocChargePOSITION: TStringField
      FieldName = 'POSITION'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeBASIS: TStringField
      FieldName = 'BASIS'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeRATE: TFloatField
      FieldName = 'RATE'
    end
    object cdsConAllocChargeRATE_SOURCE: TStringField
      FieldName = 'RATE_SOURCE'
      Size = 1
    end
    object cdsConAllocChargeAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsConAllocChargeCALC_BASIS: TStringField
      FieldName = 'CALC_BASIS'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeCALC_RATE: TFloatField
      FieldName = 'CALC_RATE'
      OnChange = cdsConAllocChargeCALC_RATEChange
    end
    object cdsConAllocChargeCALC_RATE_SOURCE: TStringField
      FieldName = 'CALC_RATE_SOURCE'
      Size = 1
    end
    object cdsConAllocChargeCALC_AMOUNT: TFloatField
      FieldName = 'CALC_AMOUNT'
    end
    object cdsConAllocChargeCHARGE_VAL1: TFloatField
      FieldName = 'CHARGE_VAL1'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeCHARGE_VAL2: TFloatField
      FieldName = 'CHARGE_VAL2'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeCHARGE_DIFF: TFloatField
      FieldName = 'CHARGE_DIFF'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConAllocChargeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConAllocChargeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConAllocChargeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConAllocChargeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConAllocChargeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConAllocChargeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConAllocChargeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConAllocChargeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConAllocChargeDESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
    object cdsConAllocChargeCHARGE_DESC: TStringField
      FieldKind = fkLookup
      FieldName = 'CHARGE_DESC'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'CHARGE_DESC'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
  end
  object cdsChargeSummary: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryContractCharge'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 232
    object cdsChargeSummaryCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsChargeSummaryCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
    end
    object cdsChargeSummaryCHARGE_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CHARGE_CODE'
    end
    object cdsChargeSummaryCHARGE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
    object cdsChargeSummaryCHARGE_VAL1: TFloatField
      DisplayLabel = 'Value Based Client Price'
      FieldName = 'CHARGE_VAL1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsChargeSummaryCHARGE_VAL2: TFloatField
      DisplayLabel = 'Value Based Real Price'
      FieldName = 'CHARGE_VAL2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsChargeSummaryCHARGE_DIFF: TFloatField
      DisplayLabel = 'Different Value'
      FieldName = 'CHARGE_DIFF'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
  end
  object dsConAllocExec: TDataSource
    DataSet = cdsConAllocExec
    Left = 112
    Top = 384
  end
  object dsAllocCharge: TDataSource
    DataSet = cdsConAllocCharge
    Left = 336
    Top = 336
  end
  object cdsConAllocChargeLeg2: TNClientDataset
    Aggregates = <>
    DataSetField = cdsConAllocExecqryConAllocChargeLeg2
    Params = <>
    BeforeEdit = cdsConAllocChargeLeg2BeforeEdit
    BeforePost = cdsConAllocChargeLeg2BeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 384
    object cdsConAllocChargeLeg2CHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsConAllocChargeLeg2EXECID: TLargeintField
      FieldName = 'EXECID'
      Required = True
    end
    object cdsConAllocChargeLeg2LEG: TStringField
      FieldName = 'LEG'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeLeg2CHARGE_VAL1: TFloatField
      FieldName = 'CHARGE_VAL1'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeLeg2CHARGE_VAL2: TFloatField
      FieldName = 'CHARGE_VAL2'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeLeg2CHARGE_DIFF: TFloatField
      FieldName = 'CHARGE_DIFF'
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsConAllocChargeLeg2RATE: TFloatField
      FieldName = 'RATE'
    end
    object cdsConAllocChargeLeg2RATE_SOURCE: TStringField
      FieldName = 'RATE_SOURCE'
      Size = 1
    end
    object cdsConAllocChargeLeg2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsConAllocChargeLeg2CALC_RATE: TFloatField
      FieldName = 'CALC_RATE'
      OnChange = cdsConAllocChargeLeg2CALC_RATEChange
    end
    object cdsConAllocChargeLeg2CALC_RATE_SOURCE: TStringField
      FieldName = 'CALC_RATE_SOURCE'
      Size = 1
    end
    object cdsConAllocChargeLeg2CALC_AMOUNT: TFloatField
      FieldName = 'CALC_AMOUNT'
    end
    object cdsConAllocChargeLeg2ALLIN: TStringField
      FieldName = 'ALLIN'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeLeg2POSITION: TStringField
      FieldName = 'POSITION'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeLeg2BASIS: TStringField
      FieldName = 'BASIS'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeLeg2CALC_BASIS: TStringField
      FieldName = 'CALC_BASIS'
      Required = True
      Size = 1
    end
    object cdsConAllocChargeLeg2MODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConAllocChargeLeg2MODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConAllocChargeLeg2APPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConAllocChargeLeg2APPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConAllocChargeLeg2UNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConAllocChargeLeg2UNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConAllocChargeLeg2NOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConAllocChargeLeg2ISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConAllocChargeLeg2ID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConAllocChargeLeg2DESCRIPTION: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRIPTION'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'DESCRIPTION'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
    object cdsConAllocChargeLeg2CHARGE_DESC: TStringField
      FieldKind = fkLookup
      FieldName = 'CHARGE_DESC'
      LookupDataSet = dmLookup.cdsLuCharge
      LookupKeyFields = 'CHARGE_ID'
      LookupResultField = 'CHARGE_DESC'
      KeyFields = 'CHARGE_ID'
      Size = 50
      Lookup = True
    end
  end
  object dsAllocChargeLeg2: TDataSource
    DataSet = cdsConAllocChargeLeg2
    Left = 336
    Top = 384
  end
  object popExec: TPopupMenu
    Left = 32
    Top = 384
    object ChangeCommission1: TMenuItem
      Caption = 'Change Commission Broker Side'
      OnClick = ChangeCommission1Click
    end
    object ChangeSettlementCurrencyBrokerSide1: TMenuItem
      Caption = 'Change Settlement Currency Broker Side'
      OnClick = ChangeSettlementCurrencyBrokerSide1Click
    end
    object ChangeSettleType1: TMenuItem
      Caption = 'Change Settle Type'
      OnClick = ChangeSettleType1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ChangeNetProcedByPrice1: TMenuItem
      Caption = 'Change Net Proced By Price'
      OnClick = ChangeNetProcedByPrice1Click
    end
  end
  object cdsDataContract: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SEQID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDataContract'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 340
    Top = 441
    object cdsDataContractCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsDataContractCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsDataContractACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsDataContractACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDataContractCONDATE: TDateField
      FieldName = 'CONDATE'
    end
    object cdsDataContractCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      ReadOnly = True
    end
    object cdsDataContractBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsDataContractBS: TStringField
      FieldName = 'BS'
      ReadOnly = True
      Size = 1
    end
    object cdsDataContractDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      ReadOnly = True
    end
    object cdsDataContractDEALTICKETCODE: TStringField
      FieldName = 'DEALTICKETCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDataContractSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDataContractQTY: TFloatField
      FieldName = 'QTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataContractPRICE: TFloatField
      FieldName = 'PRICE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractGROSSAMOUNT: TFloatField
      DisplayLabel = 'Gross Amount'
      FieldName = 'GROSSAMOUNT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractBROKERFEE: TFloatField
      DisplayLabel = 'Broker Fee'
      FieldName = 'BROKERFEE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractVAT: TFloatField
      FieldName = 'VAT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractLEVY: TFloatField
      DisplayLabel = 'Levy'
      FieldName = 'LEVY'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractVAT_LEVY: TFloatField
      DisplayLabel = 'VAT Levy'
      FieldName = 'VAT_LEVY'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractKPEI: TFloatField
      FieldName = 'KPEI'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractSALESTAX: TFloatField
      DisplayLabel = 'Sales Tax'
      FieldName = 'SALESTAX'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractWHT: TFloatField
      FieldName = 'WHT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractWAPU: TFloatField
      FieldName = 'WAPU'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractNETAMOUNT: TFloatField
      DisplayLabel = 'Net Amount'
      FieldName = 'NETAMOUNT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDataContractSEQID: TIntegerField
      FieldName = 'SEQID'
      ReadOnly = True
    end
  end
end
