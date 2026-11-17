inherited frmChangeCol: TfrmChangeCol
  Caption = 'Change Collateral Editor'
  ClientHeight = 571
  ClientWidth = 894
  OnClose = FormClose
  ExplicitTop = -169
  ExplicitWidth = 900
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 894
    Height = 129
    Align = alTop
    ExplicitWidth = 894
    ExplicitHeight = 129
    object edAccCode: TcxDBTextEdit [0]
      Left = 100
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object edAccName: TcxDBTextEdit [1]
      Left = 227
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 320
    end
    object edExtCol: TcxDBCurrencyEdit [2]
      Left = 100
      Top = 64
      DataBinding.DataField = 'OLDCOL'
      DataBinding.DataSource = dsSum
      Properties.DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object edNewCol: TcxDBCurrencyEdit [3]
      Left = 301
      Top = 64
      DataBinding.DataField = 'NEWCOL'
      DataBinding.DataSource = dsSum
      Properties.DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object edContractNo: TcxDBButtonEdit [4]
      Left = 301
      Top = 10
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edContractNoPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 150
    end
    object dtColDate: TcxDBDateEdit [5]
      Left = 100
      Top = 10
      DataBinding.DataField = 'TRXDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [6]
      Left = 100
      Top = 91
      DataBinding.DataField = 'CURRATIO'
      DataBinding.DataSource = dsSum
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [7]
      Left = 301
      Top = 91
      DataBinding.DataField = 'EXPRATIO'
      DataBinding.DataSource = dsSum
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [8]
      Left = 503
      Top = 64
      DataBinding.DataField = 'COLLATERAL'
      DataBinding.DataSource = dsSubject
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      Index = -1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group3
      Control = edAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      Control = edAccName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Existing Collateral'
      Parent = dxLayoutControl1Group2
      Control = edExtCol
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Collateral'
      Parent = dxLayoutControl1Group2
      Control = edNewCol
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Contract No'
      Parent = dxLayoutControl1Group4
      Control = edContractNo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Parent = dxLayoutControl1Group4
      Control = dtColDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Existing Ratio'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'New Ratio'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit3'
      Parent = dxLayoutControl1Group2
      Visible = False
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 502
    Width = 894
    ExplicitTop = 502
    ExplicitWidth = 894
    inherited btnOK: TcxButton
      ModalResult = 1
    end
    inherited dbNavLog: TDBNavigator
      Left = 780
      Hints.Strings = ()
      ExplicitLeft = 780
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
    Top = 551
    Width = 894
    ExplicitTop = 551
    ExplicitWidth = 894
  end
  inherited tabEditorData: TTabSet
    Top = 481
    Width = 894
    ExplicitTop = 481
    ExplicitWidth = 894
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 129
    Width = 894
    Height = 352
    Align = alClient
    TabOrder = 4
    object gvwChangeColl: TcxGridDBBandedTableView
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
      DataController.DataSource = dsCollEdit
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'COLLATERAL'
          Column = gvwChangeCollCOLLATERAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Curent'
          Width = 575
        end
        item
          Caption = 'Movement'
        end
        item
          Caption = 'Planned'
          Width = 160
        end>
      object gvwChangeCollSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwChangeCollSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Options.Editing = False
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwChangeCollSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Options.Editing = False
        Width = 209
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwChangeCollQTYREG: TcxGridDBBandedColumn
        Caption = 'Qty Regular'
        DataBinding.FieldName = 'QTYREG'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwChangeCollQTYREPO: TcxGridDBBandedColumn
        Caption = 'Qty REPO'
        DataBinding.FieldName = 'QTYREPO'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwChangeCollHAIRCUT: TcxGridDBBandedColumn
        Caption = 'Valuation (%)'
        DataBinding.FieldName = 'HAIRCUT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwChangeCollCLSPRC: TcxGridDBBandedColumn
        Caption = 'Close Price'
        DataBinding.FieldName = 'CLSPRC'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwChangeCollCOLLATERAL: TcxGridDBBandedColumn
        Caption = 'Collateral'
        DataBinding.FieldName = 'COLLATERAL'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwChangeCollNEWQTY: TcxGridDBBandedColumn
        Caption = 'New Qty'
        DataBinding.FieldName = 'NEWQTY'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwChangeCollQTYTYPE: TcxGridDBBandedColumn
        Caption = 'In/Out'
        DataBinding.FieldName = 'QTYTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'In'
            ImageIndex = 0
            Value = 'I'
          end
          item
            Description = 'Out'
            Value = 'O'
          end>
        Width = 46
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwChangeCollMOVEQTY: TcxGridDBBandedColumn
        Caption = 'Move Qty'
        DataBinding.FieldName = 'MOVEQTY'
        HeaderAlignmentHorz = taRightJustify
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwChangeColl
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsChangeColH
    Left = 232
    Top = 240
  end
  object popDocking: TPopupMenu
    Left = 624
    Top = 32
  end
  object cdsStockCompare: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ENTTID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryStockCompare'
    RemoteServer = dmGlobal.dspConnection
    BeforeEdit = cdsStockCompareBeforeEdit
    BeforePost = cdsStockCompareBeforePost
    OnNewRecord = cdsStockCompareNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 400
    Top = 376
    object cdsStockCompareENTTID: TIntegerField
      FieldName = 'ENTTID'
      Required = True
    end
    object cdsStockCompareENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Required = True
    end
    object cdsStockCompareACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsStockCompareACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsStockCompareHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      ReadOnly = True
    end
    object cdsStockCompareLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      ReadOnly = True
    end
    object cdsStockCompareLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
      ReadOnly = True
    end
    object cdsStockCompareVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      ReadOnly = True
      Required = True
    end
    object cdsStockCompareACQDATE: TDateField
      FieldName = 'ACQDATE'
      ReadOnly = True
    end
    object cdsStockCompareACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsStockCompareACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
      ReadOnly = True
    end
    object cdsStockCompareACCNO: TStringField
      FieldName = 'ACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsStockCompareSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
      Required = True
    end
    object cdsStockCompareSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Required = True
    end
    object cdsStockCompareAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      ReadOnly = True
    end
    object cdsStockCompareQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
      ReadOnly = True
    end
    object cdsStockCompareQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      ReadOnly = True
    end
    object cdsStockCompareQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
      ReadOnly = True
    end
    object cdsStockCompareQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
      ReadOnly = True
    end
    object cdsStockCompareQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
      ReadOnly = True
    end
    object cdsStockCompareQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
      ReadOnly = True
    end
    object cdsStockCompareQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
      ReadOnly = True
    end
    object cdsStockCompareQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
      ReadOnly = True
    end
    object cdsStockComparePROFIT_LOSS: TFloatField
      FieldName = 'PROFIT_LOSS'
      ReadOnly = True
    end
    object cdsStockCompareBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
      ReadOnly = True
    end
    object cdsStockCompareSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
      ReadOnly = True
    end
    object cdsStockCompareQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
      ReadOnly = True
    end
    object cdsStockCompareSTK_WDR: TFloatField
      FieldName = 'STK_WDR'
      ReadOnly = True
    end
    object cdsStockCompareQTY: TLargeintField
      FieldName = 'QTY'
      ReadOnly = True
    end
    object cdsStockCompareSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
  end
  object dsCollEdit: TDataSource
    DataSet = cdsEditChangeCol
    Left = 488
    Top = 328
  end
  object cdsChangeColH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CCOLID'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspN_dmREPO_qryChangeColM'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsChangeColHAfterOpen
    OnNewRecord = cdsChangeColHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 136
    Top = 240
    object cdsChangeColHCCOLID: TLargeintField
      FieldName = 'CCOLID'
      Required = True
    end
    object cdsChangeColHTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsChangeColHACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsChangeColHACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeColHACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 200
    end
    object cdsChangeColHCONRID: TLargeintField
      FieldName = 'CONRID'
    end
    object cdsChangeColHCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsChangeColHEXISTCOLLATERAL: TFloatField
      FieldName = 'EXISTCOLLATERAL'
    end
    object cdsChangeColHNEWCOLLATERAL: TFloatField
      FieldName = 'NEWCOLLATERAL'
    end
    object cdsChangeColHINPUTBY: TStringField
      FieldName = 'INPUTBY'
      Size = 30
    end
    object cdsChangeColHINPUTDATE: TDateTimeField
      FieldName = 'INPUTDATE'
    end
    object cdsChangeColHAPPROVEBY: TStringField
      FieldName = 'APPROVEBY'
      Size = 30
    end
    object cdsChangeColHAPPROVEDATE: TDateTimeField
      FieldName = 'APPROVEDATE'
    end
    object cdsChangeColHPOSTINGBY: TStringField
      FieldName = 'POSTINGBY'
      Size = 30
    end
    object cdsChangeColHPOSTINGDATE: TDateTimeField
      FieldName = 'POSTINGDATE'
    end
    object cdsChangeColHCCOLSTATUS: TStringField
      FieldName = 'CCOLSTATUS'
      Size = 5
    end
    object cdsChangeColHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeColHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeColHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeColHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeColHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeColHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeColHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeColHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeColHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsChangeColHqryChangeColD: TDataSetField
      FieldName = 'qryChangeColD'
    end
    object cdsChangeColHAPPROVE: TStringField
      FieldName = 'APPROVE'
      Size = 1
    end
    object cdsChangeColHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsChangeColHCOLLATERAL: TAggregateField
      FieldName = 'COLLATERAL'
      Active = True
      DisplayFormat = '#,##0.00'
      Expression = 'SUM(EXISTCOLLATERAL+NEWCOLLATERAL)'
    end
  end
  object cdsClosePrice: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STOCKDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockClosingPrice'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 400
    Top = 328
    object cdsClosePriceSTK_DATE: TDateField
      FieldName = 'STK_DATE'
      Required = True
    end
    object cdsClosePriceSTK_CODE: TStringField
      FieldName = 'STK_CODE'
      Required = True
      Size = 10
    end
    object cdsClosePriceSTK_NAME: TStringField
      FieldName = 'STK_NAME'
      Size = 50
    end
    object cdsClosePriceSTK_PREV: TFloatField
      FieldName = 'STK_PREV'
    end
    object cdsClosePriceSTK_HIGH: TFloatField
      FieldName = 'STK_HIGH'
    end
    object cdsClosePriceSTK_LOW: TFloatField
      FieldName = 'STK_LOW'
    end
    object cdsClosePriceSTK_CLOS: TFloatField
      FieldName = 'STK_CLOS'
    end
    object cdsClosePriceSTK_VOLM: TFloatField
      FieldName = 'STK_VOLM'
    end
    object cdsClosePriceSTK_AMNT: TFloatField
      FieldName = 'STK_AMNT'
    end
    object cdsClosePriceSTK_INDX: TFloatField
      FieldName = 'STK_INDX'
    end
    object cdsClosePriceSTK_PIDX: TFloatField
      FieldName = 'STK_PIDX'
    end
    object cdsClosePriceSTK_ASKP: TFloatField
      FieldName = 'STK_ASKP'
    end
    object cdsClosePriceSTK_ASKV: TFloatField
      FieldName = 'STK_ASKV'
    end
    object cdsClosePriceSTK_ASKF: TStringField
      FieldName = 'STK_ASKF'
      Size = 5
    end
    object cdsClosePriceSTK_BIDP: TFloatField
      FieldName = 'STK_BIDP'
    end
    object cdsClosePriceSTK_BIDV: TFloatField
      FieldName = 'STK_BIDV'
    end
    object cdsClosePriceSTK_BIDF: TStringField
      FieldName = 'STK_BIDF'
      Size = 5
    end
    object cdsClosePriceSTK_FHIG: TFloatField
      FieldName = 'STK_FHIG'
    end
    object cdsClosePriceSTK_FLOW: TFloatField
      FieldName = 'STK_FLOW'
    end
    object cdsClosePriceSTK_FCLO: TFloatField
      FieldName = 'STK_FCLO'
    end
    object cdsClosePriceSTK_OPEN: TFloatField
      FieldName = 'STK_OPEN'
    end
    object cdsClosePriceMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsClosePriceMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
  object cdsChangeColD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsChangeColHqryChangeColD
    Params = <
      item
        DataType = ftInteger
        Name = 'CCOLID'
        ParamType = ptInput
      end>
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 136
    Top = 288
    object cdsChangeColDCCOLID: TLargeintField
      FieldName = 'CCOLID'
      Required = True
    end
    object cdsChangeColDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsChangeColDSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsChangeColDSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsChangeColDSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsChangeColDCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsChangeColDCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsChangeColDACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsChangeColDACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsChangeColDIN_OUT: TStringField
      FieldName = 'IN_OUT'
      Required = True
      Size = 1
    end
    object cdsChangeColDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsChangeColDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsChangeColDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsChangeColDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsChangeColDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsChangeColDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsChangeColDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsChangeColDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsChangeColDID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEditChangeCol: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsEditChangeColBeforeEdit
    BeforePost = cdsEditChangeColBeforePost
    OnNewRecord = cdsEditChangeColNewRecord
    Left = 488
    Top = 376
    object cdsEditChangeColSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsEditChangeColSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Size = 50
    end
    object cdsEditChangeColSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
    end
    object cdsEditChangeColQTYREG: TLargeintField
      FieldName = 'QTYREG'
      DisplayFormat = '#,##0 ;(#,##0);0'
    end
    object cdsEditChangeColQTYREPO: TIntegerField
      FieldName = 'QTYREPO'
      OnChange = cdsEditChangeColQTYREPOChange
      DisplayFormat = '#,##0 ;(#,##0);0'
    end
    object cdsEditChangeColHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsEditChangeColCLSPRC: TFloatField
      FieldName = 'CLSPRC'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsEditChangeColCOLLATERAL: TFloatField
      FieldName = 'COLLATERAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsEditChangeColNEWQTY: TFloatField
      FieldName = 'NEWQTY'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsEditChangeColQTYTYPE: TStringField
      FieldName = 'QTYTYPE'
      Size = 5
    end
    object cdsEditChangeColMOVEQTY: TFloatField
      FieldName = 'MOVEQTY'
      OnChange = cdsEditChangeColMOVEQTYChange
      DisplayFormat = '#,##0 ;(#,##0);0'
    end
    object cdsEditChangeColCURCOLLATERAL: TFloatField
      FieldName = 'CURCOLLATERAL'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
  end
  object cdsSum: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 192
    object cdsSumNEWCOL: TFloatField
      FieldName = 'NEWCOL'
      OnChange = cdsSumNEWCOLChange
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumOLDCOL: TFloatField
      FieldName = 'OLDCOL'
      OnChange = cdsSumOLDCOLChange
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumCURRATIO: TFloatField
      FieldName = 'CURRATIO'
      DisplayFormat = '#,##0 %'
    end
    object cdsSumEXPRATIO: TFloatField
      FieldName = 'EXPRATIO'
      DisplayFormat = '#,##0 %'
    end
    object cdsOCRTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsSumSETTLDATE: TDateTimeField
      FieldName = 'SETTLDATE'
    end
    object cdsSumDUEDATE: TDateTimeField
      FieldName = 'DUEDATE'
    end
    object cdsSumORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsSumINTR_AMOUNT: TFloatField
      FieldName = 'INTR_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumDUE_AMOUNT: TFloatField
      FieldName = 'DUE_AMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumINITRATIO: TFloatField
      FieldName = 'INITRATIO'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumCALLRATIO: TFloatField
      FieldName = 'CALLRATIO'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumFSELLRATIO: TFloatField
      FieldName = 'FSELLRATIO'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsSumINTEREST: TFloatField
      FieldName = 'INTEREST'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
  end
  object dsSum: TDataSource
    DataSet = cdsSum
    Left = 232
    Top = 192
  end
end
