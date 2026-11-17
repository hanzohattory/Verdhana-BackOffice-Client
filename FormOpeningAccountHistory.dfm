inherited frmOpeningAccountHistory: TfrmOpeningAccountHistory
  Caption = 'Opening Account History'
  TextHeight = 13
  inherited pgWorkflow: TcxPageControl
    inherited tabBrowse: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 934
      ExplicitHeight = 512
      inherited grdBrowse: TcxGrid
        inherited gvwBrowse: TcxGridDBBandedTableView
          object gvwBrowseOAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OAID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwBrowseOACODE: TcxGridDBBandedColumn
            Caption = 'Code'
            DataBinding.FieldName = 'OACODE'
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwBrowseCUST_TYPE: TcxGridDBBandedColumn
            Caption = 'Cust Type'
            DataBinding.FieldName = 'CUST_TYPE'
            RepositoryItem = dmGlobal.luCustTYpe
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwBrowseBRANCHID: TcxGridDBBandedColumn
            Caption = 'Branch'
            DataBinding.FieldName = 'BRANCHID'
            RepositoryItem = dmGlobal.luBranch
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwBrowseSALESID: TcxGridDBBandedColumn
            Caption = 'Sales'
            DataBinding.FieldName = 'SALESID'
            RepositoryItem = dmGlobal.luSales
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwBrowseENTNAME: TcxGridDBBandedColumn
            Caption = 'Name'
            DataBinding.FieldName = 'ENTNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwBrowseENTDESC: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'ENTDESC'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwBrowseCREATEDATE: TcxGridDBBandedColumn
            Caption = 'Create Date'
            DataBinding.FieldName = 'CREATEDATE'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwBrowseINVESTORCAT: TcxGridDBBandedColumn
            Caption = 'Investor Category'
            DataBinding.FieldName = 'INVESTORCAT'
            RepositoryItem = dmGlobal.luInvestorCategory
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwBrowseENTACCTYPE: TcxGridDBBandedColumn
            Caption = 'Inv. Type'
            DataBinding.FieldName = 'ENTACCTYPE'
            RepositoryItem = dmGlobal.luLocalForeign
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwBrowseAFFIL: TcxGridDBBandedColumn
            Caption = 'Affiliation'
            DataBinding.FieldName = 'AFFIL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwBrowseASSET_OWNER: TcxGridDBBandedColumn
            Caption = 'Asset Owner'
            DataBinding.FieldName = 'ASSET_OWNER'
            RepositoryItem = dmGlobal.luClientAssetOwner
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwBrowsePRDCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRDCODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwBrowseACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwBrowseEXISTING_CLIENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXISTING_CLIENT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwBrowsePARENT_ACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARENT_ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwBrowseDIRECTSID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIRECTSID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwBrowseKSEI_CLIENT_CODE: TcxGridDBBandedColumn
            Caption = 'KSEI Client Code'
            DataBinding.FieldName = 'KSEI_CLIENT_CODE'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwBrowseREQUEST_SUBREK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REQUEST_SUBREK'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwBrowseLAST_ACTIVITYID: TcxGridDBBandedColumn
            Caption = 'Last Activity'
            DataBinding.FieldName = 'LAST_ACTIVITYID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ACTIVITYID'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPTION'
              end>
            Properties.ListSource = dsWorkflowActivity
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwBrowseLAST_ACTIVITY_USER: TcxGridDBBandedColumn
            Caption = 'Last Activity User'
            DataBinding.FieldName = 'LAST_ACTIVITY_USER'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwBrowseLAST_ACTIVITY_DATE: TcxGridDBBandedColumn
            Caption = 'Last Activity Date'
            DataBinding.FieldName = 'LAST_ACTIVITY_DATE'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
        end
      end
      inherited lcBrowseTop: TdxLayoutControl
        inherited cbWorkflowActivity: TcxImageComboBox
          Left = 122
          ExplicitLeft = 122
        end
        inherited btnViewData: TcxButton
          Left = 428
          ExplicitLeft = 428
        end
        inherited lcBrowseTopItem1: TdxLayoutItem
          CaptionOptions.Text = 'Last Workflow Activity'
        end
      end
    end
    inherited tabEditor: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 934
      ExplicitHeight = 512
      inherited lcEditor: TdxLayoutControl
        inherited grdDataActivityStatus: TcxGrid
          Width = 523
          Height = 300
          ExplicitWidth = 523
          ExplicitHeight = 300
          inherited gvwDataActivityStatus: TcxGridDBBandedTableView
            PopupMenu = nil
          end
        end
        inherited grdWorkflowDataNotes: TcxGrid
          Width = 339
          Height = 297
          ExplicitWidth = 339
          ExplicitHeight = 297
        end
        inherited lcEditorItem1: TdxLayoutItem
          ControlOptions.OriginalWidth = 523
        end
      end
    end
  end
  inherited lcTopMenu: TdxLayoutControl
    inherited dbNavBrowse: TDBNavigator
      Hints.Strings = ()
    end
    inherited pnlCentre: TPanel
      TabOrder = 0
      inherited btnPrint: TcxButton
        Visible = True
      end
    end
    inherited pnlLeft: TPanel
      TabOrder = 1
      inherited btnCreate: TcxButton
        Visible = False
      end
    end
    inherited lcTopMenuItem1: TdxLayoutItem
      Index = 0
    end
    inherited lcTopMenuItem4: TdxLayoutItem
      Index = 1
    end
  end
  inherited aclWorkflow: TActionList
    object actPrintWelcomeLetter: TNAction
      Category = 'NActions'
      Caption = 'Welcome Letter'
      OnExecute = actPrintWelcomeLetterExecute
      CheckPermission = False
    end
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsOAHistoryList
  end
  inherited popPrint: TPopupMenu
    object WelcomeLetter1: TMenuItem
      Action = actPrintWelcomeLetter
    end
  end
  object cdsOAHistoryList: TNClientDataset [18]
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
    ProviderName = 'dspN_dmClientManagement_qryOAHistoryList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 280
    object cdsOAHistoryListOAID: TIntegerField
      FieldName = 'OAID'
      Required = True
    end
    object cdsOAHistoryListOACODE: TStringField
      FieldName = 'OACODE'
      Required = True
    end
    object cdsOAHistoryListCUST_TYPE: TIntegerField
      FieldName = 'CUST_TYPE'
      Required = True
    end
    object cdsOAHistoryListBRANCHID: TLargeintField
      FieldName = 'BRANCHID'
      Required = True
    end
    object cdsOAHistoryListSALESID: TLargeintField
      FieldName = 'SALESID'
      Required = True
    end
    object cdsOAHistoryListENTNAME: TStringField
      FieldName = 'ENTNAME'
      Required = True
      Size = 200
    end
    object cdsOAHistoryListENTDESC: TStringField
      FieldName = 'ENTDESC'
      Size = 100
    end
    object cdsOAHistoryListCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsOAHistoryListINVESTORCAT: TStringField
      FieldName = 'INVESTORCAT'
      Size = 1
    end
    object cdsOAHistoryListENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      Size = 1
    end
    object cdsOAHistoryListAFFIL: TBooleanField
      FieldName = 'AFFIL'
      Required = True
    end
    object cdsOAHistoryListASSET_OWNER: TStringField
      FieldName = 'ASSET_OWNER'
      Size = 1
    end
    object cdsOAHistoryListPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Size = 10
    end
    object cdsOAHistoryListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsOAHistoryListEXISTING_CLIENT: TStringField
      FieldName = 'EXISTING_CLIENT'
      Size = 1
    end
    object cdsOAHistoryListPARENT_ACCID: TIntegerField
      FieldName = 'PARENT_ACCID'
    end
    object cdsOAHistoryListDIRECTSID: TStringField
      FieldName = 'DIRECTSID'
      Size = 15
    end
    object cdsOAHistoryListKSEI_CLIENT_CODE: TStringField
      FieldName = 'KSEI_CLIENT_CODE'
      Size = 4
    end
    object cdsOAHistoryListREQUEST_SUBREK: TStringField
      FieldName = 'REQUEST_SUBREK'
      Size = 1
    end
    object cdsOAHistoryListLAST_ACTIVITYID: TIntegerField
      FieldName = 'LAST_ACTIVITYID'
      ReadOnly = True
    end
    object cdsOAHistoryListLAST_ACTIVITY_USER: TStringField
      FieldName = 'LAST_ACTIVITY_USER'
      ReadOnly = True
    end
    object cdsOAHistoryListLAST_ACTIVITY_DATE: TDateTimeField
      FieldName = 'LAST_ACTIVITY_DATE'
      ReadOnly = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
  end
  object dsWorkflowActivity: TDataSource [19]
    DataSet = cdsWorkflowActivity
    Left = 520
    Top = 224
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'CSO\WelcomeMessage.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'OAID'
        ParamType = ptInput
      end>
  end
end
