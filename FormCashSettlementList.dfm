inherited frmCashSettlementList: TfrmCashSettlementList
  Caption = 'Cash Settlement'
  ClientHeight = 575
  ClientWidth = 1074
  ExplicitWidth = 1074
  ExplicitHeight = 575
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1074
    Height = 135
    Align = alTop
    TabOrder = 0
    object dtDueDate: TcxDateEdit
      Left = 80
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtDueDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxButton1: TcxButton
      Left = 231
      Top = 10
      Width = 72
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object rbSpecDate: TcxRadioGroup
      Left = 309
      Top = 10
      Caption = 'Specific Date'
      Properties.Columns = 2
      Properties.DefaultValue = '1'
      Properties.Items = <
        item
          Caption = 'Due Date'
          Value = '1'
        end
        item
          Caption = 'All Outstanding'
          Value = '2'
        end>
      Properties.OnChange = rbSpecDatePropertiesChange
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 45
      Width = 267
    end
    object rbSettle: TcxRadioGroup
      Left = 309
      Top = 61
      Caption = 'Status'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'All'
          Value = '%'
        end
        item
          Caption = 'Settled'
          Value = '1'
        end
        item
          Caption = 'Unsettled'
          Value = '0'
        end>
      Properties.OnChange = rbSpecDatePropertiesChange
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Height = 54
      Width = 267
    end
    object cxButton2: TcxButton
      Left = 951
      Top = 10
      Width = 87
      Height = 52
      Caption = 'Create KPEI'#13#10'Settlement'
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object rbSettleType: TcxRadioGroup
      Left = 582
      Top = 10
      Caption = 'Account Trans Type'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'RDN'
          Value = 'R'
        end
        item
          Caption = 'Credit Balance'
          Value = 'C'
        end
        item
          Caption = 'External (OTC Cash Transfer)'
          Value = 'E'
        end
        item
          Caption = 'Full Flow (RDN Cash Transfer)'
          Value = 'F'
        end
        item
          Caption = 'Broker'
          Value = 'B'
        end
        item
          Caption = 'KPEI'
          Value = 'K'
        end
        item
          Caption = 'OTC Cash Transfer Cash RDN'
          Value = 'O'
        end
        item
          Caption = 'All'
          Value = '%'
        end>
      Properties.OnChange = rbSettleTypePropertiesChange
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 7
      Height = 105
      Width = 363
    end
    object cbProduct: TcxLookupComboBox
      Left = 80
      Top = 41
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'PRDCODE'
      Properties.ListColumns = <
        item
          FieldName = 'PRDCODE'
        end
        item
          FieldName = 'PRDDESC'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuProduct
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object ckSelectAll: TcxCheckBox
      Left = 231
      Top = 41
      Caption = 'Select All'
      Properties.OnChange = ckSelectAllPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
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
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Due Date'
      Control = dtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rbSpecDate
      ControlOptions.OriginalHeight = 45
      ControlOptions.OriginalWidth = 267
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rbSettle
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 52
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rbSettleType
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 363
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Product Code'
      Control = cbProduct
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = ckSelectAll
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
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
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 135
    Width = 1074
    Height = 440
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwCashSettle: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCashSettlement
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'DIVIDEN'
          Column = gvwCashSettleDIVIDEN
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'INTEREST'
          Column = gvwCashSettleINTEREST
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CASH_QQ'
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CASH_ONHAND'
          Column = gvwCashSettleCASH_ONHAND
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NETARAPDUE'
          Column = gvwCashSettleNETARAPDUE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NET_ARAPOD'
          Column = gvwCashSettleNET_ARAPOD
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'ARAMTDUE0'
          Column = gvwCashSettleARAMTDUE0
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NET_ARAPDUE1'
          Column = gvwCashSettleNET_ARAPDUE1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NET_ARAPDUE2'
          Column = gvwCashSettleNET_ARAPDUE2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NET_ARAPDUE>2'
          Column = gvwCashSettleNET_ARAPDUE21
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NET_ARAP'
          Column = gvwCashSettleNET_ARAP
        end
        item
          Format = 'Rec: #,##0'
          Kind = skCount
          FieldName = 'ACCNO'
          Column = gvwCashSettleACCNO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
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
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          FixedKind = fkLeft
        end
        item
        end
        item
        end
        item
        end
        item
        end
        item
        end
        item
        end
        item
        end>
      object gvwCashSettleACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashSettleACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 155
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCashSettleCCYCODE: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCYCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_BANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_BANKCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_ACCBANKCODE: TcxGridDBBandedColumn
        Caption = 'Bank'
        DataBinding.FieldName = 'COMPANY_ACCBANKCODE'
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCashSettleACC_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_BANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCashSettleACC_BANKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_BANKNO'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCashSettleCREATE_VOUCHER: TcxGridDBBandedColumn
        Caption = 'Create Voucher'
        DataBinding.FieldName = 'CREATE_VOUCHER'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCashSettleCASH_ONHAND: TcxGridDBBandedColumn
        Caption = 'Cash On Hand'
        DataBinding.FieldName = 'CASH_ONHAND'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwCashSettleNET_ARAPOD: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_ARAPOD'
        HeaderAlignmentHorz = taCenter
        Width = 114
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleNET_ARAPDUE0: TcxGridDBBandedColumn
        Caption = 'Net AR/AP Overdue 0'
        DataBinding.FieldName = 'NET_ARAPDUE0'
        Visible = False
        Width = 111
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object gvwCashSettleNET_ARAPDUE1: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_ARAPDUE1'
        HeaderAlignmentHorz = taCenter
        Width = 111
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleNET_ARAPDUE2: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_ARAPDUE2'
        HeaderAlignmentHorz = taCenter
        Width = 111
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleNET_ARAPDUE21: TcxGridDBBandedColumn
        Caption = 'Net AR/AP'
        DataBinding.FieldName = 'NET_ARAPDUE>2'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleNET_ARAP: TcxGridDBBandedColumn
        Caption = 'Total Net AR/AP'
        DataBinding.FieldName = 'NET_ARAP'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleDIVIDEN: TcxGridDBBandedColumn
        Caption = 'Dividen'
        DataBinding.FieldName = 'DIVIDEN'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCashSettleINTEREST: TcxGridDBBandedColumn
        Caption = 'Interest'
        DataBinding.FieldName = 'INTEREST'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwCashSettlePENALTY: TcxGridDBBandedColumn
        Caption = 'Penalty'
        DataBinding.FieldName = 'PENALTY'
        Visible = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwCashSettleNETARAPDUE: TcxGridDBBandedColumn
        Caption = 'Net AR/AP Due'
        DataBinding.FieldName = 'NETARAPDUE'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleARAMTDUE0: TcxGridDBBandedColumn
        Caption = 'AR Amount'
        DataBinding.FieldName = 'ARAMTDUE0'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashSettleAPAMTDUE0: TcxGridDBBandedColumn
        Caption = 'AP Amount'
        DataBinding.FieldName = 'APAMTDUE0'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwCashSettlePR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PR'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwCashSettleACTLED_SEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACTLED_SEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_ACTLED_SEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_ACTLED_SEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_BANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_BANKACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_BANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_BANKACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwCashSettleBANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwCashSettleBANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKBRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwCashSettleCOMPANY_BANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY_BANKBRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwCashSettleETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ETTLE_SIDE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_NETAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLED_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_AMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwCashSettleVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwCashSettleAUTO_SETTLE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AUTO_SETTLE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_ACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_ACCBANKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_BANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_BANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_BANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKBRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwCashSettleCASH_QQ: TcxGridDBBandedColumn
        Caption = 'Cash QQ'
        DataBinding.FieldName = 'CASH_QQ'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwCashSettleSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_NAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwCashSettleACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwCashSettleMSOP_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCashSettle
    end
  end
  object pnlWait: TPanel [2]
    Left = 8
    Top = 205
    Width = 233
    Height = 41
    BevelOuter = bvNone
    Caption = 'Please wait while processing...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  inherited popDocking: TPopupMenu
    Left = 621
    Top = 235
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCashSettle
    Left = 551
    Top = 235
  end
  object aclCashSettle: TActionList
    Left = 551
    Top = 289
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actCreateVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Voucher'
      Enabled = False
      Visible = False
      OnExecute = actCreateVoucherExecute
      OnUpdate = actCreateVoucherUpdate
      CheckPermission = False
    end
    object actProcessVoucher: TNAction
      Category = 'NActions'
      Caption = 'Process Voucher'
      CheckPermission = False
    end
    object actUnProcessVoucher: TNAction
      Category = 'NActions'
      Caption = 'UnProcess Voucher'
      CheckPermission = False
    end
    object actCashDCNote: TNAction
      Category = 'NActions'
      Caption = 'Cash Debet/Credit Note'
      Enabled = False
      Visible = False
      OnExecute = actCashDCNoteExecute
      OnUpdate = actCashDCNoteUpdate
      CheckPermission = False
    end
    object actCreateSettlement: TNAction
      Category = 'NActions'
      Caption = 'Create Settlement'
      OnExecute = actCreateSettlementExecute
      OnUpdate = actCreateSettlementUpdate
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actViewCashPayment: TNAction
      Category = 'NActions'
      Caption = 'View Cash Voucher'
      Enabled = False
      Visible = False
      OnExecute = actViewCashPaymentExecute
      CheckPermission = False
    end
    object actCreateSettlementMSOP: TNAction
      Category = 'NActions'
      Caption = 'Create Settlement'
      OnExecute = actCreateSettlementMSOPExecute
      CheckPermission = False
    end
    object actCreateAllPaymentVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create All Payment Voucher'
      OnExecute = actCreateAllPaymentVoucherExecute
      CheckPermission = False
    end
    object actAutoReceiveVoucher: TNAction
      Category = 'NActions'
      Caption = 'Auto Receive Process'
      Enabled = False
      Visible = False
      OnExecute = actAutoReceiveVoucherExecute
      OnUpdate = actAutoReceiveVoucherUpdate
      CheckPermission = False
    end
    object actSelectAllCashVoucherPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting All Payment Voucher'
      Enabled = False
      Visible = False
      OnExecute = actSelectAllCashVoucherPostingExecute
      OnUpdate = actSelectAllCashVoucherPostingUpdate
      CheckPermission = False
    end
    object actSelectedPostingCashVoucher: TNAction
      Category = 'NActions'
      Caption = 'Posting Selected Cash Voucher'
      CheckPermission = False
    end
    object actCreateDevidenAllVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create All Dividen Voucher'
      OnExecute = actCreateDevidenAllVoucherExecute
      OnUpdate = actCreateDevidenAllVoucherUpdate
      CheckPermission = False
    end
    object actCreateBankReceive: TNAction
      Category = 'NActions'
      Caption = 'Create Bank Receive'
      Enabled = False
      Visible = False
      OnExecute = actCreateBankReceiveExecute
      OnUpdate = actCreateBankReceiveUpdate
      CheckPermission = False
    end
    object actRollOverProcess: TNAction
      Category = 'NActions'
      Caption = 'Rollover Process'
      Enabled = False
      Visible = False
      OnExecute = actRollOverProcessExecute
      OnUpdate = actAllPostingCashReceiveUpdate
      CheckPermission = False
    end
    object actCreateBankPayment: TNAction
      Category = 'NActions'
      Caption = 'Create Bank Payment'
      Enabled = False
      Visible = False
      OnExecute = actCreateBankPaymentExecute
      OnUpdate = actCreateBankPaymentUpdate
      CheckPermission = False
    end
    object actAllPostingCashReceive: TNAction
      Category = 'NActions'
      Caption = 'Posting All Cash Receive'
      Enabled = False
      Visible = False
      OnExecute = actAllPostingCashReceiveExecute
      OnUpdate = actAllPostingCashReceiveUpdate
      CheckPermission = False
    end
    object actSetoffSettlementMarginProcess: TNAction
      Category = 'NActions'
      Caption = 'Set Off Margin Process'
      Enabled = False
      Visible = False
      OnExecute = actSetoffSettlementMarginProcessExecute
      OnUpdate = actAllPostingCashReceiveUpdate
      CheckPermission = False
    end
    object actCreateVoucherNew: TNAction
      Category = 'NActions'
      Caption = 'Create Voucher'
      OnExecute = actCreateVoucherNewExecute
      CheckPermission = False
    end
    object actViewVoucherNew: TNAction
      Category = 'NActions'
      Caption = 'View Cash Voucher'
      OnExecute = actViewVoucherNewExecute
      CheckPermission = False
    end
    object actCashDeposit: TNAction
      Category = 'NActions'
      Caption = 'Cash Deposit'
      OnExecute = actCashDepositExecute
      CheckPermission = False
    end
    object actCreateAllReceiveVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create All Receive Voucher'
      OnExecute = actCreateAllReceiveVoucherExecute
      CheckPermission = False
    end
  end
  object cdsCashSettlement: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptInput
        Value = 42216d
      end
      item
        DataType = ftString
        Name = 'SPECDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALLSETTLE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SETTLE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SETTLETYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRDCODE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALLPRD'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashSettlement'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 257
    Top = 213
    object cdsCashSettlementACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashSettlementACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashSettlementACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashSettlementCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashSettlementCOMPANY_BANKID: TLargeintField
      FieldName = 'COMPANY_BANKID'
    end
    object cdsCashSettlementCOMPANY_BANKCODE: TStringField
      FieldName = 'COMPANY_BANKCODE'
      Size = 10
    end
    object cdsCashSettlementCOMPANY_ACCBANKCODE: TStringField
      FieldName = 'COMPANY_ACCBANKCODE'
      Size = 30
    end
    object cdsCashSettlementACC_BANKID: TLargeintField
      FieldName = 'ACC_BANKID'
    end
    object cdsCashSettlementACC_BANKNO: TStringField
      FieldName = 'ACC_BANKNO'
    end
    object cdsCashSettlementCREATE_VOUCHER: TFloatField
      FieldName = 'CREATE_VOUCHER'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAPOD: TFloatField
      FieldName = 'NET_ARAPOD'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAPDUE0: TFloatField
      FieldName = 'NET_ARAPDUE0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAPDUE1: TFloatField
      FieldName = 'NET_ARAPDUE1'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAPDUE2: TFloatField
      FieldName = 'NET_ARAPDUE2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAPDUE22: TFloatField
      FieldName = 'NET_ARAPDUE>2'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNET_ARAP: TFloatField
      FieldName = 'NET_ARAP'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementDIVIDEN: TFloatField
      FieldName = 'DIVIDEN'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementINTEREST: TFloatField
      FieldName = 'INTEREST'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementPENALTY: TFloatField
      FieldName = 'PENALTY'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementNETARAPDUE: TFloatField
      FieldName = 'NETARAPDUE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementARAMTDUE0: TFloatField
      FieldName = 'ARAMTDUE0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementAPAMTDUE0: TFloatField
      FieldName = 'APAMTDUE0'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementSETTLE: TStringField
      FieldName = 'SETTLE'
      Size = 1
    end
    object cdsCashSettlementPR: TStringField
      FieldName = 'PR'
      Size = 1
    end
    object cdsCashSettlementSETTLE_TYPE: TStringField
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsCashSettlementACTLED_SEQID: TLargeintField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCashSettlementCOMPANY_ACTLED_SEQID: TLargeintField
      FieldName = 'COMPANY_ACTLED_SEQID'
    end
    object cdsCashSettlementCOMPANY_BANKACCNO: TStringField
      FieldName = 'COMPANY_BANKACCNO'
    end
    object cdsCashSettlementCOMPANY_BANKACCNAME: TStringField
      FieldName = 'COMPANY_BANKACCNAME'
      Size = 150
    end
    object cdsCashSettlementBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsCashSettlementBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 150
    end
    object cdsCashSettlementCOMPANY_BANKBRANCH: TStringField
      FieldName = 'COMPANY_BANKBRANCH'
      Size = 150
    end
    object cdsCashSettlementSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsCashSettlementSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsCashSettlementVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCashSettlementSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCashSettlementAUTO_SETTLE: TStringField
      FieldName = 'AUTO_SETTLE'
      Size = 1
    end
    object cdsCashSettlementACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashSettlementMSOP_NAME: TStringField
      FieldName = 'MSOP_NAME'
      Size = 150
    end
    object cdsCashSettlementMSOP_ACCBANKCODE: TStringField
      FieldName = 'MSOP_ACCBANKCODE'
      Size = 30
    end
    object cdsCashSettlementMSOP_BANKID: TLargeintField
      FieldName = 'MSOP_BANKID'
    end
    object cdsCashSettlementMSOP_BANKCODE: TStringField
      FieldName = 'MSOP_BANKCODE'
      Size = 10
    end
    object cdsCashSettlementMSOP_BANKACCNO: TStringField
      FieldName = 'MSOP_BANKACCNO'
    end
    object cdsCashSettlementMSOP_BANKACCNAME: TStringField
      FieldName = 'MSOP_BANKACCNAME'
      Size = 150
    end
    object cdsCashSettlementMSOP_BANKBRANCH: TStringField
      FieldName = 'MSOP_BANKBRANCH'
      Size = 150
    end
    object cdsCashSettlementBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsCashSettlementACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 1
    end
    object cdsCashSettlementTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsCashSettlementTRF_PRVT_BANK_TARGET: TLargeintField
      FieldName = 'TRF_PRVT_BANK_TARGET'
    end
    object cdsCashSettlementCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsCashSettlementRDNBANK_DEFAULT: TLargeintField
      FieldName = 'RDNBANK_DEFAULT'
    end
    object cdsCashSettlementPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object dsCashSettlement: TDataSource
    DataSet = cdsCashSettlement
    Left = 384
    Top = 192
  end
  object popGrid: TPopupMenu
    Left = 461
    Top = 195
    object ViewCashPayment1: TMenuItem
      Action = actViewCashPayment
    end
    object ViewVoucherNew1: TMenuItem
      Action = actViewVoucherNew
    end
    object CreateVoucher1: TMenuItem
      Action = actCreateVoucher
    end
    object CreateVoucherNew1: TMenuItem
      Action = actCreateVoucherNew
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CashDeposit1: TMenuItem
      Action = actCashDeposit
    end
    object CashDebetCreditNote1: TMenuItem
      Action = actCashDCNote
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CreateAllPaymentVoucher1: TMenuItem
      Action = actCreateAllPaymentVoucher
    end
    object CreateAllReceiveVoucher1: TMenuItem
      Action = actCreateAllReceiveVoucher
    end
    object CreateDividenAllVoucher1: TMenuItem
      Action = actCreateDevidenAllVoucher
    end
    object CreateAllPaymentVoucher2: TMenuItem
      Action = actSelectAllCashVoucherPosting
    end
    object AutoReceiveVoucher1: TMenuItem
      Action = actAutoReceiveVoucher
    end
    object PostingAllCashReceive1: TMenuItem
      Action = actAllPostingCashReceive
    end
    object RolloverProcess1: TMenuItem
      Action = actRollOverProcess
    end
    object ProcessSettlementProcess1: TMenuItem
      Action = actSetoffSettlementMarginProcess
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CreateBankReceive1: TMenuItem
      Action = actCreateBankReceive
    end
    object CreateBankPayment1: TMenuItem
      Action = actCreateBankPayment
    end
  end
  object cdsCashVoucherAllPosting: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SETTLETYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALL_SETTLETYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BUSCAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'All_BUSCAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SPECDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'MODDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MODUI'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashVoucherAllPosting'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 258
    Top = 264
  end
end
