inherited frmClientInquiry: TfrmClientInquiry
  Caption = 'Client Inquiry'
  ClientHeight = 565
  ClientWidth = 832
  ExplicitWidth = 832
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 832
    Height = 75
    Align = alTop
    TabOrder = 0
    object dtTransDateStart: TcxDateEdit
      Left = 68
      Top = 41
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 120
    end
    object edAccCode: TcxButtonEdit
      Left = 68
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object edAccName: TcxTextEdit
      Left = 204
      Top = 10
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 301
    end
    object dtTransDateEnd: TcxDateEdit
      Left = 203
      Top = 41
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 511
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Trans Date'
      Control = dtTransDateStart
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Account'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '-'
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 301
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = '-'
      Control = dtTransDateEnd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object Site: TLMDDockSite [1]
    Left = 0
    Top = 75
    Width = 832
    Height = 490
    Manager = DockManager
    LockMode = [dlmDockIn, dlmUndockFrom]
    Align = alClient
    OnGetSiteInfo = SiteGetSiteInfo
    TabOrder = 1
    Layout = {
      EFBBBF3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D
      227574662D38223F3E0D0A3C736974656C6973743E0D0A093C73697465206964
      3D2253454C465F53495445223E0D0A09093C7A6F6E65206B696E643D22564552
      54223E0D0A0909093C7A6F6E65206B696E643D22484F525A222073697A653D22
      32333922206473697A653D22302E3530363335353933323230333339223E0D0A
      090909093C7A6F6E65206B696E643D225441425322206163746976657461623D
      2230222073697A653D2234313022206473697A653D22302E3530333638353530
      33363835353034223E0D0A09090909093C7A6F6E65206B696E643D2250414E45
      4C222069643D2270616E656C43617368506F73222076697369626C653D223122
      2F3E0D0A09090909093C7A6F6E65206B696E643D2250414E454C222069643D22
      70616E53746F636B506F73222076697369626C653D2231222F3E0D0A09090909
      093C7A6F6E65206B696E643D2250414E454C222069643D2270616E656C415241
      504167696E67222076697369626C653D2231222F3E0D0A090909093C2F7A6F6E
      653E0D0A090909093C7A6F6E65206B696E643D22544142532220616374697665
      7461623D2230222073697A653D2234303422206473697A653D22302E34393633
      3134343936333134343936223E0D0A09090909093C7A6F6E65206B696E643D22
      50414E454C222069643D2270616E656C436173684C656467657242616C222076
      697369626C653D2231222F3E0D0A09090909093C7A6F6E65206B696E643D2250
      414E454C222069643D2270616E656C53746F636B4C656467657242616C222076
      697369626C653D2231222F3E0D0A09090909093C7A6F6E65206B696E643D2250
      414E454C222069643D2270616E656C53746F636B4167696E6722207669736962
      6C653D2231222F3E0D0A090909093C2F7A6F6E653E0D0A0909093C2F7A6F6E65
      3E0D0A0909093C7A6F6E65206B696E643D225441425322206163746976657461
      623D2230222073697A653D2232333322206473697A653D22302E343933363434
      30363737393636312220697373706163653D2231223E0D0A090909093C7A6F6E
      65206B696E643D2250414E454C222069643D2270616E656C4361736854726163
      6B222076697369626C653D2231222F3E0D0A090909093C7A6F6E65206B696E64
      3D2250414E454C222069643D2270616E656C53746F636B547261636B22207669
      7369626C653D2231222F3E0D0A0909093C2F7A6F6E653E0D0A09093C2F7A6F6E
      653E0D0A093C2F736974653E0D0A3C2F736974656C6973743E}
    object panelARAPAging: TLMDDockPanel
      Left = 6
      Top = 6
      Width = 410
      Height = 219
      Buttons = []
      ParentBackground = False
      TabOrder = 10
      Caption = 'AR / AP Aging'
      object grdARAPAging: TcxGrid
        Left = 0
        Top = 21
        Width = 410
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwARAPAging: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsARAPAging
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'AR / AP Aging'
            end>
          object gvwARAPAgingACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwARAPAgingTRDATE: TcxGridDBBandedColumn
            Caption = 'Trans Date'
            DataBinding.FieldName = 'TRDATE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwARAPAgingDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwARAPAgingCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwARAPAgingART0T2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ART0T2'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPT0T2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APT0T2'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwARAPAgingART3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ART3'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPT3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APT3'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwARAPAgingART4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ART4'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPT4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APT4'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwARAPAgingART5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ART5'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPT5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APT5'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwARAPAgingART6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ART6'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APT6'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwARAPAgingARuptoT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ARuptoT6'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPuptoT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APuptoT6'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwARAPAgingARTotal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ARTotal'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwARAPAgingAPTotal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APTotal'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = gvwARAPAging
        end
      end
    end
    object panelCashLedgerBal: TLMDDockPanel
      Left = 422
      Top = 6
      Width = 404
      Height = 219
      ClientKind = dkDocument
      Buttons = []
      ParentBackground = False
      TabOrder = 6
      Caption = 'Cash Ledger Balance'
      object grdCashLedgerBal: TcxGrid
        Left = 0
        Top = 21
        Width = 404
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwCashLedgerBal: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCashLedgerBal
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Cash Ledger Balance'
            end>
          object gvwCashLedgerBalACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashLedgerBalLEDGERACC: TcxGridDBBandedColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'LEDGERACC'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashLedgerBalLEDGERTYPE: TcxGridDBBandedColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'LEDGERTYPE'
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashLedgerBalLEDGERTYPENAME: TcxGridDBBandedColumn
            Caption = 'Ledger Type Name'
            DataBinding.FieldName = 'LEDGERTYPENAME'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashLedgerBalCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashLedgerBalBALANCE: TcxGridDBBandedColumn
            Caption = 'Balance'
            DataBinding.FieldName = 'BALANCE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwCashLedgerBal
        end
      end
    end
    object panelCashPos: TLMDDockPanel
      Left = 6
      Top = 6
      Width = 410
      Height = 219
      Buttons = []
      ParentBackground = False
      TabOrder = 5
      Caption = 'Cash Position'
      object grdCashPos: TcxGrid
        Left = 0
        Top = 21
        Width = 410
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwCashPos: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCashPosition
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Cash Position'
            end>
          object gvwCashPosACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashPosCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashPosCashOnHand: TcxGridDBBandedColumn
            Caption = 'Cash On Hand'
            DataBinding.FieldName = 'CashOnHand'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashPosCashOnHold: TcxGridDBBandedColumn
            Caption = 'Cash On Hold'
            DataBinding.FieldName = 'CashOnHold'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashPosCashOuts: TcxGridDBBandedColumn
            Caption = 'Cash Outs'
            DataBinding.FieldName = 'CashOuts'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashPosNetCashAmount: TcxGridDBBandedColumn
            Caption = 'Net Cash Amount'
            DataBinding.FieldName = 'NetCashAmount'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object grdCashPosLevel1: TcxGridLevel
          GridView = gvwCashPos
        end
      end
    end
    object panelCashTrack: TLMDDockPanel
      Left = 6
      Top = 251
      Width = 820
      Height = 213
      Buttons = []
      ParentBackground = False
      TabOrder = 7
      Caption = 'Cash Track'
      object grdCashTrack: TcxGrid
        Left = 0
        Top = 21
        Width = 820
        Height = 192
        Align = alClient
        TabOrder = 0
        object gvwCashTrack: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCashTrack
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Cash Track'
            end>
          object gvwCashTrackACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashTrackTRDATE: TcxGridDBBandedColumn
            Caption = 'Trans Date'
            DataBinding.FieldName = 'TRDATE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashTrackDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashTrackVALUEDATE: TcxGridDBBandedColumn
            Caption = 'Value Date'
            DataBinding.FieldName = 'VALUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashTrackLDGACC: TcxGridDBBandedColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'LDGACC'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashTrackLDGTYPE: TcxGridDBBandedColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'LDGTYPE'
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCashTrackLDGNAME: TcxGridDBBandedColumn
            Caption = 'Ledger Name'
            DataBinding.FieldName = 'LDGNAME'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCashTrackTRTYPE: TcxGridDBBandedColumn
            Caption = 'Transaction Type'
            DataBinding.FieldName = 'TRTYPE'
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCashTrackTRTYPE_NAME: TcxGridDBBandedColumn
            Caption = 'Transaction Type Name'
            DataBinding.FieldName = 'TRTYPE_NAME'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwCashTrackDC: TcxGridDBBandedColumn
            Caption = 'D / C'
            DataBinding.FieldName = 'DC'
            RepositoryItem = dmGlobal.luDebetCredit
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwCashTrackCCY: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCY'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwCashTrackAMT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'AMT'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwCashTrack
        end
      end
    end
    object panelStockAging: TLMDDockPanel
      Left = 422
      Top = 6
      Width = 404
      Height = 219
      Buttons = []
      ParentBackground = False
      TabOrder = 11
      Caption = 'Stock Aging'
      object grdStockAging: TcxGrid
        Left = 0
        Top = 21
        Width = 404
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwStockAging: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsStockAging
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Stock Aging'
            end>
          object gvwStockAgingACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockAgingACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockAgingTRDATE: TcxGridDBBandedColumn
            Caption = 'Trans Date'
            DataBinding.FieldName = 'TRDATE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockAgingDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockAgingINSTRUMENT_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUMENT_ID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockAgingINSTRUMENT_CODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'INSTRUMENT_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockAgingINSTRUMENT_NAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'INSTRUMENT_NAME'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVT0T2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVT0T2'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVT0T2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVT0T2'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVT3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVT3'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVT3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVT3'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVT4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVT4'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVT4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVT4'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVT5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVT5'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVT5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVT5'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVT6'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVT6'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVuptoT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVuptoT6'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVuptoT6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVuptoT6'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwStockAgingDLVTot: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DLVTot'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwStockAgingRCVTot: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RCVTot'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = gvwStockAging
        end
      end
    end
    object panelStockLedgerBal: TLMDDockPanel
      Left = 422
      Top = 6
      Width = 404
      Height = 219
      Buttons = []
      ParentBackground = False
      TabOrder = 8
      Caption = 'Stock Ledger Balance'
      object grdStockLedgerBal: TcxGrid
        Left = 0
        Top = 21
        Width = 404
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwStockLedgerBal: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsStockLedgerBal
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Stock Ledger Balance'
            end>
          object gvwStockLedgerBalACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockLedgerBalINSTRUMENT_CODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'INSTRUMENT_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockLedgerBalLEDGERACC: TcxGridDBBandedColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'LEDGERACC'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockLedgerBalLEDGERTYPE: TcxGridDBBandedColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'LEDGERTYPE'
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockLedgerBalLEDGERTYPENAME: TcxGridDBBandedColumn
            Caption = 'Ledger Type Name'
            DataBinding.FieldName = 'LEDGERTYPENAME'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockLedgerBalQTY: TcxGridDBBandedColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'QTY'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = gvwStockLedgerBal
        end
      end
    end
    object panelStockTrack: TLMDDockPanel
      Left = 6
      Top = 251
      Width = 820
      Height = 213
      Buttons = []
      ParentBackground = False
      TabOrder = 9
      Caption = 'Stock Track'
      object grdStockTrack: TcxGrid
        Left = 0
        Top = 21
        Width = 820
        Height = 192
        Align = alClient
        TabOrder = 0
        object gvwStockTrack: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsStockTrack
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Stock Track'
            end>
          object gvwStockTrackACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockTrackTRDATE: TcxGridDBBandedColumn
            Caption = 'Trans Date'
            DataBinding.FieldName = 'TRDATE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockTrackDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockTrackVALUEDATE: TcxGridDBBandedColumn
            Caption = 'Value Date'
            DataBinding.FieldName = 'VALUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockTrackLDGACC: TcxGridDBBandedColumn
            Caption = 'Ledger Account'
            DataBinding.FieldName = 'LDGACC'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockTrackLDGTYPE: TcxGridDBBandedColumn
            Caption = 'Ledger Type'
            DataBinding.FieldName = 'LDGTYPE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockTrackLDGNAME: TcxGridDBBandedColumn
            Caption = 'Ledger Name'
            DataBinding.FieldName = 'LDGNAME'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockTrackTRTYPE: TcxGridDBBandedColumn
            Caption = 'Transaction Type'
            DataBinding.FieldName = 'TRTYPE'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockTrackTRTYPE_NAME: TcxGridDBBandedColumn
            Caption = 'Transaction Type Name'
            DataBinding.FieldName = 'TRTYPE_NAME'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwStockTrackINSTRUMENT_CODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'INSTRUMENT_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwStockTrackINSTRUMENT_NAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'INSTRUMENT_NAME'
            Width = 343
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwStockTrackDC: TcxGridDBBandedColumn
            Caption = 'D / C'
            DataBinding.FieldName = 'DC'
            RepositoryItem = dmGlobal.luDebetCredit
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwStockTrackPRICE: TcxGridDBBandedColumn
            Caption = 'Price'
            DataBinding.FieldName = 'PRICE'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwStockTrackQTY: TcxGridDBBandedColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'QTY'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = gvwStockTrack
        end
      end
    end
    object panStockPos: TLMDDockPanel
      Left = 6
      Top = 6
      Width = 410
      Height = 219
      Buttons = []
      ParentBackground = False
      TabOrder = 4
      Caption = 'Stock Position'
      object grdStockPos: TcxGrid
        Left = 0
        Top = 21
        Width = 410
        Height = 198
        Align = alClient
        TabOrder = 0
        object gvwStockPos: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsStockPosition
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
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'Stock Position'
            end>
          object gvwStockPosACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockPosStockCode: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'StockCode'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockPosStockName: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'StockName'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockPosAvgPrice: TcxGridDBBandedColumn
            Caption = 'Avg. Price'
            DataBinding.FieldName = 'AvgPrice'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockPosClosePrice: TcxGridDBBandedColumn
            Caption = 'Close Price'
            DataBinding.FieldName = 'ClosePrice'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockPosStockOnHand: TcxGridDBBandedColumn
            Caption = 'Stock On Hand'
            DataBinding.FieldName = 'StockOnHand'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockPosStockOnHold: TcxGridDBBandedColumn
            Caption = 'Stock On Hold'
            DataBinding.FieldName = 'StockOnHold'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockPosStockOuts: TcxGridDBBandedColumn
            Caption = 'Stock Outs'
            DataBinding.FieldName = 'StockOuts'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockPosStockBalance: TcxGridDBBandedColumn
            Caption = 'Stock Balance'
            DataBinding.FieldName = 'StockBalance'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwStockPosStockBal_Value: TcxGridDBBandedColumn
            Caption = 'Stock Bal Value'
            DataBinding.FieldName = 'StockBal_Value'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwStockPosStockBal_MktValue: TcxGridDBBandedColumn
            Caption = 'Stock Bal Market Value'
            DataBinding.FieldName = 'StockBal_MktValue'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwStockPosUnReal_LossProfit: TcxGridDBBandedColumn
            Caption = 'Unrealize Loss Profit'
            DataBinding.FieldName = 'UnReal_LossProfit'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwStockPosLastCP: TcxGridDBBandedColumn
            Caption = 'Last CP'
            DataBinding.FieldName = 'LastCP'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwStockPos
        end
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 56
    Top = 176
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclClientInquiry
    Left = 56
    Top = 128
  end
  object aclClientInquiry: TActionList
    Left = 56
    Top = 224
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
  end
  object dsCashPosition: TDataSource
    DataSet = cdsClientCashPosition
    Left = 368
    Top = 128
  end
  object dsStockPosition: TDataSource
    DataSet = cdsClientStockPosition
    Left = 600
    Top = 128
  end
  object cdsClientCashPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientCashPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 128
    object cdsClientCashPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientCashPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsClientCashPositionCashOnHand: TFloatField
      FieldName = 'CashOnHand'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientCashPositionCashOnHold: TFloatField
      FieldName = 'CashOnHold'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientCashPositionCashOuts: TFloatField
      FieldName = 'CashOuts'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientCashPositionNetCashAmount: TFloatField
      FieldName = 'NetCashAmount'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsClientStockPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientStockPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 128
    object cdsClientStockPositionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientStockPositionStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsClientStockPositionStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsClientStockPositionAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionClosePrice: TFloatField
      FieldName = 'ClosePrice'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockOnHand: TFloatField
      FieldName = 'StockOnHand'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockOnHold: TFloatField
      FieldName = 'StockOnHold'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockOuts: TFloatField
      FieldName = 'StockOuts'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockBalance: TFloatField
      FieldName = 'StockBalance'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockPositionLastCP: TDateField
      FieldName = 'LastCP'
      DisplayFormat = 'dd MMM yyyy'
    end
  end
  object DockManager: TLMDDockManager
    StyleName = 'VS2012'
    ScrollDocTabs = False
    UseTabbedDocs = False
    Left = 56
    Top = 272
  end
  object cdsClientCashLedgerBal: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientCashLedgerBal'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 176
    object cdsClientCashLedgerBalACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientCashLedgerBalLEDGERACC: TStringField
      FieldName = 'LEDGERACC'
    end
    object cdsClientCashLedgerBalLEDGERTYPE: TStringField
      FieldName = 'LEDGERTYPE'
      Size = 10
    end
    object cdsClientCashLedgerBalLEDGERTYPENAME: TStringField
      FieldName = 'LEDGERTYPENAME'
      Size = 50
    end
    object cdsClientCashLedgerBalCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsClientCashLedgerBalBALANCE: TFloatField
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsClientCashTrack: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATESTART'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TRANSDATEEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientCashTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 224
    object cdsClientCashTrackACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientCashTrackTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientCashTrackDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientCashTrackVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientCashTrackLDGACC: TStringField
      FieldName = 'LDGACC'
    end
    object cdsClientCashTrackLDGTYPE: TStringField
      FieldName = 'LDGTYPE'
      Size = 10
    end
    object cdsClientCashTrackLDGNAME: TStringField
      FieldName = 'LDGNAME'
      Size = 50
    end
    object cdsClientCashTrackTRTYPE: TStringField
      FieldName = 'TRTYPE'
      Size = 3
    end
    object cdsClientCashTrackTRTYPE_NAME: TStringField
      FieldName = 'TRTYPE_NAME'
      Size = 50
    end
    object cdsClientCashTrackDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsClientCashTrackCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsClientCashTrackAMT: TFloatField
      FieldName = 'AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsClientStockLedgerBal: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientStockLedgerBal'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 176
    object cdsClientStockLedgerBalACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientStockLedgerBalINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsClientStockLedgerBalLEDGERACC: TStringField
      FieldName = 'LEDGERACC'
    end
    object cdsClientStockLedgerBalLEDGERTYPE: TStringField
      FieldName = 'LEDGERTYPE'
      Size = 10
    end
    object cdsClientStockLedgerBalLEDGERTYPENAME: TStringField
      FieldName = 'LEDGERTYPENAME'
      Size = 50
    end
    object cdsClientStockLedgerBalQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsClientStockTrack: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATESTART'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TRANSDATEEND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientStockTrack'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 224
    object cdsClientStockTrackACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientStockTrackTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientStockTrackDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientStockTrackVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientStockTrackLDGACC: TStringField
      FieldName = 'LDGACC'
    end
    object cdsClientStockTrackLDGTYPE: TStringField
      FieldName = 'LDGTYPE'
      Size = 10
    end
    object cdsClientStockTrackLDGNAME: TStringField
      FieldName = 'LDGNAME'
      Size = 50
    end
    object cdsClientStockTrackTRTYPE: TStringField
      FieldName = 'TRTYPE'
      Size = 3
    end
    object cdsClientStockTrackTRTYPE_NAME: TStringField
      FieldName = 'TRTYPE_NAME'
      Size = 50
    end
    object cdsClientStockTrackINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsClientStockTrackINSTRUMENT_NAME: TStringField
      FieldName = 'INSTRUMENT_NAME'
      Size = 100
    end
    object cdsClientStockTrackDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsClientStockTrackPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientStockTrackQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsCashLedgerBal: TDataSource
    DataSet = cdsClientCashLedgerBal
    Left = 368
    Top = 176
  end
  object dsCashTrack: TDataSource
    DataSet = cdsClientCashTrack
    Left = 368
    Top = 224
  end
  object dsStockLedgerBal: TDataSource
    DataSet = cdsClientStockLedgerBal
    Left = 600
    Top = 176
  end
  object dsStockTrack: TDataSource
    DataSet = cdsClientStockTrack
    Left = 600
    Top = 224
  end
  object dsARAPAging: TDataSource
    DataSet = cdsClientARAPAging
    Left = 368
    Top = 272
  end
  object cdsClientARAPAging: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientARAPAging'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 272
    object cdsClientARAPAgingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientARAPAgingTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientARAPAgingDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientARAPAgingCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsClientARAPAgingART0T2: TFloatField
      FieldName = 'ART0T2'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPT0T2: TFloatField
      FieldName = 'APT0T2'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingART3: TFloatField
      FieldName = 'ART3'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPT3: TFloatField
      FieldName = 'APT3'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingART4: TFloatField
      FieldName = 'ART4'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPT4: TFloatField
      FieldName = 'APT4'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingART5: TFloatField
      FieldName = 'ART5'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPT5: TFloatField
      FieldName = 'APT5'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingART6: TFloatField
      FieldName = 'ART6'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPT6: TFloatField
      FieldName = 'APT6'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingARuptoT6: TFloatField
      FieldName = 'ARuptoT6'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPuptoT6: TFloatField
      FieldName = 'APuptoT6'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingARTotal: TFloatField
      FieldName = 'ARTotal'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsClientARAPAgingAPTotal: TFloatField
      FieldName = 'APTotal'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsClientStockAging: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryClientStockAging'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 272
    object cdsClientStockAgingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsClientStockAgingACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsClientStockAgingTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientStockAgingDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsClientStockAgingINSTRUMENT_ID: TIntegerField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsClientStockAgingINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
    end
    object cdsClientStockAgingINSTRUMENT_NAME: TStringField
      FieldName = 'INSTRUMENT_NAME'
      Size = 100
    end
    object cdsClientStockAgingDLVT0T2: TFloatField
      FieldName = 'DLVT0T2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVT0T2: TFloatField
      FieldName = 'RCVT0T2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVT3: TFloatField
      FieldName = 'DLVT3'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVT3: TFloatField
      FieldName = 'RCVT3'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVT4: TFloatField
      FieldName = 'DLVT4'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVT4: TFloatField
      FieldName = 'RCVT4'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVT5: TFloatField
      FieldName = 'DLVT5'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVT5: TFloatField
      FieldName = 'RCVT5'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVT6: TFloatField
      FieldName = 'DLVT6'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVT6: TFloatField
      FieldName = 'RCVT6'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVuptoT6: TFloatField
      FieldName = 'DLVuptoT6'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVuptoT6: TFloatField
      FieldName = 'RCVuptoT6'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingDLVTot: TFloatField
      FieldName = 'DLVTot'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsClientStockAgingRCVTot: TFloatField
      FieldName = 'RCVTot'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsStockAging: TDataSource
    DataSet = cdsClientStockAging
    Left = 600
    Top = 272
  end
end
