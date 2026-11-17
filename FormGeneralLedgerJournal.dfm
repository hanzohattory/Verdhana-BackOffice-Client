inherited frmGeneralLedgerJournal: TfrmGeneralLedgerJournal
  Caption = 'Journal Posting'
  ClientHeight = 354
  ClientWidth = 735
  ExplicitWidth = 735
  ExplicitHeight = 354
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Width = 735
    Height = 328
    ExplicitWidth = 735
    ExplicitHeight = 328
    inherited gvwBrowse: TcxGridDBBandedTableView
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      object gvwBrowseJRNTYPEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNTYPEDESC'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseDB_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DB_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseCR_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CR_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseJOUTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JOUTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowsePOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBrowseBalance: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Balance'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object gvwGLJournal_D: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DetailKeyFieldNames = 'JRNTYPEDESC;VALUEDATE'
      DataController.KeyFieldNames = 'CPID'
      DataController.MasterKeyFieldNames = 'JRNTYPEDESC;VALUEDATE'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end>
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actInsert'
      end
      item
        ActionName = 'actDelete'
      end
      item
        ActionName = 'actEdit'
      end
      item
        ActionName = 'actPost'
      end
      item
        ActionName = 'actcancel'
      end>
  end
  inherited aclEditor: TActionList
    inherited actRefresh: TNDataSetRefresh
      OnExecute = actRefreshExecute
    end
    inherited actView: TNAction
      OnExecute = actViewExecute
    end
    object actGLJournalPost: TNAction
      Category = 'NActions'
      Caption = 'Posting GL Journal'
      OnExecute = actGLJournalPostExecute
      CheckPermission = False
    end
    object actSelectedGLJournalPosting: TNAction
      Category = 'NActions'
      Caption = 'Selected GL Journal Posting'
      OnExecute = actSelectedGLJournalPostingExecute
      CheckPermission = False
    end
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
  end
  inherited popGrid: TPopupMenu
    object Copygridwithheader1: TMenuItem [3]
      Action = actCopySelected
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PostingGLJournal1: TMenuItem
      Action = actSelectedGLJournalPosting
    end
  end
  inherited DatasetContainer: TNSimpleContainer
    Dataset = cdsGLJournal_H
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsGLJournal_H
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      DateFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
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
          ItemName = 'txtDate'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end>
      OneOnRow = False
    end
    object BarMBrowseBar2: TdxBar [1]
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 436
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 625
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object txtDate: TcxBarEditItem
      Caption = 'Date'
      Category = 0
      Enabled = False
      Hint = 'Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = txtDatePropertiesCloseUp
    end
  end
  object cdsGLJournal_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'RptDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryGLJournal_H'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsGLJournal_HCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 390
    Top = 110
    object cdsGLJournal_HJRNTYPEDESC: TStringField
      DisplayLabel = 'Journal Type Desc'
      FieldName = 'JRNTYPEDESC'
      Size = 100
    end
    object cdsGLJournal_HVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsGLJournal_HDB_AMT: TFloatField
      DisplayLabel = 'Debet Amount'
      FieldName = 'DB_AMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLJournal_HCR_AMT: TFloatField
      DisplayLabel = 'Credit Amount'
      FieldName = 'CR_AMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLJournal_HJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      Size = 2
    end
    object cdsGLJournal_HPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsGLJournal_HBalance: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
  end
  object cdsGLJournal_D: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'RptDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'GL_JRNTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'POSTED'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryGLJournal_D'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 395
    Top = 153
    object cdsGLJournal_DJOUTYPE: TStringField
      FieldName = 'JOUTYPE'
      Size = 2
    end
    object cdsGLJournal_DGL_JRNTYPE: TStringField
      FieldName = 'GL_JRNTYPE'
      Size = 10
    end
    object cdsGLJournal_DJRNTYPEDESC: TStringField
      FieldName = 'JRNTYPEDESC'
      Size = 150
    end
    object cdsGLJournal_DVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsGLJournal_DCPID: TIntegerField
      FieldName = 'CPID'
    end
    object cdsGLJournal_DGLACCOUNTID: TIntegerField
      FieldName = 'GLACCOUNTID'
    end
    object cdsGLJournal_DGLACCOUNTCODE: TStringField
      FieldName = 'GLACCOUNTCODE'
    end
    object cdsGLJournal_DGLACCOUNTNAME: TStringField
      FieldName = 'GLACCOUNTNAME'
      Size = 150
    end
    object cdsGLJournal_DCDESC: TStringField
      FieldName = 'CDESC'
      Size = 150
    end
    object cdsGLJournal_DCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsGLJournal_DEXRATE: TFloatField
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DDEBET: TFloatField
      FieldName = 'DEBET'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DCREDIT: TFloatField
      FieldName = 'CREDIT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DFXDEBET: TFloatField
      FieldName = 'FXDEBET'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DFXCREDIT: TFloatField
      FieldName = 'FXCREDIT'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsGLJournal_DCPCODE: TStringField
      FieldName = 'CPCODE'
      ReadOnly = True
    end
  end
end
