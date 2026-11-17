inherited frmUserMonitoring: TfrmUserMonitoring
  Caption = 'User Monitoring'
  ClientHeight = 409
  ClientWidth = 779
  OnDestroy = FormDestroy
  ExplicitWidth = 779
  ExplicitHeight = 409
  TextHeight = 13
  object grdMaster: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 779
    Height = 409
    Align = alClient
    TabOrder = 0
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popBrowse
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsUserMonitoring
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'List Of All Connected User'
        end>
      object gvwMasterSESSION: TcxGridDBBandedColumn
        Caption = 'Session'
        DataBinding.FieldName = 'SESSION'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterIPADDRESS: TcxGridDBBandedColumn
        Caption = 'IP Address'
        DataBinding.FieldName = 'IPADDRESS'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCLIENTPORT: TcxGridDBBandedColumn
        Caption = 'Client Port'
        DataBinding.FieldName = 'CLIENTPORT'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPROTOCOL: TcxGridDBBandedColumn
        Caption = 'Protocol'
        DataBinding.FieldName = 'PROTOCOL'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAPPNAME: TcxGridDBBandedColumn
        Caption = 'Application Name'
        DataBinding.FieldName = 'APPNAME'
        Width = 196
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterUSERID: TcxGridDBBandedColumn
        Caption = 'User'
        DataBinding.FieldName = 'USERID'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterISMYSESSION: TcxGridDBBandedColumn
        Caption = 'Own'
        DataBinding.FieldName = 'ISMYSESSION'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCOMPNAME: TcxGridDBBandedColumn
        Caption = 'Computer Name'
        DataBinding.FieldName = 'COMPNAME'
        Width = 158
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTARTDATE: TcxGridDBBandedColumn
        Caption = 'Start Date'
        DataBinding.FieldName = 'STARTDATE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterLASTACTIVITY: TcxGridDBBandedColumn
        Caption = 'Last Activity'
        DataBinding.FieldName = 'LASTACTIVITY'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclUserMonitoring
  end
  object aclUserMonitoring: TActionList
    Left = 200
    Top = 56
    object actCloseSession: TNAction
      Category = 'NActions'
      Caption = 'Close Session'
      OnExecute = actCloseSessionExecute
      CheckPermission = False
    end
    object actRefresh: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
      CheckPermission = False
    end
  end
  object cdsUserMonitoring: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 144
    object cdsUserMonitoringSESSION: TStringField
      FieldName = 'SESSION'
    end
    object cdsUserMonitoringIPADDRESS: TStringField
      FieldName = 'IPADDRESS'
    end
    object cdsUserMonitoringCLIENTPORT: TStringField
      FieldName = 'CLIENTPORT'
    end
    object cdsUserMonitoringPROTOCOL: TStringField
      FieldName = 'PROTOCOL'
    end
    object cdsUserMonitoringAPPNAME: TStringField
      FieldName = 'APPNAME'
      Size = 50
    end
    object cdsUserMonitoringUSERID: TStringField
      FieldName = 'USERID'
      Size = 30
    end
    object cdsUserMonitoringISMYSESSION: TBooleanField
      FieldName = 'ISMYSESSION'
    end
    object cdsUserMonitoringCOMPNAME: TStringField
      FieldName = 'COMPNAME'
      Size = 50
    end
    object cdsUserMonitoringCLIENTID: TStringField
      FieldName = 'CLIENTID'
      Size = 50
    end
    object cdsUserMonitoringCALLBACKID: TStringField
      FieldName = 'CALLBACKID'
      Size = 50
    end
    object cdsUserMonitoringSTARTDATE: TStringField
      FieldName = 'STARTDATE'
      Size = 15
    end
    object cdsUserMonitoringLASTACTIVITY: TStringField
      FieldName = 'LASTACTIVITY'
      Size = 15
    end
  end
  object dsUserMonitoring: TDataSource
    DataSet = cdsUserMonitoring
    Left = 408
    Top = 144
  end
  object popBrowse: TPopupMenu
    Left = 184
    Top = 152
    object CloseSession1: TMenuItem
      Action = actCloseSession
    end
    object Refresh1: TMenuItem
      Action = actRefresh
    end
  end
end
