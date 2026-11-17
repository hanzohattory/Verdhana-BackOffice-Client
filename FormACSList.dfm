inherited frmACSList: TfrmACSList
  Caption = 'ACS'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 70
    Height = 398
    ExplicitTop = 70
    ExplicitHeight = 398
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterACS_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACS_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_NO'
        Width = 145
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACS_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_DATE'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBOARDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCPACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPACCID'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterVALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterFEE_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FEE_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterFEE_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FEE_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SETTLED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_SETTLED_DATE'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_SETTLE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_SETTLE_DATE'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCASH_SETTLED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_SETTLED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_SETTLED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCK_SETTLED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterACS_STAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACS_STAT'
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterJRNHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 44
    Align = alTop
    TabOrder = 5
    object dtFromDate: TcxDateEdit
      Left = 127
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtFromDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtUntil: TcxDateEdit
      Left = 269
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtUntilPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Filtering By Period Date'
      Control = dtFromDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'to'
      Control = dtUntil
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[ACS].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[ACS].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[ACS].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[ACS].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[ACS].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[ACS].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[ACS].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[ACS].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[ACS].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[ACS].Reject'
      end>
    AssignedPermission = <
      item
        Name = '[ACS].View Approval Data'
        Description = 'View Approval Data ACS'
      end
      item
        Name = '[ACS].View'
        Description = 'View ACS'
      end
      item
        Name = '[ACS].New'
        Description = 'New ACS'
      end
      item
        Name = '[ACS].Edit'
        Description = 'Edit ACS'
      end
      item
        Name = '[ACS].Delete'
        Description = 'Delete ACS'
      end
      item
        Name = '[ACS].Refresh'
        Description = 'Refresh ACS'
      end
      item
        Name = '[ACS].Cancel'
        Description = 'Cancel ACS'
      end
      item
        Name = '[ACS].Copy From Selected Data'
        Description = 'Copy From Selected Data ACS'
      end
      item
        Name = '[ACS].Approve'
        Description = 'Approve ACS'
      end
      item
        Name = '[ACS].Reject'
        Description = 'Reject ACS'
      end>
    Left = 293
    Top = 227
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
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsACSList
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    MasterDataset = cdsACS
    ListDataset = cdsACSList
    Keys = <
      item
        FieldName = 'ACS_ID'
        FieldIndex = 0
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsACSList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryACSList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 123
    object cdsACSListACS_ID: TLargeintField
      FieldName = 'ACS_ID'
      Required = True
    end
    object cdsACSListACS_NO: TStringField
      DisplayLabel = 'ACS No'
      FieldName = 'ACS_NO'
      Size = 30
    end
    object cdsACSListACS_DATE: TDateField
      DisplayLabel = 'ACS Date'
      FieldName = 'ACS_DATE'
    end
    object cdsACSListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsACSListACCNO: TStringField
      DisplayLabel = 'Account No'
      DisplayWidth = 2
      FieldName = 'ACCNO'
      Size = 2
    end
    object cdsACSListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsACSListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsACSListBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsACSListCPACCID: TLargeintField
      DisplayLabel = 'CP Acc ID'
      FieldName = 'CPACCID'
    end
    object cdsACSListBS: TStringField
      DisplayLabel = 'B/S'
      FieldName = 'BS'
      Size = 1
    end
    object cdsACSListPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
    end
    object cdsACSListQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
    end
    object cdsACSListVALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
    end
    object cdsACSListFEE_PERCENT: TFloatField
      DisplayLabel = 'Fee (%)'
      FieldName = 'FEE_PERCENT'
    end
    object cdsACSListFEE_AMOUNT: TFloatField
      DisplayLabel = 'Fee Amount'
      FieldName = 'FEE_AMOUNT'
    end
    object cdsACSListTOTAL_AMT: TFloatField
      DisplayLabel = 'Total Amount'
      FieldName = 'TOTAL_AMT'
    end
    object cdsACSListCASH_SETTLED_DATE: TDateField
      DisplayLabel = 'Cash Settled Date'
      FieldName = 'CASH_SETTLED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsACSListSTOCK_SETTLE_DATE: TDateField
      DisplayLabel = 'Stock Settled Date'
      FieldName = 'STOCK_SETTLE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsACSListCASH_SETTLED: TStringField
      DisplayLabel = 'Cash Settled'
      FieldName = 'CASH_SETTLED'
      Size = 1
    end
    object cdsACSListSTOCK_SETTLED: TStringField
      DisplayLabel = 'Stock Settled'
      FieldName = 'STOCK_SETTLED'
      Size = 1
    end
    object cdsACSListACS_STAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'ACS_STAT'
      Size = 1
    end
    object cdsACSListJRNHID: TLargeintField
      FieldName = 'JRNHID'
    end
    object cdsACSListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsACSListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsACSListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsACSListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsACSListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsACSListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsACSListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsACSListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsACSListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsACSListACS_DUEDATE: TDateField
      FieldName = 'ACS_DUEDATE'
    end
    object cdsACSListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsACSListMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
  end
  object cdsACS: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_cdsACS'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsACSBeforePost
    OnNewRecord = cdsACSNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 174
    object cdsACSACS_ID: TLargeintField
      FieldName = 'ACS_ID'
      Required = True
    end
    object cdsACSACS_NO: TStringField
      FieldName = 'ACS_NO'
      Size = 30
    end
    object cdsACSACS_DATE: TDateField
      FieldName = 'ACS_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsACSACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsACSACCNO: TStringField
      DisplayWidth = 2
      FieldName = 'ACCNO'
      Size = 2
    end
    object cdsACSSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsACSSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsACSBOARDID: TLargeintField
      FieldName = 'BOARDID'
    end
    object cdsACSCPACCID: TLargeintField
      FieldName = 'CPACCID'
    end
    object cdsACSBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsACSPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSVALUE: TFloatField
      FieldName = 'VALUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSFEE_PERCENT: TFloatField
      FieldName = 'FEE_PERCENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSFEE_AMOUNT: TFloatField
      FieldName = 'FEE_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSTOTAL_AMT: TFloatField
      FieldName = 'TOTAL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsACSCASH_SETTLED_DATE: TDateField
      FieldName = 'CASH_SETTLED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsACSSTOCK_SETTLE_DATE: TDateField
      FieldName = 'STOCK_SETTLE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsACSCASH_SETTLED: TStringField
      FieldName = 'CASH_SETTLED'
      Size = 1
    end
    object cdsACSSTOCK_SETTLED: TStringField
      FieldName = 'STOCK_SETTLED'
      Size = 1
    end
    object cdsACSACS_STAT: TStringField
      FieldName = 'ACS_STAT'
      Size = 1
    end
    object cdsACSJRNHID: TLargeintField
      FieldName = 'JRNHID'
    end
    object cdsACSMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsACSMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsACSAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsACSAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsACSUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsACSUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsACSNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsACSISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsACSID: TLargeintField
      FieldName = 'ID'
    end
    object cdsACSACS_DUEDATE: TDateField
      FieldName = 'ACS_DUEDATE'
    end
    object cdsACSCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsACSMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
  end
  object cdsACSBoard: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryACSBoard'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 321
    Top = 147
    object cdsACSBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsACSBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsACSBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsACSBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsACSBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsACSBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsACSBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsACSBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsACSBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsACSBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsACSBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsACSBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsACSBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsACSBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsACSBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsACSBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object LargeintField1: TLargeintField
      FieldName = 'ID'
    end
    object cdsACSBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
  end
end
