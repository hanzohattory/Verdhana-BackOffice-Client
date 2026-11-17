inherited frmContractSettlementInstruction: TfrmContractSettlementInstruction
  Caption = 'Contract Settlement Instruction'
  ClientHeight = 400
  ClientWidth = 934
  ExplicitWidth = 940
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 934
    Height = 129
    Align = alTop
    ExplicitWidth = 934
    ExplicitHeight = 129
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 71
      Top = 10
      DataBinding.DataField = 'LOCALCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 71
      Top = 37
      DataBinding.DataField = 'SHORTNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 369
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [2]
      Left = 71
      Top = 64
      RepositoryItem = dmGlobal.luBuySell
      DataBinding.DataField = 'BS'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <>
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 50
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
      Left = 200
      Top = 64
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 81
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 71
      Top = 91
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 50
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [5]
      Left = 200
      Top = 91
      AutoSize = False
      DataBinding.DataField = 'SETTLEAMT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 114
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [6]
      Left = 368
      Top = 91
      AutoSize = False
      DataBinding.DataField = 'DIFFERENT'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 21
      Width = 121
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stock Name'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 369
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Buy/Sell'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Settle Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Different'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 331
    Width = 934
    ExplicitTop = 331
    ExplicitWidth = 934
    inherited dbNavLog: TDBNavigator
      Left = 820
      Hints.Strings = ()
      ExplicitLeft = 820
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 380
    Width = 934
    ExplicitTop = 380
    ExplicitWidth = 934
  end
  inherited tabEditorData: TTabSet
    Top = 310
    Width = 934
    ExplicitTop = 310
    ExplicitWidth = 934
  end
  object grdContractSettleDetail: TcxGrid [4]
    Left = 0
    Top = 129
    Width = 934
    Height = 181
    Align = alClient
    TabOrder = 4
    object gvwContractSettleDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnFocusedRecordChanged = gvwContractSettleDetailFocusedRecordChanged
      DataController.DataSource = dsContractAllocD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'QTY'
          Column = gvwContractSettleDetailQTY
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          OnGetText = gvwContractSettleDetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
          FieldName = 'SETTLE_AMT'
          Column = gvwContractSettleDetailSETTLE_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwContractSettleDetailCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailCUSTODYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYCODE'
        RepositoryItem = dmGlobal.luCustody
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditFormat = '#'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        RepositoryItem = dmGlobal.luCurrency
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailSETTLE_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditFormat = '#'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailINSTRUCTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'FOP'
            ImageIndex = 0
            Value = 'FOP'
          end
          item
            Description = 'VP'
            Value = 'VP'
          end>
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwContractSettleDetailREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object glvContractSettleDetail: TcxGridLevel
      GridView = gvwContractSettleDetail
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsContractAllocH
    Left = 312
    Top = 336
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 520
    Top = 304
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsContractAllocH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryConAllocInstr_H'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 288
    object cdsContractAllocHCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractAllocHSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsContractAllocHLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
      Required = True
    end
    object cdsContractAllocHSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsContractAllocHQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsContractAllocHCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsContractAllocHSETTLEAMT: TFloatField
      DisplayLabel = 'Settle Amount'
      FieldName = 'SETTLEAMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsContractAllocHSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsContractAllocHBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsContractAllocHDIFFERENT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsContractAllocD: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryConAllocInstr_D'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsContractAllocDAfterOpen
    BeforePost = cdsContractAllocDBeforePost
    AfterPost = cdsContractAllocDAfterPost
    OnNewRecord = cdsContractAllocDNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 288
    object cdsContractAllocDCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractAllocDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsContractAllocDSEQNO: TIntegerField
      DisplayLabel = 'Seq No.'
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsContractAllocDCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      OnChange = cdsContractAllocDCUSTODYCODEChange
      Size = 10
    end
    object cdsContractAllocDQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      Required = True
      OnChange = cdsContractAllocDQTYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsContractAllocDCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsContractAllocDSETTLE_AMT: TFloatField
      DisplayLabel = 'Settle Amount'
      FieldName = 'SETTLE_AMT'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsContractAllocDINSTRUCTION: TStringField
      DisplayLabel = 'Instruction'
      FieldName = 'INSTRUCTION'
      Size = 5
    end
    object cdsContractAllocDREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 50
    end
  end
  object dsContractAllocD: TDataSource
    DataSet = cdsContractAllocD
    Left = 424
    Top = 336
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
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 312
    Top = 224
    object cdsContractCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsContractENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsContractCONDATE: TDateField
      FieldName = 'CONDATE'
    end
    object cdsContractCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
    end
    object cdsContractSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
    end
    object cdsContractCASHMOVEDATE: TDateField
      FieldName = 'CASHMOVEDATE'
    end
    object cdsContractSTOCKMOVEDATE: TDateField
      FieldName = 'STOCKMOVEDATE'
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
    object cdsContractACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
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
    object cdsContractAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsContractQTY: TFloatField
      FieldName = 'QTY'
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
    object cdsContractVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
    end
    object cdsContractNETVALUE: TFloatField
      FieldName = 'NETVALUE'
    end
    object cdsContractCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
    end
    object cdsContractCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
    end
    object cdsContractOTC: TFloatField
      FieldName = 'OTC'
    end
    object cdsContractROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsContractNETAMT: TFloatField
      FieldName = 'NETAMT'
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
    object cdsContractISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsContractISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsContractFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsContractFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsContractFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsContractFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
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
    object cdsContractS_STS: TStringField
      FieldName = 'S_STS'
      Size = 1
    end
    object cdsContractC_STS: TStringField
      FieldName = 'C_STS'
      Size = 1
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
    object cdsContractFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      Size = 1
    end
    object cdsContractSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsContractqryConChargeSum: TDataSetField
      FieldName = 'qryConChargeSum'
    end
    object cdsContractqryConAllocExec: TDataSetField
      FieldName = 'qryConAllocExec'
    end
    object cdsContractqryConAlloc: TDataSetField
      FieldName = 'qryConAlloc'
    end
  end
end
