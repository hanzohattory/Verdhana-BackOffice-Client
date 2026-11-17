inherited frmCashMutationList: TfrmCashMutationList
  Caption = 'Cash Mutation'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 71
    Height = 397
    ExplicitTop = 71
    ExplicitHeight = 397
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCMID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCMCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CMCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCMDATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'CMDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCMTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'CMTYPE'
        RepositoryItem = dmGlobal.luCashMutationType
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCMDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CMDESC'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCMAMT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'CMAMT'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        Caption = 'Posted'
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BNACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBNBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Branch'
        DataBinding.FieldName = 'BNBRANCH'
        Position.BandIndex = 0
        Position.ColIndex = 12
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
    object dtTransDate: TcxDateEdit
      Left = 97
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
      Left = 223
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
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
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object PostingCashMutation1: TMenuItem [10]
      Action = actPosting
    end
    object PostingAllCashMutation1: TMenuItem [11]
      Action = actPostingAll
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashMutationList
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting Cash Mutation'
      OnExecute = actPostingExecute
      CheckPermission = True
    end
    object actPostingAll: TNAction
      Category = 'NActions'
      Caption = 'Posting All Cash Mutation'
      OnExecute = actPostingAllExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsCashMutation
    ListDataset = cdsCashMutationList
    MasterTableName = 'main.B_CASH_MUTATION'
    Keys = <
      item
        FieldName = 'CMID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CMID'
        SequenceName = 'TBL_B_CASH_MUTATION'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
  end
  object cdsCashMutationList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'CMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutationList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 128
    object cdsCashMutationListCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMutationListCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMutationListCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsCashMutationListCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsCashMutationListCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsCashMutationListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashMutationListACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashMutationListACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashMutationListDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashMutationListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashMutationListCMAMT: TFloatField
      FieldName = 'CMAMT'
      DisplayFormat = '#,##0'
    end
    object cdsCashMutationListPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashMutationListMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsCashMutationListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashMutationListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashMutationListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashMutationListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashMutationListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashMutationListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashMutationListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashMutationListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashMutationListACCNAME: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashMutationListBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationListBNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationListBNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashMutationListBNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
  end
  object cdsCashMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 176
    object cdsCashMutationCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMutationCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMutationCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsCashMutationCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsCashMutationCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsCashMutationACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashMutationACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashMutationACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashMutationDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashMutationCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashMutationCMAMT: TFloatField
      FieldName = 'CMAMT'
    end
    object cdsCashMutationPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashMutationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashMutationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashMutationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashMutationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashMutationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashMutationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashMutationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashMutationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashMutationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashMutationBNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashMutationBNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashMutationBNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationBNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashMutationACCNAME: TStringField
      DisplayWidth = 60
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
end
