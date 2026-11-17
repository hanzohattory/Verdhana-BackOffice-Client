inherited frmRenewalRepoContractEditor: TfrmRenewalRepoContractEditor
  Caption = 'Renewal Repo Contract'
  ClientHeight = 611
  ClientWidth = 715
  ExplicitWidth = 721
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 715
    Height = 521
    ExplicitWidth = 715
    ExplicitHeight = 521
    object dxLayoutControl3: TdxLayoutControl [0]
      Left = 10
      Top = 10
      Width = 695
      Height = 47
      Align = alTop
      BevelKind = bkTile
      BorderWidth = 1
      TabOrder = 0
      AutoSize = True
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 144
        Top = 10
        Align = alLeft
        DataBinding.DataField = 'CONTRACTNO_OLD'
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
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl3Item1: TdxLayoutItem
        CaptionOptions.Text = 'Existing Contract Number :'
        Parent = dxLayoutControl3Group_Root
        Control = cxDBTextEdit1
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Button1'
        CaptionOptions.Visible = False
        Parent = dxLayoutControl3Group_Root
        Control = Button1
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    object cxPageControl1: TcxPageControl [1]
      Left = 10
      Top = 195
      Width = 695
      Height = 190
      Align = alBottom
      Focusable = False
      TabOrder = 2
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 186
      ClientRectLeft = 4
      ClientRectRight = 691
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Detail'
        ImageIndex = 0
        object dxLayoutControl4: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 687
          Height = 162
          Align = alClient
          BevelKind = bkTile
          BorderWidth = 1
          TabOrder = 0
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 548
            Top = 66
            DataBinding.DataField = 'ORG_AMT'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 108
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 348
            Top = 66
            DataBinding.DataField = 'INTERESTRATE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 80
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 349
            Top = 120
            DataBinding.DataField = 'INTEREST_AMT'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 108
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 128
            Top = 120
            DataBinding.DataField = 'REPO_AMT'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 108
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 548
            Top = 120
            DataBinding.DataField = 'DUE_AMT'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 108
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 128
            Top = 93
            DataBinding.DataField = 'APR_COLL'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 80
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 349
            Top = 93
            DataBinding.DataField = 'COLL_CALL'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 80
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 548
            Top = 93
            DataBinding.DataField = 'FORCESELL'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 80
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 128
            Top = 66
            DataBinding.DataField = 'CCY'
            DataBinding.DataSource = dsSubject
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
            TabOrder = 1
            Width = 51
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 306
            Top = 66
            DataBinding.DataField = 'INTERESTCODE'
            DataBinding.DataSource = dsSubject
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
            TabOrder = 2
            Width = 36
          end
          object dxLayoutControl7: TdxLayoutControl
            Left = 10
            Top = 10
            Width = 499
            Height = 50
            BevelKind = bkTile
            TabOrder = 0
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 10
              Top = 10
              AutoSize = False
              Caption = '  True Discount'
              DataBinding.DataField = 'DISCOUNT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 0
              Height = 23
              Width = 186
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 202
              Top = 10
              Align = alRight
              AutoSize = False
              Caption = '  Repo client has corpact right ...'
              DataBinding.DataField = 'CORPACT'
              DataBinding.DataSource = dsSubject
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              TabOrder = 1
              Height = 22
              Width = 247
            end
            object dxLayoutControl7Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl4Item11: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = '   True Discount                -'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl7Group_Root
              Control = cxDBCheckBox1
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutControl4Item13: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Text = '   Repo client has corpact right ...'
              CaptionOptions.Visible = False
              Parent = dxLayoutControl7Group_Root
              Control = cxDBCheckBox3
              ControlOptions.ShowBorder = False
              Index = 1
            end
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
          object dxLayoutItem5: TdxLayoutItem
            AlignHorz = ahRight
            CaptionOptions.Text = 'Original Amount'
            Parent = dxLayoutControl4Group2
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item3: TdxLayoutItem
            AlignHorz = ahLeft
            Parent = dxLayoutControl4Group2
            Control = cxDBTextEdit9
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item4: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = '     Interest Amount'
            Parent = dxLayoutControl4Group10
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item5: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Repo Amount'
            Parent = dxLayoutControl4Group9
            Control = cxDBTextEdit11
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item6: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = '       Due Amount'
            Parent = dxLayoutControl4Group11
            Control = cxDBTextEdit12
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item7: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Approval Collateral (%)'
            Parent = dxLayoutControl4Group9
            Control = cxDBTextEdit13
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item8: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = '     Collateral Call (%)'
            Parent = dxLayoutControl4Group10
            Control = cxDBTextEdit14
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item9: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Force Sell (%)'
            Parent = dxLayoutControl4Group3
            Control = cxDBTextEdit15
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item10: TdxLayoutItem
            CaptionOptions.Text = 'Currency ID'
            Parent = dxLayoutControl4Group2
            Control = cxDBLookupComboBox1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group6
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = '              Interest Code :'
            Parent = dxLayoutControl4Group2
            Control = cxDBLookupComboBox2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group1: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group6
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group5: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group8: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group5
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group9: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group8
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group10: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group8
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group11: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group8
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Group3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group11
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group6: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group7
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group7: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup4
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item17: TdxLayoutItem
            Parent = dxLayoutControl4Group7
            Control = dxLayoutControl7
            ControlOptions.ShowBorder = False
            Index = 0
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
          Height = 162
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
          Height = 162
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
          Width = 357
          Height = 162
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
              Caption = 'Stock:'
              DataBinding.FieldName = 'STOCKCODE'
              Options.Editing = False
              Width = 55
            end
            object cxGrid2DBTableView1QTY: TcxGridDBColumn
              Caption = 'Qty:'
              DataBinding.FieldName = 'QTY'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 70
            end
            object cxGrid2DBTableView1CLS_PRICE: TcxGridDBColumn
              Caption = 'Cls. Price:'
              DataBinding.FieldName = 'CLS_PRICE'
              Options.Editing = False
              Width = 70
            end
            object cxGrid2DBTableView1TODAY_VAL: TcxGridDBColumn
              Caption = 'Valuation:'
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
    object dxLayoutControl5: TdxLayoutControl [2]
      Left = 10
      Top = 63
      Width = 695
      Height = 126
      BevelKind = bkTile
      TabOrder = 1
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 141
        Top = 10
        Align = alLeft
        DataBinding.DataField = 'CONTRACT_NO'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 100
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 353
        Top = 10
        DataBinding.DataField = 'TRXDATE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 131
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 617
        Top = 10
        DataBinding.DataField = 'TRXTYPE'
        DataBinding.DataSource = dsSubject
        Properties.Items = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Width = 64
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 141
        Top = 37
        DataBinding.DataField = 'ACCCODE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Width = 100
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 247
        Top = 37
        DataBinding.DataField = 'ACCNAME'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 330
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 141
        Top = 64
        DataBinding.DataField = 'RACCCODE'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Width = 100
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 247
        Top = 64
        DataBinding.DataField = 'RACCNAME'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Width = 330
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 141
        Top = 91
        DataBinding.DataField = 'SETTDATE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 358
        Top = 91
        DataBinding.DataField = 'SETTDAY'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Width = 41
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 560
        Top = 91
        DataBinding.DataField = 'MATURDATE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 9
        Width = 121
      end
      object dxLayoutControl5Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Renewal Contract No. :'
        Parent = dxLayoutControl5Group1
        Control = cxDBTextEdit2
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '         Renewal Date :'
        Parent = dxLayoutControl5Group1
        Control = cxDBDateEdit1
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.Text = 'Transaction Type :'
        Parent = dxLayoutControl5Group1
        Control = cxDBImageComboBox1
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl5Group1: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl5Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl5Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item6: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Repo Account :'
        Parent = dxLayoutControl1Group2
        Control = cxDBTextEdit3
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item7: TdxLayoutItem
        AlignHorz = ahLeft
        Parent = dxLayoutControl1Group2
        Control = cxDBTextEdit4
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl5Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl1Item8: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = '   Reverse Repo Account :'
        Parent = dxLayoutControl1Group3
        Control = cxDBTextEdit5
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutControl1Item9: TdxLayoutItem
        AlignHorz = ahLeft
        Parent = dxLayoutControl1Group3
        Control = cxDBTextEdit6
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        CaptionOptions.Text = 'Hidden Group'
        Parent = dxLayoutControl5Group_Root
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object dxLayoutControl1Item10: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Settle Date :'
        Parent = dxLayoutControl1Group4
        Control = cxDBDateEdit2
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item11: TdxLayoutItem
        AlignHorz = ahCenter
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Settle Days :'
        Parent = dxLayoutControl1Group4
        Control = cxDBTextEdit7
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Item12: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Maturity Date :'
        Parent = dxLayoutControl1Group4
        Control = cxDBDateEdit3
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
    object dxLayoutControl6: TdxLayoutControl [3]
      Left = 10
      Top = 391
      Width = 695
      Height = 98
      BevelKind = bkSoft
      TabOrder = 3
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 540
        Top = 10
        DataBinding.DataField = 'COLL_AMT'
        DataBinding.DataSource = dsSubject
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 133
      end
      object cxDBMemo1: TcxDBMemo
        Left = 67
        Top = 37
        DataBinding.DataField = 'NOTE'
        DataBinding.DataSource = dsSubject
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Height = 47
        Width = 606
      end
      object dxLayoutControl6Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem6: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.Text = 'Collateral Amount :'
        Parent = dxLayoutControl6Group1
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = True
        SizeOptions.SizableVert = True
        Control = cxDBTextEdit16
        ControlOptions.AlignHorz = ahRight
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
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
      object dxLayoutControl1Item14: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = '   Remark :'
        Parent = dxLayoutControl6Group_Root
        Control = cxDBMemo1
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = dxLayoutControl3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = cxPageControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = dxLayoutControl5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = dxLayoutControl6
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 542
    Width = 715
    ExplicitTop = 542
    ExplicitWidth = 715
    inherited dbNavLog: TDBNavigator
      Left = 601
      Hints.Strings = ()
      ExplicitLeft = 601
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
    Top = 591
    Width = 715
    ExplicitTop = 591
    ExplicitWidth = 715
  end
  inherited tabEditorData: TTabSet
    Top = 521
    Width = 715
    ExplicitTop = 521
    ExplicitWidth = 715
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRCR
    Left = 176
    Top = 40
  end
  object cdsRCR: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryRCR'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsRCRNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 652
    Top = 40
    object cdsRCRCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRCRCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRCRENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRCRENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRCRENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRCRTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsRCRTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRCRACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRCRACCCODE: TStringField
      DisplayLabel = 'AccNo.'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRCRACCNAME: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRCRRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRCRRACCCODE: TStringField
      DisplayLabel = 'Rev. AccNo.'
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRCRRACCNAME: TStringField
      DisplayLabel = 'Rev. AccName'
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRCRSETTDATE: TDateTimeField
      DisplayLabel = 'Sett. date'
      FieldName = 'SETTDATE'
    end
    object cdsRCRSETTDAY: TIntegerField
      DisplayLabel = 'Sett. days'
      FieldName = 'SETTDAY'
    end
    object cdsRCRMATURDATE: TDateTimeField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MATURDATE'
    end
    object cdsRCRCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRCRLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRCRDUE_AMT: TFloatField
      DisplayLabel = 'Due Amount'
      FieldName = 'DUE_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRINTERESTCODE: TStringField
      DisplayLabel = 'Int.code'
      FieldName = 'INTERESTCODE'
      OnChange = cdsRCRINTERESTCODEChange
      Size = 10
    end
    object cdsRCRINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRCRINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '0.### %'
    end
    object cdsRCRINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRCRINTERESTDAY: TIntegerField
      DisplayLabel = 'Int.rate'
      FieldName = 'INTERESTDAY'
    end
    object cdsRCRCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRCRCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRCRAPR_COLL: TFloatField
      DisplayLabel = 'Approval Collateral'
      FieldName = 'APR_COLL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRFORCESELL: TFloatField
      DisplayLabel = 'Force Sell'
      FieldName = 'FORCESELL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRCOLL_CALL: TFloatField
      DisplayLabel = 'Collateral Call'
      FieldName = 'COLL_CALL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsRCRISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRCRMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRCRMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRCRAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRCRAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRCRUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRCRUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRCRNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRCRISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRCRID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRCRCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRCRTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRCRDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsRCRORG_AMT: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Original Amount'
      FieldName = 'ORG_AMT'
      OnChange = cdsRCRORG_AMTChange
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRREPO_AMT: TFloatField
      DisplayLabel = 'Repo Amount'
      FieldName = 'REPO_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,###'
    end
    object cdsRCRCONTRACTNO_OLD: TStringField
      FieldName = 'CONTRACTNO_OLD'
      Size = 30
    end
    object cdsRCRNOTE: TStringField
      FieldName = 'NOTE'
      Size = 300
    end
    object cdsRCRqryRCR_D: TDataSetField
      FieldName = 'qryRCR_D'
    end
    object cdsRCRDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRCRCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
  end
  object dsRepoCollateral: TDataSource
    DataSet = cdsRCR_D
    Left = 40
    Top = 40
  end
  object cdsSTOCKONHAND_Edit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 40
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
  object cdsSTOCK_POS: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qrySTOCK_POS'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 40
    Top = 108
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
  object dsSTOCKONHAND: TDataSource
    DataSet = cdsSTOCKONHAND_Edit
    Left = 108
    Top = 40
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
    Left = 516
    Top = 40
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
  object cdsRepoContractList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmREPO_qryCRActiveList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 244
    Top = 40
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
  object cdsRCR_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsRCRqryRCR_D
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNO'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 40
    object cdsRCR_DCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRCR_DSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsRCR_DSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsRCR_DSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsRCR_DSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsRCR_DSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsRCR_DTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsRCR_DINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsRCR_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRCR_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRCR_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRCR_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRCR_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRCR_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRCR_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRCR_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRCR_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRCR_DQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsRCR_DCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsRCR_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsRCR_DACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRCR_DCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
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
    Left = 448
    Top = 40
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
  object cdsLuInterest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'INTERESTCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryLuINTEREST'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 380
    Top = 40
    object cdsLuInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsLuInterestCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsLuInterestINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsLuInterestINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsLuInterestINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsLuInterestID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsSTOCKONHAND: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qrySTOCKONHAND'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 104
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
    object cdsSTOCKONHANDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDACQDATE: TDateField
      FieldName = 'ACQDATE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsSTOCKONHANDAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      ReadOnly = True
    end
    object cdsSTOCKONHANDPROFIT_LOSS: TFloatField
      FieldName = 'PROFIT_LOSS'
      ReadOnly = True
    end
    object cdsSTOCKONHANDBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDSTK_WDR: TFloatField
      FieldName = 'STK_WDR'
      ReadOnly = True
    end
    object cdsSTOCKONHANDHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      ReadOnly = True
    end
    object cdsSTOCKONHANDLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
      ReadOnly = True
    end
    object cdsSTOCKONHANDQTY: TLargeintField
      FieldName = 'QTY'
      ReadOnly = True
    end
    object cdsSTOCKONHANDACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsSTOCKONHANDOLD_QTY: TLargeintField
      FieldName = 'OLD_QTY'
      ReadOnly = True
    end
  end
end
