inherited frmCorpactExerciseList: TfrmCorpactExerciseList
  Caption = 'Corporate Action Exercise'
  ClientWidth = 1333
  ExplicitWidth = 1333
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1333
    ExplicitWidth = 1333
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Created'
          Options.HoldOwnColumnsOnly = True
          Styles.Background = dmGlobal.DisableColor
        end
        item
          Caption = 'Exercised'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Distributed'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Reversed'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Draft'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Exercised'
            Value = '1'
          end
          item
            Description = 'Distributed'
            Value = '2'
          end
          item
            Description = 'Canceled'
            Value = '3'
          end
          item
            Description = 'Reversed'
            Value = '4'
          end>
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterEXER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterEXER_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_NO'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Width = 80
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
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterrightID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rightID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterrightCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rightCode'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterrightName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rightName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISE_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISE_QTY'
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterexerPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'exerPrice'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISE_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISE_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterENTERED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTERED_DATE'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterENTERED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTERED_SYSTEMDATE'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterENTERED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTERED_UI'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISED_DATE'
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISED_SYSTEMDATE'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISED_UI'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterDISTRIBUTED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTRIBUTED_DATE'
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDISTRIBUTED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTRIBUTED_SYSTEMDATE'
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDISTRIBUTED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTRIBUTED_UI'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_DATE'
        Width = 90
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_SYSTEMDATE'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCANCELED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELED_UI'
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_DATE'
        Width = 90
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_SYSTEMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_SYSTEMDATE'
        Width = 120
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterREVERSED_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_UI'
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actOpen'
        Permission = 'Corporate Action Exercise Viewer'
      end
      item
        ActionName = 'actCorpactProcess'
        Permission = 'Corporate Action Exercise Processor'
      end
      item
        ActionName = 'actDistributionExercise'
        Permission = 'Corporate Action Exercise Distributor'
      end
      item
        ActionName = 'actExerReverse'
        Permission = 'Corporate Action Exercise Reverser'
      end
      item
        ActionName = 'actExerCancel'
        Permission = 'Corporate Action Exercise Canceler'
      end
      item
        ActionName = 'actUploadExcel'
        Permission = 'Corporate Action Exercise Upload'
      end>
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
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    object UploadFromExcelFile1: TMenuItem [10]
      Action = actUploadExcel
    end
    object N1: TMenuItem [11]
      Caption = '-'
    end
    object ExerciseProcess1: TMenuItem [12]
      Action = actCorpactProcess
    end
    object DistributionExercise1: TMenuItem [13]
      Action = actDistributionExercise
    end
    object ExerciseCancel1: TMenuItem [14]
      Action = actExerCancel
    end
    object ExerciseReverse1: TMenuItem [15]
      Action = actExerReverse
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCorpactExerciseList
  end
  inherited aclEditor: TActionList
    inherited actReject: TNAction [12]
    end
    inherited actCustomizeFilter: TNAction [13]
    end
    inherited actViewAuditLog: TNAction [14]
    end
    inherited actViewAuditLogForm: TNAction [15]
    end
    inherited actSaveGridExcel: TNAction [16]
    end
    object actCorpactProcess: TNAction [17]
      Category = 'NActions'
      Caption = 'Exercise Process'
      OnExecute = actCorpactProcessExecute
      CheckPermission = True
    end
    inherited actApprove: TNAction [18]
    end
    object actGenerateWT: TNAction
      Category = 'NActions'
      Caption = 'Generate Wire Transfer'
      CheckPermission = False
    end
    object actRejectFromFront: TNAction
      Category = 'NActions'
      Caption = 'Reject Exercise From Front'
      CheckPermission = False
    end
    object actExerCancel: TNAction
      Category = 'NActions'
      Caption = 'Exercise Cancel'
      OnExecute = actExerCancelExecute
      CheckPermission = True
    end
    object actExerReverse: TNAction
      Category = 'NActions'
      Caption = 'Exercise Reverse'
      OnExecute = actExerReverseExecute
      CheckPermission = True
    end
    object actUploadExcel: TNAction
      Category = 'NActions'
      Caption = 'Upload From Excel File'
      OnExecute = actUploadExcelExecute
      CheckPermission = True
    end
    object actDistributionExercise: TNAction
      Category = 'NActions'
      Caption = 'Exercise Distribution'
      OnExecute = actDistributionExerciseExecute
      CheckPermission = True
    end
    object actViewTransaction: TNAction
      Category = 'NActions'
      Caption = 'View Transaction'
      OnExecute = actViewTransactionExecute
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
          Visible = True
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'chStatus'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
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
    object dtStart: TcxBarEditItem
      Caption = 'Value Date'
      Category = 0
      Hint = 'Value Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object edPosted: TcxBarEditItem
      Caption = 'Posted'
      Category = 0
      Hint = 'Posted'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Not Posted'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Posted'
          Value = '1'
        end
        item
          Description = 'All'
          Value = '2'
        end>
    end
    object edGenerateWT: TcxBarEditItem
      Caption = 'Generate Wire Transfer'
      Category = 0
      Hint = 'Generate Wire Transfer'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Not Generated'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Generated'
          Value = '1'
        end
        item
          Description = 'All'
          Value = '2'
        end>
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Check All'
      Category = 0
      Hint = 'Check All'
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Uncheck All'
      Category = 0
      Hint = 'Uncheck All'
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object chStatus: TcxBarEditItem
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckGroupProperties'
      Properties.Columns = 5
      Properties.EditValueFormat = cvfStatesString
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Draft'
        end
        item
          Caption = 'Exercised'
        end
        item
          Caption = 'Distributed'
        end
        item
          Caption = 'Canceled'
        end
        item
          Caption = 'Reversed'
        end>
    end
  end
  object cdsCorpactExerciseList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'startDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'endDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'exerStatus'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpact_Exercise_List'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsCorpactExerciseListCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactExerciseListEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsCorpactExerciseListEXER_NO: TStringField
      DisplayLabel = 'Exercise No'
      FieldName = 'EXER_NO'
      Required = True
    end
    object cdsCorpactExerciseListVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpactExerciseListACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCorpactExerciseListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCorpactExerciseListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
    end
    object cdsCorpactExerciseListSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
      ReadOnly = True
    end
    object cdsCorpactExerciseListSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsCorpactExerciseListrightID: TIntegerField
      FieldName = 'rightID'
      ReadOnly = True
    end
    object cdsCorpactExerciseListrightCode: TStringField
      DisplayLabel = 'Right Code'
      FieldName = 'rightCode'
      ReadOnly = True
    end
    object cdsCorpactExerciseListrightName: TStringField
      DisplayLabel = 'Right Name'
      FieldName = 'rightName'
      ReadOnly = True
      Size = 100
    end
    object cdsCorpactExerciseListEXERCISE_QTY: TFloatField
      DisplayLabel = 'Exercise Qty'
      FieldName = 'EXERCISE_QTY'
      DisplayFormat = '#,##0'
    end
    object cdsCorpactExerciseListexerPrice: TFloatField
      DisplayLabel = 'Exercise Price'
      FieldName = 'exerPrice'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsCorpactExerciseListEXERCISE_AMT: TFloatField
      DisplayLabel = 'Exercise Amount'
      FieldName = 'EXERCISE_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsCorpactExerciseListENTERED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'ENTERED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCorpactExerciseListENTERED_SYSTEMDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'ENTERED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListENTERED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'ENTERED_UI'
      Size = 30
    end
    object cdsCorpactExerciseListEXERCISED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'EXERCISED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCorpactExerciseListEXERCISED_SYSTEMDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'EXERCISED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListEXERCISED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'EXERCISED_UI'
      Size = 30
    end
    object cdsCorpactExerciseListDISTRIBUTED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'DISTRIBUTED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCorpactExerciseListDISTRIBUTED_SYSTEMDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'DISTRIBUTED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListDISTRIBUTED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'DISTRIBUTED_UI'
      Size = 30
    end
    object cdsCorpactExerciseListCANCELED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'CANCELED_DATE'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsCorpactExerciseListCANCELED_SYSTEMDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CANCELED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListCANCELED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCorpactExerciseListSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpactExerciseListREVERSED_DATE: TDateTimeField
      DisplayLabel = 'Timestamp'
      FieldName = 'REVERSED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListREVERSED_SYSTEMDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'REVERSED_SYSTEMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactExerciseListREVERSED_UI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsCorpactExerciseListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsCorpactExerciseListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xls|Excel File|*.xlsx'
    Left = 533
    Top = 224
  end
  object cdsCorpactExercise: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryCorpact_Exercise'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 336
    object cdsCorpactExerciseCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactExerciseEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsCorpactExerciseACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCorpactExerciseEXER_NO: TStringField
      FieldName = 'EXER_NO'
      Required = True
    end
    object cdsCorpactExerciseVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsCorpactExerciseCA_QTY: TFloatField
      FieldName = 'CA_QTY'
    end
    object cdsCorpactExerciseEXERCISE_QTY: TFloatField
      FieldName = 'EXERCISE_QTY'
    end
    object cdsCorpactExerciseEXERCISE_AMT: TFloatField
      FieldName = 'EXERCISE_AMT'
    end
    object cdsCorpactExerciseEXERCISE_PRICE: TFloatField
      FieldName = 'EXERCISE_PRICE'
    end
    object cdsCorpactExerciseREF_EXER_ID: TStringField
      FieldName = 'REF_EXER_ID'
      Size = 30
    end
    object cdsCorpactExerciseSUBREK001: TStringField
      FieldName = 'SUBREK001'
      Size = 30
    end
    object cdsCorpactExerciseSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpactExerciseGENERATE_WT_SYSTEMDATE: TDateField
      FieldName = 'GENERATE_WT_SYSTEMDATE'
    end
    object cdsCorpactExerciseGENERATE_WT_DATE: TDateTimeField
      FieldName = 'GENERATE_WT_DATE'
    end
    object cdsCorpactExerciseGENERATE_WT_USER: TStringField
      FieldName = 'GENERATE_WT_USER'
      Size = 30
    end
    object cdsCorpactExerciseCOID: TLargeintField
      FieldName = 'COID'
    end
    object cdsCorpactExerciseKPEI_COID: TLargeintField
      FieldName = 'KPEI_COID'
    end
    object cdsCorpactExerciseLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCorpactExerciseLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsCorpactExerciseSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsCorpactExerciseSTOCKTRANSID_REVERSED: TLargeintField
      FieldName = 'STOCKTRANSID_REVERSED'
    end
    object cdsCorpactExerciseENTERED_DATE: TDateTimeField
      FieldName = 'ENTERED_DATE'
    end
    object cdsCorpactExerciseENTERED_SYSTEMDATE: TDateTimeField
      FieldName = 'ENTERED_SYSTEMDATE'
    end
    object cdsCorpactExerciseENTERED_UI: TStringField
      FieldName = 'ENTERED_UI'
      Size = 30
    end
    object cdsCorpactExerciseEXERCISED_DATE: TDateTimeField
      FieldName = 'EXERCISED_DATE'
    end
    object cdsCorpactExerciseEXERCISED_SYSTEMDATE: TDateTimeField
      FieldName = 'EXERCISED_SYSTEMDATE'
    end
    object cdsCorpactExerciseEXERCISED_UI: TStringField
      FieldName = 'EXERCISED_UI'
      Size = 30
    end
    object cdsCorpactExerciseDISTRIBUTED_DATE: TDateTimeField
      FieldName = 'DISTRIBUTED_DATE'
    end
    object cdsCorpactExerciseDISTRIBUTED_SYSTEMDATE: TDateTimeField
      FieldName = 'DISTRIBUTED_SYSTEMDATE'
    end
    object cdsCorpactExerciseDISTRIBUTED_UI: TStringField
      FieldName = 'DISTRIBUTED_UI'
      Size = 30
    end
    object cdsCorpactExerciseCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsCorpactExerciseCANCEL_REASON: TStringField
      FieldName = 'CANCEL_REASON'
      Size = 500
    end
    object cdsCorpactExerciseCANCELED_SYSTEMDATE: TDateTimeField
      FieldName = 'CANCELED_SYSTEMDATE'
    end
    object cdsCorpactExerciseCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCorpactExerciseREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsCorpactExerciseREVERSED_SYSTEMDATE: TDateTimeField
      FieldName = 'REVERSED_SYSTEMDATE'
    end
    object cdsCorpactExerciseREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsCorpactExerciseMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpactExerciseMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpactExerciseAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpactExerciseAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpactExerciseUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpactExerciseUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpactExerciseNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpactExerciseISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpactExerciseID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCorpactExerciseAnno: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'SYSTEMDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STOCKCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpact_Exercise_Anno'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 384
    object cdsCorpactExerciseAnnoCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactExerciseAnnoCANO: TStringField
      FieldName = 'CANO'
    end
    object cdsCorpactExerciseAnnoCATYPE: TStringField
      FieldName = 'CATYPE'
      Size = 1
    end
    object cdsCorpactExerciseAnnoSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCorpactExerciseAnnoSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpactExerciseAnnoSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCorpactExerciseAnnoISINCODE: TStringField
      FieldName = 'ISINCODE'
    end
    object cdsCorpactExerciseAnnoBASE_STK_RATIO: TFloatField
      FieldName = 'BASE_STK_RATIO'
    end
    object cdsCorpactExerciseAnnoGET_STK_RT: TFloatField
      FieldName = 'GET_STK_RT'
    end
    object cdsCorpactExerciseAnnoBASE_CASH_RATIO: TFloatField
      FieldName = 'BASE_CASH_RATIO'
    end
    object cdsCorpactExerciseAnnoGET_CASH_RATIO: TFloatField
      FieldName = 'GET_CASH_RATIO'
    end
    object cdsCorpactExerciseAnnoBASE_QTY_PRICE_RATIO: TFloatField
      FieldName = 'BASE_QTY_PRICE_RATIO'
    end
    object cdsCorpactExerciseAnnoEXER_PRICE: TFloatField
      FieldName = 'EXER_PRICE'
    end
    object cdsCorpactExerciseAnnoWR_QTY_PRICE_RATIO: TFloatField
      FieldName = 'WR_QTY_PRICE_RATIO'
    end
    object cdsCorpactExerciseAnnoWR_EXER_PRICE: TFloatField
      FieldName = 'WR_EXER_PRICE'
    end
    object cdsCorpactExerciseAnnoRND_CALC_MODE: TStringField
      FieldName = 'RND_CALC_MODE'
      Size = 1
    end
    object cdsCorpactExerciseAnnoLOCAL_TAX: TFloatField
      FieldName = 'LOCAL_TAX'
    end
    object cdsCorpactExerciseAnnoFOR_TAX: TFloatField
      FieldName = 'FOR_TAX'
    end
    object cdsCorpactExerciseAnnoRIGHTID: TIntegerField
      FieldName = 'RIGHTID'
    end
    object cdsCorpactExerciseAnnoRIGHTCODE: TStringField
      FieldName = 'RIGHTCODE'
    end
    object cdsCorpactExerciseAnnoWARRANTID: TIntegerField
      FieldName = 'WARRANTID'
    end
    object cdsCorpactExerciseAnnoWAARANTCODE: TStringField
      FieldName = 'WAARANTCODE'
    end
    object cdsCorpactExerciseAnnoNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
    end
    object cdsCorpactExerciseAnnoTN_CUMDATE: TDateField
      FieldName = 'TN_CUMDATE'
    end
    object cdsCorpactExerciseAnnoNGRG_EXDATE: TDateField
      FieldName = 'NGRG_EXDATE'
    end
    object cdsCorpactExerciseAnnoTN_EXDATE: TDateField
      FieldName = 'TN_EXDATE'
    end
    object cdsCorpactExerciseAnnoRECDATE: TDateField
      FieldName = 'RECDATE'
    end
    object cdsCorpactExerciseAnnoDISTDATE: TDateField
      FieldName = 'DISTDATE'
    end
    object cdsCorpactExerciseAnnoPAYDATE: TDateField
      FieldName = 'PAYDATE'
    end
    object cdsCorpactExerciseAnnoST_TRD_NOMDATE: TDateField
      FieldName = 'ST_TRD_NOMDATE'
    end
    object cdsCorpactExerciseAnnoLAST_OLD_NOMDATE: TDateField
      FieldName = 'LAST_OLD_NOMDATE'
    end
    object cdsCorpactExerciseAnnoRI_STR_LISTDATE: TDateField
      FieldName = 'RI_STR_LISTDATE'
    end
    object cdsCorpactExerciseAnnoRI_END_LISDATE: TDateField
      FieldName = 'RI_END_LISDATE'
    end
    object cdsCorpactExerciseAnnoRI_STR_TRDDATE: TDateField
      FieldName = 'RI_STR_TRDDATE'
    end
    object cdsCorpactExerciseAnnoRI_END_TRDDATE: TDateField
      FieldName = 'RI_END_TRDDATE'
    end
    object cdsCorpactExerciseAnnoRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
    end
    object cdsCorpactExerciseAnnoRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
    end
    object cdsCorpactExerciseAnnoSTR_DISTDATE: TDateField
      FieldName = 'STR_DISTDATE'
    end
    object cdsCorpactExerciseAnnoEND_DISTDATE: TDateField
      FieldName = 'END_DISTDATE'
    end
    object cdsCorpactExerciseAnnoRI_LASTPAY_DATE: TDateField
      FieldName = 'RI_LASTPAY_DATE'
    end
    object cdsCorpactExerciseAnnoALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
    end
    object cdsCorpactExerciseAnnoREFUND_DATE: TDateField
      FieldName = 'REFUND_DATE'
    end
    object cdsCorpactExerciseAnnoRGNG_WR_STR_TRDDATE: TDateField
      FieldName = 'RGNG_WR_STR_TRDDATE'
    end
    object cdsCorpactExerciseAnnoTN_WR_STR_TRDDATE: TDateField
      FieldName = 'TN_WR_STR_TRDDATE'
    end
    object cdsCorpactExerciseAnnoWR_STR_EXERDATE: TDateField
      FieldName = 'WR_STR_EXERDATE'
    end
    object cdsCorpactExerciseAnnoWR_END_EXERDATE: TDateField
      FieldName = 'WR_END_EXERDATE'
    end
    object cdsCorpactExerciseAnnoWR_EXPDATE: TDateField
      FieldName = 'WR_EXPDATE'
    end
    object cdsCorpactExerciseAnnoCA_DESC: TStringField
      FieldName = 'CA_DESC'
      Size = 100
    end
    object cdsCorpactExerciseAnnoCASHDIV_RECVSTAT: TStringField
      FieldName = 'CASHDIV_RECVSTAT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoCASHDIV_RCV: TDateField
      FieldName = 'CASHDIV_RCV'
    end
    object cdsCorpactExerciseAnnoENTITLEMENT: TStringField
      FieldName = 'ENTITLEMENT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoEXERCISES_CLOSE: TStringField
      FieldName = 'EXERCISES_CLOSE'
      Size = 1
    end
    object cdsCorpactExerciseAnnoSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoRI_EXERCISES: TStringField
      FieldName = 'RI_EXERCISES'
      Size = 1
    end
    object cdsCorpactExerciseAnnoRI_STOCK_DIST: TStringField
      FieldName = 'RI_STOCK_DIST'
      Size = 1
    end
    object cdsCorpactExerciseAnnoRI_EXPIRED: TStringField
      FieldName = 'RI_EXPIRED'
      Size = 1
    end
    object cdsCorpactExerciseAnnoRI_EXER_ADM_FEE: TFloatField
      FieldName = 'RI_EXER_ADM_FEE'
    end
    object cdsCorpactExerciseAnnoRI_ISINCODE: TStringField
      FieldName = 'RI_ISINCODE'
    end
    object cdsCorpactExerciseAnnoWR_ISINCODE: TStringField
      FieldName = 'WR_ISINCODE'
    end
    object cdsCorpactExerciseAnnoWR_STR_TRDDATE: TDateField
      FieldName = 'WR_STR_TRDDATE'
    end
    object cdsCorpactExerciseAnnoBASE_RI_QTY: TFloatField
      FieldName = 'BASE_RI_QTY'
    end
    object cdsCorpactExerciseAnnoGET_RI_QTY: TFloatField
      FieldName = 'GET_RI_QTY'
    end
    object cdsCorpactExerciseAnnoRI_PRICE: TFloatField
      FieldName = 'RI_PRICE'
    end
    object cdsCorpactExerciseAnnoBASE_WR_QTY: TFloatField
      FieldName = 'BASE_WR_QTY'
    end
    object cdsCorpactExerciseAnnoGET_WR_QTY: TFloatField
      FieldName = 'GET_WR_QTY'
    end
    object cdsCorpactExerciseAnnoWR_PRICE: TFloatField
      FieldName = 'WR_PRICE'
    end
    object cdsCorpactExerciseAnnoNEW_STOCKID: TIntegerField
      FieldName = 'NEW_STOCKID'
    end
    object cdsCorpactExerciseAnnoNEW_STOCKCODE: TStringField
      FieldName = 'NEW_STOCKCODE'
    end
    object cdsCorpactExerciseAnnoNEW_STOCKNAME: TStringField
      FieldName = 'NEW_STOCKNAME'
      Size = 100
    end
    object cdsCorpactExerciseAnnoNEW_ISINCODE: TStringField
      FieldName = 'NEW_ISINCODE'
    end
    object cdsCorpactExerciseAnnoRIGTHNAME: TStringField
      FieldName = 'RIGTHNAME'
      Size = 100
    end
    object cdsCorpactExerciseAnnoWARRANTNAME: TStringField
      FieldName = 'WARRANTNAME'
      Size = 100
    end
    object cdsCorpactExerciseAnnoLASTCOUPON_DATE: TDateField
      FieldName = 'LASTCOUPON_DATE'
    end
    object cdsCorpactExerciseAnnoNEXTCOUPON_DATE: TDateField
      FieldName = 'NEXTCOUPON_DATE'
    end
    object cdsCorpactExerciseAnnoMATURITY_DATE: TDateField
      FieldName = 'MATURITY_DATE'
    end
    object cdsCorpactExerciseAnnoCOUPONDAYS: TIntegerField
      FieldName = 'COUPONDAYS'
    end
    object cdsCorpactExerciseAnnoINTEREST_RATE: TFloatField
      FieldName = 'INTEREST_RATE'
    end
    object cdsCorpactExerciseAnnoVOUCHERDATE: TDateTimeField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCorpactExerciseAnnoCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpactExerciseAnnoSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCorpactExerciseAnnoEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCorpactExerciseAnnoBROKER_ACCBANKID: TLargeintField
      FieldName = 'BROKER_ACCBANKID'
    end
    object cdsCorpactExerciseAnnoWR_END_TRDDATE: TDateField
      FieldName = 'WR_END_TRDDATE'
    end
    object cdsCorpactExerciseAnnoFIRST_HANDOVER_DATE: TDateField
      FieldName = 'FIRST_HANDOVER_DATE'
    end
    object cdsCorpactExerciseAnnoSCND_HANDOVER_DATE: TDateField
      FieldName = 'SCND_HANDOVER_DATE'
    end
    object cdsCorpactExerciseAnnoCLOSING_PRICE: TFloatField
      FieldName = 'CLOSING_PRICE'
    end
    object cdsCorpactExerciseAnnoCOMPLAIN_DATE: TDateField
      FieldName = 'COMPLAIN_DATE'
    end
    object cdsCorpactExerciseAnnoEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
    end
    object cdsCorpactExerciseAnnoRUPSLB_DATE: TDateField
      FieldName = 'RUPSLB_DATE'
    end
    object cdsCorpactExerciseAnnoSTR_IMPL_DATE: TDateField
      FieldName = 'STR_IMPL_DATE'
    end
    object cdsCorpactExerciseAnnoEND_IMPL_DATE: TDateField
      FieldName = 'END_IMPL_DATE'
    end
    object cdsCorpactExerciseAnnoSTR_TRADE_DATE: TDateField
      FieldName = 'STR_TRADE_DATE'
    end
    object cdsCorpactExerciseAnnoEND_TRADE_DATE: TDateField
      FieldName = 'END_TRADE_DATE'
    end
    object cdsCorpactExerciseAnnoMERGE_TRADE_DATE: TDateField
      FieldName = 'MERGE_TRADE_DATE'
    end
    object cdsCorpactExerciseAnnoSTR_TRADE_MERGE: TDateField
      FieldName = 'STR_TRADE_MERGE'
    end
    object cdsCorpactExerciseAnnoRECMERGE: TDateField
      FieldName = 'RECMERGE'
    end
    object cdsCorpactExerciseAnnoSHAREHOLDER_DATE: TDateField
      FieldName = 'SHAREHOLDER_DATE'
    end
    object cdsCorpactExerciseAnnoREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
    end
    object cdsCorpactExerciseAnnoSTR_NEW_TRADE: TDateField
      FieldName = 'STR_NEW_TRADE'
    end
    object cdsCorpactExerciseAnnoEND_OLD_TRADE: TDateField
      FieldName = 'END_OLD_TRADE'
    end
    object cdsCorpactExerciseAnnoANNO_DATE: TDateField
      FieldName = 'ANNO_DATE'
    end
    object cdsCorpactExerciseAnnoSTR_RESCISSION_DATE: TDateField
      FieldName = 'STR_RESCISSION_DATE'
    end
    object cdsCorpactExerciseAnnoEND_RESCISSION_DATE: TDateField
      FieldName = 'END_RESCISSION_DATE'
    end
    object cdsCorpactExerciseAnnoROUNDSTOCK: TIntegerField
      FieldName = 'ROUNDSTOCK'
    end
    object cdsCorpactExerciseAnnoCASH_DVDPAY: TDateField
      FieldName = 'CASH_DVDPAY'
    end
    object cdsCorpactExerciseAnnoPOSTED: TBooleanField
      FieldName = 'POSTED'
    end
    object cdsCorpactExerciseAnnoLAST_JRNID: TLargeintField
      FieldName = 'LAST_JRNID'
    end
    object cdsCorpactExerciseAnnoLAST_REVERSED_JRNID: TLargeintField
      FieldName = 'LAST_REVERSED_JRNID'
    end
    object cdsCorpactExerciseAnnoCASH_STAT: TStringField
      FieldName = 'CASH_STAT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoSTOCK_STAT: TStringField
      FieldName = 'STOCK_STAT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
      Size = 1
    end
    object cdsCorpactExerciseAnnoACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCorpactExerciseAnnoFOREX_CASH_RATIO: TFloatField
      FieldName = 'FOREX_CASH_RATIO'
    end
    object cdsCorpactExerciseAnnoACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCorpactExerciseAnnoISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsCorpactExerciseAnnoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpactExerciseAnnoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpactExerciseAnnoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpactExerciseAnnoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpactExerciseAnnoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpactExerciseAnnoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpactExerciseAnnoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpactExerciseAnnoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpactExerciseAnnoID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpactExerciseAnnoGENERATE_ENT: TStringField
      FieldName = 'GENERATE_ENT'
      Size = 1
    end
    object cdsCorpactExerciseAnnoPRICE: TFloatField
      FieldName = 'PRICE'
      ReadOnly = True
    end
  end
end
