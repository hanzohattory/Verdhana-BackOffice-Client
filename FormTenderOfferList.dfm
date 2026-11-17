inherited frmTenderOfferList: TfrmTenderOfferList
  Caption = 'Tender Offer'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 67
    Height = 401
    ExplicitTop = 67
    ExplicitHeight = 401
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Closed'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Paid'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Settled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed Post'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterTOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTOCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOCODE'
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTODATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TODATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterQUO_STARTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QUO_STARTDATE'
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterQUO_ENDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QUO_ENDDATE'
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPAYMENTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAYMENTDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterKSEIACCOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEIACCOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterEXT_QUO_STDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXT_QUO_STDATE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterEXT_QUO_ENDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXT_QUO_ENDATE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterEXT_PAYMENTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXT_PAYMENTDATE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterQUOTATION_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QUOTATION_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCOM_CALCMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COM_CALCMODE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCOMISSION_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMISSION_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterVAT_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VAT_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterLEVY_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEVY_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterWHT_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSALESTAX_PERCENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESTAX_PERCENT'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterQUO_TENDERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QUO_TENDERQTY'
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterPAID_STAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_STAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterEXT_PAID_STAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXT_PAID_STAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKTRANSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTRANSID_REVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKTRANSID_REVERSED'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERTRANSID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERTRANSID_REVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERTRANSID_REVERSED'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterCOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterSOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SOID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Closed'
            Value = 'S'
          end
          item
            Description = 'Reverses'
            Value = 'R'
          end>
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_DATE'
        Width = 130
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_SYSDATE'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLOSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSED_UI'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPAID: TcxGridDBBandedColumn
        Caption = 'Paid'
        DataBinding.FieldName = 'PAID'
        RepositoryItem = dmGlobal.chkStandard
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterPAID_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_DATE'
        Width = 130
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterPAID_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_SYSDATE'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterPAID_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_UI'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED: TcxGridDBBandedColumn
        Caption = 'Settled'
        DataBinding.FieldName = 'SETTLED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_DATE'
        Width = 130
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_SYSDATE'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterSETTLED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_UI'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED: TcxGridDBBandedColumn
        Caption = 'Reversed'
        DataBinding.FieldName = 'REVERSED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Width = 130
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_SYSDATE'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_POST: TcxGridDBBandedColumn
        Caption = 'Reversed Post'
        DataBinding.FieldName = 'REVERSED_POST'
        RepositoryItem = dmGlobal.chkStandard
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_POST_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_POST_DATE'
        Width = 130
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_POST_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_POST_UI'
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 41
    Align = alTop
    TabOrder = 5
    object dtTODate: TcxDateEdit
      Left = 104
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtTODatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
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
    object TODate: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Tender Offer Date'
      Control = dtTODate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Tender Offer].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Tender Offer].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Tender Offer].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Tender Offer].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Tender Offer].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Tender Offer].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Tender Offer].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Tender Offer].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Tender Offer].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Tender Offer].Reject'
      end>
    AssignedPermission = <
      item
        Name = '[Tender Offer].View Approval Data'
        Description = 'View Approval Data Tender Offer'
      end
      item
        Name = '[Tender Offer].View'
        Description = 'View Tender Offer'
      end
      item
        Name = '[Tender Offer].Reject'
        Description = 'Reject Tender Offer'
      end
      item
        Name = '[Tender Offer].Approve'
        Description = 'Approve Tender Offer'
      end
      item
        Name = '[Tender Offer].Copy From Selected Data'
        Description = 'Copy From Selected Data Tender Offer'
      end
      item
        Name = '[Tender Offer].Cancel'
        Description = 'Cancel Tender Offer'
      end
      item
        Name = '[Tender Offer].Refresh'
        Description = 'Refresh Tender Offer'
      end
      item
        Name = '[Tender Offer].Delete'
        Description = 'Delete Tender Offer'
      end
      item
        Name = '[Tender Offer].Edit'
        Description = 'Edit Tender Offer'
      end
      item
        Name = '[Tender Offer].New'
        Description = 'New Tender Offer'
      end>
    Left = 299
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
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object N5: TMenuItem [10]
      Caption = '-'
    end
    object enderOfferTrade1: TMenuItem [11]
      Action = actTOTrade
    end
    object CloseTenderOffer1: TMenuItem [12]
      Action = actCloseTenderOffer
    end
    object enderOfferReverse1: TMenuItem [13]
      Action = actTenderOfferReverse
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsTenderOfferList
  end
  inherited aclEditor: TActionList
    object actTOTrade: TNAction
      Category = 'NActions'
      Caption = 'Tender Offer Trade'
      OnExecute = actTOTradeExecute
      CheckPermission = False
    end
    object actCloseTenderOffer: TNAction
      Category = 'NActions'
      Caption = 'Close Tender Offer'
      OnExecute = actCloseTenderOfferExecute
      CheckPermission = False
    end
    object actViewTransaction: TNAction
      Category = 'NActions'
      Caption = 'View Transaction'
      OnExecute = actViewTransactionExecute
      CheckPermission = False
    end
    object actTenderOfferReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse Tender Offer'
      OnExecute = actTenderOfferReverseExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsTenderOffer
    ListDataset = cdsTenderOfferList
    Keys = <
      item
        FieldName = 'TOID'
        FieldIndex = 0
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsTenderOfferList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TODATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryTenderOfferList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 93
    Top = 153
    object cdsTenderOfferListTOID: TLargeintField
      FieldName = 'TOID'
      Required = True
    end
    object cdsTenderOfferListTOCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'TOCODE'
      Required = True
    end
    object cdsTenderOfferListTODATE: TDateField
      DisplayLabel = ' Date'
      FieldName = 'TODATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListQUO_STARTDATE: TDateField
      DisplayLabel = 'Quotation Start Date'
      FieldName = 'QUO_STARTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListQUO_ENDDATE: TDateField
      DisplayLabel = 'Quotation End Date'
      FieldName = 'QUO_ENDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListPAYMENTDATE: TDateField
      DisplayLabel = 'Payment Date'
      FieldName = 'PAYMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListKSEIACCOUNT: TStringField
      DisplayLabel = 'KSEI Account'
      FieldName = 'KSEIACCOUNT'
    end
    object cdsTenderOfferListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsTenderOfferListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsTenderOfferListEXT_QUO_STDATE: TDateField
      DisplayLabel = 'Ext Quotation Start Date'
      FieldName = 'EXT_QUO_STDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListEXT_QUO_ENDATE: TDateField
      DisplayLabel = 'Ext Quotation End Date'
      FieldName = 'EXT_QUO_ENDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListEXT_PAYMENTDATE: TDateField
      DisplayLabel = 'Ext Payment Date'
      FieldName = 'EXT_PAYMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferListQUOTATION_PRICE: TFloatField
      DisplayLabel = 'Quotation Price'
      FieldName = 'QUOTATION_PRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferListCOM_CALCMODE: TStringField
      DisplayLabel = 'Commission Calc Mode'
      FieldName = 'COM_CALCMODE'
      Size = 2
    end
    object cdsTenderOfferListCOMISSION_PERCENT: TFloatField
      DisplayLabel = 'Commission'
      FieldName = 'COMISSION_PERCENT'
      DisplayFormat = '#,##0.0000 %;(#,##0.0000) %;0.0000 %'
    end
    object cdsTenderOfferListVAT_PERCENT: TFloatField
      DisplayLabel = 'VAT'
      FieldName = 'VAT_PERCENT'
      DisplayFormat = '#,##0.0000 %;(#,##0.0000) %;0.0000 %'
    end
    object cdsTenderOfferListLEVY_PERCENT: TFloatField
      DisplayLabel = 'LEVY'
      FieldName = 'LEVY_PERCENT'
      DisplayFormat = '#,##0.0000 %;(#,##0.0000) %;0.0000 %'
    end
    object cdsTenderOfferListWHT_PERCENT: TFloatField
      DisplayLabel = 'WHT'
      FieldName = 'WHT_PERCENT'
      DisplayFormat = '#,##0.0000 %;(#,##0.0000) %;0.0000 %'
    end
    object cdsTenderOfferListSALESTAX_PERCENT: TFloatField
      DisplayLabel = 'Sales Tax'
      FieldName = 'SALESTAX_PERCENT'
      DisplayFormat = '#,##0.0000 %;(#,##0.0000) %;0.0000 %'
    end
    object cdsTenderOfferListMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsTenderOfferListQUO_TENDERQTY: TFloatField
      DisplayLabel = 'Quotation Qty'
      FieldName = 'QUO_TENDERQTY'
      DisplayFormat = '#,##0'
    end
    object cdsTenderOfferListPAID_STAT: TStringField
      DisplayLabel = 'Paid Status'
      FieldName = 'PAID_STAT'
      Size = 1
    end
    object cdsTenderOfferListEXT_PAID_STAT: TStringField
      DisplayLabel = 'Ext Paid Status'
      FieldName = 'EXT_PAID_STAT'
      Size = 1
    end
    object cdsTenderOfferListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsTenderOfferListSTOCKTRANSID_REVERSED: TLargeintField
      FieldName = 'STOCKTRANSID_REVERSED'
    end
    object cdsTenderOfferListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsTenderOfferListLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsTenderOfferListCOID: TLargeintField
      FieldName = 'COID'
    end
    object cdsTenderOfferListSOID: TLargeintField
      FieldName = 'SOID'
    end
    object cdsTenderOfferListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsTenderOfferListCLOSED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CLOSED_DATE'
    end
    object cdsTenderOfferListCLOSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsTenderOfferListCLOSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsTenderOfferListPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsTenderOfferListPAID_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'PAID_DATE'
    end
    object cdsTenderOfferListPAID_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'PAID_SYSDATE'
    end
    object cdsTenderOfferListPAID_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'PAID_UI'
      Size = 30
    end
    object cdsTenderOfferListSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsTenderOfferListSETTLED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'SETTLED_DATE'
    end
    object cdsTenderOfferListSETTLED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'SETTLED_SYSDATE'
    end
    object cdsTenderOfferListSETTLED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'SETTLED_UI'
      Size = 30
    end
    object cdsTenderOfferListREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsTenderOfferListREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSED_DATE'
    end
    object cdsTenderOfferListREVERSED_SYSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsTenderOfferListREVERSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsTenderOfferListREVERSED_POST: TStringField
      FieldName = 'REVERSED_POST'
      Size = 1
    end
    object cdsTenderOfferListREVERSED_POST_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSED_POST_DATE'
    end
    object cdsTenderOfferListREVERSED_POST_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'REVERSED_POST_UI'
      Size = 30
    end
    object cdsTenderOfferListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTenderOfferListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTenderOfferListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTenderOfferListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTenderOfferListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTenderOfferListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTenderOfferListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTenderOfferListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTenderOfferListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsTenderOffer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryTenderOffer'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsTenderOfferBeforePost
    OnNewRecord = cdsTenderOfferNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 455
    Top = 164
    object cdsTenderOfferTOID: TLargeintField
      FieldName = 'TOID'
      Required = True
    end
    object cdsTenderOfferTOCODE: TStringField
      FieldName = 'TOCODE'
      Required = True
    end
    object cdsTenderOfferTODATE: TDateField
      FieldName = 'TODATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferQUO_STARTDATE: TDateField
      FieldName = 'QUO_STARTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferQUO_ENDDATE: TDateField
      FieldName = 'QUO_ENDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferPAYMENTDATE: TDateField
      FieldName = 'PAYMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferKSEIACCOUNT: TStringField
      FieldName = 'KSEIACCOUNT'
    end
    object cdsTenderOfferSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsTenderOfferSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsTenderOfferEXT_QUO_STDATE: TDateField
      FieldName = 'EXT_QUO_STDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferEXT_QUO_ENDATE: TDateField
      FieldName = 'EXT_QUO_ENDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferEXT_PAYMENTDATE: TDateField
      FieldName = 'EXT_PAYMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferQUOTATION_PRICE: TFloatField
      FieldName = 'QUOTATION_PRICE'
      DisplayFormat = '#, ##0.00'
    end
    object cdsTenderOfferCOM_CALCMODE: TStringField
      FieldName = 'COM_CALCMODE'
      Size = 2
    end
    object cdsTenderOfferCOMISSION_PERCENT: TFloatField
      FieldName = 'COMISSION_PERCENT'
      DisplayFormat = '#,##0.00 %'
    end
    object cdsTenderOfferVAT_PERCENT: TFloatField
      FieldName = 'VAT_PERCENT'
      DisplayFormat = '#,##0.0000 %'
    end
    object cdsTenderOfferLEVY_PERCENT: TFloatField
      FieldName = 'LEVY_PERCENT'
      DisplayFormat = '#,##0.0000 %'
    end
    object cdsTenderOfferWHT_PERCENT: TFloatField
      FieldName = 'WHT_PERCENT'
      DisplayFormat = '#,##0.0000 %'
    end
    object cdsTenderOfferSALESTAX_PERCENT: TFloatField
      FieldName = 'SALESTAX_PERCENT'
      DisplayFormat = '#,##0.0000 %'
    end
    object cdsTenderOfferMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsTenderOfferQUO_TENDERQTY: TFloatField
      FieldName = 'QUO_TENDERQTY'
      DisplayFormat = '#,##0'
    end
    object cdsTenderOfferPAID_STAT: TStringField
      FieldName = 'PAID_STAT'
      Size = 1
    end
    object cdsTenderOfferEXT_PAID_STAT: TStringField
      FieldName = 'EXT_PAID_STAT'
      Size = 1
    end
    object cdsTenderOfferSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsTenderOfferSTOCKTRANSID_REVERSED: TLargeintField
      FieldName = 'STOCKTRANSID_REVERSED'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsTenderOfferLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsTenderOfferLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsTenderOfferCOID: TLargeintField
      FieldName = 'COID'
    end
    object cdsTenderOfferSOID: TLargeintField
      FieldName = 'SOID'
    end
    object cdsTenderOfferSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsTenderOfferCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsTenderOfferCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsTenderOfferCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsTenderOfferPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsTenderOfferPAID_DATE: TDateTimeField
      FieldName = 'PAID_DATE'
    end
    object cdsTenderOfferPAID_SYSDATE: TDateTimeField
      FieldName = 'PAID_SYSDATE'
    end
    object cdsTenderOfferPAID_UI: TStringField
      FieldName = 'PAID_UI'
      Size = 30
    end
    object cdsTenderOfferSETTLED: TStringField
      FieldName = 'SETTLED'
      Size = 1
    end
    object cdsTenderOfferSETTLED_DATE: TDateTimeField
      FieldName = 'SETTLED_DATE'
    end
    object cdsTenderOfferSETTLED_SYSDATE: TDateTimeField
      FieldName = 'SETTLED_SYSDATE'
    end
    object cdsTenderOfferSETTLED_UI: TStringField
      FieldName = 'SETTLED_UI'
      Size = 30
    end
    object cdsTenderOfferREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsTenderOfferREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsTenderOfferREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsTenderOfferREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsTenderOfferREVERSED_POST: TStringField
      FieldName = 'REVERSED_POST'
      Size = 1
    end
    object cdsTenderOfferREVERSED_POST_DATE: TDateTimeField
      FieldName = 'REVERSED_POST_DATE'
    end
    object cdsTenderOfferREVERSED_POST_UI: TStringField
      FieldName = 'REVERSED_POST_UI'
      Size = 30
    end
    object cdsTenderOfferMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTenderOfferMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTenderOfferAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTenderOfferAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTenderOfferUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTenderOfferUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTenderOfferNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTenderOfferISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTenderOfferID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsTenderOfferTrade: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryTenderOfferTrade'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 276
    Top = 156
    object cdsTenderOfferTradeTOID: TLargeintField
      FieldName = 'TOID'
      Required = True
    end
    object cdsTenderOfferTradeTOTRID: TLargeintField
      FieldName = 'TOTRID'
      Required = True
    end
    object cdsTenderOfferTradeTOCONNO: TStringField
      DisplayLabel = 'Contract No'
      FieldName = 'TOCONNO'
      Required = True
    end
    object cdsTenderOfferTradeTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
    end
    object cdsTenderOfferTradeIS_EXTEND: TStringField
      FieldName = 'IS_EXTEND'
      Size = 1
    end
    object cdsTenderOfferTradeACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsTenderOfferTradeACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsTenderOfferTradeQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsTenderOfferTradeVALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeCOM_CALCMODE: TStringField
      DisplayLabel = 'Calc Mode'
      FieldName = 'COM_CALCMODE'
      Size = 2
    end
    object cdsTenderOfferTradeCOMM_AMT: TFloatField
      DisplayLabel = 'Commission Amount'
      FieldName = 'COMM_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeVATAMT: TFloatField
      DisplayLabel = 'VAT Amount'
      FieldName = 'VATAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeLEVY_AMT: TFloatField
      DisplayLabel = 'Levy Amount'
      FieldName = 'LEVY_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeSALESTAX_AMT: TFloatField
      DisplayLabel = 'Sales Tax Amount'
      FieldName = 'SALESTAX_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeWHT_AMT: TFloatField
      DisplayLabel = 'WHT Amount'
      FieldName = 'WHT_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeNETAMOUNT: TFloatField
      DisplayLabel = 'Net Amount'
      FieldName = 'NETAMOUNT'
      DisplayFormat = '#,##0.00'
    end
    object cdsTenderOfferTradeSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsTenderOfferTradeCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsTenderOfferTradeCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsTenderOfferTradeCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsTenderOfferTradeREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsTenderOfferTradeREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsTenderOfferTradeREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsTenderOfferTradeCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsTenderOfferTradeCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsTenderOfferTradeCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsTenderOfferTradeRECV_STAT: TStringField
      FieldName = 'RECV_STAT'
      Size = 1
    end
    object cdsTenderOfferTradeRECV_DATE: TDateField
      FieldName = 'RECV_DATE'
    end
    object cdsTenderOfferTradePAID_STAT: TStringField
      DisplayLabel = 'Paid Status'
      FieldName = 'PAID_STAT'
      Size = 1
    end
    object cdsTenderOfferTradePAID_SYSDATE: TDateTimeField
      FieldName = 'PAID_SYSDATE'
    end
    object cdsTenderOfferTradePAID_DATE: TDateField
      FieldName = 'PAID_DATE'
    end
    object cdsTenderOfferTradePAID_UI: TStringField
      FieldName = 'PAID_UI'
    end
    object cdsTenderOfferTradeJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsTenderOfferTradeCOID: TLargeintField
      FieldName = 'COID'
    end
    object cdsTenderOfferTradeSOID: TLargeintField
      FieldName = 'SOID'
    end
    object cdsTenderOfferTradeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTenderOfferTradeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTenderOfferTradeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTenderOfferTradeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTenderOfferTradeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTenderOfferTradeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTenderOfferTradeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTenderOfferTradeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTenderOfferTradeID: TLargeintField
      FieldName = 'ID'
    end
  end
end
