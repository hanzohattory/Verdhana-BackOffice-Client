inherited frmRenewalRepoContract: TfrmRenewalRepoContract
  Caption = 'Renewal Repo Contract'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgWorkflow: TcxPageControl
    Properties.ActivePage = tabBrowse
    inherited tabBrowse: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 934
      ExplicitHeight = 512
      inherited grdBrowse: TcxGrid
        inherited gvwBrowse: TcxGridDBBandedTableView
          object gvwBrowseCONTRACT_NO: TcxGridDBBandedColumn
            Caption = 'Contract No :'
            DataBinding.FieldName = 'CONTRACT_NO'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBrowseTRXDATE: TcxGridDBBandedColumn
            Caption = 'Transaction Date :'
            DataBinding.FieldName = 'TRXDATE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBrowseACCCODE: TcxGridDBBandedColumn
            Caption = 'Acc. Code :'
            DataBinding.FieldName = 'ACCCODE'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBrowseACCNAME: TcxGridDBBandedColumn
            Caption = 'Acc. Name :'
            DataBinding.FieldName = 'ACCNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBrowseSETTDATE: TcxGridDBBandedColumn
            Caption = 'Settle Date :'
            DataBinding.FieldName = 'SETTDATE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBrowseSETTDAY: TcxGridDBBandedColumn
            Caption = 'Days :'
            DataBinding.FieldName = 'SETTDAY'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBrowseMATURDATE: TcxGridDBBandedColumn
            Caption = 'Matur. Date :'
            DataBinding.FieldName = 'MATURDATE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwBrowseCCY: TcxGridDBBandedColumn
            Caption = 'Ccy :'
            DataBinding.FieldName = 'CCY'
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBrowseLOAN_AMT: TcxGridDBBandedColumn
            Caption = 'Loan Amount :'
            DataBinding.FieldName = 'LOAN_AMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwBrowseDUE_AMT: TcxGridDBBandedColumn
            Caption = 'Due Amount :'
            DataBinding.FieldName = 'DUE_AMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwBrowseINTERESTRATE: TcxGridDBBandedColumn
            Caption = 'Rate :'
            DataBinding.FieldName = 'INTERESTRATE'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwBrowseCOLL_AMT: TcxGridDBBandedColumn
            Caption = 'Collateral Amt. :'
            DataBinding.FieldName = 'COLL_AMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwBrowseREPO_AMT: TcxGridDBBandedColumn
            Caption = 'Repo Amount :'
            DataBinding.FieldName = 'REPO_AMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
      end
      inherited lcBrowseTop: TdxLayoutControl
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
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 934
      ExplicitHeight = 512
      inherited lcEditorTop: TdxLayoutControl
        object btnAction1: TcxButton [0]
          Left = 10
          Top = 10
          Width = 150
          Height = 25
          Align = alLeft
          Default = True
          TabOrder = 0
        end
        object btnAction2: TcxButton [1]
          Left = 166
          Top = 10
          Width = 150
          Height = 25
          Align = alLeft
          TabOrder = 1
        end
        inherited lcEditorTopGroup_Root: TdxLayoutGroup
          LayoutDirection = ldHorizontal
          Index = -1
        end
        object lcEditorTopItem1: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = lcEditorTopGroup1
          Control = btnAction1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcEditorTopItem2: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = lcEditorTopGroup1
          Control = btnAction2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcEditorTopGroup1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = lcEditorTopGroup_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
      inherited lcEditor: TdxLayoutControl
        inherited grdWorkflowDataNotes: TcxGrid
          inherited glvWorkflowDataNotes: TcxGridDBLayoutView
            inherited glvWorkflowDataNotesGroup_Root: TdxLayoutGroup
              Index = -1
            end
            inherited glvWorkflowDataNotesLayoutItem1: TcxGridLayoutItem
              Index = -1
            end
            inherited glvWorkflowDataNotesLayoutItem2: TcxGridLayoutItem
              Index = -1
            end
            inherited glvWorkflowDataNotesLayoutItem3: TcxGridLayoutItem
              Index = 1
            end
            inherited glvWorkflowDataNotesLayoutItem4: TcxGridLayoutItem
              Index = 0
            end
            inherited glvWorkflowDataNotesLayoutItem5: TcxGridLayoutItem
              Index = 0
            end
            inherited glvWorkflowDataNotesGroup1: TdxLayoutGroup
              Index = 1
            end
          end
        end
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
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Renewal Rev.Repo Contract'
        Description = 'Renewal Rev.Repo Contract'
      end>
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsRCRList
    Left = 64
    Top = 288
  end
  inherited imlWorkflow: TImageList
    Bitmap = {
      494C0101030008009C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object cdsRCRList: TNClientDataset
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
    ProviderName = 'dspN_dmREPO_qryRCRList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 64
    Top = 232
    object cdsRCRListCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRCRListTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
    end
    object cdsRCRListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRCRListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRCRListSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
    end
    object cdsRCRListSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsRCRListMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
    end
    object cdsRCRListCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRCRListLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRCRListDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
    end
    object cdsRCRListINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsRCRListINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsRCRListCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsRCRListREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
    end
    object cdsRCRListCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRCRListENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRCRListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRCRListENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRCRListTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRCRListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRCRListRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRCRListRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRCRListRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRCRListDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRCRListAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
    end
    object cdsRCRListFORCESELL: TFloatField
      FieldName = 'FORCESELL'
    end
    object cdsRCRListCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
    end
    object cdsRCRListCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
  end
  object cdsRepoMaster: TNClientDataset
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
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 232
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
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 168
    Top = 296
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
    object cdsRepoMaster_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsRepoMaster_DCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsRepoMaster_DACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
  end
  object cdsRCR: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryRCR'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 824
    Top = 232
    object cdsRCRCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRCRCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsRCRENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsRCRENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsRCRENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsRCRTRXDATE: TDateTimeField
      DisplayLabel = 'Trx. date'
      FieldName = 'TRXDATE'
    end
    object cdsRCRTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsRCRACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRCRACCCODE: TStringField
      DisplayLabel = 'AccNo.'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRCRACCNAME: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsRCRRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsRCRRACCCODE: TStringField
      DisplayLabel = 'Rev. AccNo.'
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsRCRRACCNAME: TStringField
      DisplayLabel = 'Rev. AccName'
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsRCRSETTDATE: TDateTimeField
      DisplayLabel = 'Sett. date'
      FieldName = 'SETTDATE'
    end
    object cdsRCRSETTDAY: TIntegerField
      DisplayLabel = 'Sett. days'
      FieldName = 'SETTDAY'
    end
    object cdsRCRMATURDATE: TDateTimeField
      DisplayLabel = 'Maturity Date'
      FieldName = 'MATURDATE'
    end
    object cdsRCRCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRCRLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
    end
    object cdsRCRDUE_AMT: TFloatField
      DisplayLabel = 'Due Amount'
      FieldName = 'DUE_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRINTERESTCODE: TStringField
      DisplayLabel = 'Int.code'
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsRCRINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsRCRINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '0.### %'
    end
    object cdsRCRINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsRCRINTERESTDAY: TIntegerField
      DisplayLabel = 'Int.rate'
      FieldName = 'INTERESTDAY'
    end
    object cdsRCRCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsRCRCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsRCRAPR_COLL: TFloatField
      DisplayLabel = 'Approval Collateral'
      FieldName = 'APR_COLL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRFORCESELL: TFloatField
      DisplayLabel = 'Force Sell'
      FieldName = 'FORCESELL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRCOLL_CALL: TFloatField
      DisplayLabel = 'Collateral Call'
      FieldName = 'COLL_CALL'
      DisplayFormat = '0.### %'
    end
    object cdsRCRISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsRCRISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsRCRMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRCRMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRCRAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRCRAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRCRUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRCRUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRCRNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRCRISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRCRID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRCRCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
    end
    object cdsRCRTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsRCRDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsRCRORG_AMT: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Original Amount'
      FieldName = 'ORG_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRREPO_AMT: TFloatField
      DisplayLabel = 'Repo Amount'
      FieldName = 'REPO_AMT'
      DisplayFormat = '###,##0.00'
    end
    object cdsRCRCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,###'
    end
    object cdsRCRCONTRACTNO_OLD: TStringField
      FieldName = 'CONTRACTNO_OLD'
      Size = 30
    end
    object cdsRCRNOTE: TStringField
      FieldName = 'NOTE'
      Size = 300
    end
    object cdsRCRqryRCR_D: TDataSetField
      FieldName = 'qryRCR_D'
    end
    object cdsRCRDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsRCRCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
  end
  object cdsRCR_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsRCRqryRCR_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 824
    Top = 304
    object cdsRCR_DCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsRCR_DSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsRCR_DSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsRCR_DSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsRCR_DSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsRCR_DSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsRCR_DTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsRCR_DINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsRCR_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRCR_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRCR_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRCR_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRCR_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRCR_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRCR_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRCR_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRCR_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRCR_DQTY: TLargeintField
      FieldName = 'QTY'
    end
    object cdsRCR_DCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
    end
    object cdsRCR_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsRCR_DACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsRCR_DCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
  end
end
