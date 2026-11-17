inherited frmDHK: TfrmDHK
  Caption = 'DHK'
  ClientHeight = 546
  ClientWidth = 1030
  OnResize = FormResize
  OnShow = FormShow
  ExplicitWidth = 1030
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1030
    Height = 49
    Align = alTop
    TabOrder = 0
    object dtDueDate: TcxDateEdit
      Left = 69
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object cxButton1: TcxButton
      Left = 195
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 276
      Top = 10
      Width = 139
      Height = 25
      Action = actReconcileData
      TabOrder = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Trade Date'
      Control = dtDueDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 49
    Width = 1030
    Height = 497
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabDHK
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 493
    ClientRectLeft = 4
    ClientRectRight = 1026
    ClientRectTop = 24
    object tabDHK: TcxTabSheet
      Caption = 'KSEI DHK'
      ImageIndex = 0
      object grdMaster: TcxGrid
        Left = 0
        Top = 49
        Width = 1022
        Height = 420
        Align = alClient
        TabOrder = 0
        object gvwMaster: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDHK
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0 Records'
              Kind = skCount
              FieldName = 'DHKNO'
              Column = gvwMasterDHKNO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
            end>
          object gvwMasterDHKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DHKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwMasterDHKNO: TcxGridDBBandedColumn
            Caption = 'DHK No.'
            DataBinding.FieldName = 'DHKNO'
            Width = 141
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwMasterDAY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DAY'
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwMasterCS_PAYMENT_TOTAL_OBL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CS_PAYMENT_TOTAL_OBL'
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwMasterCS_PAYMENT_TOTAL_RIGHT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
            Width = 131
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwMasterCF_PAYMENT_TOTAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CF_PAYMENT_TOTAL'
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwMasterCF_PAYMENT_TOTAL_OBL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CF_PAYMENT_TOTAL_OBL'
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwMasterMEMBER_NAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEMBER_NAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwMasterMEMBER_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEMBER_ID'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwMasterID_ACCT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID_ACCT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwMasterSID_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SID_CODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwMasterCF_ACCT_4: TcxGridDBBandedColumn
            Caption = 'Account KSEI 04'
            DataBinding.FieldName = 'CF_ACCT_4'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwMasterCF_ACCT_1: TcxGridDBBandedColumn
            Caption = 'Account KSEI 01'
            DataBinding.FieldName = 'CF_ACCT_1'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwMasterSORT_ORDER: TcxGridDBBandedColumn
            Caption = 'Sort Order'
            DataBinding.FieldName = 'SORT_ORDER'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwMasterSECURITY_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SECURITY_CODE'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwMasterSECURITY_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SECURITY_ID'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwMasterRIGHTS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RIGHTS'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwMasterOBLIGATION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBLIGATION'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwMasterSECURITY: TcxGridDBBandedColumn
            Caption = 'Security'
            DataBinding.FieldName = 'SECURITY'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwMasterOBLIGATION_CASH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBLIGATION_CASH'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwMasterRIGHT_CASH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RIGHT_CASH'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwMasterCF_IDR_VALUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CF_IDR_VALUE'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwMasterCF_OBLIGATION_CASH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CF_OBLIGATION_CASH'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwMasterCF_OBLIGATION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CF_OBLIGATION'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwMasterSTAT: TcxGridDBBandedColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STAT'
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
        end
        object grdMasterLevel1: TcxGridLevel
          GridView = gvwMaster
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 1022
        Height = 49
        Align = alTop
        TabOrder = 1
        object cxButton2: TcxButton
          Left = 511
          Top = 10
          Width = 75
          Height = 25
          Action = actUploadDHK
          TabOrder = 1
        end
        object edDHKFile: TcxButtonEdit
          Left = 54
          Top = 10
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edDHKFilePropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Width = 451
        end
        object cxButton4: TcxButton
          Left = 592
          Top = 10
          Width = 154
          Height = 25
          Action = actGenerateDHKInstruction
          TabOrder = 2
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group1
          CaptionOptions.Text = 'DHK File'
          Control = edDHKFile
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 451
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'cxButton4'
          CaptionOptions.Visible = False
          Control = cxButton4
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 154
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Group1: TdxLayoutGroup
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
    end
    object TabStockCompare: TcxTabSheet
      Caption = 'DHK Stock Compare'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 219
        Width = 1022
        Height = 250
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object grdDHKStockCompare: TcxGrid
          Left = 404
          Top = 0
          Width = 618
          Height = 250
          Align = alClient
          TabOrder = 0
          object gvwDHKStockCompare: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDHKStockCompare
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0 Records'
                Kind = skCount
                FieldName = 'ACCNO'
                Column = gvwDHKStockCompareACCNO
              end>
            DataController.Summary.SummaryGroups = <>
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
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
                Caption = 'Custody Instruction'
                HeaderAlignmentHorz = taLeftJustify
              end>
            object gvwDHKStockCompareCBEST_STATUS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CBEST_STATUS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCREATE_FILE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CREATE_FILE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCOUNT_CREATE_FILE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COUNT_CREATE_FILE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCBEST_UPLOAD: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CBEST_UPLOAD'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCUSTODY_INSTRID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTODY_INSTRID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCUSTODY_EXTREF: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTODY_EXTREF'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareTRDDATE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TRDDATE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareSETTLEMENTDATE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SETTLEMENTDATE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareSETTLE_SIDE: TcxGridDBBandedColumn
              Caption = 'Settle Side'
              DataBinding.FieldName = 'SETTLE_SIDE'
              Visible = False
              Width = 36
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareINSTRUCTION: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INSTRUCTION'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareACCNO: TcxGridDBBandedColumn
              Caption = 'Account No'
              DataBinding.FieldName = 'ACCNO'
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareACCNAME: TcxGridDBBandedColumn
              Caption = 'Account Name'
              DataBinding.FieldName = 'ACCNAME'
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareACCINIT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCINIT'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwDHKStockComparePARTY_CODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PARTY_CODE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCBEST_01: TcxGridDBBandedColumn
              Caption = 'Cust CBest 01'
              DataBinding.FieldName = 'CBEST_01'
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCBEST_04: TcxGridDBBandedColumn
              Caption = 'Cust CBest 04'
              DataBinding.FieldName = 'CBEST_04'
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCCYCODE: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CCYCODE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareSECURITIY_CODE: TcxGridDBBandedColumn
              Caption = 'Stock Code'
              DataBinding.FieldName = 'SECURITIY_CODE'
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareQTY: TcxGridDBBandedColumn
              Caption = 'Quantity'
              DataBinding.FieldName = 'QTY'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareCUSTODY_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTODY_DESC'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareREMARKS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REMARKS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object gvwDHKStockCompareBS: TcxGridDBBandedColumn
              Caption = 'B/S'
              DataBinding.FieldName = 'BS'
              RepositoryItem = dmGlobal.luBuySell
              Width = 31
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
          end
          object grdDHKStockCompareLevel1: TcxGridLevel
            GridView = gvwDHKStockCompare
          end
        end
        object grdDHKStock: TcxGrid
          Left = 0
          Top = 0
          Width = 396
          Height = 250
          Align = alLeft
          TabOrder = 1
          object gvwDHKStock: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDHKInstructionUnMatch
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0 Records'
                Kind = skCount
                FieldName = 'DHK_EXTREF'
                Column = gvwDHKStockDHK_EXTREF
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
                Caption = 'DHK Instruction Unmatch'
                HeaderAlignmentHorz = taLeftJustify
              end>
            object gvwDHKStockDHK_INSTRID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DHK_INSTRID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwDHKStockDHK_EXTREF: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DHK_EXTREF'
              Width = 59
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwDHKStockBS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BS'
              RepositoryItem = dmGlobal.luBuySell
              Width = 33
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwDHKStockACCID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwDHKStockACCNO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCNO'
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwDHKStockACCNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACCNAME'
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object gvwDHKStockTRDDATE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TRDDATE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwDHKStockSETTLEDATE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SETTLEDATE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwDHKStockSETTLE_SIDE: TcxGridDBBandedColumn
              Caption = 'Settle Side'
              DataBinding.FieldName = 'SETTLE_SIDE'
              Visible = False
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object gvwDHKStockINSTRUCTION_TYPE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INSTRUCTION_TYPE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object gvwDHKStockMEMBER_ID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MEMBER_ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object gvwDHKStockCBEST01_ACC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CBEST01_ACC'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object gvwDHKStockCBEST04_ACC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CBEST04_ACC'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object gvwDHKStockSECURITYCODE_TYPE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SECURITYCODE_TYPE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object gvwDHKStockSTOCKID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'STOCKID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object gvwDHKStockSTOCKCODE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'STOCKCODE'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object gvwDHKStockQTY: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QTY'
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object gvwDHKStockREMARKS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REMARKS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object gvwDHKStockDHKID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DHKID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object gvwDHKStockCUSTODY_INSTRID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTODY_INSTRID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object gvwDHKStockMATCH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MATCH'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object gvwDHKStockSETTLE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SETTLE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object gvwDHKStockMODDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object gvwDHKStockMODUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object gvwDHKStockAPPDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object gvwDHKStockAPPUI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APPUI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object gvwDHKStockUNDER4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object gvwDHKStockUNDER4YDA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNDER4YDA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object gvwDHKStockNOTES4Y: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES4Y'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object gvwDHKStockISDEL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ISDEL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object gvwDHKStockID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
          end
          object grdDHKStockLevel1: TcxGridLevel
            GridView = gvwDHKStock
          end
        end
        object cxSplitter2: TcxSplitter
          Left = 396
          Top = 0
          Width = 8
          Height = 250
          HotZoneClassName = 'TcxSimpleStyle'
          Control = grdDHKStock
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1022
        Height = 219
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        object gvwDHKStockCompared: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDHKInstructionMatch
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0 Records'
              Kind = skCount
              FieldName = 'DHK_EXTREF'
              Column = gvwDHKStockComparedDHK_EXTREF
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          Bands = <
            item
              Caption = 'DHK Instruction Match'
              HeaderAlignmentHorz = taLeftJustify
            end>
          object gvwDHKStockComparedDHK_INSTRID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DHK_INSTRID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedDHK_EXTREF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DHK_EXTREF'
            Width = 211
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BS'
            RepositoryItem = dmGlobal.luBuySell
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 189
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedTRDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRDDATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSETTLEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLEDATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSETTLE_SIDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_SIDE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedINSTRUCTION_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUCTION_TYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedMEMBER_ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEMBER_ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedCBEST01_ACC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST01_ACC'
            Width = 151
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedCBEST04_ACC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST04_ACC'
            Width = 148
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSECURITYCODE_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SECURITYCODE_TYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSTOCKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSTOCKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedQTY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTY'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedREMARKS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REMARKS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedDHKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DHKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedCUSTODY_INSTRID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_INSTRID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedMATCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MATCH'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedSETTLE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwDHKStockComparedID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwDHKStockCompared
        end
      end
    end
  end
  object pnlLoadingData: TPanel [2]
    Left = 13
    Top = 151
    Width = 232
    Height = 31
    BevelOuter = bvNone
    Caption = 'Loading Data...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  inherited popDocking: TPopupMenu
    Left = 271
    Top = 176
    object ManualMatch1: TMenuItem
      Action = actManualMatch
    end
    object Edit1: TMenuItem
      Action = actEdit
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclDHK
    Left = 199
    Top = 251
  end
  object aclDHK: TActionList
    Left = 145
    Top = 179
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actUploadDHK: TNAction
      Category = 'NActions'
      Caption = 'Upload DHK'
      OnExecute = actUploadDHKExecute
      CheckPermission = False
    end
    object actCreateSelectStockVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Selected Stock Voucher'
      OnExecute = actCreateSelectStockVoucherExecute
      OnUpdate = actCreateSelectStockVoucherUpdate
      CheckPermission = False
    end
    object actCreateSelectCashVoucher: TNAction
      Category = 'NActions'
      Caption = 'Create Selected Cash Voucher'
      OnUpdate = actCreateSelectCashVoucherUpdate
      CheckPermission = False
    end
    object actReconcileData: TNAction
      Category = 'NActions'
      Caption = 'Reconcile Data'
      Enabled = False
      OnExecute = actReconcileDataExecute
      OnUpdate = actReconcileDataUpdate
      CheckPermission = False
    end
    object actEdit: TNAction
      Category = 'NActions'
      Caption = 'Edit'
      OnExecute = actEditExecute
      OnUpdate = actEditUpdate
      CheckPermission = False
    end
    object actManualMatch: TNAction
      Category = 'NActions'
      Caption = 'Manual Match'
      CheckPermission = False
    end
    object actSettle: TNAction
      Category = 'NActions'
      Caption = 'Settle'
      OnExecute = actSettleExecute
      CheckPermission = False
    end
    object actGenerateDHKInstruction: TNAction
      Category = 'NActions'
      Caption = 'Generate DHK Instruction'
      OnExecute = actGenerateDHKInstructionExecute
      CheckPermission = False
    end
    object actGenerateCOLW: TNAction
      Category = 'NActions'
      Caption = 'Generate COLW'
      OnExecute = actGenerateCOLWExecute
      OnUpdate = actGenerateCOLWUpdate
      CheckPermission = False
    end
    object actGenerateCOLDS: TNAction
      Category = 'NActions'
      Caption = 'Generate COLDS'
      OnExecute = actGenerateCOLDSExecute
      OnUpdate = actGenerateCOLWUpdate
      CheckPermission = False
    end
  end
  object cdsDHK: TNClientDataset
    Aggregates = <>
    Filter = 
      '(SECURITY_CODE <> '#39'IDR'#39' ) and ((RIGHTS <> 0) or (OBLIGATION <> 0' +
      '))'
    Filtered = True
    Params = <
      item
        DataType = ftDate
        Name = 'DAY'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHK'
    RemoteServer = dmGlobal.dspConnection
    OnReconcileError = cdsDHKReconcileError
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 33
    Top = 254
    object cdsDHKDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKDHKNO: TStringField
      FieldName = 'DHKNO'
      Required = True
    end
    object cdsDHKDAY: TDateField
      FieldName = 'DAY'
      Required = True
      DisplayFormat = 'DD MMM YYYY'
    end
    object cdsDHKCS_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_OBL'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCF_PAYMENT_TOTAL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCF_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL_OBL'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKMEMBER_NAME: TStringField
      FieldName = 'MEMBER_NAME'
      Size = 150
    end
    object cdsDHKMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Required = True
      Size = 10
    end
    object cdsDHKID_ACCT: TStringField
      FieldName = 'ID_ACCT'
      Required = True
    end
    object cdsDHKSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Required = True
    end
    object cdsDHKCF_ACCT_4: TStringField
      FieldName = 'CF_ACCT_4'
    end
    object cdsDHKCF_ACCT_1: TStringField
      FieldName = 'CF_ACCT_1'
    end
    object cdsDHKSORT_ORDER: TStringField
      FieldName = 'SORT_ORDER'
      Size = 10
    end
    object cdsDHKSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Required = True
    end
    object cdsDHKSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 150
    end
    object cdsDHKRIGHTS: TFloatField
      FieldName = 'RIGHTS'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKSECURITY: TStringField
      FieldName = 'SECURITY'
      Size = 150
    end
    object cdsDHKOBLIGATION_CASH: TFloatField
      FieldName = 'OBLIGATION_CASH'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKRIGHT_CASH: TFloatField
      FieldName = 'RIGHT_CASH'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCF_IDR_VALUE: TFloatField
      FieldName = 'CF_IDR_VALUE'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCF_OBLIGATION_CASH: TFloatField
      FieldName = 'CF_OBLIGATION_CASH'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKCF_OBLIGATION: TFloatField
      FieldName = 'CF_OBLIGATION'
      DisplayFormat = '#,##00;(#,##00);0'
    end
    object cdsDHKSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDHKMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDHKMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDHKAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDHKAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDHKUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDHKUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDHKNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDHKISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDHKID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDHKWTNO: TStringField
      FieldName = 'WTNO'
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Text File|*.txt|Excel File|*.xls'
    Left = 81
    Top = 227
  end
  object dsDHK: TDataSource
    DataSet = cdsDHK
    Left = 25
    Top = 179
  end
  object cdsDHKStockCompare: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKStockCompare'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 696
    Top = 360
    object cdsDHKStockCompareCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsDHKStockCompareACCOUNT_SID: TStringField
      DisplayLabel = 'Account SID'
      FieldName = 'ACCOUNT_SID'
    end
    object cdsDHKStockCompareACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDHKStockCompareACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDHKStockCompareSI_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsDHKStockCompareSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsDHKStockCompareCBEST_ACC_01: TStringField
      DisplayLabel = 'CBest Account 01'
      FieldName = 'CBEST_ACC_01'
    end
    object cdsDHKStockCompareBEST_ACC_04: TStringField
      DisplayLabel = 'CBest Account 04'
      FieldName = 'BEST_ACC_04'
    end
    object cdsDHKStockCompareCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
    end
    object cdsDHKStockCompareQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDHKStockCompareKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
  end
  object dsDHKStockCompare: TDataSource
    DataSet = cdsDHKInstruction
    Left = 696
    Top = 408
  end
  object cdsDHKStock: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 99
    Top = 419
    object cdsDHKStockSETTLESIDE: TStringField
      FieldName = 'SETTLESIDE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsDHKStockSID_CODE: TStringField
      FieldName = 'SID_CODE'
      ReadOnly = True
      Size = 255
    end
    object cdsDHKStockCBEST_ACC_01: TStringField
      FieldName = 'CBEST_ACC_01'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKStockCBEST_ACC_04: TStringField
      FieldName = 'CBEST_ACC_04'
      ReadOnly = True
      Size = 8000
    end
    object cdsDHKStockSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Size = 255
    end
    object cdsDHKStockVALUE: TFloatField
      FieldName = 'VALUE'
      ReadOnly = True
    end
  end
  object dsDHKInstructionUnMatch: TDataSource
    DataSet = cdsDHKInstructionUnMatch
    Left = 315
    Top = 447
  end
  object cdsSettleInstrBySIID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySettleInstrBySIID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 465
    Top = 399
    object cdsSettleInstrBySIIDSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSettleInstrBySIIDKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
  end
  object dsDHKInstructionMatch: TDataSource
    DataSet = cdsDHKInstructionMatch
    Left = 428
    Top = 208
  end
  object cdsDHKStockVoucher: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DueDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VoucherType'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'InstructionMode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockDelRev'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 693
    Top = 198
    object cdsDHKStockVoucherVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
    end
    object cdsDHKStockVoucherCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
    end
    object cdsDHKStockVoucherVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
    end
    object cdsDHKStockVoucherTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsDHKStockVoucherSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsDHKStockVoucherVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsDHKStockVoucherACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDHKStockVoucherACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsDHKStockVoucherACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDHKStockVoucherCUSTODYID_SOURCE: TLargeintField
      FieldName = 'CUSTODYID_SOURCE'
    end
    object cdsDHKStockVoucherCUSTODYCODE_SOURCE: TStringField
      FieldName = 'CUSTODYCODE_SOURCE'
      Size = 10
    end
    object cdsDHKStockVoucherCUSTODYACCNO_SOURCE: TStringField
      FieldName = 'CUSTODYACCNO_SOURCE'
    end
    object cdsDHKStockVoucherCUSTODYACCNAME_SOURCE: TStringField
      FieldName = 'CUSTODYACCNAME_SOURCE'
      Size = 150
    end
    object cdsDHKStockVoucherCUSTODYACCBRANCH_SOURCE: TStringField
      FieldName = 'CUSTODYACCBRANCH_SOURCE'
      Size = 100
    end
    object cdsDHKStockVoucherCUSTODYID_TARGET: TLargeintField
      FieldName = 'CUSTODYID_TARGET'
    end
    object cdsDHKStockVoucherCUSTODYCODE_TARGET: TStringField
      FieldName = 'CUSTODYCODE_TARGET'
      Size = 10
    end
    object cdsDHKStockVoucherCUSTODYACCNO_TARGET: TStringField
      FieldName = 'CUSTODYACCNO_TARGET'
    end
    object cdsDHKStockVoucherCUSTODYACCNAME_TARGET: TStringField
      FieldName = 'CUSTODYACCNAME_TARGET'
      Size = 150
    end
    object cdsDHKStockVoucherCUSTODYACCBRANCH_TARGET: TStringField
      FieldName = 'CUSTODYACCBRANCH_TARGET'
      Size = 100
    end
    object cdsDHKStockVoucherTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsDHKStockVoucherREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 100
    end
    object cdsDHKStockVoucherSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsDHKStockVoucherQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsDHKStockVoucherCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDHKStockVoucherAMT: TFloatField
      FieldName = 'AMT'
    end
    object cdsDHKStockVoucherSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDHKStockVoucherREFNO: TStringField
      FieldName = 'REFNO'
    end
  end
  object cdsSettleInstr: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qrySettleInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 600
    Top = 144
    object cdsSettleInstrSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsSettleInstrSINO: TStringField
      FieldName = 'SINO'
    end
    object cdsSettleInstrENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsSettleInstrVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSettleInstrSITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsSettleInstrCASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsSettleInstrSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSettleInstrINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsSettleInstrNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsSettleInstrACCOUNT_SID: TStringField
      FieldName = 'ACCOUNT_SID'
    end
    object cdsSettleInstrACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSettleInstrACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsSettleInstrACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSettleInstrTRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsSettleInstrBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsSettleInstrBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsSettleInstrBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsSettleInstrSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsSettleInstrSETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsSettleInstrSETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
    end
    object cdsSettleInstrSETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsSettleInstrSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsSettleInstrSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSettleInstrQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsSettleInstrTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsSettleInstrDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsSettleInstrSETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
    end
    object cdsSettleInstrSI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsSettleInstrSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsSettleInstrOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsSettleInstrVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsSettleInstrVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsSettleInstrNO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsSettleInstrKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsSettleInstrSETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsSettleInstrTRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsSettleInstrACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsSettleInstrUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsSettleInstrCP_ACCBANKID: TIntegerField
      FieldName = 'CP_ACCBANKID'
    end
    object cdsSettleInstrCP_BANKCODE: TStringField
      FieldName = 'CP_BANKCODE'
      Size = 10
    end
    object cdsSettleInstrCP_BANKACCNO: TStringField
      FieldName = 'CP_BANKACCNO'
    end
    object cdsSettleInstrSOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsSettleInstrSOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsSettleInstrSOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsSettleInstrSOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsSettleInstrTARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsSettleInstrTARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsSettleInstrTARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsSettleInstrTARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
    object cdsSettleInstrCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsSettleInstrCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsSettleInstrCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsSettleInstrCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsSettleInstrREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsSettleInstrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSettleInstrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSettleInstrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSettleInstrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSettleInstrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSettleInstrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSettleInstrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSettleInstrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSettleInstrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSettleInstrBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsSettleInstrACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
    end
    object cdsSettleInstrCP_BANKACCNAME: TStringField
      FieldName = 'CP_BANKACCNAME'
      Size = 150
    end
    object cdsSettleInstrBANKCODE: TStringField
      FieldName = 'BANKCODE'
      Size = 10
    end
    object cdsSettleInstrBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsSettleInstrBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 150
    end
    object cdsSettleInstrCP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 335
    Top = 237
    object GenerateCOLW1: TMenuItem
      Action = actGenerateCOLW
    end
    object Generate1: TMenuItem
      Action = actGenerateCOLDS
    end
  end
  object cdsDHKUpload: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKUpload'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 61
    Top = 371
    object cdsDHKUploadDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKUploadDHKNO: TStringField
      FieldName = 'DHKNO'
      Required = True
    end
    object cdsDHKUploadDAY: TDateField
      FieldName = 'DAY'
    end
    object cdsDHKUploadCS_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKUploadCS_PAYMENT_TOTAL_RIGHT: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
    end
    object cdsDHKUploadCF_PAYMENT_TOTAL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL'
    end
    object cdsDHKUploadCF_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKUploadMEMBER_NAME: TStringField
      FieldName = 'MEMBER_NAME'
      Size = 255
    end
    object cdsDHKUploadMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 255
    end
    object cdsDHKUploadID_ACCT: TStringField
      FieldName = 'ID_ACCT'
      Size = 255
    end
    object cdsDHKUploadSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Size = 255
    end
    object cdsDHKUploadCF_ACCT_4: TStringField
      FieldName = 'CF_ACCT_4'
      Size = 255
    end
    object cdsDHKUploadCF_ACCT_1: TStringField
      FieldName = 'CF_ACCT_1'
      Size = 255
    end
    object cdsDHKUploadSORT_ORDER: TStringField
      FieldName = 'SORT_ORDER'
      Size = 255
    end
    object cdsDHKUploadSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Size = 255
    end
    object cdsDHKUploadSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 255
    end
    object cdsDHKUploadRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsDHKUploadOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsDHKUploadSECURITY: TStringField
      FieldName = 'SECURITY'
      Size = 255
    end
    object cdsDHKUploadOBLIGATION_CASH: TFloatField
      FieldName = 'OBLIGATION_CASH'
    end
    object cdsDHKUploadRIGHT_CASH: TFloatField
      FieldName = 'RIGHT_CASH'
    end
    object cdsDHKUploadCF_IDR_VALUE: TFloatField
      FieldName = 'CF_IDR_VALUE'
    end
    object cdsDHKUploadCF_OBLIGATION_CASH: TFloatField
      FieldName = 'CF_OBLIGATION_CASH'
    end
    object cdsDHKUploadCF_OBLIGATION: TFloatField
      FieldName = 'CF_OBLIGATION'
    end
    object cdsDHKUploadSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
  end
  object cdsDHKInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FILTERBY'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MATCH'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 345
    Top = 140
    object cdsDHKInstructionCBEST_STATUS: TStringField
      FieldName = 'CBEST_STATUS'
      Size = 1
    end
    object cdsDHKInstructionCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsDHKInstructionCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsDHKInstructionCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsDHKInstructionCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
    end
    object cdsDHKInstructionCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
    end
    object cdsDHKInstructionTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsDHKInstructionSETTLEMENTDATE: TDateField
      FieldName = 'SETTLEMENTDATE'
    end
    object cdsDHKInstructionSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsDHKInstructionINSTRUCTION: TStringField
      FieldName = 'INSTRUCTION'
      Size = 10
    end
    object cdsDHKInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDHKInstructionACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDHKInstructionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDHKInstructionACCINIT: TStringField
      FieldName = 'ACCINIT'
    end
    object cdsDHKInstructionPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsDHKInstructionCBEST_01: TStringField
      FieldName = 'CBEST_01'
    end
    object cdsDHKInstructionCBEST_04: TStringField
      FieldName = 'CBEST_04'
    end
    object cdsDHKInstructionCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDHKInstructionSECURITIY_CODE: TStringField
      FieldName = 'SECURITIY_CODE'
    end
    object cdsDHKInstructionQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDHKInstructionCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsDHKInstructionREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsDHKInstructionBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
  end
  object cdsCustodyInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CUSTODY_INSTRID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCustodyInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 490
    Top = 230
    object cdsCustodyInstructionCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyInstructionCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 30
    end
    object cdsCustodyInstructionEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsCustodyInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCustodyInstructionACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCustodyInstructionACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCustodyInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsCustodyInstructionTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsCustodyInstructionSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsCustodyInstructionSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsCustodyInstructionINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsCustodyInstructionPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsCustodyInstructionCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsCustodyInstructionCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsCustodyInstructionCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsCustodyInstructionSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsCustodyInstructionSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCustodyInstructionQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCustodyInstructionCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCustodyInstructionORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
    end
    object cdsCustodyInstructionSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
    end
    object cdsCustodyInstructionSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsCustodyInstructionSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsCustodyInstructionISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsCustodyInstructionFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsCustodyInstructionFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsCustodyInstructionFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
    end
    object cdsCustodyInstructionCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsCustodyInstructionREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsCustodyInstructionPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsCustodyInstructionTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsCustodyInstructionSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsCustodyInstructionBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsCustodyInstructionBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsCustodyInstructionCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsCustodyInstructionLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCustodyInstructionCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsCustodyInstructionCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsCustodyInstructionCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsCustodyInstructionCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsCustodyInstructionCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsCustodyInstructionSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsCustodyInstructionSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCustodyInstructionMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsCustodyInstructionKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsCustodyInstructionCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsCustodyInstructionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCustodyInstructionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCustodyInstructionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCustodyInstructionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCustodyInstructionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCustodyInstructionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCustodyInstructionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCustodyInstructionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCustodyInstructionID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsDHKInstructionUnMatch: TNClientDataset
    Aggregates = <>
    Filter = 'MATCH = '#39'0'#39
    Filtered = True
    Params = <
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKInstructions'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 315
    Top = 395
    object cdsDHKInstructionUnMatchDHK_INSTRID: TLargeintField
      FieldName = 'DHK_INSTRID'
      Required = True
    end
    object cdsDHKInstructionUnMatchDHK_EXTREF: TStringField
      DisplayLabel = 'DHK Exreff'
      FieldName = 'DHK_EXTREF'
      Required = True
      Size = 40
    end
    object cdsDHKInstructionUnMatchBS: TStringField
      DisplayLabel = 'B/S'
      FieldName = 'BS'
      Size = 1
    end
    object cdsDHKInstructionUnMatchACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDHKInstructionUnMatchACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDHKInstructionUnMatchACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDHKInstructionUnMatchTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsDHKInstructionUnMatchSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsDHKInstructionUnMatchSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsDHKInstructionUnMatchINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsDHKInstructionUnMatchMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 5
    end
    object cdsDHKInstructionUnMatchCBEST01_ACC: TStringField
      DisplayLabel = 'Account CBest 01'
      FieldName = 'CBEST01_ACC'
    end
    object cdsDHKInstructionUnMatchCBEST04_ACC: TStringField
      DisplayLabel = 'Account CBest 04'
      FieldName = 'CBEST04_ACC'
    end
    object cdsDHKInstructionUnMatchSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsDHKInstructionUnMatchSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsDHKInstructionUnMatchSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsDHKInstructionUnMatchQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDHKInstructionUnMatchREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsDHKInstructionUnMatchDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKInstructionUnMatchCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsDHKInstructionUnMatchMATCH: TStringField
      FieldName = 'MATCH'
      Required = True
      Size = 1
    end
    object cdsDHKInstructionUnMatchSETTLE: TStringField
      FieldName = 'SETTLE'
      Required = True
      Size = 1
    end
    object cdsDHKInstructionUnMatchMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDHKInstructionUnMatchMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDHKInstructionUnMatchAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDHKInstructionUnMatchAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDHKInstructionUnMatchUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDHKInstructionUnMatchUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDHKInstructionUnMatchNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDHKInstructionUnMatchISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDHKInstructionUnMatchID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsDHKInstructionMatch: TNClientDataset
    Aggregates = <>
    Filter = 'MATCH = '#39'1'#39
    Filtered = True
    Params = <
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKInstructions'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 430
    Top = 155
    object cdsDHKInstructionMatchDHK_INSTRID: TLargeintField
      FieldName = 'DHK_INSTRID'
      Required = True
    end
    object cdsDHKInstructionMatchDHK_EXTREF: TStringField
      DisplayLabel = 'DHK Exreff'
      FieldName = 'DHK_EXTREF'
      Required = True
      Size = 40
    end
    object cdsDHKInstructionMatchBS: TStringField
      DisplayLabel = 'B/S'
      FieldName = 'BS'
      Size = 1
    end
    object cdsDHKInstructionMatchACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDHKInstructionMatchACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDHKInstructionMatchACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDHKInstructionMatchTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsDHKInstructionMatchSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsDHKInstructionMatchSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsDHKInstructionMatchINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsDHKInstructionMatchMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 5
    end
    object cdsDHKInstructionMatchCBEST01_ACC: TStringField
      DisplayLabel = 'Account CBest 01'
      FieldName = 'CBEST01_ACC'
    end
    object cdsDHKInstructionMatchCBEST04_ACC: TStringField
      DisplayLabel = 'Account CBest 04'
      FieldName = 'CBEST04_ACC'
    end
    object cdsDHKInstructionMatchSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsDHKInstructionMatchSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsDHKInstructionMatchSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsDHKInstructionMatchQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDHKInstructionMatchREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsDHKInstructionMatchDHKID: TLargeintField
      FieldName = 'DHKID'
      Required = True
    end
    object cdsDHKInstructionMatchCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsDHKInstructionMatchMATCH: TStringField
      FieldName = 'MATCH'
      Required = True
      Size = 1
    end
    object cdsDHKInstructionMatchSETTLE: TStringField
      FieldName = 'SETTLE'
      Required = True
      Size = 1
    end
    object cdsDHKInstructionMatchMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDHKInstructionMatchMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDHKInstructionMatchAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDHKInstructionMatchAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDHKInstructionMatchUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDHKInstructionMatchUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDHKInstructionMatchNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDHKInstructionMatchISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDHKInstructionMatchID: TLargeintField
      FieldName = 'ID'
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xls'
    Left = 524
    Top = 353
  end
  object cdsBoard: TNClientDataset
    Aggregates = <>
    Filter = 'BOARDCODE = '#39'RG'#39' AND MARKETCODE = '#39'IDX'#39
    Filtered = True
    Params = <>
    ProviderName = 'dspN_dmMaster_qryBoardList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 200
    Top = 300
    object cdsBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
  end
  object cdsDHKUploadCheck: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DAY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SID_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID_ACCT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SECURITY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKUploadCheck'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 96
    Top = 288
    object cdsDHKUploadCheckDHKID: TLargeintField
      FieldName = 'DHKID'
    end
    object cdsDHKUploadCheckDHKNO: TStringField
      FieldName = 'DHKNO'
    end
    object cdsDHKUploadCheckDAY: TDateField
      FieldName = 'DAY'
      Required = True
    end
    object cdsDHKUploadCheckCS_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKUploadCheckCS_PAYMENT_TOTAL_RIGHT: TFloatField
      FieldName = 'CS_PAYMENT_TOTAL_RIGHT'
    end
    object cdsDHKUploadCheckCF_PAYMENT_TOTAL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL'
    end
    object cdsDHKUploadCheckCF_PAYMENT_TOTAL_OBL: TFloatField
      FieldName = 'CF_PAYMENT_TOTAL_OBL'
    end
    object cdsDHKUploadCheckMEMBER_NAME: TStringField
      FieldName = 'MEMBER_NAME'
      Size = 150
    end
    object cdsDHKUploadCheckMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Required = True
      Size = 10
    end
    object cdsDHKUploadCheckID_ACCT: TStringField
      FieldName = 'ID_ACCT'
      Required = True
    end
    object cdsDHKUploadCheckSID_CODE: TStringField
      FieldName = 'SID_CODE'
      Required = True
    end
    object cdsDHKUploadCheckCF_ACCT_4: TStringField
      FieldName = 'CF_ACCT_4'
    end
    object cdsDHKUploadCheckCF_ACCT_1: TStringField
      FieldName = 'CF_ACCT_1'
    end
    object cdsDHKUploadCheckSORT_ORDER: TStringField
      FieldName = 'SORT_ORDER'
      Size = 10
    end
    object cdsDHKUploadCheckSECURITY_CODE: TStringField
      FieldName = 'SECURITY_CODE'
      Required = True
    end
    object cdsDHKUploadCheckSECURITY_ID: TStringField
      FieldName = 'SECURITY_ID'
      Size = 150
    end
    object cdsDHKUploadCheckRIGHTS: TFloatField
      FieldName = 'RIGHTS'
    end
    object cdsDHKUploadCheckOBLIGATION: TFloatField
      FieldName = 'OBLIGATION'
    end
    object cdsDHKUploadCheckSECURITY: TStringField
      FieldName = 'SECURITY'
      Size = 150
    end
    object cdsDHKUploadCheckOBLIGATION_CASH: TFloatField
      FieldName = 'OBLIGATION_CASH'
    end
    object cdsDHKUploadCheckRIGHT_CASH: TFloatField
      FieldName = 'RIGHT_CASH'
    end
    object cdsDHKUploadCheckCF_IDR_VALUE: TFloatField
      FieldName = 'CF_IDR_VALUE'
    end
    object cdsDHKUploadCheckCF_OBLIGATION_CASH: TFloatField
      FieldName = 'CF_OBLIGATION_CASH'
    end
    object cdsDHKUploadCheckCF_OBLIGATION: TFloatField
      FieldName = 'CF_OBLIGATION'
    end
    object cdsDHKUploadCheckSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsDHKUploadCheckMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsDHKUploadCheckMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsDHKUploadCheckAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsDHKUploadCheckAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsDHKUploadCheckUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsDHKUploadCheckUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsDHKUploadCheckNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsDHKUploadCheckISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsDHKUploadCheckID: TLargeintField
      FieldName = 'ID'
    end
    object cdsDHKUploadCheckWTNO: TStringField
      FieldName = 'WTNO'
    end
  end
end
