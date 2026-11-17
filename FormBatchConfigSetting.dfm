inherited frmBatchConfigSetting: TfrmBatchConfigSetting
  Caption = 'Batch Process Configuration'
  ClientWidth = 1036
  ExplicitWidth = 1036
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object grdMaster: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 1036
    Height = 374
    Align = alClient
    TabOrder = 0
    object gvwMaster: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBatchConfig
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterBATCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BATCHID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCAT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAT_CODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCAT_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAT_DESC'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPROCTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCTIME'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterPERIODIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERIODIC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Daily'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Monthly'
            Value = 'M'
          end
          item
            Description = 'Yearly'
            Value = 'Y'
          end>
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPROCDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterAUTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AUTO'
        RepositoryItem = dmGlobal.chkStandard
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterDAYPROCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DAYPROCTYPE'
        Visible = False
        VisibleForCustomization = False
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterREPEAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPEAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBatchGroup
  end
  object aclBatchGroup: TActionList
    Left = 296
    Top = 120
    object actSelectGroup: TNAction
      Category = 'NActions'
      Caption = 'Assign Group to Selected Batch Process'
      OnExecute = actSelectGroupExecute
      CheckPermission = False
    end
  end
  object cdsBatchConfig: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryBatchConfig'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 168
    Top = 192
    object cdsBatchConfigBATCHID: TIntegerField
      FieldName = 'BATCHID'
      Required = True
    end
    object cdsBatchConfigCAT_CODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CAT_CODE'
      Size = 5
    end
    object cdsBatchConfigCAT_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CAT_DESC'
      Size = 100
    end
    object cdsBatchConfigPROCTIME: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Process Time'
      FieldName = 'PROCTIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsBatchConfigPERIODIC: TStringField
      DisplayLabel = 'Periodic Process'
      FieldName = 'PERIODIC'
      Size = 1
    end
    object cdsBatchConfigPROCDATE: TStringField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCDATE'
      Size = 2
    end
    object cdsBatchConfigMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBatchConfigMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBatchConfigAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBatchConfigAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBatchConfigUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBatchConfigUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBatchConfigNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBatchConfigISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBatchConfigID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBatchConfigAUTO: TStringField
      DisplayLabel = 'Auto'
      FieldName = 'AUTO'
      Size = 1
    end
    object cdsBatchConfigDAYPROCTYPE: TStringField
      FieldName = 'DAYPROCTYPE'
      Size = 1
    end
    object cdsBatchConfigREPEAT: TStringField
      DisplayLabel = 'Repeat'
      FieldName = 'REPEAT'
      Size = 1
    end
    object cdsBatchConfigSEQNO: TIntegerField
      FieldName = 'SEQNO'
    end
    object cdsBatchConfigNOTI_TIME: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Notification Time'
      FieldName = 'NOTI_TIME'
      DisplayFormat = 'hh:nn:ss'
    end
    object cdsBatchConfigEMAILTYPE: TStringField
      DisplayLabel = 'Email Type'
      FieldName = 'EMAILTYPE'
      Size = 10
    end
  end
  object dsBatchConfig: TDataSource
    DataSet = cdsBatchConfig
    Left = 272
    Top = 192
  end
  object popGrid: TPopupMenu
    Left = 376
    Top = 192
    object AssignGrouptoSelectedBatchProcess1: TMenuItem
      Action = actSelectGroup
    end
  end
end
