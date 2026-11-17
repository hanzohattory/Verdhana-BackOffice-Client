inherited frmClosingRepoContract: TfrmClosingRepoContract
  Caption = 'FormClosingRepoContract'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgWorkflow: TcxPageControl
    inherited tabBrowse: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 27
      ExplicitWidth = 932
      ExplicitHeight = 506
      inherited grdBrowse: TcxGrid
        inherited gvwBrowse: TcxGridDBBandedTableView
          object gvwBrowseCONTRACT_NO: TcxGridDBBandedColumn
            Caption = 'Contract No.'
            DataBinding.FieldName = 'CONTRACT_NO'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBrowseTRXDATE: TcxGridDBBandedColumn
            Caption = 'Trx. Date'
            DataBinding.FieldName = 'TRXDATE'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBrowseACCCODE: TcxGridDBBandedColumn
            Caption = 'Acc. Code'
            DataBinding.FieldName = 'ACCCODE'
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBrowseACCNAME: TcxGridDBBandedColumn
            Caption = 'Acc. Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBrowseSETTDATE: TcxGridDBBandedColumn
            Caption = 'Settle. Date'
            DataBinding.FieldName = 'SETTDATE'
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBrowseSETTDAY: TcxGridDBBandedColumn
            Caption = 'Days'
            DataBinding.FieldName = 'SETTDAY'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBrowseMATURDATE: TcxGridDBBandedColumn
            Caption = 'Maturity Date'
            DataBinding.FieldName = 'MATURDATE'
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwBrowseCCY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCY'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBrowseLOAN_AMT: TcxGridDBBandedColumn
            Caption = 'Loan AMT.'
            DataBinding.FieldName = 'LOAN_AMT'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwBrowseDUE_AMT: TcxGridDBBandedColumn
            Caption = 'Due AMT.'
            DataBinding.FieldName = 'DUE_AMT'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwBrowseINTERESTRATE: TcxGridDBBandedColumn
            Caption = 'Rate'
            DataBinding.FieldName = 'INTERESTRATE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwBrowseINTEREST_AMT: TcxGridDBBandedColumn
            Caption = 'Interest AMT.'
            DataBinding.FieldName = 'INTEREST_AMT'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwBrowseREPO_AMT: TcxGridDBBandedColumn
            Caption = 'Repo AMT.'
            DataBinding.FieldName = 'REPO_AMT'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwBrowseDUE_DATE: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DUE_DATE'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
      end
      inherited lcBrowseTop: TdxLayoutControl
        inherited btnViewData: TcxButton
          Height = 23
          ExplicitHeight = 23
        end
        inherited lcBrowseTopGroup_Root: TdxLayoutGroup
          Index = -1
        end
        inherited lcBrowseTopItem1: TdxLayoutItem
          Index = 0
        end
        inherited lcBrowseTopItem2: TdxLayoutItem
          Index = 1
        end
        inherited lcBrowseTopGroup1: TdxLayoutGroup
          Index = 0
        end
      end
    end
    inherited tabEditor: TcxTabSheet
      inherited lcEditorTop: TdxLayoutControl
        inherited lcEditorTopGroup_Root: TdxLayoutGroup
          Index = -1
        end
      end
      inherited lcEditor: TdxLayoutControl
        inherited lcEditorMain: TdxLayoutGroup
          Index = -1
        end
        inherited lcEditorItem1: TdxLayoutItem
          Index = 2
        end
        inherited lcEditorForm: TdxLayoutGroup
          Index = 0
        end
        inherited lcEditorItem2: TdxLayoutItem
          Index = 0
        end
        inherited lcEditorGroup1: TdxLayoutGroup
          Index = 1
        end
        inherited lcEditorSplitterItem1: TdxLayoutSplitterItem
          Index = 1
        end
      end
    end
  end
  inherited lcTopMenu: TdxLayoutControl
    inherited dbNavBrowse: TDBNavigator
      Hints.Strings = ()
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    inherited lcTopMenuGroup1: TdxLayoutGroup
      Index = 0
    end
    inherited lcLeft: TdxLayoutGroup
      Index = 0
    end
    inherited lcCenter: TdxLayoutGroup
      Index = 1
    end
    inherited lcTopMenuItem9: TdxLayoutItem
      Index = 0
    end
    inherited lcNavBrowse: TdxLayoutItem
      Index = 1
    end
    inherited lcTopMenuGroup2: TdxLayoutGroup
      Index = 2
    end
    inherited lcTopMenuItem10: TdxLayoutItem
      Index = 2
    end
    inherited lcTopMenuItem1: TdxLayoutItem
      Index = 0
    end
    inherited lcTopMenuItem4: TdxLayoutItem
      Index = 0
    end
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsCRCList
    Left = 48
    Top = 304
  end
  inherited imlWorkflow: TImageList
    Bitmap = {
      494C010103000800B00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151513662121
      1DA021211DA021211DA021211DA021211DA021211DA021211DA021211DA02121
      1DA021211DA01514126400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000390000
      00A8000000A800000037000000A8000000A8000000A8000000A8000000A80000
      00A8000000A8000000A80000000000000000000000000000000021211EA13534
      2FFF2F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E
      28E035342FFF21211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0A0FFA0A0A0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A0FFC4C4C4FFC4C4C4FFA0A0A0FF000000000000
      00000000000000000000000000000000000000000000000000000000001C0000
      0054000000540000001B00000054000000540000005400000054000000540000
      005400000054000000540000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A0A0FFD9D9D9FFD0D0D0FFD0D0D0FFD9D9D9FFA0A0A0FF0000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A0A0FFE5E5E5FFE5E5E5FFE3E3E3FFE3E3E3FFE5E5E5FFE5E5E5FFA0A0
      A0FF000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFA0A0A0FF00000000000000000000000000000000000000000000001E0000
      0058000000580000001C00000058000000580000005800000058000000580000
      005800000058000000580000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70B3A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FF707070B30000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000003B0000
      00AC000000AC00000038000000AC000000AC000000AC000000AC000000AC0000
      00AC000000AC000000AC0000000000000000000000000000000021211DA03534
      2FFF2F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E
      28E035342FFF21211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151513662121
      1EA121211DA021211DA021211DA021211DA021211DA021211DA021211DA02121
      1DA021211DA01514126400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object cdsCRCList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ISALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACTIVITYID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmREPO_qryCRCList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 240
    object cdsCRCListCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsCRCListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Required = True
      Size = 30
    end
    object cdsCRCListENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsCRCListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCRCListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsCRCListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCRCListSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCRCListSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsCRCListMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCRCListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCRCListLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCRCListORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCRCListDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCRCListINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,###'
    end
    object cdsCRCListREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsCRCListINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '#,###admin'
    end
    object cdsCRCListNOTE: TStringField
      FieldName = 'NOTE'
      Size = 300
    end
    object cdsCRCListDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCRCListCLS_DATE: TDateTimeField
      FieldName = 'CLS_DATE'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsCRCListCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
  object cdsRepoMaster: TNClientDataset
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryCONTRACT_REPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 240
    object cdsRepoMasterCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoMasterCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRepoMasterENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRepoMasterENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRepoMasterENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRepoMasterTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsRepoMasterTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRepoMasterACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRepoMasterACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRepoMasterACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRepoMasterRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRepoMasterRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRepoMasterRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRepoMasterSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
    end
    object cdsRepoMasterSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsRepoMasterMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
    end
    object cdsRepoMasterCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRepoMasterLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRepoMasterDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
    end
    object cdsRepoMasterDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRepoMasterINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsRepoMasterINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRepoMasterINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsRepoMasterINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRepoMasterINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsRepoMasterCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRepoMasterCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRepoMasterAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
      Required = True
    end
    object cdsRepoMasterFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsRepoMasterCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsRepoMasterINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
    end
    object cdsRepoMasterORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
    end
    object cdsRepoMasterREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsRepoMasterCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsRepoMasterCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
    object cdsRepoMasterISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
      Required = True
    end
    object cdsRepoMasterISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRepoMasterMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoMasterMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoMasterAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoMasterAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoMasterUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoMasterUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoMasterNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoMasterISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoMasterID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoMasterCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRepoMasterTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRepoMasterDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsRepoMasterREPO_STATUS: TStringField
      FieldName = 'REPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsRepoMasterqryCONTRACT_REPO_D: TDataSetField
      FieldName = 'qryCONTRACT_REPO_D'
    end
  end
  object cdsRepoMaster_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsRepoMasterqryCONTRACT_REPO_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 360
    object cdsRepoMaster_DCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRepoMaster_DSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsRepoMaster_DSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsRepoMaster_DSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsRepoMaster_DSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsRepoMaster_DSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsRepoMaster_DTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsRepoMaster_DINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsRepoMaster_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRepoMaster_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRepoMaster_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRepoMaster_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRepoMaster_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRepoMaster_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRepoMaster_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRepoMaster_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRepoMaster_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRepoMaster_DQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsRepoMaster_DCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsRepoMaster_DCOL_AMT: TFloatField
      FieldName = 'COL_AMT'
    end
    object cdsRepoMaster_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
  end
  object dsRepoMaster: TDataSource
    DataSet = cdsRepoMaster
    Left = 144
    Top = 296
  end
end
