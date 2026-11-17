inherited frmOMGMonitor: TfrmOMGMonitor
  Caption = 'OMGEO Monitor'
  ClientHeight = 679
  ClientWidth = 1444
  ExplicitWidth = 1444
  ExplicitHeight = 679
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Top = 105
    Width = 1444
    Height = 320
    TabOrder = 1
    ExplicitTop = 105
    ExplicitWidth = 1444
    ExplicitHeight = 320
    inherited gvwBrowse: TcxGridDBBandedTableView
      OptionsSelection.InvertSelect = True
      object gvwBrowseTRDID: TcxGridDBBandedColumn
        Caption = 'Contract ID#'
        DataBinding.FieldName = 'TRDID'
        OnCustomDrawCell = gvwBrowseTRDIDCustomDrawCell
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBrowseTRDDATE: TcxGridDBBandedColumn
        Caption = 'Contract Date'
        DataBinding.FieldName = 'TRDDATE'
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBrowseSETTDATE: TcxGridDBBandedColumn
        Caption = 'Settlement Date'
        DataBinding.FieldName = 'SETTDATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBrowseACCNO: TcxGridDBBandedColumn
        Caption = 'A/C No'
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBrowseENTNAME: TcxGridDBBandedColumn
        Caption = 'Entity Name'
        DataBinding.FieldName = 'ENTNAME'
        Width = 340
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBrowseENTTCODE: TcxGridDBBandedColumn
        Caption = 'Entity Code'
        DataBinding.FieldName = 'ENTTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBrowseTRDVALUE: TcxGridDBBandedColumn
        Caption = 'Trade Value'
        DataBinding.FieldName = 'TRDVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBrowseCOMMAMOUNT: TcxGridDBBandedColumn
        Caption = 'Comm. Amount'
        DataBinding.FieldName = 'COMMAMOUNT'
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBrowseNETAMOUNT: TcxGridDBBandedColumn
        Caption = 'Net Amount'
        DataBinding.FieldName = 'NETAMOUNT'
        Width = 118
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBrowseOMGSTATUS: TcxGridDBBandedColumn
        Caption = 'Omgeo Status'
        DataBinding.FieldName = 'OMGSTATUS'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBrowseSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBrowseBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBrowseEXREFFCODE: TcxGridDBBandedColumn
        Caption = 'ExRef#'
        DataBinding.FieldName = 'EXREFFCODE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBrowseLONGNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'LONGNAME'
        Width = 183
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBrowseLOCALCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'LOCALCODE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBrowseOMGVERSION: TcxGridDBBandedColumn
        Caption = 'Omgeo Ver.'
        DataBinding.FieldName = 'OMGVERSION'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwBrowseMODUI: TcxGridDBBandedColumn
        Caption = 'User ID'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwBrowseREMARKS: TcxGridDBBandedColumn
        Caption = 'Omgeo Remark'
        DataBinding.FieldName = 'REMARKS'
        Width = 177
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDealticketAlloc
      DataController.DetailKeyFieldNames = 'DEALTICKETID'
      DataController.KeyFieldNames = 'DEALTICKETID'
      DataController.MasterKeyFieldNames = 'TRDID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    inherited cxGrid1Level1: TcxGridLevel
      Options.DetailTabsPosition = dtpLeft
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 1444
    Height = 79
    Align = alTop
    TabOrder = 5
    object cxButton1: TcxButton
      Left = 10
      Top = 41
      Width = 119
      Height = 25
      Action = actGenerateBlock
      TabOrder = 3
    end
    object cxButton3: TcxButton
      Left = 135
      Top = 41
      Width = 121
      Height = 25
      Action = actGenerateContract
      TabOrder = 4
    end
    object dtTransFrom: TcxDateEdit
      Left = 72
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 112
    end
    object cxButton4: TcxButton
      Left = 318
      Top = 10
      Width = 59
      Height = 25
      Action = actRefreshData
      TabOrder = 2
    end
    object dtTransTo: TcxDateEdit
      Left = 203
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 109
    end
    object lblPendingAllocation: TcxLabel
      Left = 262
      Top = 49
      Cursor = crHandPoint
      AutoSize = False
      Caption = 'Pending Allocation'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 204
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 17
      Width = 99
    end
    object lblLastUpdate: TcxLabel
      Left = 367
      Top = 49
      AutoSize = False
      Caption = 'Last Refresh Data : 23:00:25 PM'
      Style.HotTrack = False
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Height = 17
      Width = 162
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trans. Date'
      Control = dtTransFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = '~'
      Control = dtTransTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutlblPendingAllocation: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblPendingAllocation
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblLastUpdate
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object cxSplitter1: TcxSplitter [2]
    Left = 0
    Top = 425
    Width = 1444
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = cxPageControl1
  end
  object cxPageControl1: TcxPageControl [3]
    Left = 0
    Top = 433
    Width = 1444
    Height = 246
    Align = alBottom
    TabOrder = 7
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 10
    ClientRectBottom = 246
    ClientRectRight = 1444
    ClientRectTop = 19
    object cxTabSheet1: TcxTabSheet
      Caption = 'Allocation'
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1444
        Height = 227
        Align = alClient
        TabOrder = 0
        object gvwAlloc: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsAlloc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.0000'
              Kind = skSum
              FieldName = 'ALLOCAMT'
              Column = gvwAllocALLOCAMT
            end
            item
              Format = '#,##0.0000'
              Kind = skSum
              FieldName = 'AVALUE'
              Column = gvwAllocAVALUE
            end
            item
              Format = 'Record Count'
              Kind = skCount
              FieldName = 'CTMTRADEDETID'
              Column = gvwAllocCTMTRADEDETID
            end
            item
              Kind = skCount
              FieldName = 'ACCNO'
              Column = gvwAllocACCNO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clAqua
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = BlueToggle
          Bands = <
            item
              Width = 1031
            end>
          object gvwAllocCTMTRADEDETID: TcxGridDBBandedColumn
            Caption = 'OMGEO Trade Detail ID'
            DataBinding.FieldName = 'CTMTRADEDETID'
            OnCustomDrawCell = gvwAllocCTMTRADEDETIDCustomDrawCell
            Options.Moving = False
            Width = 105
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwAllocACCNO: TcxGridDBBandedColumn
            Caption = 'Int Sub A/C'
            DataBinding.FieldName = 'ACCNO'
            Options.Moving = False
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwAllocACCNAME: TcxGridDBBandedColumn
            Caption = 'Sub A/C Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 185
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwAllocAQTY: TcxGridDBBandedColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'AQTY'
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwAllocAPRICE: TcxGridDBBandedColumn
            Caption = 'Price'
            DataBinding.FieldName = 'APRICE'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwAllocAVALUE: TcxGridDBBandedColumn
            Caption = 'Value'
            DataBinding.FieldName = 'AVALUE'
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwAllocCOMMVALUE: TcxGridDBBandedColumn
            Caption = 'Commission'
            DataBinding.FieldName = 'COMVALUE'
            DataBinding.IsNullValueType = True
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwAllocALLOCAMT: TcxGridDBBandedColumn
            Caption = 'Amount'
            DataBinding.FieldName = 'ALLOCAMT'
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwAllocEXREFFCODE: TcxGridDBBandedColumn
            Caption = 'External Sub A/C'
            DataBinding.FieldName = 'OMGEXREFFCODE'
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwAllocLOCALCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'LOCALCODE'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwAllocMOORDID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALLO.CONID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object gvwDetailFee: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DetailKeyFieldNames = 'CTMTRADEDETID'
          DataController.KeyFieldNames = 'MOORDID'
          DataController.MasterKeyFieldNames = 'MOORDID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
              Width = 452
            end>
          object gvwDetailFeeOMGFEETYPE: TcxGridDBBandedColumn
            Caption = 'OMGEO Fee Type'
            DataBinding.FieldName = 'OMGFEETYPE'
            DataBinding.IsNullValueType = True
            SortIndex = 0
            SortOrder = soAscending
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwDetailFeeLOCFEETYPE: TcxGridDBBandedColumn
            Caption = 'Local Fee Type'
            DataBinding.FieldName = 'LOCFEETYPE'
            DataBinding.IsNullValueType = True
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwDetailFeeOMGFEEAMT: TcxGridDBBandedColumn
            Caption = 'OMGEO Fee Amt.'
            DataBinding.FieldName = 'OMGFEEAMT'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taRightJustify
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwDetailFeeLOCFEEAMT: TcxGridDBBandedColumn
            Caption = 'Local Fee Amt.'
            DataBinding.FieldName = 'LOCFEEAMT'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taRightJustify
            Width = 123
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object gvwAllocDet: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwAllocDetCustomDrawCell
          DataController.DataSource = dsAllocCompare
          DataController.DetailKeyFieldNames = 'CONID;CTMTRADEDETID'
          DataController.KeyFieldNames = 'SEQID'
          DataController.MasterKeyFieldNames = 'ALLO.CONID;CTMTRADEDETID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwAllocDetCTMTRADEDETID: TcxGridDBColumn
            Caption = 'OMGEO Trade Det. ID'
            DataBinding.FieldName = 'CTMTRADEDETID'
          end
          object gvwAllocDetOMGFEETYPE: TcxGridDBColumn
            Caption = 'OMGEO Fee Type'
            DataBinding.FieldName = 'OMGFEETYPE'
          end
          object gvwAllocDetOMGFEEAMT: TcxGridDBColumn
            Caption = 'OMGEO Fee Amt.'
            DataBinding.FieldName = 'OMGFEEAMT'
          end
          object gvwAllocDetLOCFEETYPE: TcxGridDBColumn
            Caption = 'Local Fee Type'
            DataBinding.FieldName = 'LOCFEETYPE'
          end
          object gvwAllocDetLOCFEEAMT: TcxGridDBColumn
            Caption = 'Local Fee Amt.'
            DataBinding.FieldName = 'LOCFEEAMT'
          end
          object gvwAllocDetDIFF: TcxGridDBColumn
            Caption = 'Diff.'
            DataBinding.FieldName = 'DIFF'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwAlloc
          object cxGridLevel2: TcxGridLevel
            GridView = gvwAllocDet
          end
        end
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actInsert'
        Permission = '[OMGEO Monitor].Insert'
      end
      item
        ActionName = 'actDelete'
        Permission = '[OMGEO Monitor].Delete'
      end
      item
        ActionName = 'actEdit'
        Permission = '[OMGEO Monitor].Edit'
      end
      item
        ActionName = 'actPost'
        Permission = '[OMGEO Monitor].Post'
      end
      item
        ActionName = 'actcancel'
        Permission = '[OMGEO Monitor].Cancel'
      end>
    AssignedPermission = <
      item
        Name = '[OMGEO Monitor].Insert'
        Description = 'Insert OMGEO Monitor'
      end
      item
        Name = '[OMGEO Monitor].Edit'
        Description = 'Edit OMGEO Monitor'
      end
      item
        Name = '[OMGEO Monitor].Delete'
        Description = 'Delete OMGEO Monitor'
      end
      item
        Name = '[OMGEO Monitor].Post'
        Description = 'Post OMGEO Monitor'
      end
      item
        Name = '[OMGEO Monitor].Cancel'
        Description = 'Cancel OMGEO Monitor'
      end>
    Left = 222
  end
  inherited aclEditor: TActionList
    inherited actPrint: TNAction
      OnExecute = actPrintExecute
    end
    object actRefreshData: TNAction
      Category = 'NActions'
      Caption = 'View'
      OnExecute = actRefreshDataExecute
      CheckPermission = False
    end
    object actGenerateBlock: TNAction
      Category = 'NActions'
      Caption = 'Generate Block'
      OnExecute = actGenerateBlockExecute
      CheckPermission = False
    end
    object actGenerateContract: TNAction
      Category = 'NActions'
      Caption = 'Generate Contract'
      OnExecute = actGenerateContractExecute
      CheckPermission = False
    end
  end
  inherited DatasetContainer: TNSimpleContainer
    Dataset = cdsOMGListProcess
  end
  inherited dsBrowse: TDataSource
    DataSet = cdsOMGListProcess
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
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsOMGListProcess: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'FROMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TODATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryOMGListProcess'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 216
    object cdsOMGListProcessTRDID: TLargeintField
      FieldName = 'TRDID'
      Required = True
    end
    object cdsOMGListProcessTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsOMGListProcessTRDQTY: TFloatField
      FieldName = 'TRDQTY'
      ReadOnly = True
    end
    object cdsOMGListProcessTRDPRICE: TFloatField
      FieldName = 'TRDPRICE'
      ReadOnly = True
    end
    object cdsOMGListProcessSETTDATE: TDateField
      FieldName = 'SETTDATE'
    end
    object cdsOMGListProcessACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOMGListProcessENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsOMGListProcessOMNIBUSTRADE: TStringField
      FieldName = 'OMNIBUSTRADE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsOMGListProcessOMGE_CONFIRM: TStringField
      FieldName = 'OMGE_CONFIRM'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGListProcessENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
      Required = True
    end
    object cdsOMGListProcessTRDVALUE: TFloatField
      FieldName = 'TRDVALUE'
    end
    object cdsOMGListProcessNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object cdsOMGListProcessOMGSTATUS: TStringField
      FieldName = 'OMGSTATUS'
      ReadOnly = True
      Size = 50
    end
    object cdsOMGListProcessBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsOMGListProcessEXREFFCODE: TStringField
      FieldName = 'EXREFFCODE'
      ReadOnly = True
    end
    object cdsOMGListProcessALERT: TStringField
      FieldName = 'ALERT'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGListProcessISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGListProcessLONGNAME: TStringField
      FieldName = 'LONGNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsOMGListProcessLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
      Required = True
    end
    object cdsOMGListProcessOMGVERSION: TIntegerField
      FieldName = 'OMGVERSION'
      ReadOnly = True
    end
    object cdsOMGListProcessMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOMGListProcessREMARKS: TStringField
      FieldName = 'REMARKS'
      ReadOnly = True
      Required = True
      Size = 250
    end
    object cdsOMGListProcessCOMMAMOUNT: TFloatField
      FieldName = 'COMMAMOUNT'
    end
    object cdsOMGListProcessqryOMGAlloc: TDataSetField
      FieldName = 'qryOMGAlloc'
    end
    object cdsOMGListProcessSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
    end
    object cdsOMGListProcessSENDFEE: TStringField
      FieldName = 'SENDFEE'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGListProcessSENDSSI: TStringField
      FieldName = 'SENDSSI'
      ReadOnly = True
      Size = 1
    end
  end
  object cdsOMGAllocTemp: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryOMGAllocTemp'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsOMGAllocTempAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 216
    object cdsOMGAllocTempCTMTRADEDETID: TStringField
      FieldName = 'CTMTRADEDETID'
      Required = True
      Size = 25
    end
    object cdsOMGAllocTempACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOMGAllocTempQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsOMGAllocTempCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
  end
  object dsAlloc: TDataSource
    DataSet = cdsOMGAlloc
    Left = 480
    Top = 337
  end
  object cdsOMGAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsOMGListProcessqryOMGAlloc
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 480
    Top = 280
    object cdsOMGAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsOMGAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOMGAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsOMGAllocAQTY: TFloatField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
      ReadOnly = True
    end
    object cdsOMGAllocLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      ReadOnly = True
      Required = True
    end
    object cdsOMGAllocLONGNAME: TStringField
      FieldName = 'LONGNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsOMGAllocCTMTRADEDETID: TStringField
      FieldName = 'CTMTRADEDETID'
      ReadOnly = True
      Required = True
      Size = 25
    end
    object cdsOMGAllocALLOCONID: TLargeintField
      FieldName = 'ALLO.CONID'
      Required = True
    end
    object cdsOMGAllocTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
  end
  object dsAllocCompare: TDataSource
    DataSet = cdsOMGAllocComp
    Left = 584
    Top = 336
  end
  object cdsOMGAllocComp: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmOmgeo_qryOMGAllocComparison'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 280
    object cdsOMGAllocCompCONID: TStringField
      FieldName = 'CONID'
    end
    object cdsOMGAllocCompCTMTRADEDETID: TStringField
      FieldName = 'CTMTRADEDETID'
    end
    object cdsOMGAllocCompSEQID: TFloatField
      FieldName = 'SEQID'
    end
    object cdsOMGAllocCompOMGFEETYPE: TStringField
      FieldName = 'OMGFEETYPE'
      Size = 50
    end
    object cdsOMGAllocCompOMGFEEAMT: TFloatField
      FieldName = 'OMGFEEAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocCompLOCFEETYPE: TStringField
      FieldName = 'LOCFEETYPE'
      Size = 50
    end
    object cdsOMGAllocCompLOCFEEAMT: TFloatField
      FieldName = 'LOCFEEAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsOMGAllocCompDIFF: TBooleanField
      FieldName = 'DIFF'
    end
  end
  object ReportContainer: TNReportContainer
    ReportFile = 'Report\NOrder_BIA.fr3'
    ReportTitle = 'Contract'
    Left = 816
    Top = 216
  end
  object cdsROrder: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qryROrder'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 904
    Top = 216
    object cdsROrderqryROrderAlloc: TDataSetField
      FieldName = 'qryROrderAlloc'
    end
    object cdsROrderqryROrderFee: TDataSetField
      FieldName = 'qryROrderFee'
    end
    object cdsROrderCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsROrderCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsROrderCONDATE: TDateField
      FieldName = 'CONDATE'
    end
    object cdsROrderCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
    end
    object cdsROrderSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
    end
    object cdsROrderMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsROrderAGCTYPE: TStringField
      FieldName = 'AGCTYPE'
      Size = 1
    end
    object cdsROrderACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsROrderACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsROrderACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsROrderCON_ADDR: TStringField
      FieldName = 'CON_ADDR'
      Size = 150
    end
    object cdsROrderCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsROrderZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Size = 10
    end
    object cdsROrderSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsROrderSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsROrderSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsROrderTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsROrderTC_SENDBY: TStringField
      FieldName = 'TC_SENDBY'
      Size = 10
    end
    object cdsROrderSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsROrderDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsROrderCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsROrderNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsROrderVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
    end
    object cdsROrderNETVALUE: TFloatField
      FieldName = 'NETVALUE'
    end
    object cdsROrderCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
    end
    object cdsROrderCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
    end
    object cdsROrderOTC: TFloatField
      FieldName = 'OTC'
    end
    object cdsROrderNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object cdsROrderCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 10
    end
    object cdsROrderSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsROrderBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsROrderBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsROrderBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 100
    end
    object cdsROrderSETT_CLEARACC: TStringField
      FieldName = 'SETT_CLEARACC'
    end
    object cdsROrderSETT_CLEARSUBACC: TStringField
      FieldName = 'SETT_CLEARSUBACC'
    end
    object cdsROrderFINALSTS: TStringField
      FieldName = 'FINALSTS'
      Size = 1
    end
    object cdsROrderCONSTS: TStringField
      FieldName = 'CONSTS'
      Size = 1
    end
    object cdsROrderISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsROrderMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsROrderMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsROrderAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsROrderAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsROrderUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsROrderUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsROrderNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsROrderISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsROrderID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsROrderAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsROrderqryROrderAlloc
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 1016
    Top = 216
    object cdsROrderAllocID: TLargeintField
      FieldName = 'ID'
    end
    object cdsROrderAllocCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsROrderAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsROrderAllocACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsROrderAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsROrderAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsROrderAllocCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
    object cdsROrderAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsROrderAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsROrderAllocVALID_COMM_RATE: TFloatField
      FieldName = 'VALID_COMM_RATE'
    end
    object cdsROrderAllocAPRICE: TFloatField
      FieldName = 'APRICE'
    end
    object cdsROrderAllocAQTY: TFloatField
      FieldName = 'AQTY'
    end
    object cdsROrderAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
    end
    object cdsROrderAllocCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object cdsROrderAllocBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
    end
    object cdsROrderAllocVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsROrderAllocWHT: TFloatField
      FieldName = 'WHT'
    end
    object cdsROrderAllocSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsROrderAllocTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object cdsROrderAllocALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
    end
    object cdsROrderAllocMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsROrderAllocMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsROrderAllocAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsROrderAllocAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsROrderAllocUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsROrderAllocUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsROrderAllocNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsROrderAllocISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
  end
  object cdsROrderFee: TNClientDataset
    Aggregates = <>
    DataSetField = cdsROrderqryROrderFee
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 960
    Top = 216
    object cdsROrderFeeCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsROrderFeeSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsROrderFeeCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsROrderFeeCHARGE_CODE: TStringField
      FieldName = 'CHARGE_CODE'
    end
    object cdsROrderFeeCHARGE_DESC: TStringField
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
    object cdsROrderFeeBASIS: TStringField
      FieldName = 'BASIS'
      Size = 1
    end
    object cdsROrderFeeRATE: TFloatField
      FieldName = 'RATE'
    end
    object cdsROrderFeeRATE_SOURCE: TStringField
      FieldName = 'RATE_SOURCE'
      Size = 2
    end
    object cdsROrderFeeAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object cdsROrderFeeCHARGE_TABLE_ID: TLargeintField
      FieldName = 'CHARGE_TABLE_ID'
    end
    object cdsROrderFeeCHARGE_VAL: TFloatField
      FieldName = 'CHARGE_VAL'
    end
    object cdsROrderFeeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsROrderFeeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsROrderFeeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsROrderFeeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsROrderFeeUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsROrderFeeUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsROrderFeeNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsROrderFeeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsROrderFeeID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dbOrder: TfrxDBDataset
    UserName = 'Order'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONID=CONID'
      'CONCODE=CONCODE'
      'CONDATE=CONDATE'
      'CASHSETTLEDATE=CASHSETTLEDATE'
      'STOCKSETTLEDATE=STOCKSETTLEDATE'
      'MARKETCODE=MARKETCODE'
      'AGCTYPE=AGCTYPE'
      'ACCID=ACCID'
      'ACCNO=ACCNO'
      'ACCNAME=ACCNAME'
      'CON_ADDR=CON_ADDR'
      'CITY=CITY'
      'ZIPCODE=ZIPCODE'
      'STOCKID=STOCKID'
      'STOCKCODE=STOCKCODE'
      'STOCKNAME=STOCKNAME'
      'TC_MODEL=TC_MODEL'
      'TC_SENDBY=TC_SENDBY'
      'SALESID=SALESID'
      'DEALERID=DEALERID'
      'CCYCODE=CCYCODE'
      'NETTYPE=NETTYPE'
      'NETVALUE=NETVALUE'
      'COMMAMT=COMMAMT'
      'NETAMT=NETAMT'
      'CUSTODYCODE=CUSTODYCODE'
      'SIDNO=SIDNO'
      'BNCODE=BNCODE'
      'BANKACCNO=BANKACCNO'
      'BANKACCNAME=BANKACCNAME'
      'SETT_CLEARACC=SETT_CLEARACC'
      'SETT_CLEARSUBACC=SETT_CLEARSUBACC'
      'FINALSTS=FINALSTS'
      'CONSTS=CONSTS'
      'ISOMG=ISOMG'
      'MODDA=MODDA'
      'MODUI=MODUI'
      'APPDA=APPDA'
      'APPUI=APPUI'
      'UNDER4Y=UNDER4Y'
      'UNDER4YDA=UNDER4YDA'
      'NOTES4Y=NOTES4Y'
      'ISDEL=ISDEL'
      'ID=ID'
      'qryROrderAlloc=qryROrderAlloc'
      'qryROrderFee=qryROrderFee')
    DataSet = cdsROrder
    BCDToCurrency = False
    DataSetOptions = []
    Left = 904
    Top = 272
  end
  object dbOrderAlloc: TfrxDBDataset
    UserName = 'Order Alloc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONID=CONID'
      'SEQID=SEQID'
      'ACCID=ACCID'
      'ACCNO=ACCNO'
      'ACCNAME=ACCNAME'
      'COMM_ID=COMM_ID'
      'COMM_RATE=COMM_RATE'
      'VALID_COMM_RATE=VALID_COMM_RATE'
      'APRICE=APRICE'
      'AQTY=AQTY'
      'AVALUE=AVALUE'
      'COMVALUE=COMVALUE'
      'ALLOCAMT=ALLOCAMT'
      'MODDA=MODDA'
      'MODUI=MODUI'
      'APPDA=APPDA'
      'APPUI=APPUI'
      'UNDER4Y=UNDER4Y'
      'UNDER4YDA=UNDER4YDA'
      'NOTES4Y=NOTES4Y'
      'ISDEL=ISDEL'
      'ID=ID')
    DataSet = cdsROrderAlloc
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1016
    Top = 272
  end
  object dbOrderFee: TfrxDBDataset
    UserName = 'Order Fee'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CONID=CONID'
      'SEQID=SEQID'
      'CHARGE_ID=CHARGE_ID'
      'CHARGE_CODE=CHARGE_CODE'
      'CHARGE_DESC=CHARGE_DESC'
      'BASIS=BASIS'
      'RATE=RATE'
      'RATE_SOURCE=RATE_SOURCE'
      'AMOUNT=AMOUNT'
      'CHARGE_TABLE_ID=CHARGE_TABLE_ID'
      'CHARGE_VAL=CHARGE_VAL'
      'MODDA=MODDA'
      'MODUI=MODUI'
      'APPDA=APPDA'
      'APPUI=APPUI'
      'UNDER4Y=UNDER4Y'
      'UNDER4YDA=UNDER4YDA'
      'NOTES4Y=NOTES4Y'
      'ISDEL=ISDEL'
      'ID=ID')
    DataSet = cdsROrderFee
    BCDToCurrency = False
    DataSetOptions = []
    Left = 960
    Top = 272
  end
  object frxReport1: TfrxReport
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40797.431109861100000000
    ReportOptions.LastChange = 41806.858873807870000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 816
    Top = 264
  end
  object cdsOMGSSI: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmOmgeo_qrySSI'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 584
    Top = 216
    object cdsOMGSSISourceIndicator: TStringField
      FieldName = 'SourceIndicator'
      Required = True
      Size = 15
    end
    object cdsOMGSSIAlertCountryCode: TStringField
      FieldName = 'AlertCountryCode'
      Required = True
      Size = 10
    end
    object cdsOMGSSIAlertMethodType: TStringField
      FieldName = 'AlertMethodType'
      Required = True
      Size = 10
    end
    object cdsOMGSSIAlertSecurityType: TStringField
      FieldName = 'AlertSecurityType'
      Required = True
      Size = 10
    end
    object cdsOMGSSIAlertSettModelName: TStringField
      FieldName = 'AlertSettModelName'
      Required = True
      Size = 15
    end
    object cdsOMGSSISettInstProcNarrative: TStringField
      FieldName = 'SettInstProcNarrative'
    end
  end
  object cdsOMGOrdFee: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOmgeo_qryOMGOrdFee'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 672
    Top = 216
    object cdsOMGOrdFeeCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsOMGOrdFeeSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsOMGOrdFeeBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsOMGOrdFeeCHGR: TFloatField
      FieldName = 'CHGR'
      ReadOnly = True
    end
    object cdsOMGOrdFeeBFEE: TFloatField
      FieldName = 'BFEE'
      ReadOnly = True
    end
    object cdsOMGOrdFeeVAT: TFloatField
      FieldName = 'VAT'
      ReadOnly = True
    end
    object cdsOMGOrdFeeWHT: TFloatField
      FieldName = 'WHT'
      ReadOnly = True
    end
    object cdsOMGOrdFeeSELLTAX: TFloatField
      FieldName = 'SELLTAX'
      ReadOnly = True
    end
  end
  object cdsOMGContract: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'SCONDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'ECONDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmOmgeo_qryOMGContract'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 672
    Top = 280
    object cdsOMGContractTRDID: TLargeintField
      FieldName = 'TRDID'
      Required = True
    end
    object cdsOMGContractTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsOMGContractSETTDATE: TDateField
      FieldName = 'SETTDATE'
    end
    object cdsOMGContractACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOMGContractEXREFFCODE: TStringField
      FieldName = 'EXREFFCODE'
      ReadOnly = True
    end
    object cdsOMGContractALERT: TStringField
      FieldName = 'ALERT'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsOMGContractOMNIBUSTRADE: TIntegerField
      FieldName = 'OMNIBUSTRADE'
      ReadOnly = True
      Required = True
    end
    object cdsOMGContractOMGUSE: TStringField
      FieldName = 'OMGUSE'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
      Required = True
    end
    object cdsOMGContractTRDQTY: TFloatField
      FieldName = 'TRDQTY'
    end
    object cdsOMGContractTRDPRICE: TFloatField
      FieldName = 'TRDPRICE'
    end
    object cdsOMGContractTRDVALUE: TFloatField
      FieldName = 'TRDVALUE'
    end
    object cdsOMGContractTOTALFEEVALUE: TFloatField
      FieldName = 'TOTALFEEVALUE'
    end
    object cdsOMGContractNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object cdsOMGContractOMGSTATUS: TStringField
      FieldName = 'OMGSTATUS'
      ReadOnly = True
      Size = 50
    end
    object cdsOMGContractPROCSTATUS: TStringField
      FieldName = 'PROCSTATUS'
      ReadOnly = True
    end
    object cdsOMGContractCONTRACTVERSION: TIntegerField
      FieldName = 'CONTRACTVERSION'
      ReadOnly = True
    end
    object cdsOMGContractBLOCKVERSION: TIntegerField
      FieldName = 'BLOCKVERSION'
      ReadOnly = True
    end
    object cdsOMGContractAQTY: TFloatField
      FieldName = 'AQTY'
      ReadOnly = True
    end
    object cdsOMGContractAVALUE: TFloatField
      FieldName = 'AVALUE'
      ReadOnly = True
    end
    object cdsOMGContractSELLTAX: TFloatField
      FieldName = 'SELLTAX'
      ReadOnly = True
    end
    object cdsOMGContractVAT: TFloatField
      FieldName = 'VAT'
      ReadOnly = True
    end
    object cdsOMGContractCHARGES: TFloatField
      FieldName = 'CHARGES'
      ReadOnly = True
    end
    object cdsOMGContractBRKFEE: TFloatField
      FieldName = 'BRKFEE'
      ReadOnly = True
    end
    object cdsOMGContractWHT: TFloatField
      FieldName = 'WHT'
      ReadOnly = True
    end
    object cdsOMGContractBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsOMGContractNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object cdsOMGContractOMGEXREFFCODE: TStringField
      FieldName = 'OMGEXREFFCODE'
      ReadOnly = True
    end
    object cdsOMGContractOMGALERT: TStringField
      FieldName = 'OMGALERT'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGContractLONGNAME: TStringField
      FieldName = 'LONGNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsOMGContractACCALLOC: TStringField
      FieldName = 'ACC ALLOC'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGContractCONID: TLargeintField
      FieldName = 'CONID'
      ReadOnly = True
      Required = True
    end
    object cdsOMGContractSEQID: TIntegerField
      FieldName = 'SEQID'
      ReadOnly = True
      Required = True
    end
    object cdsOMGContractACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsOMGContractACCNO_1: TStringField
      FieldName = 'ACCNO_1'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGContractACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsOMGContractCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      ReadOnly = True
    end
    object cdsOMGContractCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      ReadOnly = True
      Size = 2
    end
    object cdsOMGContractCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      ReadOnly = True
    end
    object cdsOMGContractVALID_COMM_RATE: TFloatField
      FieldName = 'VALID_COMM_RATE'
      ReadOnly = True
    end
    object cdsOMGContractAPRICE: TFloatField
      FieldName = 'APRICE'
      ReadOnly = True
    end
    object cdsOMGContractAQTY_1: TFloatField
      FieldName = 'AQTY_1'
      ReadOnly = True
    end
    object cdsOMGContractAVALUE_1: TFloatField
      FieldName = 'AVALUE_1'
      ReadOnly = True
    end
    object cdsOMGContractCHARGES_1: TFloatField
      FieldName = 'CHARGES_1'
      ReadOnly = True
    end
    object cdsOMGContractBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      ReadOnly = True
    end
    object cdsOMGContractVAT_1: TFloatField
      FieldName = 'VAT_1'
      ReadOnly = True
    end
    object cdsOMGContractWHT_1: TFloatField
      FieldName = 'WHT_1'
      ReadOnly = True
    end
    object cdsOMGContractSELLTAX_1: TFloatField
      FieldName = 'SELLTAX_1'
      ReadOnly = True
    end
    object cdsOMGContractTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      ReadOnly = True
    end
    object cdsOMGContractCCYCODE: TStringField
      FieldName = 'CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsOMGContractALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
      ReadOnly = True
    end
    object cdsOMGContractISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsOMGContractFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      ReadOnly = True
    end
    object cdsOMGContractFOREIGN_ALLOCAMT: TFloatField
      FieldName = 'FOREIGN_ALLOCAMT'
      ReadOnly = True
    end
    object cdsOMGContractC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      ReadOnly = True
      Size = 5
    end
    object cdsOMGContractS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      ReadOnly = True
      Size = 5
    end
    object cdsOMGContractCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsOMGContractDUECASH: TDateField
      FieldName = 'DUECASH'
      ReadOnly = True
    end
    object cdsOMGContractDUESTOCK: TDateField
      FieldName = 'DUESTOCK'
      ReadOnly = True
    end
    object cdsOMGContractMODDA: TDateTimeField
      FieldName = 'MODDA'
      ReadOnly = True
    end
    object cdsOMGContractMODUI: TStringField
      FieldName = 'MODUI'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGContractAPPDA: TDateTimeField
      FieldName = 'APPDA'
      ReadOnly = True
    end
    object cdsOMGContractAPPUI: TStringField
      FieldName = 'APPUI'
      ReadOnly = True
      Size = 30
    end
    object cdsOMGContractUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
      ReadOnly = True
    end
    object cdsOMGContractUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
      ReadOnly = True
    end
    object cdsOMGContractNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      ReadOnly = True
      Size = 100
    end
    object cdsOMGContractISDEL: TIntegerField
      FieldName = 'ISDEL'
      ReadOnly = True
    end
    object cdsOMGContractID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsOMGContractNETCASHAMT: TFloatField
      FieldName = 'NETCASHAMT'
      ReadOnly = True
    end
    object cdsOMGContractSENDSSI: TStringField
      FieldName = 'SENDSSI'
      ReadOnly = True
      Size = 1
    end
  end
  object cdsDealticketAlloc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmOmgeo_qryOmgDealTicketD'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 352
    object cdsDealticketAllocACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsDealticketAllocACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsDealticketAllocACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDealticketAllocAQTY: TLargeintField
      DisplayLabel = 'Quantity'
      FieldName = 'AQTY'
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDealticketAllocAPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'APRICE'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDealticketAllocAVALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'AVALUE'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsDealticketAllocCOMM_CODE: TStringField
      DisplayLabel = 'Comission Code'
      FieldName = 'COMM_CODE'
      ReadOnly = True
      Size = 15
    end
    object cdsDealticketAllocCOMM_RATE: TFloatField
      DisplayLabel = 'Commission Rate'
      FieldName = 'COMM_RATE'
      ReadOnly = True
      DisplayFormat = '#,##0.######;(#,##0.######);0.######'
    end
    object cdsDealticketAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
      Required = True
    end
  end
  object dsDealticketAlloc: TDataSource
    DataSet = cdsDealticketAlloc
    Left = 168
    Top = 352
  end
end
