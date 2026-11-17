inherited frmApprovalRequest: TfrmApprovalRequest
  Caption = 'List of Approval Request'
  ClientHeight = 550
  ClientWidth = 991
  ExplicitWidth = 991
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  object pcApproval: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 991
    Height = 550
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabModule
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 546
    ClientRectLeft = 4
    ClientRectRight = 987
    ClientRectTop = 4
    object tabModule: TcxTabSheet
      Caption = 'Module Approval'
      ImageIndex = 0
      object grdMaster: TcxGrid
        Left = 0
        Top = 0
        Width = 983
        Height = 542
        Align = alClient
        TabOrder = 0
        object gvwMaster: TcxGridDBBandedTableView
          PopupMenu = popApproval
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsApprovalList
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
          object gvwMasterMODULE: TcxGridDBBandedColumn
            Caption = 'Module'
            DataBinding.FieldName = 'MODULE'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwMasterKEYID: TcxGridDBBandedColumn
            Caption = 'Key'
            DataBinding.FieldName = 'KEYID'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwMasterSTATE: TcxGridDBBandedColumn
            Caption = 'State'
            DataBinding.FieldName = 'STATE'
            RepositoryItem = dmGlobal.luInsertUpdateDelete
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwMasterNOTES: TcxGridDBBandedColumn
            Caption = 'Notes'
            DataBinding.FieldName = 'NOTES'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwMasterREQDA: TcxGridDBBandedColumn
            Caption = 'Request Date'
            DataBinding.FieldName = 'REQDA'
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwMasterREQUI: TcxGridDBBandedColumn
            Caption = 'Request User'
            DataBinding.FieldName = 'REQUI'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwMasterFORM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FORM'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwMasterDEFAULTFORM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEFAULTFORM'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
            Caption = 'Module Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object grdMasterLevel1: TcxGridLevel
          GridView = gvwMaster
        end
      end
    end
    object tabFutureChanges: TcxTabSheet
      Caption = 'Future Change Request'
      ImageIndex = 1
    end
  end
  inherited popDocking: TPopupMenu
    Left = 392
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclApproval
  end
  object aclApproval: TActionList
    Left = 296
    Top = 112
    object actApprove: TNAction
      Category = 'NActions'
      Caption = 'Approve'
      OnExecute = actApproveExecute
      CheckPermission = False
    end
    object actReject: TNAction
      Category = 'NActions'
      Caption = 'Reject'
      OnExecute = actRejectExecute
      CheckPermission = False
    end
    object actReModify: TNAction
      Category = 'NActions'
      Caption = 'Request to ReModify'
      OnExecute = actReModifyExecute
      CheckPermission = False
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
  object saBrowse: TcxStyleRepository
    Left = 392
    Top = 112
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object cdsApprovalList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryApprovalList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 160
    object cdsApprovalListMODULE: TStringField
      FieldName = 'MODULE'
      Required = True
      Size = 50
    end
    object cdsApprovalListKEYID: TStringField
      FieldName = 'KEYID'
      Required = True
      Size = 150
    end
    object cdsApprovalListFORM: TStringField
      FieldName = 'FORM'
      Required = True
      Size = 50
    end
    object cdsApprovalListSTATE: TStringField
      FieldName = 'STATE'
      Required = True
      Size = 1
    end
    object cdsApprovalListNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsApprovalListREQDA: TDateTimeField
      FieldName = 'REQDA'
      Required = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsApprovalListREQUI: TStringField
      FieldName = 'REQUI'
      Required = True
      Size = 30
    end
    object cdsApprovalListDEFAULTFORM: TStringField
      FieldKind = fkLookup
      FieldName = 'DEFAULTFORM'
      LookupDataSet = dmGlobal.cdsModule
      LookupKeyFields = 'MODULE'
      LookupResultField = 'DEFAULTFORM'
      KeyFields = 'MODULE'
      Size = 150
      Lookup = True
    end
    object cdsApprovalListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Size = 150
    end
  end
  object dsApprovalList: TDataSource
    DataSet = cdsApprovalList
    Left = 296
    Top = 208
  end
  object popApproval: TPopupMenu
    Left = 392
    Top = 160
    object ViewData1: TMenuItem
      Action = actViewData
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Approve1: TMenuItem
      Action = actApprove
    end
    object Reject1: TMenuItem
      Action = actReject
    end
    object RequesttoReModify1: TMenuItem
      Action = actReModify
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Action = actRefresh
    end
  end
end
