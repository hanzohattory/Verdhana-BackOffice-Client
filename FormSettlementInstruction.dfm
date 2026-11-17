inherited frmSettlementInstruction: TfrmSettlementInstruction
  Caption = 'Settlement Instruction'
  ClientHeight = 669
  ClientWidth = 865
  ExplicitWidth = 865
  ExplicitHeight = 669
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 865
    Height = 49
    Align = alTop
    TabOrder = 0
    object dtDueDate: TcxDateEdit
      Left = 60
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 186
      Top = 10
      Width = 75
      Height = 25
      Action = actViewList
      TabOrder = 1
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
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Due Date'
      Control = dtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object Site: TLMDDockSite [1]
    Left = 0
    Top = 49
    Width = 865
    Height = 620
    Manager = DockManager
    LockMode = [dlmDockIn, dlmUndockFrom]
    Align = alClient
    TabOrder = 1
    Layout = {
      EFBBBF3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D
      227574662D38223F3E0D0A3C736974656C6973743E0D0A093C73697465206964
      3D2253454C465F53495445223E0D0A09093C7A6F6E65206B696E643D22564552
      54223E0D0A0909093C7A6F6E65206B696E643D2250414E454C222069643D2270
      616E656C436173685349222076697369626C653D2231222073697A653D223330
      3422206473697A653D22302E353034393833333838373034333139222F3E0D0A
      0909093C7A6F6E65206B696E643D2250414E454C222069643D2270616E656C53
      746F636B5349222076697369626C653D2231222073697A653D22323938222064
      73697A653D22302E343935303136363131323935363831222069737370616365
      3D2231222F3E0D0A09093C2F7A6F6E653E0D0A093C2F736974653E0D0A3C2F73
      6974656C6973743E}
    object panelCashSI: TLMDDockPanel
      Left = 6
      Top = 6
      Width = 853
      Height = 304
      Buttons = []
      ParentBackground = False
      TabOrder = 4
      Caption = 'Cash Settlement'
      object grdCash: TcxGrid
        Left = 0
        Top = 21
        Width = 853
        Height = 283
        Align = alClient
        TabOrder = 0
        object gvwCashSI: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSICash
          DataController.DetailKeyFieldNames = 'ACCID'
          DataController.KeyFieldNames = 'SIID'
          DataController.MasterKeyFieldNames = 'ACCID'
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
              Caption = 'Cash Settlement Instruction'
            end>
          object gvwCashSISIID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashSISINO: TcxGridDBBandedColumn
            Caption = 'SI Number'
            DataBinding.FieldName = 'SINO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashSICONID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashSIDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashSISETTLE_SIDE: TcxGridDBBandedColumn
            Caption = 'Settle Side'
            DataBinding.FieldName = 'SETTLE_SIDE'
            RepositoryItem = dmGlobal.luReceivementPayment
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashSIINSTRUCTION_TYPE: TcxGridDBBandedColumn
            Caption = 'Instruction Type'
            DataBinding.FieldName = 'INSTRUCTION_TYPE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCashSIACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCashSIACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCashSIACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwCashSIBANKCODE: TcxGridDBBandedColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwCashSIBANKACCNO: TcxGridDBBandedColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwCashSICP_BANKCODE: TcxGridDBBandedColumn
            Caption = 'CP Bank Code'
            DataBinding.FieldName = 'CP_BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwCashSICP_BANKACCNO: TcxGridDBBandedColumn
            Caption = 'CP Bank Account No.'
            DataBinding.FieldName = 'CP_BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwCashSISETTLE_CCYCODE: TcxGridDBBandedColumn
            Caption = 'Settle Currency'
            DataBinding.FieldName = 'SETTLE_CCYCODE'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwCashSISETTLE_EXRATE: TcxGridDBBandedColumn
            Caption = 'Settle ExRate'
            DataBinding.FieldName = 'SETTLE_EXRATE'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwCashSISETTLE_NETAMT: TcxGridDBBandedColumn
            Caption = 'Settle Net Amount'
            DataBinding.FieldName = 'SETTLE_NETAMT'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
        object gvwCashSettlement: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCashSettlement
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
            end>
          object gvwCashSettlementACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashSettlementACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashSettlementACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 393
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashSettlementCCYCODE: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CCYCODE'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashSettlementCASH_POS: TcxGridDBBandedColumn
            Caption = 'Cash Pos'
            DataBinding.FieldName = 'CASH_POS'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAPOD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAPOD'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAPDUE0: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAPDUE0'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAPDUE1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAPDUE1'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAPDUE2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAPDUE2'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAPDUE21: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAPDUE>2'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwCashSettlementNET_ARAP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_ARAP'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwCashSettlement
          object grdCashLevel1: TcxGridLevel
            GridView = gvwCashSI
          end
        end
      end
    end
    object panelStockSI: TLMDDockPanel
      Left = 6
      Top = 316
      Width = 853
      Height = 298
      Buttons = []
      ParentBackground = False
      TabOrder = 5
      Caption = 'Stock Settlement'
      object grdStock: TcxGrid
        Left = 0
        Top = 21
        Width = 853
        Height = 277
        Align = alClient
        TabOrder = 0
        object gvwStockSI: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsSIStock
          DataController.DetailKeyFieldNames = 'ACCID;STOCKID'
          DataController.KeyFieldNames = 'SIID'
          DataController.MasterKeyFieldNames = 'ACCID;STOCKID'
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
              Caption = 'Stock Settlement Instruction'
            end>
          object gvwStockSISIID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockSISINO: TcxGridDBBandedColumn
            Caption = 'SI Number'
            DataBinding.FieldName = 'SINO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockSICONID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockSIDUEDATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockSISETTLE_SIDE: TcxGridDBBandedColumn
            Caption = 'Settle Side'
            DataBinding.FieldName = 'SETTLE_SIDE'
            RepositoryItem = dmGlobal.luReceiveDeliver
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockSIINSTRUCTION_TYPE: TcxGridDBBandedColumn
            Caption = 'Instruction Type'
            DataBinding.FieldName = 'INSTRUCTION_TYPE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockSIACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockSIACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockSIACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwStockSISTOCKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwStockSISTOCKCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwStockSISTOCKNAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'STOCKNAME'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwStockSIBANKCODE: TcxGridDBBandedColumn
            Caption = 'Bank Code'
            DataBinding.FieldName = 'BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwStockSIBANKACCNO: TcxGridDBBandedColumn
            Caption = 'Bank Account No.'
            DataBinding.FieldName = 'BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwStockSICP_BANKCODE: TcxGridDBBandedColumn
            Caption = 'CP Bank Code'
            DataBinding.FieldName = 'CP_BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwStockSICP_BANKACCNO: TcxGridDBBandedColumn
            Caption = 'CP Bank Account No.'
            DataBinding.FieldName = 'CP_BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwStockSIQTY: TcxGridDBBandedColumn
            Caption = 'Quantity'
            DataBinding.FieldName = 'QTY'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
        end
        object gvwStockSettlement: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsStockSettlement
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
            end>
          object gvwStockSettlementACCID: TcxGridDBBandedColumn
            Caption = 'Account ID'
            DataBinding.FieldName = 'ACCID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockSettlementACCNO: TcxGridDBBandedColumn
            Caption = 'Account No.'
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockSettlementACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockSettlementSTOCKID: TcxGridDBBandedColumn
            Caption = 'Stock ID'
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockSettlementSTOCKCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockSettlementSTOCKNAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'STOCKNAME'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockSettlementSTOCK_POS: TcxGridDBBandedColumn
            Caption = 'Stock Pos'
            DataBinding.FieldName = 'STOCK_POS'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockSettlementNETSTOCK_OD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETSTOCK_OD'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockSettlementNETSTOCK_DUE0: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETSTOCK_DUE0'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwStockSettlementNETSTOCK_DUE1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETSTOCK_DUE1'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwStockSettlementNETSTOCK_DUE2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETSTOCK_DUE2'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwStockSettlementNETSTOCK_DUE21: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NETSTOCK_DUE>2'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwStockSettlementNET_STOCK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NET_STOCK'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = gvwStockSettlement
          object grdStockLevel1: TcxGridLevel
            GridView = gvwStockSI
          end
        end
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 384
    Top = 8
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclSettlementInstruction
    Top = 8
  end
  object aclSettlementInstruction: TActionList
    Left = 480
    Top = 8
    object actViewList: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListExecute
      CheckPermission = False
    end
  end
  object DockManager: TLMDDockManager
    StyleName = 'VS2012'
    ScrollDocTabs = False
    UseTabbedDocs = False
    Left = 592
    Top = 8
  end
  object cdsSICash: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'ACCID'
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySICash'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 144
    object cdsSICashSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsSICashSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSICashCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSICashDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSICashSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSICashINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSICashACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSICashACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSICashACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSICashBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSICashBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSICashCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSICashCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSICashSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSICashSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsSICashSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsSIStock: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'ACCID;STOCKID'
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySIStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 192
    object cdsSIStockSIID: TLargeintField
      FieldName = 'SIID'
    end
    object cdsSIStockSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSIStockCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsSIStockDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSIStockSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSIStockINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSIStockACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSIStockACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSIStockACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSIStockSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSIStockSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSIStockSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsSIStockBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSIStockBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSIStockCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSIStockCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSIStockQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsSICash: TDataSource
    DataSet = cdsSICash
    Left = 432
    Top = 144
  end
  object dsSIStock: TDataSource
    DataSet = cdsSIStock
    Left = 432
    Top = 192
  end
  object cdsCashSettlement: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'ACCID'
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
        Value = 41824d
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashSettlement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 144
    object cdsCashSettlementACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashSettlementACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashSettlementACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashSettlementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashSettlementCASH_POS: TFloatField
      FieldName = 'CASH_POS'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAPOD: TFloatField
      FieldName = 'NET_ARAPOD'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAPDUE0: TFloatField
      FieldName = 'NET_ARAPDUE0'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAPDUE1: TFloatField
      FieldName = 'NET_ARAPDUE1'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAPDUE2: TFloatField
      FieldName = 'NET_ARAPDUE2'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAPDUE22: TFloatField
      FieldName = 'NET_ARAPDUE>2'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsCashSettlementNET_ARAP: TFloatField
      FieldName = 'NET_ARAP'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
  end
  object cdsStockSettlement: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'ACCID;STOCKID'
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
        Value = 41824d
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryStockSettlement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 160
    Top = 192
    object cdsStockSettlementACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsStockSettlementACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsStockSettlementACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsStockSettlementSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsStockSettlementSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsStockSettlementSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsStockSettlementSTOCK_POS: TFloatField
      FieldName = 'STOCK_POS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNETSTOCK_OD: TFloatField
      FieldName = 'NETSTOCK_OD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNETSTOCK_DUE0: TFloatField
      FieldName = 'NETSTOCK_DUE0'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNETSTOCK_DUE1: TFloatField
      FieldName = 'NETSTOCK_DUE1'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNETSTOCK_DUE2: TFloatField
      FieldName = 'NETSTOCK_DUE2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNETSTOCK_DUE22: TFloatField
      FieldName = 'NETSTOCK_DUE>2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementNET_STOCK: TFloatField
      FieldName = 'NET_STOCK'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsCashSettlement: TDataSource
    DataSet = cdsCashSettlement
    Left = 256
    Top = 144
  end
  object dsStockSettlement: TDataSource
    DataSet = cdsStockSettlement
    Left = 256
    Top = 192
  end
end
