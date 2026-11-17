inherited frmRDNBankReconList: TfrmRDNBankReconList
  Caption = 'RDN Bank Reconcile'
  ClientWidth = 1056
  ExplicitWidth = 1056
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1056
    ExplicitWidth = 1056
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Bofis Data'
        end
        item
          Caption = 'Bank Data'
        end
        item
        end>
      object gvwMasterTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNACCNO'
        Width = 87
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBNACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNACCNAME'
        Visible = False
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterRDNPOS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RDNPOS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Width = 96
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Visible = False
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Width = 144
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBNINITIAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNINITIAL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'RDN Bank Reconcile'
        Description = 'RDN Bank Reconcile'
      end>
    Left = 304
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
    object SynchronizeDatafromBank1: TMenuItem
      Action = actSynchronize
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsBankReconcileTmp
  end
  inherited aclEditor: TActionList
    object actSynchronize: TNAction
      Category = 'NActions'
      Caption = 'Synchronize Data from Bank'
      OnExecute = actSynchronizeExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 87
          Visible = True
          ItemName = 'dtTrade'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 124
          Visible = True
          ItemName = 'edBankName'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 210
          Visible = True
          ItemName = 'edFileName'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    object edBankName: TcxBarEditItem
      Caption = 'Bank Name'
      Category = 0
      Hint = 'Bank Name'
      Visible = ivAlways
      OnChange = edBankNameChange
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luBankRDN
    end
    object edFileName: TcxBarEditItem
      Caption = 'File Name'
      Category = 0
      Hint = 'File Name'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edFileNamePropertiesButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Upload'
      Category = 0
      Hint = 'Upload'
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dtTrade: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnEditValueChanged = dtTradePropertiesEditValueChanged
    end
    object chkDifferent: TcxBarEditItem
      Caption = 'Different Only'
      Category = 0
      Hint = 'Different Only'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
  end
  object ImportFilesDialog: TOpenDialog
    Filter = 
      'CSV Files|*.csv|Text Files|*.txt|Excel File|*.xlsx|Excel File (1' +
      '997-2013)|*.xls'
    Left = 437
    Top = 331
  end
  object cdsBankReconcileTmp: TClientDataSet
    Aggregates = <>
    Filter = 'DIFF_AMOUNT <> 0'
    Params = <>
    Left = 28
    Top = 226
    object cdsBankReconcileTmpTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankReconcileTmpBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsBankReconcileTmpBNACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsBankReconcileTmpCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankReconcileTmpSALDO: TFloatField
      DisplayLabel = 'Bank Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpBNACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BNACCNAME'
      Size = 100
    end
    object cdsBankReconcileTmpRDNPOS: TFloatField
      DisplayLabel = 'RDN Position'
      FieldName = 'RDNPOS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpDIFF_AMOUNT: TFloatField
      DisplayLabel = 'Difference Amount'
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsBankReconcileTmpACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsBankReconcileTmpACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsBankReconcileTmpACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsBankReconcileTmpACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsBankReconcileTmpBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 50
    end
    object cdsBankReconcileTmpBNINITIAL: TStringField
      FieldName = 'BNINITIAL'
      Size = 30
    end
  end
  object cdsRDNPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRDNPositionByBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 525
    Top = 291
    object cdsRDNPositionACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRDNPositionLDGSEQID: TIntegerField
      FieldName = 'LDGSEQID'
    end
    object cdsRDNPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsRDNPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsRDNPositionACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsRDNPositionBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsRDNPositionBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsRDNPositionBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsRDNPositionBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsRDNPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRDNPositionRDNPOS: TFloatField
      FieldName = 'RDNPOS'
    end
    object cdsRDNPositionACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 30
    end
    object cdsRDNPositionLDGTYPE: TStringField
      FieldName = 'LDGTYPE'
      Size = 10
    end
    object cdsRDNPositionBNINITIAL: TStringField
      FieldName = 'BNINITIAL'
      Size = 30
    end
  end
  object cdsAccountBySIDNo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SIDNo'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountBySIDNo'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 336
    object cdsAccountBySIDNoSIDNo: TStringField
      FieldName = 'SIDNo'
      ReadOnly = True
    end
    object cdsAccountBySIDNoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountBySIDNoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountBySIDNoACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountBySIDNoACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
  end
  object cdsAccountBanks: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BANKACCNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountBanks'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 392
    object cdsAccountBanksACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsAccountBanksACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsAccountBanksCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccountBanksACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountBanksBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsAccountBanksBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Required = True
      Size = 30
    end
    object cdsAccountBanksBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 250
    end
    object cdsAccountBanksBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsAccountBanksISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsAccountBanksBANKTYPE: TStringField
      FieldName = 'BANKTYPE'
      Size = 1
    end
    object cdsAccountBanksBNCHGSTYPE: TStringField
      FieldName = 'BNCHGSTYPE'
      Size = 10
    end
    object cdsAccountBanksACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsAccountBanksCBEST_CODE: TStringField
      FieldName = 'CBEST_CODE'
      Size = 10
    end
    object cdsAccountBanksBANK_DEFAULT: TStringField
      FieldName = 'BANK_DEFAULT'
      Size = 1
    end
    object cdsAccountBanksSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsAccountBanksMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccountBanksMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccountBanksAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccountBanksAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccountBanksUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccountBanksUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccountBanksNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccountBanksISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccountBanksID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccountBanksBNACCID: TStringField
      FieldName = 'BNACCID'
    end
    object cdsAccountBanksPAYMENT_BANK: TStringField
      FieldName = 'PAYMENT_BANK'
    end
    object cdsAccountBankssidNo: TStringField
      FieldName = 'sidNo'
      ReadOnly = True
    end
    object cdsAccountBanksACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsAccountBanksACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsAccountBanksACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
  end
end
