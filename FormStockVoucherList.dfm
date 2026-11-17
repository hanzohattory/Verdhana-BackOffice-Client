inherited frmStockVoucherList: TfrmStockVoucherList
  Caption = 'Stock Voucher'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 71
    Height = 397
    ExplicitTop = 71
    ExplicitHeight = 397
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERNO: TcxGridDBBandedColumn
        Caption = 'Voucher No.'
        DataBinding.FieldName = 'VOUCHERNO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn
        Caption = 'Voucher Type'
        DataBinding.FieldName = 'VOUCHERTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Receive'
            ImageIndex = 0
            Value = 'R'
          end
          item
            Description = 'Deliver'
            Value = 'D'
          end>
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        Caption = 'Value Date'
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTRTYPE: TcxGridDBBandedColumn
        Caption = 'Tr Type'
        DataBinding.FieldName = 'TRTYPE'
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn
        Caption = 'Cust Bank Code'
        DataBinding.FieldName = 'CUST_BANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Cust Bank A/C No.'
        DataBinding.FieldName = 'CUST_BANKACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Cust Bank A/C Name'
        DataBinding.FieldName = 'CUST_BANKACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn
        Caption = 'Broker Bank Code'
        DataBinding.FieldName = 'BROKER_BANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Broker Bank A/C No.'
        DataBinding.FieldName = 'BROKER_BANKACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Broker Bank A/C Name'
        DataBinding.FieldName = 'BROKER_BANKACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSINO: TcxGridDBBandedColumn
        Caption = 'SI No.'
        DataBinding.FieldName = 'SINO'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        RepositoryItem = dmGlobal.luReceiveDeliver
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFERMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFERMODE'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_ONHAND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_ONHAND'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Posted'
            ImageIndex = 0
            Value = 'P'
          end
          item
            Description = 'Cancel'
            Value = 'C'
          end
          item
            Description = 'Create'
            Value = 'V'
          end>
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 45
    Align = alTop
    TabOrder = 5
    object dtValueDate: TcxDateEdit
      Left = 67
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
      Left = 193
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Value Date'
      Control = dtValueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
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
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    object N5: TMenuItem
      Caption = '-'
    end
    object Posting1: TMenuItem
      Action = actPosting
    end
    object CancelStockVoucher1: TMenuItem
      Action = actCancelVoucher
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsStockVoucherList
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actViewVoucher: TNAction
      Category = 'NActions'
      Caption = 'View Voucher'
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actCancelVoucher: TNAction
      Category = 'NActions'
      Caption = 'Cancel Stock Voucher'
      OnExecute = actCancelVoucherExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsStockVoucherList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockVoucherList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 192
    Top = 104
    object cdsStockVoucherListVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsStockVoucherListVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
      Required = True
    end
    object cdsStockVoucherListVOUCHERTYPE: TStringField
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsStockVoucherListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockVoucherListVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsStockVoucherListTRTYPE: TStringField
      FieldName = 'TRTYPE'
      Size = 2
    end
    object cdsStockVoucherListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsStockVoucherListACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsStockVoucherListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsStockVoucherListCUST_BANKCODE: TStringField
      DisplayLabel = 'Cust Custody Code'
      FieldName = 'CUST_CUSTODYCODE'
      Size = 10
    end
    object cdsStockVoucherListCUST_BANKACCNO: TStringField
      DisplayLabel = 'Cust Custody Acc No.'
      FieldName = 'CUST_CUSTODYACCNO'
    end
    object cdsStockVoucherListCUST_BANKACCNAME: TStringField
      DisplayLabel = 'Cust Custody Acc Name'
      FieldName = 'CUST_CUSTODYACCNAME'
      Size = 100
    end
    object cdsStockVoucherListBROKER_BANKCODE: TStringField
      DisplayLabel = 'Broker Custody Code'
      FieldName = 'BROKER_CUSTODYCODE'
      Size = 10
    end
    object cdsStockVoucherListBROKER_BANKACCNO: TStringField
      DisplayLabel = 'Broker Custody Acc No'
      FieldName = 'BROKER_CUSTODYACCNO'
    end
    object cdsStockVoucherListBROKER_BANKACCNAME: TStringField
      DisplayLabel = 'Broker Custody Acc Name'
      FieldName = 'BROKER_CUSTODYACCNAME'
      Size = 100
    end
    object cdsStockVoucherListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsStockVoucherListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsStockVoucherListCUST_CUSTODYID: TLargeintField
      DisplayLabel = 'Cust Custody ID'
      FieldName = 'CUST_CUSTODYID'
    end
    object cdsStockVoucherListCUST_CUSTODYBRANCH: TStringField
      DisplayLabel = 'Cust Custody Branch'
      FieldName = 'CUST_CUSTODYBRANCH'
    end
    object cdsStockVoucherListBROKER_CUSTODYID: TLargeintField
      DisplayLabel = 'Broker Custody ID'
      FieldName = 'BROKER_CUSTODYID'
      Required = True
    end
    object cdsStockVoucherListBROKER_CUSTODYBRANCH: TStringField
      DisplayLabel = 'Broker Custody Branch'
      FieldName = 'BROKER_CUSTODYBRANCH'
    end
    object cdsStockVoucherListREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsStockVoucherListLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsStockVoucherListLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsStockVoucherListLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsStockVoucherListTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockVoucherListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockVoucherListSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsStockVoucherListSETTLE_QTY: TFloatField
      DisplayLabel = 'Settle Qty'
      FieldName = 'SETTLE_QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsStockVoucherListTRANSFERMODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsStockVoucherListQTY: TFloatField
      DisplayLabel = 'Qty'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsStockVoucherListSTOCK_ONHAND: TFloatField
      DisplayLabel = 'Stock On Hand'
      FieldName = 'STOCK_ONHAND'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsStockVoucherListSETTLE_CCY: TStringField
      DisplayLabel = 'Settle Currency'
      FieldName = 'SETTLE_CCY'
      Size = 5
    end
    object cdsStockVoucherListSETTLE_AMT: TFloatField
      DisplayLabel = 'Settle Amount'
      FieldName = 'SETTLE_AMT'
      DisplayFormat = '#,##0;(#,##0)'
    end
    object cdsStockVoucherListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsStockVoucherListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockVoucherListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockVoucherListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockVoucherListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockVoucherListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockVoucherListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockVoucherListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockVoucherListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockVoucherListID: TLargeintField
      FieldName = 'ID'
    end
  end
end
