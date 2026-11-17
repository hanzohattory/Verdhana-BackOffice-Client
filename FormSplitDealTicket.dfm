object frmSplitDealTicket: TfrmSplitDealTicket
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Split Deal Ticket'
  ClientHeight = 439
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 794
    Height = 370
    Align = alClient
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 227
      Top = 10
      DataBinding.DataField = 'DEALTICKETCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 90
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 367
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
      Left = 82
      Top = 64
      RepositoryItem = dmGlobal.luAccount
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
      Left = 82
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
      Left = 188
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
      Left = 188
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
      Left = 82
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
      Left = 367
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
      Left = 227
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
    object cxDBLookupComboBox5: TcxDBLookupComboBox
      Left = 82
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
      Left = 238
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
      Left = 82
      Top = 145
      DataBinding.DataField = 'DUESTOCK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 50
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 189
      Top = 145
      DataBinding.DataField = 'DUECASH'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 50
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 82
      Top = 172
      DataBinding.DataField = 'DEALQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 100
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 276
      Top = 172
      DataBinding.DataField = 'DEALPRICE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 100
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 474
      Top = 172
      DataBinding.DataField = 'DEALVALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 100
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 82
      Top = 199
      DataBinding.DataField = 'ALLOCQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 100
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 364
      Top = 118
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Omnibus Trade'
      DataBinding.DataField = 'OMNIBUSTRADE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
    end
    object grdSplitDealTicket: TcxGrid
      Left = 10
      Top = 226
      Width = 774
      Height = 132
      BevelOuter = bvNone
      TabOrder = 22
      object gvwSplitDetail: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsSplitDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'SPLITQTY'
            Column = gvwSplitDetailSPLITQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = frmDealTickets.BlueToggle
        Bands = <
          item
            Caption = 'Split Detail'
          end>
        object gvwSplitDetailACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwSplitDetailACCNO: TcxGridDBBandedColumn
          Caption = 'Account Code'
          DataBinding.FieldName = 'ACCNO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = gvwSplitDetailACCNOPropertiesButtonClick
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwSplitDetailACCNAME: TcxGridDBBandedColumn
          Caption = 'Account Name'
          DataBinding.FieldName = 'ACCNAME'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = gvwSplitDetailACCNOPropertiesButtonClick
          Width = 200
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwSplitDetailSPLITQTY: TcxGridDBBandedColumn
          Caption = 'Split Quantity'
          DataBinding.FieldName = 'SPLITQTY'
          Width = 131
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwSplitDetailSPLITPRICE: TcxGridDBBandedColumn
          Caption = 'Split Price'
          DataBinding.FieldName = 'SPLITPRICE'
          Width = 208
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwSplitDetailCPBROKER: TcxGridDBBandedColumn
          Caption = 'Broker Side'
          DataBinding.FieldName = 'CPBROKER'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grdSplitDealTicketLevel1: TcxGridLevel
        GridView = gvwSplitDetail
      end
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 276
      Top = 199
      DataBinding.DataField = 'ROUNDPRICE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 100
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 474
      Top = 199
      DataBinding.DataField = 'ROUNDVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 100
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 631
      Top = 199
      DataBinding.DataField = 'DIFFVALUE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 100
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
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
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup2
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
      Control = cxDBLookupComboBox3
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
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
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
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Dealer'
      Control = cxDBLookupComboBox5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales'
      Control = cxDBLookupComboBox6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
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
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Average Price'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Total Value'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Allocation Qty'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      Control = grdSplitDealTicket
      ControlOptions.OriginalHeight = 132
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Round Avg. Price'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Round Total Value'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Diff Value'
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 370
    Width = 794
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
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000FFFFFFFF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000800000FF800000FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000800000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FF008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000800000FF008000FF008000FF008000FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000800000FF0080
        00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
        00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
        FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000080800000FF00FF0080800000808000008080000080
        80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000FF00FF008000FF0080
        00FF008000FF800000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000080800000FF
        00FF008000FF008000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000FF00FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000FFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000000FFFF808080FF008080000080800000808000008080000080
        8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000FFFFFFFF00808000008080000080
        8000008080000080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
        80FF008080000080800000808000008080000080800000808000808080FFFFFF
        FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
        80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
        FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
        80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000000
        FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
        8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
        800000808000008080000080800000808000000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
        80FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        800000808000008080000000FFFF000080FF0080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
        8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF0000FFFF0080800000808000008080000080800000808000008080000080
        8000808080FF808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
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
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 419
    Width = 794
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Split'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dsSubject: TDataSource
    DataSet = frmDealTickets.cdsDealTicket
    Left = 480
    Top = 8
  end
  object dsSplitDetail: TDataSource
    DataSet = frmDealTickets.cdsSplitDetail
    Left = 480
    Top = 120
  end
end
