inherited frmClosingAccountList: TfrmClosingAccountList
  Caption = 'Closing Account'
  TextHeight = 13
  inherited pgWorkflow: TcxPageControl
    Properties.ActivePage = tabBrowse
    inherited tabBrowse: TcxTabSheet
      inherited grdBrowse: TcxGrid
        inherited gvwBrowse: TcxGridDBBandedTableView
          object gvwBrowseCAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBrowseREQCODE: TcxGridDBBandedColumn
            Caption = 'Request Code'
            DataBinding.FieldName = 'REQCODE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBrowseREQDATE: TcxGridDBBandedColumn
            Caption = 'Request Date'
            DataBinding.FieldName = 'REQDATE'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBrowseACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBrowseNOTES: TcxGridDBBandedColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'NOTES'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwBrowsePRDCODE: TcxGridDBBandedColumn
            Caption = 'Product'
            DataBinding.FieldName = 'PRDCODE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBrowseACCCODE: TcxGridDBBandedColumn
            Caption = 'Account Code'
            DataBinding.FieldName = 'ACCCODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBrowseACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBrowseACC_STS: TcxGridDBBandedColumn
            Caption = 'Account Status'
            DataBinding.FieldName = 'ACC_STS'
            RepositoryItem = dmGlobal.luAccountStatus
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwBrowseSALESCODE: TcxGridDBBandedColumn
            Caption = 'Sales Code'
            DataBinding.FieldName = 'SALESCODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwBrowseSALESNAME: TcxGridDBBandedColumn
            Caption = 'Sales Name'
            DataBinding.FieldName = 'SALESNAME'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwBrowseBRANCHCODE: TcxGridDBBandedColumn
            Caption = 'Branch Code'
            DataBinding.FieldName = 'BRANCHCODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwBrowseBRANCHNAME: TcxGridDBBandedColumn
            Caption = 'Branch Name'
            DataBinding.FieldName = 'BRANCHNAME'
            Width = 184
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tabEditor: TcxTabSheet
      inherited lcEditorTop: TdxLayoutControl
        Visible = True
        object btnAction1: TcxButton [0]
          Left = 10
          Top = 10
          Width = 100
          Height = 25
          Action = actEdit
          Default = True
          TabOrder = 0
        end
        object btnAction2: TcxButton [1]
          Left = 116
          Top = 10
          Width = 100
          Height = 25
          Action = actCancelRequest
          TabOrder = 1
        end
        object lcEditorTopItem1: TdxLayoutItem
          Parent = lcEditorTopGroup1
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnAction1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcEditorTopItem2: TdxLayoutItem
          Parent = lcEditorTopGroup1
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnAction2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcEditorTopGroup1: TdxLayoutGroup
          Parent = lcEditorTopGroup_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
      inherited lcEditor: TdxLayoutControl
        inherited grdDataActivityStatus: TcxGrid
          inherited gvwDataActivityStatus: TcxGridDBBandedTableView
            OnFocusedRecordChanged = gvwDataActivityStatusFocusedRecordChanged
          end
        end
      end
    end
  end
  inherited lcTopMenu: TdxLayoutControl
    inherited dbNavBrowse: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited aclWorkflow: TActionList
    object actCancelRequest: TNAction
      Category = 'NActions'
      Caption = 'Cancel Request'
      OnExecute = actCancelRequestExecute
      CheckPermission = False
    end
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsCloseAccountList
  end
  object cdsCloseAccountList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ISALL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACTIVITYID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCloseAccountList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 296
    object cdsCloseAccountListCAID: TIntegerField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCloseAccountListREQCODE: TStringField
      FieldName = 'REQCODE'
      Required = True
    end
    object cdsCloseAccountListREQDATE: TDateField
      FieldName = 'REQDATE'
      Required = True
    end
    object cdsCloseAccountListACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCloseAccountListNOTES: TStringField
      FieldName = 'NOTES'
      Size = 200
    end
    object cdsCloseAccountListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsCloseAccountListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsCloseAccountListACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCloseAccountListACC_STS: TStringField
      FieldName = 'ACC_STS'
      ReadOnly = True
      Size = 1
    end
    object cdsCloseAccountListSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsCloseAccountListSALESNAME: TStringField
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsCloseAccountListBRANCHCODE: TStringField
      FieldName = 'BRANCHCODE'
      ReadOnly = True
    end
    object cdsCloseAccountListBRANCHNAME: TStringField
      FieldName = 'BRANCHNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsAccountCashPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountCashPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 200
    object cdsAccountCashPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountCashPosCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Required = True
      Size = 5
    end
    object cdsAccountCashPosACCRUED_INTEREST: TFloatField
      FieldName = 'ACCRUED_INTEREST'
    end
    object cdsAccountCashPosCASH_ONHAND: TFloatField
      FieldName = 'CASH_ONHAND'
    end
    object cdsAccountCashPosCASH_QQ: TFloatField
      FieldName = 'CASH_QQ'
    end
    object cdsAccountCashPosCASH_SUBACC: TFloatField
      FieldName = 'CASH_SUBACC'
    end
    object cdsAccountCashPosCASH_ONHOLD: TFloatField
      FieldName = 'CASH_ONHOLD'
    end
    object cdsAccountCashPosARAMT: TFloatField
      FieldName = 'ARAMT'
    end
    object cdsAccountCashPosAPAMT: TFloatField
      FieldName = 'APAMT'
    end
    object cdsAccountCashPosCASH_OUTS: TFloatField
      FieldName = 'CASH_OUTS'
    end
    object cdsAccountCashPosBUY_AMT: TFloatField
      FieldName = 'BUY_AMT'
    end
    object cdsAccountCashPosSELL_AMT: TFloatField
      FieldName = 'SELL_AMT'
    end
    object cdsAccountCashPosCASH_WDR: TFloatField
      FieldName = 'CASH_WDR'
    end
    object cdsAccountCashPosCASH_OTHERS: TFloatField
      FieldName = 'CASH_OTHERS'
    end
    object cdsAccountCashPosCASH_BAL: TFloatField
      FieldName = 'CASH_BAL'
    end
  end
  object cdsAccountStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccountStockPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 248
    object cdsAccountStockPosACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountStockPosSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsAccountStockPosAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsAccountStockPosQTY_CORPACT: TFloatField
      FieldName = 'QTY_CORPACT'
    end
    object cdsAccountStockPosQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
    end
    object cdsAccountStockPosQTY_OUTS: TFloatField
      FieldName = 'QTY_OUTS'
    end
    object cdsAccountStockPosQTY_ONHOLD: TFloatField
      FieldName = 'QTY_ONHOLD'
    end
    object cdsAccountStockPosQTY_OVERDUE: TFloatField
      FieldName = 'QTY_OVERDUE'
    end
    object cdsAccountStockPosQTY_DLV: TFloatField
      FieldName = 'QTY_DLV'
    end
    object cdsAccountStockPosQTY_RCV: TFloatField
      FieldName = 'QTY_RCV'
    end
    object cdsAccountStockPosPROFIT_LOSS: TFloatField
      FieldName = 'PROFIT_LOSS'
    end
    object cdsAccountStockPosBUY_VAL: TFloatField
      FieldName = 'BUY_VAL'
    end
    object cdsAccountStockPosSELL_VAL: TFloatField
      FieldName = 'SELL_VAL'
    end
    object cdsAccountStockPosQTY_WARKAT: TFloatField
      FieldName = 'QTY_WARKAT'
    end
    object cdsAccountStockPosSTK_WDR: TFloatField
      FieldName = 'STK_WDR'
    end
    object cdsAccountStockPosBUY_QTY: TFloatField
      FieldName = 'BUY_QTY'
    end
    object cdsAccountStockPosSELL_QTY: TFloatField
      FieldName = 'SELL_QTY'
    end
    object cdsAccountStockPosQTY_VOUCHER: TFloatField
      FieldName = 'QTY_VOUCHER'
    end
    object cdsAccountStockPosQTY_REPO: TFloatField
      FieldName = 'QTY_REPO'
    end
    object cdsAccountStockPosAVGPRICE_FEE: TFloatField
      FieldName = 'AVGPRICE_FEE'
    end
    object cdsAccountStockPosQTY_OLD_DLV: TFloatField
      FieldName = 'QTY_OLD_DLV'
    end
    object cdsAccountStockPosQTY_OLD_RCV: TFloatField
      FieldName = 'QTY_OLD_RCV'
    end
    object cdsAccountStockPosQTY_BAL: TFloatField
      FieldName = 'QTY_BAL'
    end
  end
end
