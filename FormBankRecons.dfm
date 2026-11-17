inherited frmBankRecons: TfrmBankRecons
  Caption = 'Bank Reconsile'
  ClientHeight = 475
  ClientWidth = 1162
  OnShow = FormShow
  ExplicitWidth = 1162
  ExplicitHeight = 475
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1162
    Height = 220
    Align = alTop
    TabOrder = 0
    object txtBankRecon: TcxButtonEdit
      Left = 144
      Top = 112
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 227
    end
    object txtTransDate: TcxDateEdit
      Left = 144
      Top = 28
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnEditValueChanged = txtTransDatePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxButton2: TcxButton
      Left = 377
      Top = 112
      Width = 87
      Height = 25
      Action = actUploadData
      TabOrder = 3
    end
    object btnMutationAll: TcxButton
      Left = 842
      Top = 28
      Width = 155
      Height = 25
      Action = actCreateMutationAll
      TabOrder = 9
    end
    object chkDiff: TcxCheckBox
      Left = 144
      Top = 174
      Caption = 'Difference <> 0'
      Properties.OnEditValueChanged = chkDiffPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
    end
    object chkMutationType: TcxRadioGroup
      Left = 482
      Top = 67
      Caption = 'Mutation Type'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Cash Deposit'
          Value = 'C'
        end
        item
          Caption = 'Overbooking'
          Value = 'O'
        end
        item
          Caption = 'RTGS'
          Value = 'R'
        end
        item
          Caption = 'Bank Transfer'
          Value = 'T'
        end
        item
          Caption = 'Interest'
          Value = 'I'
        end
        item
          Caption = 'Interest - (Admin Fee + Tax)'
          Value = 'x'
        end
        item
          Caption = 'Admin Fee'
          Value = 'A'
        end
        item
          Caption = 'Misc'
          Value = 'M'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 8
      Height = 141
      Width = 342
    end
    object btnMutation: TcxButton
      Left = 842
      Top = 59
      Width = 155
      Height = 25
      Action = actCreateMutation
      TabOrder = 10
    end
    object txtMutationDate: TcxDateEdit
      Left = 522
      Top = 28
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 121
    end
    object cxButton4: TcxButton
      Left = 842
      Top = 90
      Width = 155
      Height = 25
      Caption = 'View Mutation By Account'
      TabOrder = 11
      OnClick = cxButton4Click
    end
    object txtBankMovement: TcxButtonEdit
      Left = 144
      Top = 143
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtBankMovementPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 227
    end
    object cxButton5: TcxButton
      Left = 377
      Top = 143
      Width = 87
      Height = 25
      Action = actUploadMutation
      TabOrder = 5
    end
    object cxButton6: TcxButton
      Left = 842
      Top = 121
      Width = 155
      Height = 25
      Caption = 'View Mutation All'
      TabOrder = 12
      OnClick = cxButton6Click
    end
    object cbBank: TcxLookupComboBox
      Left = 144
      Top = 85
      RepositoryItem = dmGlobal.luBankRDN
      Properties.ListColumns = <>
      Properties.OnCloseUp = cbBankPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
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
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Bank Recon File Name'
      Control = txtBankRecon
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction Date'
      Control = txtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Filter By'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Import Bank Recon'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnMutationAll
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = ' '
      Control = chkDiff
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Mutation Type'
      CaptionOptions.Visible = False
      Control = chkMutationType
      ControlOptions.OriginalHeight = 141
      ControlOptions.OriginalWidth = 342
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnMutation
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Mutation'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date'
      Control = txtMutationDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Bank Mutation File Name'
      Control = txtBankMovement
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Bank Name'
      Control = cbBank
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 220
    Width = 1162
    Height = 255
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwBankRecon: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBankReconcileTmp
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
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Caption = 'Bofis Data'
        end
        item
          Caption = 'Bank Data'
        end
        item
        end>
      object gvwBankReconTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReconBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankReconBNACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNACCNO'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankReconCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankReconSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankReconBNACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNACCNAME'
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankReconRDNPOS: TcxGridDBBandedColumn
        Caption = 'Bofis Saldo'
        DataBinding.FieldName = 'RDNPOS'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankReconDIFF_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Width = 96
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReconACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankReconACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReconACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankReconACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankReconACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankReconBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankRecon
    end
  end
  inherited popDocking: TPopupMenu
    Left = 435
    Top = 283
    object Post1: TMenuItem
      Caption = 'Post'
    end
    object PostAll1: TMenuItem
      Caption = 'Post All'
      OnClick = PostAll1Click
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclBankRecon
    Left = 435
    Top = 361
  end
  object cdsBankRecon: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 345
    object cdsBankReconTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankReconACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankReconALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsBankReconLDGACC: TStringField
      FieldName = 'LDGACC'
      Size = 10
    end
    object cdsBankReconBNACC: TStringField
      FieldName = 'BNACC'
      Required = True
      Size = 10
    end
    object cdsBankReconBNACCNO: TStringField
      FieldName = 'BNACCNO'
    end
    object cdsBankReconCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankReconRDNAMT: TFloatField
      FieldName = 'RDNAMT'
    end
    object cdsBankReconRDNBNK_AMT: TFloatField
      FieldName = 'RDNBNK_AMT'
    end
    object cdsBankReconDIFFAMT: TFloatField
      FieldName = 'DIFFAMT'
    end
    object cdsBankReconREF: TStringField
      FieldName = 'REF'
      Size = 10
    end
    object cdsBankReconATRNS: TStringField
      FieldName = 'ATRNS'
      Size = 1
    end
    object cdsBankReconCDID: TLargeintField
      FieldName = 'CDID'
    end
    object cdsBankReconV_TRNAMT: TFloatField
      FieldName = 'V_TRNAMT'
    end
    object cdsBankReconACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
  end
  object dsBankRecon: TDataSource
    DataSet = cdsBankRecon
    Left = 528
    Top = 399
  end
  object cdsBankReconcile: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Filter = 'DIFF_AMOUNT > 0'
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ALL'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankReconcile'
    RemoteServer = dmGlobal.dspConnection
    Left = 230
    Top = 408
    object cdsBankReconcileTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankReconcileACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsBankReconcileACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsBankReconcileACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsBankReconcileACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsBankReconcileACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      ReadOnly = True
    end
    object cdsBankReconcileBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankReconcileBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Required = True
      Size = 30
    end
    object cdsBankReconcileCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBankReconcileSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileRDNPOS: TFloatField
      FieldName = 'RDNPOS'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileDIFF_AMOUNT: TFloatField
      FieldName = 'DIFF_AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      Size = 100
    end
  end
  object dsBankReconcile: TDataSource
    DataSet = cdsBankReconcile
    Left = 176
    Top = 288
  end
  object aclBankRecon: TActionList
    Left = 275
    Top = 289
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Balance'
      OnExecute = actUploadDataExecute
      CheckPermission = False
    end
    object actCreateMutation: TNAction
      Category = 'NActions'
      Caption = 'Create Mutation'
      OnExecute = actCreateMutationExecute
      OnUpdate = actCreateMutationAllUpdate
      CheckPermission = False
    end
    object actCreateMutationAll: TNAction
      Category = 'NActions'
      Caption = 'Create Mutation All'
      OnExecute = actCreateMutationAllExecute
      OnUpdate = actCreateMutationAllUpdate
      CheckPermission = False
    end
    object actUploadMutation: TNAction
      Category = 'NActions'
      Caption = 'Upload Mutation'
      OnExecute = actUploadMutationExecute
      CheckPermission = False
    end
  end
  object cdsBankPosition: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankPosition'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'UPLOADID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 50
    Top = 408
    object cdsBankPositionUPLOADID: TIntegerField
      FieldName = 'UPLOADID'
      Required = True
    end
    object cdsBankPositionTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankPositionBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankPositionBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Required = True
      Size = 30
    end
    object cdsBankPositionCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsBankPositionSALDO: TFloatField
      FieldName = 'SALDO'
      Required = True
    end
    object cdsBankPositionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBankPositionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBankPositionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBankPositionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBankPositionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBankPositionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBankPositionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBankPositionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBankPositionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsBankPositionAUTODEP: TStringField
      FieldName = 'AUTODEP'
      Size = 1
    end
    object cdsBankPositionUPLOADCODE: TStringField
      FieldName = 'UPLOADCODE'
    end
    object cdsBankPositionBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      Size = 100
    end
  end
  object popGrid: TPopupMenu
    Left = 405
    Top = 418
  end
  object ImportFilesDialog: TOpenDialog
    Filter = 'CSV Files|*.csv|Text Files|*.txt'
    Left = 357
    Top = 291
  end
  object cdsBankReconcileTmp: TClientDataSet
    Aggregates = <>
    Filter = 'DIFF_AMOUNT <> 0'
    Params = <>
    Left = 636
    Top = 330
    object cdsBankReconcileTmpTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankReconcileTmpBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsBankReconcileTmpBNACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsBankReconcileTmpCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankReconcileTmpSALDO: TFloatField
      DisplayLabel = 'Bank Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpBNACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BNACCNAME'
      Size = 100
    end
    object cdsBankReconcileTmpRDNPOS: TFloatField
      DisplayLabel = 'RDN Position'
      FieldName = 'RDNPOS'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpDIFF_AMOUNT: TFloatField
      DisplayLabel = 'Difference Amount'
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsBankReconcileTmpACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsBankReconcileTmpACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsBankReconcileTmpACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsBankReconcileTmpACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      Size = 15
    end
    object cdsBankReconcileTmpACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsBankReconcileTmpBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      Size = 50
    end
    object cdsBankReconcileTmpBNINITIAL: TStringField
      FieldName = 'BNINITIAL'
      Size = 30
    end
  end
  object dsBankReconcileTmp: TDataSource
    DataSet = cdsBankReconcileTmp
    Left = 635
    Top = 279
  end
  object cdsRDNPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryRDNPositionByBank'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 525
    Top = 291
    object cdsRDNPositionACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsRDNPositionLDGSEQID: TIntegerField
      FieldName = 'LDGSEQID'
    end
    object cdsRDNPositionACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsRDNPositionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsRDNPositionACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsRDNPositionBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsRDNPositionBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsRDNPositionBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsRDNPositionBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsRDNPositionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsRDNPositionRDNPOS: TFloatField
      FieldName = 'RDNPOS'
    end
    object cdsRDNPositionACCBANKCODE: TStringField
      FieldName = 'ACCBANKCODE'
      Size = 30
    end
    object cdsRDNPositionLDGTYPE: TStringField
      FieldName = 'LDGTYPE'
      Size = 10
    end
    object cdsRDNPositionBNINITIAL: TStringField
      FieldName = 'BNINITIAL'
      Size = 30
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'Text Files|*.txt'
    Left = 354
    Top = 387
  end
  object cdsCashMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CMID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 51
    Top = 297
    object cdsCashMutationCMID: TLargeintField
      FieldName = 'CMID'
      Required = True
    end
    object cdsCashMutationCMCODE: TStringField
      FieldName = 'CMCODE'
      Required = True
    end
    object cdsCashMutationCMDATE: TDateField
      FieldName = 'CMDATE'
      Required = True
    end
    object cdsCashMutationCMTYPE: TStringField
      FieldName = 'CMTYPE'
      Size = 1
    end
    object cdsCashMutationCMDESC: TStringField
      FieldName = 'CMDESC'
      Size = 100
    end
    object cdsCashMutationACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashMutationACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashMutationACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsCashMutationDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashMutationCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashMutationCMAMT: TFloatField
      FieldName = 'CMAMT'
    end
    object cdsCashMutationPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashMutationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashMutationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashMutationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashMutationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashMutationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashMutationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashMutationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashMutationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashMutationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashMutationPOSTED_DATE: TDateField
      FieldName = 'POSTED_DATE'
    end
    object cdsCashMutationPOSTED_UI: TStringField
      FieldName = 'POSTED_UI'
      Size = 30
    end
    object cdsCashMutationCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashMutationCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashMutationCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
  end
  object cdsCashDep: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashDep'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 176
    Top = 340
    object cdsCashDepCDID: TLargeintField
      FieldName = 'CDID'
      Required = True
    end
    object cdsCashDepCDCODE: TStringField
      FieldName = 'CDCODE'
      Required = True
    end
    object cdsCashDepCDDATE: TDateField
      FieldName = 'CDDATE'
      Required = True
    end
    object cdsCashDepCDDESC: TStringField
      FieldName = 'CDDESC'
      Size = 100
    end
    object cdsCashDepACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashDepACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashDepACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsCashDepACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
      Required = True
    end
    object cdsCashDepACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
      Required = True
    end
    object cdsCashDepACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsCashDepCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashDepCDAMT: TFloatField
      FieldName = 'CDAMT'
      Required = True
    end
    object cdsCashDepLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashDepLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashDepPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashDepMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashDepMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashDepAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashDepAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashDepUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashDepUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashDepNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashDepISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashDepID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashDepLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashDepENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashDepCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashDepCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashDepCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashDepDEP_TYPE: TStringField
      FieldName = 'DEP_TYPE'
      Size = 1
    end
    object cdsCashDepUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
  end
  object cdsCashWdr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CWID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashWdr'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 177
    Top = 385
    object cdsCashWdrCWID: TLargeintField
      FieldName = 'CWID'
      Required = True
    end
    object cdsCashWdrCWCODE: TStringField
      FieldName = 'CWCODE'
      Required = True
    end
    object cdsCashWdrCWDATE: TDateField
      FieldName = 'CWDATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashWdrCWDESC: TStringField
      FieldName = 'CWDESC'
      Size = 100
    end
    object cdsCashWdrACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashWdrACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCashWdrACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
    end
    object cdsCashWdrACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsCashWdrSOURCE_ACCBANKID: TIntegerField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsCashWdrTARGET_ACCBANKID: TIntegerField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsCashWdrCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashWdrCWAMT: TFloatField
      FieldName = 'CWAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashWdrBNCHARGES: TFloatField
      FieldName = 'BNCHARGES'
      DisplayFormat = '#,##0.00'
    end
    object cdsCashWdrBNCHARGESTYPE: TStringField
      FieldName = 'BNCHARGESTYPE'
      Size = 10
    end
    object cdsCashWdrPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashWdrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashWdrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashWdrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashWdrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashWdrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashWdrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashWdrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashWdrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashWdrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashWdrACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrSOURCE_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'SOURCE_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_BNCODE: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNCODE'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BNCODE'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNO: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNO'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNO'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 30
      Lookup = True
    end
    object cdsCashWdrTARGET_BNACCNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNACCNAME'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKACCNAME'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTARGET_BNBRANCH: TStringField
      FieldKind = fkLookup
      FieldName = 'TARGET_BNBRANCH'
      LookupDataSet = dmLookup.cdsLuAccountBank
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'BANKBRANCH'
      KeyFields = 'TARGET_ACCBANKID'
      Size = 50
      Lookup = True
    end
    object cdsCashWdrTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashWdrTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
    end
    object cdsCashWdrCCY_TMP: TStringField
      FieldKind = fkLookup
      FieldName = 'CCY_TMP'
      LookupDataSet = dmLookup.cdsLuBankRDNByAccount
      LookupKeyFields = 'ACCBANKID'
      LookupResultField = 'CCYCODE'
      KeyFields = 'SOURCE_ACCBANKID'
      Size = 10
      Lookup = True
    end
    object cdsCashWdrACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashWdrLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashWdrLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashWdrLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashWdrENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashWdrWDR_TYPE: TStringField
      FieldName = 'WDR_TYPE'
      Size = 1
    end
    object cdsCashWdrCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashWdrCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashWdrCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashWdrAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashWdrAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashWdrAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashWdrUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
  end
  object cdsCashDepByDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'CDDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CDAMT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CDDESC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashDepByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 771
    Top = 306
    object cdsCashDepByDateCDID: TLargeintField
      FieldName = 'CDID'
      Required = True
    end
    object cdsCashDepByDateENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashDepByDateCDCODE: TStringField
      FieldName = 'CDCODE'
      Required = True
    end
    object cdsCashDepByDateCDDATE: TDateField
      FieldName = 'CDDATE'
      Required = True
    end
    object cdsCashDepByDateCDDESC: TStringField
      FieldName = 'CDDESC'
      Size = 100
    end
    object cdsCashDepByDateACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashDepByDateACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashDepByDateACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsCashDepByDateACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
      Required = True
    end
    object cdsCashDepByDateACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
      Required = True
    end
    object cdsCashDepByDateACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsCashDepByDateCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashDepByDateCDAMT: TFloatField
      FieldName = 'CDAMT'
      Required = True
    end
    object cdsCashDepByDateLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashDepByDateLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashDepByDateLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashDepByDateUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashDepByDatePOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashDepByDateCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashDepByDateCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashDepByDateCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashDepByDateDEP_TYPE: TStringField
      FieldName = 'DEP_TYPE'
      Size = 1
    end
    object cdsCashDepByDateMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashDepByDateMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashDepByDateAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashDepByDateAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashDepByDateUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashDepByDateUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashDepByDateNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashDepByDateISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashDepByDateID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsCashWdrByDate: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'CWDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CWAMT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CWDESC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashWdrByDate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 771
    Top = 351
    object cdsCashWdrByDateCWID: TLargeintField
      FieldName = 'CWID'
      Required = True
    end
    object cdsCashWdrByDateENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashWdrByDateCWCODE: TStringField
      FieldName = 'CWCODE'
      Required = True
    end
    object cdsCashWdrByDateCWDATE: TDateField
      FieldName = 'CWDATE'
      Required = True
    end
    object cdsCashWdrByDateCWDESC: TStringField
      FieldName = 'CWDESC'
      Size = 100
    end
    object cdsCashWdrByDateACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashWdrByDateACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsCashWdrByDateACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsCashWdrByDateACTLED_ACCID: TIntegerField
      FieldName = 'ACTLED_ACCID'
      Required = True
    end
    object cdsCashWdrByDateACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
      Required = True
    end
    object cdsCashWdrByDateSOURCE_ACCBANKID: TIntegerField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsCashWdrByDateTARGET_ACCBANKID: TIntegerField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsCashWdrByDateCCY: TStringField
      FieldName = 'CCY'
      Required = True
      Size = 5
    end
    object cdsCashWdrByDateCWAMT: TFloatField
      FieldName = 'CWAMT'
      Required = True
    end
    object cdsCashWdrByDateTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashWdrByDateBNCHARGES: TFloatField
      FieldName = 'BNCHARGES'
    end
    object cdsCashWdrByDateBNCHARGESTYPE: TStringField
      FieldName = 'BNCHARGESTYPE'
      Size = 10
    end
    object cdsCashWdrByDateTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
    end
    object cdsCashWdrByDateLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashWdrByDateLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashWdrByDateLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashWdrByDateUPLOAD_TIME: TDateTimeField
      FieldName = 'UPLOAD_TIME'
    end
    object cdsCashWdrByDatePOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashWdrByDateWDR_TYPE: TStringField
      FieldName = 'WDR_TYPE'
      Size = 1
    end
    object cdsCashWdrByDateCANCEL: TStringField
      FieldName = 'CANCEL'
      Size = 1
    end
    object cdsCashWdrByDateCANCEL_DATE: TDateField
      FieldName = 'CANCEL_DATE'
    end
    object cdsCashWdrByDateCANCEL_UI: TStringField
      FieldName = 'CANCEL_UI'
      Size = 30
    end
    object cdsCashWdrByDateAPPROVED: TStringField
      FieldName = 'APPROVED'
      Size = 1
    end
    object cdsCashWdrByDateAPPROVED_DATE: TDateField
      FieldName = 'APPROVED_DATE'
    end
    object cdsCashWdrByDateAPPROVED_UI: TStringField
      FieldName = 'APPROVED_UI'
      Size = 30
    end
    object cdsCashWdrByDateMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashWdrByDateMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashWdrByDateAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashWdrByDateAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashWdrByDateUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashWdrByDateUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashWdrByDateNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashWdrByDateISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashWdrByDateID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsBankList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryBankList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 357
    Top = 336
    object cdsBankListBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankListBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsBankListINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      Size = 10
    end
    object cdsBankListBICODE: TStringField
      FieldName = 'BICODE'
      Size = 10
    end
    object cdsBankListSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      Size = 10
    end
  end
end
