inherited frmClosingAccount: TfrmClosingAccount
  Caption = 'Closing Account'
  ClientHeight = 451
  ClientWidth = 634
  ExplicitWidth = 650
  ExplicitHeight = 490
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 634
    Height = 361
    ExplicitWidth = 634
    ExplicitHeight = 361
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 83
      Top = 10
      DataBinding.DataField = 'REQCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 150
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 310
      Top = 10
      DataBinding.DataField = 'REQDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [2]
      Left = 83
      Top = 37
      DataBinding.DataField = 'ACCCODE'
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
      TabOrder = 2
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 218
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 335
    end
    object cxDBMemo1: TcxDBMemo [4]
      Left = 83
      Top = 64
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 50
      Width = 541
    end
    object grdBrowse: TcxGrid [5]
      Left = 10
      Top = 120
      Width = 614
      Height = 231
      TabOrder = 5
      RootLevelOptions.DetailTabsPosition = dtpTop
      object gvwStockPos: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsAccountStockPos
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterRowInfoText = dmGlobal.GridFilterBox
        Bands = <
          item
          end>
        object gvwStockPosACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwStockPosSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwStockPosAVGPRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVGPRICE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_CORPACT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_CORPACT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_ONHAND: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHAND'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OUTS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_ONHOLD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHOLD'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_OVERDUE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OVERDUE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_DLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_DLV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_RCV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_RCV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwStockPosPROFIT_LOSS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PROFIT_LOSS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwStockPosBUY_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_VAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwStockPosSELL_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_VAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_WARKAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_WARKAT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwStockPosSTK_WDR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STK_WDR'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwStockPosBUY_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_QTY'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwStockPosSELL_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_QTY'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_VOUCHER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_VOUCHER'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_REPO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_REPO'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwStockPosAVGPRICE_FEE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVGPRICE_FEE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_OLD_DLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OLD_DLV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_OLD_RCV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OLD_RCV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwStockPosQTY_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_BAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwStockPosLOCALCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOCALCODE'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwStockPosSHORTNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SHORTNAME'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
      end
      object gvwCashPos: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsAccountCashPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterRowInfoText = dmGlobal.GridFilterBox
        Bands = <
          item
          end>
        object gvwCashPosVALUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUEDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCashPosACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCashPosACCSOPID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCSOPID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCashPosACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCashPosACCRUED_INTEREST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCRUED_INTEREST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_ONHAND: TcxGridDBBandedColumn
          Caption = 'Cash OnHand'
          DataBinding.FieldName = 'CASH_ONHAND'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_QQ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_QQ'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_SUBACC: TcxGridDBBandedColumn
          Caption = 'Cash SubAcc'
          DataBinding.FieldName = 'CASH_SUBACC'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_ONHOLD: TcxGridDBBandedColumn
          Caption = 'Cash OnHold'
          DataBinding.FieldName = 'CASH_ONHOLD'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwCashPosARAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARAMT'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwCashPosAPAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APAMT'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OUTS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwCashPosBUY_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_AMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwCashPosSELL_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_AMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwCashPosCCYCODE: TcxGridDBBandedColumn
          Caption = 'Ccy'
          DataBinding.FieldName = 'CCYCODE'
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_WDR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_WDR'
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_OTHERS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OTHERS'
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwCashPosCASH_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_BAL'
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
      end
      object grdBrowseLevel1: TcxGridLevel
        Caption = 'Stock Position'
        GridView = gvwStockPos
      end
      object grdBrowseLevel2: TcxGridLevel
        Caption = 'Cash Position'
        GridView = gvwCashPos
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Request Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Request Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 335
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Notes'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdBrowse
      ControlOptions.OriginalHeight = 254
      ControlOptions.OriginalWidth = 560
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 382
    Width = 634
    ExplicitTop = 382
    ExplicitWidth = 634
    inherited dbNavLog: TDBNavigator
      Left = 520
      Hints.Strings = ()
      ExplicitLeft = 520
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 431
    Width = 634
    ExplicitTop = 431
    ExplicitWidth = 634
  end
  inherited tabEditorData: TTabSet
    Top = 361
    Width = 634
    ExplicitTop = 361
    ExplicitWidth = 634
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCloseAccount
    Left = 568
    Top = 56
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCloseAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCloseAccount'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCloseAccountAfterOpen
    BeforePost = cdsCloseAccountBeforePost
    OnNewRecord = cdsCloseAccountNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 8
    object cdsCloseAccountCAID: TIntegerField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCloseAccountREQCODE: TStringField
      FieldName = 'REQCODE'
      Required = True
    end
    object cdsCloseAccountREQDATE: TDateField
      FieldName = 'REQDATE'
      Required = True
    end
    object cdsCloseAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsCloseAccountACCIDChange
    end
    object cdsCloseAccountNOTES: TStringField
      FieldName = 'NOTES'
      Size = 200
    end
    object cdsCloseAccountMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCloseAccountMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCloseAccountAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCloseAccountAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCloseAccountUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCloseAccountUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCloseAccountNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCloseAccountISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCloseAccountID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCloseAccountACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCloseAccountACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
  end
  object dsAccountCashPos: TDataSource
    DataSet = cdsAccountCashPos
    Left = 200
    Top = 352
  end
  object dsAccountStockPos: TDataSource
    DataSet = cdsAccountStockPos
    Left = 200
    Top = 400
  end
  object cdsAccountCashPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashLastPost'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 109
    Top = 355
    object cdsAccountCashPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCashPosCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccountCashPosACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accued Interest'
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_ONHAND: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_QQ: TFloatField
      DisplayLabel = 'Cash QQ'
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_SUBACC: TFloatField
      DisplayLabel = 'Cash Sub Acc'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_ONHOLD: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosARAMT: TFloatField
      DisplayLabel = 'AR Amount'
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosAPAMT: TFloatField
      DisplayLabel = 'AP Amount'
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_OUTS: TFloatField
      DisplayLabel = 'Cash Outstanding'
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosBUY_AMT: TFloatField
      DisplayLabel = 'Buy Amount'
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosSELL_AMT: TFloatField
      DisplayLabel = 'Sell Amount'
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_WDR: TFloatField
      DisplayLabel = 'Cash Withdraw'
      FieldName = 'CASH_WDR'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_OTHERS: TFloatField
      DisplayLabel = 'Cash Others'
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountCashPosCASH_BAL: TFloatField
      DisplayLabel = 'Cash Balance'
      FieldName = 'CASH_BAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object cdsAccountStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockLastPos'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 109
    Top = 400
    object cdsAccountStockPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountStockPosSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsAccountStockPosAVGPRICE: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountStockPosQTY_CORPACT: TFloatField
      DisplayLabel = 'Qty Corpact'
      FieldName = 'QTY_CORPACT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_ONHAND: TFloatField
      DisplayLabel = 'Qty On Hand'
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_OUTS: TFloatField
      DisplayLabel = 'Qty Outstand'
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_ONHOLD: TFloatField
      DisplayLabel = 'Qty On Hold'
      FieldName = 'QTY_ONHOLD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_OVERDUE: TFloatField
      DisplayLabel = 'Qty Overdue'
      FieldName = 'QTY_OVERDUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_DLV: TFloatField
      DisplayLabel = 'Qty Deliver'
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_RCV: TFloatField
      DisplayLabel = 'Qty Receive'
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosPROFIT_LOSS: TFloatField
      DisplayLabel = 'Profit Loss'
      FieldName = 'PROFIT_LOSS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountStockPosSELL_VAL: TFloatField
      DisplayLabel = 'Sell Value'
      FieldName = 'SELL_VAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountStockPosQTY_WARKAT: TFloatField
      DisplayLabel = 'Qty Warkat'
      FieldName = 'QTY_WARKAT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosSTK_WDR: TFloatField
      DisplayLabel = 'Stock Withdraw'
      FieldName = 'STK_WDR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosBUY_QTY: TFloatField
      DisplayLabel = 'Buy Qty'
      FieldName = 'BUY_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosSELL_QTY: TFloatField
      DisplayLabel = 'Sell Qty'
      FieldName = 'SELL_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_VOUCHER: TFloatField
      DisplayLabel = 'Qty Voucher'
      FieldName = 'QTY_VOUCHER'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_REPO: TFloatField
      DisplayLabel = 'Qty Repo'
      FieldName = 'QTY_REPO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosAVGPRICE_FEE: TFloatField
      DisplayLabel = 'Average Price Fee'
      FieldName = 'AVGPRICE_FEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsAccountStockPosQTY_OLD_DLV: TFloatField
      DisplayLabel = 'Qty Old Deliver'
      FieldName = 'QTY_OLD_DLV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_OLD_RCV: TFloatField
      DisplayLabel = 'Qty Old Receive'
      FieldName = 'QTY_OLD_RCV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosQTY_BAL: TFloatField
      DisplayLabel = 'Qty Balance'
      FieldName = 'QTY_BAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsAccountStockPosLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsAccountStockPosSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
  end
end
