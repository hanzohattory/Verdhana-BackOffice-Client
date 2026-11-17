inherited frmStockRecon: TfrmStockRecon
  ActiveControl = PageControl
  Caption = 'Stock Reconcile'
  ClientWidth = 1005
  ExplicitWidth = 1005
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1005
    Height = 76
    Align = alTop
    TabOrder = 0
    object txtStockRecon: TcxButtonEdit
      Left = 109
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txtStockReconPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 500
    end
    object txtTransDate: TcxDateEdit
      Left = 109
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxButton1: TcxButton
      Left = 320
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 615
      Top = 41
      Width = 100
      Height = 25
      Action = actUploadDataBal
      TabOrder = 4
    end
    object chkDiff: TcxCheckBox
      Left = 214
      Top = 10
      Caption = 'Difference <> 0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnClick = chkDiffClick
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Import Stock Recon'
      Control = txtStockRecon
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Transaction Date'
      Control = txtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkDiff
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object PageControl: TcxPageControl [1]
    Left = 0
    Top = 76
    Width = 1005
    Height = 298
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = pgOrchid
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 1
    ClientRectBottom = 294
    ClientRectLeft = 4
    ClientRectRight = 1001
    ClientRectTop = 24
    object pgOrchid: TcxTabSheet
      Caption = 'Orchid'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 997
        Height = 270
        Align = alClient
        PopupMenu = popDocking
        TabOrder = 0
        object gvwStockRecon: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsStockRec
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'QTY_ONHAND'
              Column = gvwStockReconQTY_ONHAND
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'STK_DIFF'
              Column = gvwStockReconSTK_DIFF
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'STK_POS'
              Column = gvwStockReconSTK_POS
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwStockReconVALUEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALUEDATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwStockReconKSEI_ACC: TcxGridDBBandedColumn
            Caption = 'KSEI Account No.'
            DataBinding.FieldName = 'KSEI_ACC'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwStockReconINSTRUMENT_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUMENT_ID'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwStockReconSTOCKCODE: TcxGridDBBandedColumn
            Caption = 'Stock Code'
            DataBinding.FieldName = 'STOCKCODE'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwStockReconSTOCKNAME: TcxGridDBBandedColumn
            Caption = 'Stock Name'
            DataBinding.FieldName = 'STOCKNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwStockReconSTAT: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STAT'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwStockReconSTK_POS: TcxGridDBBandedColumn
            Caption = 'KSEI Stock Qty'
            DataBinding.FieldName = 'STK_POS'
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwStockReconQTY_ONHAND: TcxGridDBBandedColumn
            Caption = 'Nayaga Stock Qty'
            DataBinding.FieldName = 'QTY_ONHAND'
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwStockReconSTK_DIFF: TcxGridDBBandedColumn
            Caption = 'Different Qty'
            DataBinding.FieldName = 'STK_DIFF'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsStockRecDetail
          DataController.DetailKeyFieldNames = 'KSEI_ACC;STOCKCODE'
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'KSEI_ACC;STOCKCODE'
          DataController.MasterKeyFieldNames = 'KSEI_ACC;STOCKCODE'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1KSEI_ACC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KSEI_ACC'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1ACCCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCCODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1ACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1INSTRUMENT_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUMENT_ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1STOCKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKCODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1STOCKNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1STK_POS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STK_POS'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwStockRecon
          object cxGrid1Level2: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
    object pgCBest: TcxTabSheet
      Caption = 'C-Best'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 997
        Height = 270
        Align = alClient
        TabOrder = 0
        object gvwCBest: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCBest
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'Balance'
              Column = gvwCBestBalance
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CBal'
              Column = gvwCBestCBal
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'NayBal'
              Column = gvwCBestNayBal
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCBestStockCode: TcxGridDBBandedColumn
            DataBinding.FieldName = 'StockCode'
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCBestStockName: TcxGridDBBandedColumn
            DataBinding.FieldName = 'StockName'
            Width = 317
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCBestStockType: TcxGridDBBandedColumn
            DataBinding.FieldName = 'StockType'
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCBestBalType: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BalType'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCBestNayBal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NayBal'
            HeaderAlignmentHorz = taRightJustify
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCBestCBal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBal'
            HeaderAlignmentHorz = taRightJustify
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCBestBalance: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Balance'
            HeaderAlignmentHorz = taRightJustify
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwCBest
        end
      end
    end
  end
  object pnlProgress: TPanel [2]
    Left = 21
    Top = 124
    Width = 292
    Height = 52
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Uploading Data...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  inherited popDocking: TPopupMenu
    Left = 402
    Top = 247
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclStockRecon
    Left = 305
    Top = 151
  end
  object aclStockRecon: TActionList
    Left = 305
    Top = 247
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataExecute
      CheckPermission = False
    end
    object actUploadDataBal: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataBalExecute
      CheckPermission = False
    end
  end
  object cdsStockRec: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockRec'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 305
    Top = 295
    object cdsStockRecVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsStockRecKSEI_ACC: TStringField
      FieldName = 'KSEI_ACC'
      Required = True
    end
    object cdsStockRecINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      ReadOnly = True
    end
    object cdsStockRecSTOCKCODE: TStringField
      DisplayWidth = 20
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsStockRecSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsStockRecSTAT: TStringField
      FieldName = 'STAT'
      Size = 10
    end
    object cdsStockRecSTK_POS: TFloatField
      FieldName = 'STK_POS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockRecQTY_ONHAND: TFloatField
      FieldName = 'QTY_ONHAND'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockRecSTK_DIFF: TFloatField
      FieldName = 'STK_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsStockRec: TDataSource
    DataSet = cdsStockRec
    Left = 401
    Top = 294
  end
  object ImportFilesDialog: TOpenDialog
    Left = 305
    Top = 199
  end
  object cdsCBest: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 555
    Top = 192
    object cdsCBestSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsCBestStockCode: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'StockCode'
      Size = 30
    end
    object cdsCBestStockName: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'StockName'
      Size = 150
    end
    object cdsCBestStockType: TStringField
      DisplayLabel = 'Stock Type'
      FieldName = 'StockType'
      Size = 50
    end
    object cdsCBestBalType: TStringField
      DisplayLabel = 'Balance Type'
      FieldName = 'BalType'
      Size = 50
    end
    object cdsCBestNayBal: TFloatField
      DisplayLabel = 'Nayaga Balance'
      FieldName = 'NayBal'
      DisplayFormat = '#,##0;(#,##0;0'
    end
    object cdsCBestCBal: TFloatField
      DisplayLabel = 'C-Best Balance'
      FieldName = 'CBal'
      DisplayFormat = '#,##0;(#,##0;0'
    end
    object cdsCBestBalance: TFloatField
      DisplayLabel = 'Different'
      FieldName = 'Balance'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsCBest: TDataSource
    DataSet = cdsCBest
    Left = 552
    Top = 240
  end
  object cdsSumStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qrySumStockPos'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 555
    Top = 144
    object cdsSumStockPosVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsSumStockPosSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsSumStockPosSUM_QTY: TFloatField
      FieldName = 'SUM_QTY'
      ReadOnly = True
    end
  end
  object SaveFile: TSaveDialog
    Left = 393
    Top = 132
  end
  object cdsUploadStockRec: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryUploadStockRec'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 209
    Top = 295
    object cdsUploadStockRecVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
      Required = True
    end
    object cdsUploadStockRecKSEI_ACC: TStringField
      FieldName = 'KSEI_ACC'
      Required = True
    end
    object cdsUploadStockRecSTK_POS: TFloatField
      FieldName = 'STK_POS'
    end
    object cdsUploadStockRecSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsUploadStockRecSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsUploadStockRecSTAT: TStringField
      FieldName = 'STAT'
      Size = 10
    end
    object cdsUploadStockRecMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUploadStockRecMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUploadStockRecAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUploadStockRecAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUploadStockRecUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUploadStockRecUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUploadStockRecNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUploadStockRecISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUploadStockRecID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsStockRecDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockRecDetail'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 505
    Top = 279
    object cdsStockRecDetailKSEI_ACC: TStringField
      FieldName = 'KSEI_ACC'
    end
    object cdsStockRecDetailACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsStockRecDetailACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsStockRecDetailINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
    end
    object cdsStockRecDetailSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsStockRecDetailSTOCKNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsStockRecDetailSTK_POS: TFloatField
      DisplayLabel = 'Stock Position'
      FieldName = 'STK_POS'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsStockRecDetail: TDataSource
    DataSet = cdsStockRecDetail
    Left = 577
    Top = 294
  end
  object cdsUploadStockRecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryUploadStockRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 89
    Top = 295
    object cdsUploadStockReconKSEI_ACC: TStringField
      FieldName = 'KSEI_ACC'
      Required = True
    end
    object cdsUploadStockReconSTK_POS: TFloatField
      FieldName = 'STK_POS'
    end
    object cdsUploadStockReconSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Required = True
    end
    object cdsUploadStockReconSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsUploadStockReconSTAT: TStringField
      FieldName = 'STAT'
      Required = True
      Size = 10
    end
  end
end
