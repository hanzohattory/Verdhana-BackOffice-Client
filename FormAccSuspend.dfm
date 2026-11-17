inherited frmAccSuspend: TfrmAccSuspend
  Caption = 'Suspend Account'
  ClientHeight = 451
  ClientWidth = 794
  ExplicitWidth = 810
  ExplicitHeight = 490
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 794
    Height = 361
    ExplicitWidth = 794
    ExplicitHeight = 361
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 209
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 311
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 82
      Top = 37
      DataBinding.DataField = 'ACC_STAT'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Suspend Buy'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Suspend Sell'
          Value = 'S'
        end
        item
          Description = 'Suspend Trade'
          Value = 'T'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 141
    end
    object cxDBDateEdit1: TcxDBDateEdit [2]
      Left = 300
      Top = 37
      DataBinding.DataField = 'SPDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 82
      Top = 64
      RepositoryItem = dmGlobal.luSuspendList
      DataBinding.DataField = 'SPRESID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 438
    end
    object cxDBMemo1: TcxDBMemo [4]
      Left = 82
      Top = 91
      DataBinding.DataField = 'SPNOTES'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 51
      Width = 438
    end
    object cxGrid1: TcxGrid [5]
      Left = 10
      Top = 148
      Width = 774
      Height = 203
      TabOrder = 6
      RootLevelOptions.DetailTabsPosition = dtpTop
      object gvwStockPosition: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsStockPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
          end>
        object gvwStockPositionACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwStockPositionSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwStockPositionAVGPRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVGPRICE'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_CORPACT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_CORPACT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_ONHAND: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHAND'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OUTS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_ONHOLD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_ONHOLD'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_OVERDUE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OVERDUE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_DLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_DLV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_RCV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_RCV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwStockPositionPROFIT_LOSS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PROFIT_LOSS'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwStockPositionBUY_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_VAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwStockPositionSELL_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_VAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_WARKAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_WARKAT'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwStockPositionSTK_WDR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STK_WDR'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwStockPositionBUY_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_QTY'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwStockPositionSELL_QTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_QTY'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_VOUCHER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_VOUCHER'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_REPO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_REPO'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwStockPositionAVGPRICE_FEE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AVGPRICE_FEE'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_OLD_DLV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OLD_DLV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_OLD_RCV: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_OLD_RCV'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwStockPositionQTY_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY_BAL'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwStockPositionLOCALCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOCALCODE'
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwStockPositionSHORTNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SHORTNAME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
      end
      object gvwCashPosition: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsCashPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
            Width = 751
          end>
        object gvwCashPositionVALUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUEDATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwCashPositionACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwCashPositionACCSOPID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCSOPID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwCashPositionACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwCashPositionACCRUED_INTEREST: TcxGridDBBandedColumn
          Caption = 'Accrued Interest'
          DataBinding.FieldName = 'ACCRUED_INTEREST'
          Width = 78
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_ONHAND: TcxGridDBBandedColumn
          Caption = 'Cash OnHand'
          DataBinding.FieldName = 'CASH_ONHAND'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_QQ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_QQ'
          Width = 78
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_SUBACC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_SUBACC'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_ONHOLD: TcxGridDBBandedColumn
          Caption = 'Cash OnHold'
          DataBinding.FieldName = 'CASH_ONHOLD'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwCashPositionARAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ARAMT'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwCashPositionAPAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APAMT'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_OUTS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OUTS'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwCashPositionBUY_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BUY_AMT'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwCashPositionSELL_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SELL_AMT'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_WDR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_WDR'
          Visible = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwCashPositionCCYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CCYCODE'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_OTHERS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_OTHERS'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwCashPositionCASH_BAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_BAL'
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Stock Position'
        GridView = gvwStockPosition
      end
      object cxGrid1Level2: TcxGridLevel
        Caption = 'Cash Position'
        GridView = gvwCashPosition
      end
    end
    object edAccount: TcxDBButtonEdit [6]
      Left = 82
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edAccountPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object Status: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dtSuspenDate: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Request Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Reason'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 438
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Suspend Note'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 51
      ControlOptions.OriginalWidth = 438
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 165
      ControlOptions.OriginalWidth = 750
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = edAccount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 382
    Width = 794
    ExplicitTop = 382
    ExplicitWidth = 794
    inherited dbNavLog: TDBNavigator
      Left = 680
      Hints.Strings = ()
      ExplicitLeft = 680
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 431
    Width = 794
    ExplicitTop = 431
    ExplicitWidth = 794
  end
  inherited tabEditorData: TTabSet
    Top = 361
    Width = 794
    ExplicitTop = 361
    ExplicitWidth = 794
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAccSuspend
    Left = 465
    Top = 217
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsAccountByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 465
    Top = 270
    object cdsAccountByParamACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountByParamENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsAccountByParamACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountByParamACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
  end
  object cdsSPReasonByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SPRESID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qrySPReasonByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 465
    Top = 318
    object cdsSPReasonByParamSPRESID: TLargeintField
      FieldName = 'SPRESID'
    end
    object cdsSPReasonByParamSPREASON: TWideStringField
      FieldName = 'SPREASON'
      FixedChar = True
      Size = 100
    end
  end
  object dsStockPos: TDataSource
    DataSet = cdsStockPos
    Left = 357
    Top = 264
  end
  object dsCashPos: TDataSource
    DataSet = cdsCashPos
    Left = 357
    Top = 219
  end
  object cdsAccSuspend: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccSuspend'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsAccSuspendAfterOpen
    BeforePost = cdsAccSuspendBeforePost
    OnNewRecord = cdsAccSuspendNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 216
    object cdsAccSuspendACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsAccSuspendACCIDChange
    end
    object cdsAccSuspendACC_STAT: TStringField
      FieldName = 'ACC_STAT'
      Required = True
      Size = 1
    end
    object cdsAccSuspendSPDATE: TDateField
      FieldName = 'SPDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsAccSuspendSPBY: TStringField
      FieldName = 'SPBY'
      Required = True
      Size = 30
    end
    object cdsAccSuspendSPRESID: TLargeintField
      FieldName = 'SPRESID'
      Required = True
    end
    object cdsAccSuspendSPNOTES: TStringField
      FieldName = 'SPNOTES'
      Required = True
      Size = 500
    end
    object cdsAccSuspendMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccSuspendMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccSuspendAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccSuspendAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccSuspendUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccSuspendUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccSuspendNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccSuspendISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccSuspendID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccSuspendACCCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsAccSuspendACCNAME: TStringField
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
  object cdsCashPos: TNClientDataset
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
    Left = 293
    Top = 219
    object cdsCashPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashPosCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsCashPosACCRUED_INTEREST: TFloatField
      DisplayLabel = 'Accued Interest'
      FieldName = 'ACCRUED_INTEREST'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_ONHAND: TFloatField
      DisplayLabel = 'Cash On Hand'
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_QQ: TFloatField
      DisplayLabel = 'Cash QQ'
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_SUBACC: TFloatField
      DisplayLabel = 'Cash Sub Acc'
      FieldName = 'CASH_SUBACC'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_ONHOLD: TFloatField
      DisplayLabel = 'Cash On Hold'
      FieldName = 'CASH_ONHOLD'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosARAMT: TFloatField
      DisplayLabel = 'AR Amount'
      FieldName = 'ARAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosAPAMT: TFloatField
      DisplayLabel = 'AP Amount'
      FieldName = 'APAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_OUTS: TFloatField
      DisplayLabel = 'Cash Outstanding'
      FieldName = 'CASH_OUTS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosBUY_AMT: TFloatField
      DisplayLabel = 'Buy Amount'
      FieldName = 'BUY_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosSELL_AMT: TFloatField
      DisplayLabel = 'Sell Amount'
      FieldName = 'SELL_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_WDR: TFloatField
      DisplayLabel = 'Cash Withdraw'
      FieldName = 'CASH_WDR'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_OTHERS: TFloatField
      DisplayLabel = 'Cash Others'
      FieldName = 'CASH_OTHERS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashPosCASH_BAL: TFloatField
      DisplayLabel = 'Cash Balance'
      FieldName = 'CASH_BAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object cdsStockPos: TNClientDataset
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
    Left = 293
    Top = 264
    object cdsStockPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockPosSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockPosAVGPRICE: TFloatField
      DisplayLabel = 'Average Price'
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockPosQTY_CORPACT: TFloatField
      DisplayLabel = 'Qty Corpact'
      FieldName = 'QTY_CORPACT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_ONHAND: TFloatField
      DisplayLabel = 'Qty On Hand'
      FieldName = 'QTY_ONHAND'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_OUTS: TFloatField
      DisplayLabel = 'Qty Outstand'
      FieldName = 'QTY_OUTS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_ONHOLD: TFloatField
      DisplayLabel = 'Qty On Hold'
      FieldName = 'QTY_ONHOLD'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_OVERDUE: TFloatField
      DisplayLabel = 'Qty Overdue'
      FieldName = 'QTY_OVERDUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_DLV: TFloatField
      DisplayLabel = 'Qty Deliver'
      FieldName = 'QTY_DLV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_RCV: TFloatField
      DisplayLabel = 'Qty Receive'
      FieldName = 'QTY_RCV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosPROFIT_LOSS: TFloatField
      DisplayLabel = 'Profit Loss'
      FieldName = 'PROFIT_LOSS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockPosSELL_VAL: TFloatField
      DisplayLabel = 'Sell Value'
      FieldName = 'SELL_VAL'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockPosQTY_WARKAT: TFloatField
      DisplayLabel = 'Qty Warkat'
      FieldName = 'QTY_WARKAT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosSTK_WDR: TFloatField
      DisplayLabel = 'Stock Withdraw'
      FieldName = 'STK_WDR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosBUY_QTY: TFloatField
      DisplayLabel = 'Buy Qty'
      FieldName = 'BUY_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosSELL_QTY: TFloatField
      DisplayLabel = 'Sell Qty'
      FieldName = 'SELL_QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_VOUCHER: TFloatField
      DisplayLabel = 'Qty Voucher'
      FieldName = 'QTY_VOUCHER'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_REPO: TFloatField
      DisplayLabel = 'Qty Repo'
      FieldName = 'QTY_REPO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosAVGPRICE_FEE: TFloatField
      DisplayLabel = 'Average Price Fee'
      FieldName = 'AVGPRICE_FEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsStockPosQTY_OLD_DLV: TFloatField
      DisplayLabel = 'Qty Old Deliver'
      FieldName = 'QTY_OLD_DLV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_OLD_RCV: TFloatField
      DisplayLabel = 'Qty Old Receive'
      FieldName = 'QTY_OLD_RCV'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosQTY_BAL: TFloatField
      DisplayLabel = 'Qty Balance'
      FieldName = 'QTY_BAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPosLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsStockPosSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
  end
end
