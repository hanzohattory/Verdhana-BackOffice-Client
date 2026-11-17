inherited frmBatchConfigs: TfrmBatchConfigs
  Caption = 'Batch Process Monitoring'
  ClientHeight = 523
  ClientWidth = 1062
  ExplicitWidth = 1062
  ExplicitHeight = 523
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1062
    Height = 46
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxTextEdit
      Left = 97
      Top = 10
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 102
    end
    object cmbPeriodic: TcxImageComboBox
      Left = 543
      Top = 10
      EditValue = 'D'
      Properties.Items = <
        item
          Description = 'Day'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Month'
          Value = 'M'
        end
        item
          Description = 'Year'
          Value = 'Y'
        end>
      Properties.OnCloseUp = cmbPeriodicPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 85
    end
    object cxButton2: TcxButton
      Left = 796
      Top = 10
      Width = 90
      Height = 25
      Action = actProcessBatch
      TabOrder = 4
    end
    object cmbAction: TcxImageComboBox
      Left = 669
      Top = 10
      EditValue = 'B'
      Properties.Items = <
        item
          Description = 'Batching'
          ImageIndex = 0
          Value = 'B'
        end
        item
          Description = 'Next Trading Date'
          Value = 'N'
        end>
      Properties.OnCloseUp = cmbActionPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object dtNextTransDate: TcxTextEdit
      Left = 318
      Top = 10
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Filtering by periodic'
      Control = cmbPeriodic
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Action'
      Control = cmbAction
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Next Transaction Date'
      Control = dtNextTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object grdBatchConfigs: TcxGrid [1]
    Left = 0
    Top = 46
    Width = 1062
    Height = 477
    Align = alClient
    TabOrder = 1
    object gvwBatchConfigs: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBatchConfigs
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwBatchConfigsBATCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BATCHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBatchConfigsCAT_CODE: TcxGridDBBandedColumn
        Caption = 'Category Code'
        DataBinding.FieldName = 'CAT_CODE'
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBatchConfigsCAT_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CAT_DESC'
        Width = 440
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBatchConfigsPROCTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCTIME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBatchConfigsPERIODIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERIODIC'
        Visible = False
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBatchConfigsPROCDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCDATE'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBatchConfigsAUTO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AUTO'
        Visible = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBatchConfigsDAYPROCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DAYPROCTYPE'
        Visible = False
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBatchConfigsREPEAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPEAT'
        Visible = False
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBatchConfigsSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBatchConfigsNOTI_TIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTI_TIME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBatchConfigsEMAILTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAILTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBatchConfigsSCRIPT_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SCRIPT_TYPE'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBatchConfigsEXEC_SCRIPT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXEC_SCRIPT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBatchConfigsSCRIP_PARAM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SCRIP_PARAM'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBatchConfigsSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentHorz = taCenter
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object gvwBatchConfigsLAST_STAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'LAST_STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Success'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'Partial'
            Value = 'P'
          end
          item
            Description = 'Fail'
            Value = 'F'
          end
          item
            Description = '-'
            Value = 'R'
          end>
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBatchConfigsMessage: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Message'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
    object gvwBatchProcHis: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBatchProcHis
      DataController.DetailKeyFieldNames = 'BATCHID'
      DataController.KeyFieldNames = 'BATCHID'
      DataController.MasterKeyFieldNames = 'BATCHID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwBatchProcHisBATCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BATCHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBatchProcHisPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBatchProcHisSTARTTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STARTTIME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBatchProcHisENDTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENDTIME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBatchProcHisSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Success'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'Fail'
            Value = 'F'
          end
          item
            Description = '-'
            Value = 'N'
          end>
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBatchProcHisSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBatchProcHisOUTPUT_MESSAGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTPUT_MESSAGE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object gvwBatchConfigHis: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = dsBatchProcHis
      DataController.DetailKeyFieldNames = 'BATCHID'
      DataController.KeyFieldNames = 'BATCHID'
      DataController.MasterKeyFieldNames = 'BATCHID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
      object gvwBatchConfigHisBATCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BATCHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisSTARTTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STARTTIME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisENDTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENDTIME'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Fail'
            ImageIndex = 0
            Value = 'F'
          end
          item
            Description = 'Success'
            Value = 'S'
          end
          item
            Description = '-'
            Value = 'N'
          end>
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBatchConfigHisOUTPUT_MESSAGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTPUT_MESSAGE'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object glvBatchConfigs: TcxGridLevel
      GridView = gvwBatchConfigs
      object glvBatchConfigHis: TcxGridLevel
        GridView = gvwBatchConfigHis
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 39
    Top = 457
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList
    Left = 38
    Top = 412
  end
  object ActionList: TActionList
    Left = 36
    Top = 366
    object actProcessBatch: TNAction
      Category = 'NActions'
      Caption = 'Process'
      OnExecute = actProcessBatchExecute
      CheckPermission = False
    end
  end
  object cdsBatchConfigs: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PERIODIC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBatchConfigList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 39
    Top = 321
    object cdsBatchConfigsBATCHID: TIntegerField
      FieldName = 'BATCHID'
      Required = True
    end
    object cdsBatchConfigsCAT_CODE: TStringField
      FieldName = 'CAT_CODE'
      Size = 5
    end
    object cdsBatchConfigsCAT_DESC: TStringField
      FieldName = 'CAT_DESC'
      Size = 100
    end
    object cdsBatchConfigsPROCTIME: TDateTimeField
      FieldName = 'PROCTIME'
    end
    object cdsBatchConfigsPERIODIC: TStringField
      FieldName = 'PERIODIC'
      Size = 1
    end
    object cdsBatchConfigsPROCDATE: TStringField
      FieldName = 'PROCDATE'
      Size = 2
    end
    object cdsBatchConfigsMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBatchConfigsMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBatchConfigsAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBatchConfigsAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBatchConfigsUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBatchConfigsUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBatchConfigsNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBatchConfigsISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBatchConfigsID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBatchConfigsAUTO: TStringField
      FieldName = 'AUTO'
      Size = 1
    end
    object cdsBatchConfigsDAYPROCTYPE: TStringField
      FieldName = 'DAYPROCTYPE'
      Size = 1
    end
    object cdsBatchConfigsREPEAT: TStringField
      FieldName = 'REPEAT'
      Size = 1
    end
    object cdsBatchConfigsSEQNO: TIntegerField
      FieldName = 'SEQNO'
    end
    object cdsBatchConfigsNOTI_TIME: TDateTimeField
      FieldName = 'NOTI_TIME'
    end
    object cdsBatchConfigsEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Size = 10
    end
    object cdsBatchConfigsSCRIPT_TYPE: TStringField
      FieldName = 'SCRIPT_TYPE'
      Size = 10
    end
    object cdsBatchConfigsEXEC_SCRIPT: TStringField
      FieldName = 'EXEC_SCRIPT'
      Size = 255
    end
    object cdsBatchConfigsSCRIP_PARAM: TStringField
      FieldName = 'SCRIP_PARAM'
      Size = 500
    end
    object cdsBatchConfigsSTAT: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'STAT'
    end
    object cdsBatchConfigsLAST_STAT: TStringField
      DisplayLabel = 'Process Status'
      FieldKind = fkInternalCalc
      FieldName = 'LAST_STAT'
      Size = 30
    end
    object cdsBatchConfigsMessage: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Message'
      Size = 200
    end
  end
  object dsBatchConfigs: TDataSource
    DataSet = cdsBatchConfigs
    Left = 39
    Top = 276
  end
  object cdsBatchProcHis: TClientDataSet
    Aggregates = <>
    ObjectView = False
    Params = <
      item
        DataType = ftDate
        Name = 'PROCESSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryBatchProcHis'
    RemoteServer = dmGlobal.dspConnection
    Left = 132
    Top = 321
    object cdsBatchProcHisBATCHID: TLargeintField
      FieldName = 'BATCHID'
      Required = True
    end
    object cdsBatchProcHisPROCESSDATE: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBatchProcHisSTARTTIME: TDateTimeField
      DisplayLabel = 'Start Time'
      FieldName = 'STARTTIME'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBatchProcHisENDTIME: TDateTimeField
      DisplayLabel = 'End Time'
      FieldName = 'ENDTIME'
      DisplayFormat = 'hh:nn:ss.zzz'
    end
    object cdsBatchProcHisSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsBatchProcHisSEQNO: TLargeintField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsBatchProcHisOUTPUT_MESSAGE: TStringField
      DisplayLabel = 'Reason'
      FieldName = 'OUTPUT_MESSAGE'
      Size = 150
    end
  end
  object dsBatchProcHis: TDataSource
    DataSet = cdsBatchProcHis
    Left = 132
    Top = 276
  end
  object cdsBacthStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'PROCESSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryStatusCount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 132
    Top = 366
    object cdsBacthStatus__COLUMN1: TIntegerField
      FieldName = '__COLUMN1'
      ReadOnly = True
    end
  end
  object cdsBacthBatchStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'PROCESSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryStatusBatchCount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 132
    Top = 422
    object IntegerField1: TIntegerField
      FieldName = '__COLUMN1'
      ReadOnly = True
    end
  end
end
