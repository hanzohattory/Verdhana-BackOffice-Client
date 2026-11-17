inherited frmRepoChangeCollateral: TfrmRepoChangeCollateral
  Caption = 'Change Collateral'
  ClientHeight = 555
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 755
    Height = 465
    ExplicitWidth = 755
    ExplicitHeight = 465
    object dxLayoutControl3: TdxLayoutControl [0]
      Left = 10
      Top = 10
      Width = 735
      Height = 55
      Align = alTop
      BevelKind = bkTile
      BorderWidth = 1
      TabOrder = 0
      AutoSize = True
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 144
        Top = 10
        Align = alLeft
        DataBinding.DataField = 'CONTRACT_NO'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 105
      end
      object Button1: TButton
        Left = 255
        Top = 10
        Width = 26
        Height = 21
        Caption = '...'
        TabOrder = 1
        OnClick = Button1Click
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 411
        Top = 10
        Align = alLeft
        DataBinding.DataField = 'TRXDATE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Width = 121
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 663
        Top = 10
        Align = alRight
        DataBinding.DataField = 'TRXTYPE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Properties.Items = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 3
        Width = 51
      end
      object dxLayoutGroup4: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        CaptionOptions.Text = 'Existing Contract Number :'
        Parent = dxLayoutControl3Group2
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        CaptionOptions.Text = 'Button1'
        CaptionOptions.Visible = False
        Parent = dxLayoutControl3Group2
        Control = Button1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '          Transaction Date :'
        Parent = dxLayoutControl3Group2
        Control = cxDBDateEdit1
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.Text = '          Transaction Type :'
        Parent = dxLayoutGroup4
        Control = cxDBImageComboBox1
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl3Group2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutGroup4
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
    end
    object cxPageControl1: TcxPageControl [1]
      Left = 10
      Top = 183
      Width = 735
      Height = 225
      Align = alBottom
      Focusable = False
      TabOrder = 2
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 221
      ClientRectLeft = 4
      ClientRectRight = 731
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Detail'
        ImageIndex = 0
        object dxLayoutControl4: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 727
          Height = 197
          Align = alClient
          BevelKind = bkTile
          BorderWidth = 1
          TabOrder = 0
          object dxLayoutControl5: TdxLayoutControl
            Left = 10
            Top = 10
            Width = 700
            Height = 54
            Align = alRight
            BevelInner = bvSpace
            BevelKind = bkSoft
            BorderWidth = 3
            TabOrder = 0
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 307
              Top = 10
              AutoSize = False
              Caption = '  True Discount'
              DataBinding.DataField = 'DISCOUNT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Height = 23
              Width = 120
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 433
              Top = 10
              Align = alRight
              AutoSize = False
              Caption = '  Repo client has corpact right ...'
              DataBinding.DataField = 'CORPACT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Height = 23
              Width = 247
            end
            object dxLayoutControl5Group_Root: TdxLayoutGroup
              AlignHorz = ahParentManaged
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl4Item11: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = '   True Discount'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group_Root
              Control = cxDBCheckBox1
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutControl4Item13: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.AlignHorz = taRightJustify
              CaptionOptions.Text = 'cxDBCheckBox3'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl5Group_Root
              Control = cxDBCheckBox3
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
          end
          object dxLayoutControl6: TdxLayoutControl
            Left = 10
            Top = 70
            Width = 300
            Height = 107
            BevelKind = bkTile
            TabOrder = 1
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 128
              Top = 10
              DataBinding.DataField = 'CCY'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Properties.KeyFieldNames = 'CCYCODE'
              Properties.ListColumns = <
                item
                  FieldName = 'CCYCODE'
                end>
              Properties.ListSource = dmLookup.dsLuCcy
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 0
              Width = 51
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 306
              Top = 10
              DataBinding.DataField = 'INTERESTCODE'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Properties.KeyFieldNames = 'INTERESTCODE'
              Properties.ListColumns = <
                item
                  FieldName = 'INTERESTCODE'
                end>
              Properties.ListSource = dmLookup.dsLuInterest
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 1
              Width = 36
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 348
              Top = 10
              DataBinding.DataField = 'INTERESTRATE'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 2
              Width = 80
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 547
              Top = 10
              DataBinding.DataField = 'ORG_AMT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 128
              Top = 37
              DataBinding.DataField = 'APR_COLL'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 4
              Width = 80
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 347
              Top = 37
              DataBinding.DataField = 'COLL_CALL'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 6
              Width = 80
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 547
              Top = 37
              DataBinding.DataField = 'FORCESELL'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 8
              Width = 80
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 128
              Top = 64
              DataBinding.DataField = 'REPO_AMT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 347
              Top = 64
              DataBinding.DataField = 'INTEREST_AMT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 547
              Top = 64
              DataBinding.DataField = 'DUE_AMT'
              DataBinding.DataSource = dsSubject
              Enabled = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object dxLayoutControl6Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl4Item10: TdxLayoutItem
              CaptionOptions.Text = 'Currency ID'
              Parent = dxLayoutControl6Group1
              Control = cxDBLookupComboBox1
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = '              Interest Code :'
              Parent = dxLayoutControl6Group1
              Control = cxDBLookupComboBox2
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutControl4Item3: TdxLayoutItem
              AlignHorz = ahLeft
              Parent = dxLayoutControl6Group1
              Control = cxDBTextEdit9
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = 'Original Amount'
              Parent = dxLayoutControl6Group1
              Control = cxDBTextEdit8
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 3
            end
            object dxLayoutControl6Group1: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl6Group_Root
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Item7: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Approval Collateral (%)'
              Parent = dxLayoutControl6Group3
              Control = cxDBTextEdit13
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutControl6Group2: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl6Group_Root
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl4Item8: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Collateral Call (%)'
              Parent = dxLayoutControl6Group4
              Control = cxDBTextEdit14
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutControl4Item9: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Force Sell (%)'
              Parent = dxLayoutControl6Group5
              Control = cxDBTextEdit15
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutControl6Group3: TdxLayoutGroup
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl6Group2
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Item5: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Repo Amount'
              Parent = dxLayoutControl6Group3
              Control = cxDBTextEdit11
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutControl6Group4: TdxLayoutGroup
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl6Group2
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 1
            end
            object dxLayoutControl4Item4: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Interest Amount'
              Parent = dxLayoutControl6Group4
              Control = cxDBTextEdit10
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutControl6Group5: TdxLayoutGroup
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Hidden Group'
              Parent = dxLayoutControl6Group2
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = 2
            end
            object dxLayoutControl4Item6: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Due Amount'
              Parent = dxLayoutControl6Group5
              Control = cxDBTextEdit12
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
          end
          object dxLayoutGroup5: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            AlignHorz = ahRight
            Parent = dxLayoutGroup5
            Control = dxLayoutControl5
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item1: TdxLayoutItem
            Parent = dxLayoutGroup5
            Control = dxLayoutControl6
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Collateral'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 265
          Height = 197
          Align = alLeft
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsSTOCKONHAND
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGrid1DBTableView1ACCCODE: TcxGridDBColumn
              Caption = 'A/C. No:'
              DataBinding.FieldName = 'ACCCODE'
              Width = 61
            end
            object cxGrid1DBTableView1ACCNAME: TcxGridDBColumn
              Caption = 'A/C. Name:'
              DataBinding.FieldName = 'ACCNAME'
              Visible = False
              GroupIndex = 0
            end
            object cxGrid1DBTableView1STOCKCODE: TcxGridDBColumn
              Caption = 'Stock:'
              DataBinding.FieldName = 'STOCKCODE'
              Width = 80
            end
            object cxGrid1DBTableView1QTY_ONHAND: TcxGridDBColumn
              Caption = 'Qty. onHand:'
              DataBinding.FieldName = 'QTY_ONHAND'
              Width = 81
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel3: TPanel
          Left = 265
          Top = 0
          Width = 65
          Height = 197
          Align = alLeft
          BevelInner = bvLowered
          BevelKind = bkTile
          BevelOuter = bvLowered
          TabOrder = 1
          object Button4: TButton
            Left = 7
            Top = 56
            Width = 50
            Height = 25
            Caption = '>>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 7
            Top = 87
            Width = 50
            Height = 25
            Caption = '<<'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button5Click
          end
        end
        object cxGrid2: TcxGrid
          Left = 330
          Top = 0
          Width = 397
          Height = 197
          Align = alClient
          TabOrder = 2
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            DataController.DataSource = dsRepoCollateral
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1CONRID: TcxGridDBColumn
              DataBinding.FieldName = 'CONRID'
              Visible = False
            end
            object cxGrid2DBTableView1STOCKID: TcxGridDBColumn
              DataBinding.FieldName = 'STOCKID'
              Visible = False
            end
            object cxGrid2DBTableView1SEQNO: TcxGridDBColumn
              Caption = 'SEQ. NO'
              DataBinding.FieldName = 'SEQNO'
              Visible = False
              Width = 55
            end
            object cxGrid2DBTableView1STOCKCODE: TcxGridDBColumn
              Caption = 'Stock'
              DataBinding.FieldName = 'STOCKCODE'
              Options.Editing = False
              Width = 55
            end
            object cxGrid2DBTableView1QTY: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'QTY'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 70
            end
            object cxGrid2DBTableView1CLS_PRICE: TcxGridDBColumn
              Caption = 'Cls. Price'
              DataBinding.FieldName = 'CLS_PRICE'
              Options.Editing = False
              Width = 70
            end
            object cxGrid2DBTableView1TODAY_VAL: TcxGridDBColumn
              Caption = 'Valuation'
              DataBinding.FieldName = 'TODAY_VAL'
              Options.Editing = False
              Width = 80
            end
            object cxGrid2DBTableView1COL_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'COL_AMT'
              Visible = False
            end
            object cxGrid2DBTableView1ACCID: TcxGridDBColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
            end
            object cxGrid2DBTableView1ACCCODE: TcxGridDBColumn
              Caption = 'From ACC:'
              DataBinding.FieldName = 'ACCCODE'
              Width = 90
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
    object dxLayoutControl7: TdxLayoutControl [2]
      Left = 10
      Top = 71
      Width = 735
      Height = 106
      BevelKind = bkTile
      TabOrder = 1
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 161
        Top = 10
        DataBinding.DataField = 'ACCCODE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 288
        Top = 10
        DataBinding.DataField = 'ACCNAME'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 331
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 161
        Top = 37
        DataBinding.DataField = 'RACCCODE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 288
        Top = 37
        DataBinding.DataField = 'RACCNAME'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Width = 331
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 161
        Top = 64
        DataBinding.DataField = 'SETTDATE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 354
        Top = 64
        DataBinding.DataField = 'SETTDAY'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 589
        Top = 64
        DataBinding.DataField = 'MATURDATE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 6
        Width = 121
      end
      object dxLayoutControl7Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '   Repo Account No. :'
        Parent = dxLayoutControl7Group1
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        AlignHorz = ahLeft
        Parent = dxLayoutControl7Group1
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl7Group1: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl7Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl7Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item7: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '   Reverse Repo Account No. :'
        Parent = dxLayoutControl1Group3
        Control = cxDBTextEdit4
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        AlignHorz = ahLeft
        Parent = dxLayoutControl1Group3
        Control = cxDBTextEdit5
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl7Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl1Group1
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item10: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '   Settle Date :'
        Parent = dxLayoutControl7Group2
        Control = cxDBDateEdit2
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '          Days :'
        Parent = dxLayoutControl7Group2
        Control = cxDBTextEdit6
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl1Item11: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.Text = '          Maturity Date :'
        Parent = dxLayoutControl1Group1
        Control = cxDBDateEdit3
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl7Group2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl1Group4
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
    end
    object cxDBTextEdit7: TcxDBTextEdit [3]
      Left = 616
      Top = 414
      DataBinding.DataField = 'COLL_AMT'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 129
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      Parent = dxLayoutGroup1
      Control = dxLayoutControl3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = cxPageControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      Parent = dxLayoutGroup1
      Control = dxLayoutControl7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Total Collateral Amount :'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 486
    Width = 755
    ExplicitTop = 486
    ExplicitWidth = 755
    inherited dbNavLog: TDBNavigator
      Left = 641
      Hints.Strings = ()
      ExplicitLeft = 641
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
    Top = 535
    Width = 755
    ExplicitTop = 535
    ExplicitWidth = 755
  end
  inherited tabEditorData: TTabSet
    Top = 465
    Width = 755
    ExplicitTop = 465
    ExplicitWidth = 755
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRepoContract
    Left = 800
    Top = 88
  end
  object cdsRepoContract: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryORC'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 800
    Top = 24
    object cdsRepoContractCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoContractCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRepoContractENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRepoContractENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRepoContractENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRepoContractTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsRepoContractTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRepoContractACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRepoContractACCCODE: TStringField
      DisplayLabel = 'AccNo.'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRepoContractACCNAME: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRepoContractRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRepoContractRACCCODE: TStringField
      DisplayLabel = 'Rev. AccNo.'
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRepoContractRACCNAME: TStringField
      DisplayLabel = 'Rev. AccName'
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRepoContractSETTDATE: TDateTimeField
      DisplayLabel = 'Sett. date'
      FieldName = 'SETTDATE'
    end
    object cdsRepoContractSETTDAY: TIntegerField
      DisplayLabel = 'Sett. days'
      FieldName = 'SETTDAY'
    end
    object cdsRepoContractMATURDATE: TDateTimeField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MATURDATE'
    end
    object cdsRepoContractCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRepoContractLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRepoContractDUE_AMT: TFloatField
      DisplayLabel = 'Due Amount'
      FieldName = 'DUE_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRepoContractINTERESTCODE: TStringField
      DisplayLabel = 'Int.code'
      FieldName = 'INTERESTCODE'
      OnChange = cdsRepoContractINTERESTCODEChange
      Size = 10
    end
    object cdsRepoContractINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRepoContractINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '0.### %'
    end
    object cdsRepoContractINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRepoContractINTERESTDAY: TIntegerField
      DisplayLabel = 'Int.rate'
      FieldName = 'INTERESTDAY'
    end
    object cdsRepoContractCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRepoContractCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRepoContractAPR_COLL: TFloatField
      DisplayLabel = 'Approval Collateral'
      FieldName = 'APR_COLL'
      DisplayFormat = '0.### %'
    end
    object cdsRepoContractFORCESELL: TFloatField
      DisplayLabel = 'Force Sell'
      FieldName = 'FORCESELL'
      DisplayFormat = '0.### %'
    end
    object cdsRepoContractCOLL_CALL: TFloatField
      DisplayLabel = 'Collateral Call'
      FieldName = 'COLL_CALL'
      DisplayFormat = '0.### %'
    end
    object cdsRepoContractISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsRepoContractISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRepoContractMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoContractMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoContractAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoContractAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoContractUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoContractUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoContractNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoContractISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoContractID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoContractCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRepoContractTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRepoContractDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsRepoContractORG_AMT: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Original Amount'
      FieldName = 'ORG_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRepoContractINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRepoContractREPO_AMT: TFloatField
      DisplayLabel = 'Repo Amount'
      FieldName = 'REPO_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRepoContractCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,###'
    end
    object cdsRepoContractqryORC_D: TDataSetField
      FieldName = 'qryORC_D'
    end
    object cdsRepoContractDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRepoContractCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
  end
  object cdsRepoContract_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsRepoContractqryORC_D
    Params = <>
    BeforeEdit = cdsRepoContract_DBeforeEdit
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 800
    Top = 152
    object cdsRepoContract_DCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoContract_DSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsRepoContract_DSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsRepoContract_DSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsRepoContract_DSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsRepoContract_DSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsRepoContract_DTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsRepoContract_DINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsRepoContract_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoContract_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoContract_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoContract_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoContract_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoContract_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoContract_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoContract_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoContract_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoContract_DQTY: TLargeintField
      FieldName = 'QTY'
      OnChange = cdsRepoContract_DQTYChange
    end
    object cdsRepoContract_DCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsRepoContract_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsRepoContract_DACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRepoContract_DCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
  object cdsSTOCKONHAND_Edit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 816
    Top = 232
    object cdsSTOCKONHAND_EditENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsSTOCKONHAND_EditENTTCODE: TStringField
      FieldName = 'ENTTCODE'
    end
    object cdsSTOCKONHAND_EditACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsSTOCKONHAND_EditACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSTOCKONHAND_EditSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSTOCKONHAND_EditQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsSTOCKONHAND_EditACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsSTOCKONHAND_EditSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSTOCKONHAND_EditEDIT: TStringField
      FieldName = 'EDIT'
      Size = 10
    end
  end
  object dsSTOCKONHAND: TDataSource
    DataSet = cdsSTOCKONHAND_Edit
    Left = 816
    Top = 280
  end
  object cdsSTOCKONHAND: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspN_dmREPO_qrySTOCKONHAND'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 816
    Top = 336
    object cdsSTOCKONHANDENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsSTOCKONHANDENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsSTOCKONHANDACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsSTOCKONHANDACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsSTOCKONHANDSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsSTOCKONHANDACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
      Required = True
    end
  end
  object cdsSTOCK_POS: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qrySTOCK_POS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 960
    Top = 104
    object cdsSTOCK_POSACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSTOCK_POSACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSTOCK_POSSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsSTOCK_POSSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsSTOCK_POSQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsSTOCK_POSQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
    end
  end
  object cdsRepoContractList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryCRActiveList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 960
    Top = 24
    object cdsRepoContractListCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoContractListENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRepoContractListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRepoContractListRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRepoContractListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRepoContractListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRepoContractListENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRepoContractListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsRepoContractListTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRepoContractListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRepoContractListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRepoContractListRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRepoContractListRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRepoContractListSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
    end
    object cdsRepoContractListSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsRepoContractListMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
    end
    object cdsRepoContractListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRepoContractListLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRepoContractListORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
    end
    object cdsRepoContractListINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
    end
    object cdsRepoContractListREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsRepoContractListDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
    end
    object cdsRepoContractListINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsRepoContractListINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRepoContractListINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsRepoContractListINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRepoContractListINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsRepoContractListCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRepoContractListCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRepoContractListAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
    end
    object cdsRepoContractListFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsRepoContractListCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsRepoContractListCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsRepoContractListISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsRepoContractListISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRepoContractListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoContractListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoContractListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoContractListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoContractListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoContractListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoContractListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoContractListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoContractListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoContractListCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRepoContractListTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRepoContractListDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsRepoContractListDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRepoContractListCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
  end
  object cdsCollateral: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryCollateral'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 968
    Top = 184
    object cdsCollateralCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsCollateralSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsCollateralSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCollateralSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCollateralSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCollateralSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsCollateralTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsCollateralINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsCollateralMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCollateralMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCollateralAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCollateralAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCollateralUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCollateralUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCollateralNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCollateralISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCollateralID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCollateralQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsCollateralCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsCollateralACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCollateralACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCollateralCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
  object cdsLuInstrument: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryLuCLSPRICE'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 968
    Top = 256
    object cdsLuInstrumentINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsLuInstrumentINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsLuInstrumentLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsLuInstrumentMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsLuInstrumentSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsLuInstrumentISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsLuInstrumentLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
  end
  object dsRepoCollateral: TDataSource
    DataSet = cdsRepoContract_D
    Left = 976
    Top = 328
  end
end
