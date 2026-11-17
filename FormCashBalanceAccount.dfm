inherited frmCashBalanceAccount: TfrmCashBalanceAccount
  Caption = 'Cash Balance Account'
  ClientHeight = 567
  ClientWidth = 1004
  Visible = True
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 1004
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1004
    Height = 52
    Align = alTop
    BevelKind = bkTile
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      ParentColor = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 224
      Top = 10
      Width = 89
      Height = 25
      Action = actView
      TabOrder = 1
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
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object pcCashBalanceAccount: TcxPageControl [1]
    Left = 0
    Top = 52
    Width = 1004
    Height = 515
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbCBest
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 511
    ClientRectLeft = 4
    ClientRectRight = 1000
    ClientRectTop = 24
    object tbCBest: TcxTabSheet
      Caption = 'CBest Balance'
      ImageIndex = 0
      object grdCBestBalance: TcxGrid
        Left = 0
        Top = 0
        Width = 478
        Height = 487
        Align = alLeft
        PopupMenu = PopupMenu1
        TabOrder = 0
        object gvwCBestBalance: TcxGridDBBandedTableView
          OnKeyPress = gvwCBestBalanceKeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = gvwCBestBalanceCellClick
          DataController.DataSource = dsCbestBalance
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'SUBACC_BALANCE'
              Column = gvwCBestBalanceSUBACC_BALANCE
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCBestBalanceACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCBestBalanceACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCBestBalanceACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCBestBalanceACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCBestBalanceACCSOPNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCBestBalanceCCY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCY'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCBestBalanceSUBACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBACCNO'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCBestBalanceSUBACC_BALANCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBACC_BALANCE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object grdCBestBalanceLevel1: TcxGridLevel
          GridView = gvwCBestBalance
        end
      end
      object cxGrid2: TcxGrid
        Left = 486
        Top = 0
        Width = 510
        Height = 487
        Align = alClient
        TabOrder = 1
        object gvwCBestBalanceActivity: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCbestBalanceActivity
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'AMOUNT'
              Column = gvwCBestBalanceActivityAMOUNT
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCBestBalanceActivityACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityVALUEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityTRTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRTYPE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityREFID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityREFNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFNO'
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityREFTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityCDESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDESC'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCBestBalanceActivityAMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwCBestBalanceActivity
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 478
        Top = 0
        Width = 8
        Height = 487
        HotZoneClassName = 'TcxSimpleStyle'
        Control = grdCBestBalance
      end
    end
    object tbCredit: TcxTabSheet
      Caption = 'Credit Balance'
      ImageIndex = 1
      object grdCreditBalance: TcxGrid
        Left = 0
        Top = 0
        Width = 478
        Height = 487
        Align = alLeft
        PopupMenu = PopupMenu1
        TabOrder = 0
        object gvwCreditBalance: TcxGridDBBandedTableView
          OnKeyPress = gvwCreditBalanceKeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = gvwCreditBalanceCellClick
          DataController.DataSource = dsCreditBalance
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'CREDIT_BALANCE'
              Column = gvwCreditBalanceCREDIT_BALANCE
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
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCreditBalanceACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCreditBalanceACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCreditBalanceACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCreditBalanceACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCreditBalanceACCSOPNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCreditBalanceCCY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCY'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCreditBalanceSUBACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBACCNO'
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCreditBalanceCREDIT_BALANCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CREDIT_BALANCE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwCreditBalance
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 478
        Top = 0
        Width = 8
        Height = 487
        HotZoneClassName = 'TcxSimpleStyle'
        Control = grdCreditBalance
      end
      object cxGrid3: TcxGrid
        Left = 486
        Top = 0
        Width = 510
        Height = 487
        Align = alClient
        TabOrder = 2
        object gvwCreditBalanceActivity: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCreditBalanceActivity
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'AMOUNT'
              Column = gvwCreditBalanceActivityAMOUNT
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCreditBalanceActivityACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityVALUEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALUEDATE'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityTRTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRTYPE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityREFID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityREFNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFNO'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityREFTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityCDESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDESC'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwCreditBalanceActivityAMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwCreditBalanceActivity
        end
      end
    end
    object tbRecon: TcxTabSheet
      Caption = 'CBest Cash Recon'
      ImageIndex = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 43
        Width = 996
        Height = 444
        Align = alClient
        TabOrder = 0
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = gvwCreditBalanceCellClick
          DataController.DataSource = dsCBestCashRecon
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'ORCHID_BALANCE'
              Column = cxGridDBBandedTableView3ORCHID_BALANCE
            end
            item
              Format = '#,##0;(#,##0);0'
              Kind = skSum
              FieldName = 'SUBACC_BALANCE'
              Column = cxGridDBBandedTableView3SUBACC_BALANCE
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
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object cxGridDBBandedTableView3ACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Width = 119
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ACCSOPNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3CCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3KSEI_ACC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KSEI_ACC'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3SUBACC_BALANCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBACC_BALANCE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ORCHID_BALANCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORCHID_BALANCE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Different: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Different'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBBandedTableView3
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 996
        Height = 43
        Align = alTop
        TabOrder = 1
        object chkDifferent: TcxCheckBox
          Left = 10
          Top = 10
          Caption = 'Different Only'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          OnClick = chkDifferentClick
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = chkDifferent
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 92
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 258
    Top = 391
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    AssignedPermission = <
      item
        Name = 'CashBalanceAccount'
        Description = 'CashBalanceAccount'
      end>
    Left = 191
    Top = 424
  end
  object ActionList1: TActionList
    Left = 192
    Top = 372
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View'
      OnExecute = actViewExecute
      CheckPermission = False
    end
    object actCreditBalanceProcess: TNAction
      Category = 'NActions'
      Caption = 'Move to Cbest Balance'
      OnExecute = actCreditBalanceProcessExecute
      OnUpdate = actCreditBalanceProcessUpdate
      CheckPermission = False
    end
    object actCBestBalanceProcess: TNAction
      Category = 'NActions'
      Caption = 'Move to Credit Balance'
      OnExecute = actCBestBalanceProcessExecute
      OnUpdate = actCBestBalanceProcessUpdate
      CheckPermission = False
    end
  end
  object cdsCbestBalance: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCbestBalance'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 747
    Top = 273
    object cdsCbestBalanceACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCbestBalanceACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCbestBalanceACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCbestBalanceACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCbestBalanceACCSOPNAME: TStringField
      DisplayLabel = 'Account SOP Name'
      FieldName = 'ACCSOPNAME'
      Size = 150
    end
    object cdsCbestBalanceCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCbestBalanceSUBACCNO: TStringField
      DisplayLabel = 'Sub Account No'
      FieldName = 'SUBACCNO'
    end
    object cdsCbestBalanceSUBACC_BALANCE: TFloatField
      DisplayLabel = 'Balance'
      FieldName = 'SUBACC_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsCbestBalanceActivity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCbestBalanceActivity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 747
    Top = 315
    object cdsCbestBalanceActivityACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCbestBalanceActivityACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCbestBalanceActivityVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCbestBalanceActivityTRTYPE: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRTYPE'
      Size = 10
    end
    object cdsCbestBalanceActivityREFID: TLargeintField
      FieldName = 'REFID'
    end
    object cdsCbestBalanceActivityREFNO: TStringField
      DisplayLabel = 'Refference No'
      FieldName = 'REFNO'
    end
    object cdsCbestBalanceActivityREFTYPE: TStringField
      FieldName = 'REFTYPE'
    end
    object cdsCbestBalanceActivityCDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CDESC'
      Size = 150
    end
    object cdsCbestBalanceActivityAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsCreditBalance: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCreditBalance'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 747
    Top = 360
    object cdsCreditBalanceACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCreditBalanceACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCreditBalanceACCNAME: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCreditBalanceACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCreditBalanceACCSOPNAME: TStringField
      DisplayLabel = 'Account SOP Name'
      FieldName = 'ACCSOPNAME'
      Size = 150
    end
    object cdsCreditBalanceCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCreditBalanceSUBACCNO: TStringField
      DisplayLabel = 'Sub Account No'
      FieldName = 'SUBACCNO'
    end
    object cdsCreditBalanceCREDIT_BALANCE: TFloatField
      DisplayLabel = 'Balance'
      FieldName = 'CREDIT_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object cdsCreditBalanceActivity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCSOPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCreditBalanceActivity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 750
    Top = 405
    object cdsCreditBalanceActivityACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCreditBalanceActivityACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCreditBalanceActivityVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCreditBalanceActivityTRTYPE: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRTYPE'
      Size = 10
    end
    object cdsCreditBalanceActivityREFID: TLargeintField
      FieldName = 'REFID'
    end
    object cdsCreditBalanceActivityREFNO: TStringField
      DisplayLabel = 'Refference No'
      FieldName = 'REFNO'
    end
    object cdsCreditBalanceActivityREFTYPE: TStringField
      FieldName = 'REFTYPE'
    end
    object cdsCreditBalanceActivityCDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'CDESC'
      Size = 150
    end
    object cdsCreditBalanceActivityAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsCbestBalance: TDataSource
    DataSet = cdsCbestBalance
    Left = 789
    Top = 273
  end
  object dsCbestBalanceActivity: TDataSource
    DataSet = cdsCbestBalanceActivity
    Left = 789
    Top = 315
  end
  object dsCreditBalance: TDataSource
    DataSet = cdsCreditBalance
    Left = 789
    Top = 360
  end
  object dsCreditBalanceActivity: TDataSource
    DataSet = cdsCreditBalanceActivity
    Left = 789
    Top = 405
  end
  object cdsCBestCashRecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCBestCashRecon'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCBestCashReconCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 747
    Top = 231
    object cdsCBestCashReconACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCBestCashReconACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCBestCashReconACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCBestCashReconACCSOPNAME: TStringField
      DisplayLabel = 'Account SOP Name'
      FieldName = 'ACCSOPNAME'
      Size = 150
    end
    object cdsCBestCashReconCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCBestCashReconKSEI_ACC: TStringField
      DisplayLabel = 'KSEI Account'
      FieldName = 'KSEI_ACC'
    end
    object cdsCBestCashReconSUBACC_BALANCE: TFloatField
      DisplayLabel = 'Sub Account Balance'
      FieldName = 'SUBACC_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCBestCashReconORCHID_BALANCE: TFloatField
      DisplayLabel = 'Orchid Balance'
      FieldName = 'ORCHID_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCBestCashReconDifferent: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Different'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
  end
  object dsCBestCashRecon: TDataSource
    DataSet = cdsCBestCashRecon
    Left = 786
    Top = 231
  end
  object SaveDialog: TSaveDialog
    Filter = 'Wiretransfer|*.wt'
    Left = 693
    Top = 138
  end
  object cdsWireTransfer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ACCNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SUBACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CASHAMOUNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXREFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SOPACC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryWireTransferSelected'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 558
    Top = 231
    object cdsWireTransferexternalReference: TStringField
      FieldName = 'externalReference'
    end
    object cdsWireTransferparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsWireTransferparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsWireTransferbeneficiaryAccount: TStringField
      FieldName = 'beneficiaryAccount'
    end
    object cdsWireTransferbeneficiaryInstitution: TStringField
      FieldName = 'beneficiaryInstitution'
      Size = 10
    end
    object cdsWireTransfervalueDate: TStringField
      FieldName = 'valueDate'
      Size = 10
    end
    object cdsWireTransfercurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsWireTransfercashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsWireTransferdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
  object cdsBookTransfer: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ACCNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CCYCODE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SUBACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CASHAMOUNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXREFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SOPACC'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DESC'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryBookTransferSelected'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 558
    Top = 279
    object cdsBookTransferexternalReference: TStringField
      FieldName = 'externalReference'
    end
    object cdsBookTransferparticipantCode: TStringField
      FieldName = 'participantCode'
    end
    object cdsBookTransferparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsBookTransfercounterpartAccount: TStringField
      FieldName = 'counterpartAccount'
    end
    object cdsBookTransfervalueDate: TStringField
      FieldName = 'valueDate'
      Size = 10
    end
    object cdsBookTransfercurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsBookTransfercashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsBookTransferdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 255
    Top = 264
    object CreditBalanceProcess1: TMenuItem
      Action = actCreditBalanceProcess
    end
    object CBestBalanceProcess1: TMenuItem
      Action = actCBestBalanceProcess
    end
  end
  object cdsWireTransferTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 555
    Top = 357
    object cdsWireTransferTmpexternalReference: TStringField
      FieldName = 'externalReference'
    end
    object cdsWireTransferTmpparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsWireTransferTmpparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsWireTransferTmpbeneficiaryAccount: TStringField
      FieldName = 'beneficiaryAccount'
    end
    object cdsWireTransferTmpbeneficiaryInstitution: TStringField
      FieldName = 'beneficiaryInstitution'
      Size = 10
    end
    object cdsWireTransferTmpvalueDate: TStringField
      FieldName = 'valueDate'
      Size = 10
    end
    object cdsWireTransferTmpcurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsWireTransferTmpcashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsWireTransferTmpdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
  object cdsBookTransferTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 558
    Top = 405
    object cdsBookTransferTmpexternalReference: TStringField
      FieldName = 'externalReference'
    end
    object cdsBookTransferTmpparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsBookTransferTmpparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsBookTransferTmpcounterpartAccount: TStringField
      FieldName = 'counterpartAccount'
    end
    object cdsBookTransferTmpvalueDate: TStringField
      FieldName = 'valueDate'
      Size = 10
    end
    object cdsBookTransferTmpcurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsBookTransferTmpcashAmount: TFloatField
      FieldName = 'cashAmount'
    end
    object cdsBookTransferTmpdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
  end
end
