inherited frmOTCInstruction: TfrmOTCInstruction
  Caption = 'Stock CBest Instruction'
  ClientHeight = 477
  ClientWidth = 911
  ExplicitWidth = 911
  ExplicitHeight = 477
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 67
    Width = 911
    Height = 189
    Align = alTop
    Visible = False
    ExplicitTop = 67
    ExplicitWidth = 911
    ExplicitHeight = 189
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterOTC_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OTC_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Cancel'
            Value = 'C'
          end
          item
            Description = 'Settle'
            Value = 'S'
          end>
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATE_FILE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Moving = False
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCOUNT_CREATE_FILE: TcxGridDBBandedColumn
        Caption = 'Count'
        DataBinding.FieldName = 'COUNT_CREATE_FILE'
        Options.Moving = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCBEST_UPLOAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_UPLOAD'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODY_INSTRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_INSTRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODY_EXTREF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_EXTREF'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Receive'
            ImageIndex = 0
            Value = 'R'
          end
          item
            Description = 'Deliver'
            Value = 'D'
          end>
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBROKERCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKERCODE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterBROKERMAINACCOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKERMAINACCOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODIANCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODIANCODE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCONFIRM_BY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_BY'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDDATE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterPURPOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PURPOSE'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterTRADE_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADE_REF'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_REASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_REASON'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODY_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'CUSTODY_DESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterORIGINALAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORIGINALAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterSALDO_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO_TYPE'
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterMATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
    end
    object grdMasterDBBandedTableView1: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 911
    Height = 41
    Align = alTop
    TabOrder = 5
    object cmbFilterBy: TcxImageComboBox
      Left = 80
      Top = 10
      Properties.Items = <
        item
          Description = 'Due Date'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Trade Date'
          Value = 'T'
        end>
      Properties.OnCloseUp = cmbFilterByPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 95
    end
    object dtFilterDate: TcxDateEdit
      Left = 181
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtFilterDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 132
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
      CaptionOptions.Text = 'Filter Date By'
      Control = cmbFilterBy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'cxDateEdit1'
      CaptionOptions.Visible = False
      Control = dtFilterDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 132
      ControlOptions.ShowBorder = False
      Index = 1
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
  end
  object TabOTCInstruction: TcxPageControl [2]
    Left = 0
    Top = 256
    Width = 911
    Height = 221
    Align = alClient
    PopupMenu = popMaster
    TabOrder = 6
    Properties.ActivePage = TabExchage
    Properties.CustomButtons.Buttons = <>
    OnChange = TabOTCInstructionChange
    ClientRectBottom = 217
    ClientRectLeft = 4
    ClientRectRight = 907
    ClientRectTop = 24
    object TabExchage: TcxTabSheet
      Caption = 'OTC Exchange'
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 903
        Height = 193
        Align = alClient
        PopupMenu = popMaster
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwExchange: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwMasterCustomDrawCell
          DataController.DataSource = dsBrowseMaster
          DataController.Filter.Options = [fcoCaseInsensitive]
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
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
          object gvwExchangeOTC_STATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OTC_STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Cancel'
                Value = 'C'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end
              item
                Description = 'Uploaded'
                Value = 'U'
              end>
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwExchangeCREATE_FILE: TcxGridDBBandedColumn
            Caption = 'Create'
            DataBinding.FieldName = 'CREATE_FILE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwExchangeCOUNT_CREATE_FILE: TcxGridDBBandedColumn
            Caption = 'Count'
            DataBinding.FieldName = 'COUNT_CREATE_FILE'
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwExchangeCBEST_UPLOAD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST_UPLOAD'
            Visible = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwExchangeCUSTODY_INSTRID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_INSTRID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwExchangeCUSTODY_EXTREF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_EXTREF'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwExchangeTRDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRDDATE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwExchangeDUEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwExchangeSETTLE_SIDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_SIDE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Receive'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'Deliver'
                Value = 'D'
              end>
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwExchangeINSTRUCTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUCTION'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwExchangeACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwExchangeACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwExchangeACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 285
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwExchangeACCINIT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCINIT'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwExchangeBROKERCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKERCODE'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwExchangeBROKERMAINACCOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKERMAINACCOUNT'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwExchangeCUSTODIANCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODIANCODE'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwExchangeSTOCKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwExchangeSTOCKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwExchangeQTY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTY'
            HeaderAlignmentHorz = taRightJustify
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwExchangeCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwExchangeEXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXRATE'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwExchangeAMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            HeaderAlignmentHorz = taRightJustify
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwExchangeCONFIRM_BY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFIRM_BY'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwExchangeSETTLEDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLEDDATE'
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwExchangeREMARKS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REMARKS'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwExchangePURPOSE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PURPOSE'
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwExchangeTRADE_REF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRADE_REF'
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwExchangeSETTLE_REASON: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_REASON'
            Width = 290
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwExchangeCUSTODY_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_DESC'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwExchangeINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUCTION_TYPE_CODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwExchangeORIGINALAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORIGINALAMT'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwExchangeSALDO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SALDO'
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gvwExchangeSALDO_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SALDO_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Rebate'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'Price Different'
                Value = 'P'
              end>
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gvwExchangeMATCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MATCH'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwExchangeEXCHANGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXCHANGE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gvwExchangeSIDNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIDNO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gvwExchangeCONFIRM_WITH: TcxGridDBBandedColumn
            Caption = 'Confirm With'
            DataBinding.FieldName = 'CONFIRM_WITH'
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gvwExchangeLINKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LINKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gvwExchangeLINKTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LINKTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gvwExchangeBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'B/S'
            RepositoryItem = dmGlobal.luBuySell
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwExchangeACCTYPE: TcxGridDBBandedColumn
            Caption = 'Account Type'
            DataBinding.FieldName = 'ACCTYPE'
            RepositoryItem = dmGlobal.luAccType
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwExchangePRDCODE: TcxGridDBBandedColumn
            Caption = 'Product Code'
            DataBinding.FieldName = 'PRDCODE'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwExchangeparticipantAccountCash: TcxGridDBBandedColumn
            DataBinding.FieldName = 'participantAccountCash'
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView4: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwExchange
        end
      end
    end
    object TabNonEchange: TcxTabSheet
      Caption = 'OTC Non Exchage'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 903
        Height = 193
        Align = alClient
        PopupMenu = popMaster
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwNonExchange: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwMasterCustomDrawCell
          DataController.DataSource = dsBrowseMaster
          DataController.Filter.Options = [fcoCaseInsensitive]
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
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
          object gvwNonExchangeOTC_STATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OTC_STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Cancel'
                Value = 'C'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end>
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwNonExchangeCREATE_FILE: TcxGridDBBandedColumn
            Caption = 'Create'
            DataBinding.FieldName = 'CREATE_FILE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwNonExchangeCOUNT_CREATE_FILE: TcxGridDBBandedColumn
            Caption = 'Count'
            DataBinding.FieldName = 'COUNT_CREATE_FILE'
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwNonExchangeCBEST_UPLOAD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST_UPLOAD'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwNonExchangeCUSTODY_INSTRID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_INSTRID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwNonExchangeCUSTODY_EXTREF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_EXTREF'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwNonExchangeTRDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRDDATE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwNonExchangeDUEDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DUEDATE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwNonExchangeSETTLE_SIDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_SIDE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Receive'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'Deliver'
                Value = 'D'
              end>
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwNonExchangeINSTRUCTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUCTION'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwNonExchangeACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwNonExchangeACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwNonExchangeACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwNonExchangeACCTYPE: TcxGridDBBandedColumn
            Caption = 'Account Type'
            DataBinding.FieldName = 'ACCTYPE'
            RepositoryItem = dmGlobal.luAccType
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwNonExchangePRDCODE: TcxGridDBBandedColumn
            Caption = 'Product Code'
            DataBinding.FieldName = 'PRDCODE'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwNonExchangeACCINIT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCINIT'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwNonExchangeBROKERCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKERCODE'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwNonExchangeBROKERMAINACCOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKERMAINACCOUNT'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwNonExchangeCUSTODIANCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODIANCODE'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwNonExchangeSTOCKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwNonExchangeSTOCKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwNonExchangeQTY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTY'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwNonExchangeCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwNonExchangeEXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXRATE'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwNonExchangeAMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AMOUNT'
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwNonExchangeCONFIRM_BY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFIRM_BY'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwNonExchangeSETTLEDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLEDDATE'
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwNonExchangeREMARKS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REMARKS'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwNonExchangePURPOSE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PURPOSE'
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwNonExchangeTRADE_REF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRADE_REF'
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwNonExchangeSETTLE_REASON: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_REASON'
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwNonExchangeCUSTODY_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_DESC'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwNonExchangeINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn
            Caption = 'Instruction Type Code'
            DataBinding.FieldName = 'INSTRUCTION_TYPE_CODE'
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwNonExchangeORIGINALAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORIGINALAMT'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwNonExchangeSALDO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SALDO'
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gvwNonExchangeSALDO_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SALDO_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Rebate'
                ImageIndex = 0
                Value = 'R'
              end
              item
                Description = 'Price Different'
                Value = 'P'
              end>
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gvwNonExchangeMATCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MATCH'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwNonExchangeEXCHANGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXCHANGE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gvwNonExchangeSIDNO: TcxGridDBBandedColumn
            Caption = 'SID No'
            DataBinding.FieldName = 'SIDNO'
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gvwNonExchangeCONFIRM_WITH: TcxGridDBBandedColumn
            Caption = 'Confirm With'
            DataBinding.FieldName = 'CONFIRM_WITH'
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gvwNonExchangeLINKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LINKID'
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gvwNonExchangeLINKTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LINKTYPE'
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gvwNonExchangeBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'B/S'
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwNonExchangeparticipantAccountCash: TcxGridDBBandedColumn
            DataBinding.FieldName = 'participantAccountCash'
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView2: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwNonExchange
        end
      end
    end
    object tabCC: TcxTabSheet
      Caption = 'Colw/Colds'
      ImageIndex = 2
      object grdColWColDS: TcxGrid
        Left = 0
        Top = 0
        Width = 903
        Height = 193
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object gvwColWColDS: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsColWColDS
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
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
              HeaderAlignmentHorz = taLeftJustify
            end>
          object gvwColWColDSCBEST_STATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST_STATUS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end>
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwColWColDSCREATE_FILE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CREATE_FILE'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwColWColDSCOUNT_CREATE_FILE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COUNT_CREATE_FILE'
            Visible = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwColWColDSCBEST_UPLOAD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CBEST_UPLOAD'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwColWColDSCUSTODY_INSTRID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_INSTRID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwColWColDSCUSTODY_EXTREF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_EXTREF'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwColWColDSTRDDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRDDATE'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwColWColDSSETTLEMENTDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLEMENTDATE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwColWColDSSETTLE_SIDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SETTLE_SIDE'
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwColWColDSINSTRUCTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSTRUCTION'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwColWColDSACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwColWColDSACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwColWColDSACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwColWColDSACCINIT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCINIT'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwColWColDSPARTY_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARTY_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwColWColDSCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwColWColDSSECURITIY_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SECURITIY_CODE'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwColWColDSQTY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTY'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwColWColDSCUSTODY_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTODY_DESC'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwColWColDSREMARKS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REMARKS'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwColWColDSCBEST_01: TcxGridDBBandedColumn
            Caption = 'CBest 01'
            DataBinding.FieldName = 'CBEST_01'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwColWColDSCBEST_04: TcxGridDBBandedColumn
            Caption = 'CBest 04'
            DataBinding.FieldName = 'CBEST_04'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwColWColDSBS: TcxGridDBBandedColumn
            Caption = 'B/S'
            DataBinding.FieldName = 'BS'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
        end
        object glvColWColDS: TcxGridLevel
          GridView = gvwColWColDS
        end
      end
      object pnlGenerating: TPanel
        Left = 15
        Top = 40
        Width = 236
        Height = 36
        Caption = 'Generating File COLW / COLDS ...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = '[Stock CBest Instruction].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Stock CBest Instruction].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Stock CBest Instruction].Delete'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Stock CBest Instruction].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Stock CBest Instruction].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Stock CBest Instruction].View'
      end
      item
        ActionName = 'actView'
        Permission = '[Stock CBest Instruction].View Approval Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Stock CBest Instruction].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Stock CBest Instruction].Reject'
      end>
    AssignedPermission = <
      item
        Name = '[Stock CBest Instruction].View'
        Description = 'View Stock CBest Instruction'
      end
      item
        Name = '[Stock CBest Instruction].Edit'
        Description = 'Edit Stock CBest Instruction'
      end
      item
        Name = '[Stock CBest Instruction].Refresh'
        Description = 'Refresh Stock CBest Instruction'
      end>
    Left = 299
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
    object Split1: TMenuItem [10]
      Action = actSplit
      Visible = False
    end
    object GenerateRFOPRVP1: TMenuItem [11]
      Action = actGenerateRFOPVP
    end
    object ConfirmBy1: TMenuItem [12]
      Action = actConfirmBy
      Visible = False
    end
    object CancelConfirmBy1: TMenuItem [13]
      Action = actCancelConfirmBy
      Visible = False
    end
    object Merger1: TMenuItem [14]
      Action = actMerger
      Visible = False
    end
    object Settle2: TMenuItem [15]
      Caption = 'Settle'
      Visible = False
      object SettleByCBest1: TMenuItem
        Action = actSettleByCBest
      end
      object Settle1: TMenuItem
        Action = actSettleOLTInstr
      end
    end
    object CancelSettle1: TMenuItem [16]
      Action = actSettleCancel
      Visible = False
    end
    object Reverse1: TMenuItem [17]
      Action = actSettleReverse
      Visible = False
    end
    object N7: TMenuItem [18]
      Caption = '-'
    end
    object UnUploadedData1: TMenuItem [19]
      Action = actUnUploaded
    end
    object PreMatch1: TMenuItem [20]
      Caption = 'PreMatch'
      Visible = False
      object PreMatchManual1: TMenuItem
        Action = actManualPreMatch
      end
      object PreMatchUpload1: TMenuItem
        Action = actUploadPreMatch
      end
    end
    object Netting1: TMenuItem [21]
      Caption = 'Netting'
      Visible = False
      object NettingCustody1: TMenuItem
        Action = actNetting
      end
      object NettingDifferentCustody1: TMenuItem
        Action = actNettingDiff
      end
    end
    object N6: TMenuItem [22]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsOTCInstruction
  end
  inherited aclEditor: TActionList
    Left = 103
    inherited actNew: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      OnUpdate = actEditUpdate
      CheckPermission = False
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    object actSettleCancel: TNAction
      Category = 'NActions'
      Caption = 'Cancel'
      OnExecute = actSettleCancelExecute
      OnUpdate = actSettleCancelUpdate
      CheckPermission = False
    end
    object actSplit: TNAction
      Category = 'NActions'
      Caption = 'Split'
      OnExecute = actSplitExecute
      OnUpdate = actSplitUpdate
      CheckPermission = False
    end
    object actOTCEdit: TNAction
      Category = 'NActions'
      Caption = 'Edit'
      OnExecute = actOTCEditExecute
      OnUpdate = actOTCEditUpdate
      CheckPermission = False
    end
    object actGenerateRFOPVP: TNAction
      Category = 'NActions'
      Caption = 'Generate FOP/VP'
      OnExecute = actGenerateRFOPVPExecute
      OnUpdate = actGenerateRFOPVPUpdate
      CheckPermission = False
    end
    object actConfirmBy: TNAction
      Category = 'NActions'
      Caption = 'Confirm With'
      OnExecute = actConfirmByExecute
      OnUpdate = actConfirmByUpdate
      CheckPermission = False
    end
    object actCancelConfirmBy: TNAction
      Category = 'NActions'
      Caption = 'Cancel Confirm By'
      OnExecute = actCancelConfirmByExecute
      OnUpdate = actCancelConfirmByUpdate
      CheckPermission = False
    end
    object actMerger: TNAction
      Category = 'NActions'
      Caption = 'Merge'
      OnExecute = actMergerExecute
      OnUpdate = actMergerUpdate
      CheckPermission = False
    end
    object actSettleOLTInstr: TNAction
      Category = 'NActions'
      Caption = 'Settle Manual'
      OnExecute = actSettleOLTInstrExecute
      OnUpdate = actSettleOLTInstrUpdate
      CheckPermission = False
    end
    object actSettleReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actSettleReverseExecute
      OnUpdate = actSettleReverseUpdate
      CheckPermission = False
    end
    object actManualPreMatch: TNAction
      Category = 'NActions'
      Caption = 'Pre Match Manual'
      OnExecute = actManualPreMatchExecute
      OnUpdate = actManualPreMatchUpdate
      CheckPermission = False
    end
    object actUploadPreMatch: TNAction
      Category = 'NActions'
      Caption = 'Pre Match Upload'
      OnExecute = actUploadPreMatchExecute
      OnUpdate = actManualPreMatchUpdate
      CheckPermission = False
    end
    object actSettleByCBest: TNAction
      Category = 'NActions'
      Caption = 'Settle By CBest'
      OnExecute = actSettleByCBestExecute
      OnUpdate = actSettleByCBestUpdate
      CheckPermission = False
    end
    object actNetting: TNAction
      Category = 'NActions'
      Caption = 'Netting Same Stock'
      OnExecute = actNettingExecute
      OnUpdate = actNettingUpdate
      CheckPermission = False
    end
    object actNettingDiff: TNAction
      Category = 'NActions'
      Caption = 'Netting Different Stock'
      OnExecute = actNettingDiffExecute
      OnUpdate = actNettingDiffUpdate
      CheckPermission = False
    end
    object actGenerateColwColds: TNAction
      Category = 'NActions'
      Caption = 'Generate COLW'
      OnExecute = actGenerateColwColdsExecute
      CheckPermission = False
    end
    object actGenerateColds: TNAction
      Category = 'NActions'
      Caption = 'Generate COLDS'
      OnExecute = actGenerateColdsExecute
      CheckPermission = False
    end
    object actUnUploaded: TNAction
      Category = 'NActions'
      Caption = 'UnUploaded Data'
      OnExecute = actUnUploadedExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsSettleInstr
    ListDataset = cdsOTCInstruction
    MasterTableName = 'main.B_CUSTODY_INSTRUCTION'
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsOTCInstruction: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Filter = 'EXCHAGE = 1'
    Params = <
      item
        DataType = ftDate
        Name = 'FILTERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FILTERBY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryOTCInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 348
    Top = 353
    object cdsOTCInstructionOTC_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'OTC_STATUS'
      Size = 1
    end
    object cdsOTCInstructionCREATE_FILE: TStringField
      DisplayLabel = 'Create File'
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsOTCInstructionCOUNT_CREATE_FILE: TIntegerField
      DisplayLabel = 'Count Create File'
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsOTCInstructionCBEST_UPLOAD: TStringField
      DisplayLabel = 'CBest Upload'
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsOTCInstructionCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
    end
    object cdsOTCInstructionCUSTODY_EXTREF: TStringField
      DisplayLabel = 'Custody Exreff'
      FieldName = 'CUSTODY_EXTREF'
    end
    object cdsOTCInstructionTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOTCInstructionDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOTCInstructionSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsOTCInstructionINSTRUCTION: TStringField
      DisplayLabel = 'Instruction'
      FieldName = 'INSTRUCTION'
      Size = 10
    end
    object cdsOTCInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsOTCInstructionACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOTCInstructionACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsOTCInstructionACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
    end
    object cdsOTCInstructionBROKERCODE: TStringField
      DisplayLabel = 'Broker Code'
      FieldName = 'BROKERCODE'
      Size = 10
    end
    object cdsOTCInstructionBROKERMAINACCOUNT: TStringField
      DisplayLabel = 'Broker Main Account'
      FieldName = 'BROKERMAINACCOUNT'
    end
    object cdsOTCInstructionCUSTODIANCODE: TStringField
      DisplayLabel = 'Custodian Code'
      FieldName = 'CUSTODIANCODE'
    end
    object cdsOTCInstructionSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsOTCInstructionSTOCKCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsOTCInstructionQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCInstructionCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsOTCInstructionEXRATE: TFloatField
      DisplayLabel = 'Exrate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCInstructionAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCInstructionCONFIRM_BY: TStringField
      DisplayLabel = 'Confirm By'
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsOTCInstructionSETTLEDDATE: TDateField
      DisplayLabel = 'Settled Date'
      FieldName = 'SETTLEDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsOTCInstructionREMARKS: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsOTCInstructionPURPOSE: TStringField
      DisplayLabel = 'Purpose'
      FieldName = 'PURPOSE'
    end
    object cdsOTCInstructionTRADE_REF: TStringField
      DisplayLabel = 'Trade Reff'
      FieldName = 'TRADE_REF'
      Size = 50
    end
    object cdsOTCInstructionSETTLE_REASON: TStringField
      DisplayLabel = 'Settle Reason'
      FieldName = 'SETTLE_REASON'
      Size = 50
    end
    object cdsOTCInstructionCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsOTCInstructionINSTRUCTION_TYPE_CODE: TStringField
      FieldName = 'INSTRUCTION_TYPE_CODE'
      Size = 10
    end
    object cdsOTCInstructionORIGINALAMT: TFloatField
      DisplayLabel = 'Original Amount'
      FieldName = 'ORIGINALAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCInstructionSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCInstructionSALDO_TYPE: TStringField
      DisplayLabel = 'Saldo Type'
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsOTCInstructionMATCH: TStringField
      DisplayLabel = 'Match'
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsOTCInstructionEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsOTCInstructionSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsOTCInstructionCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsOTCInstructionLINKID: TIntegerField
      FieldName = 'LINKID'
    end
    object cdsOTCInstructionLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsOTCInstructionBS: TStringField
      DisplayLabel = 'B/S'
      FieldName = 'BS'
      Size = 1
    end
    object cdsOTCInstructionACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsOTCInstructionPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsOTCInstructionparticipantAccountCash: TStringField
      FieldName = 'participantAccountCash'
      ReadOnly = True
    end
  end
  object cdsSettleInstr: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
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
    Left = 438
    Top = 324
    object cdsSettleInstrCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsSettleInstrCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 30
    end
    object cdsSettleInstrACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSettleInstrACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSettleInstrACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSettleInstrVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsSettleInstrTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsSettleInstrSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsSettleInstrSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsSettleInstrINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      OnChange = cdsSettleInstrINSTRUCTION_TYPEChange
      Size = 10
    end
    object cdsSettleInstrPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsSettleInstrPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsSettleInstrCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsSettleInstrCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsSettleInstrSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsSettleInstrSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsSettleInstrSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsSettleInstrQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSettleInstrCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsSettleInstrORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSettleInstrSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSettleInstrREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsSettleInstrPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsSettleInstrTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsSettleInstrSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsSettleInstrBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsSettleInstrBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsSettleInstrCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsSettleInstrLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsSettleInstrLINKID: TLargeintField
      FieldName = 'LINKID'
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
    object cdsSettleInstrSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
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
    object cdsSettleInstrCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsSettleInstrPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsSettleInstrCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsSettleInstrISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsSettleInstrFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsSettleInstrFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsSettleInstrFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
    end
    object cdsSettleInstrSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsSettleInstrKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsSettleInstrSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSettleInstrSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsSettleInstrMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsSettleInstrEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsSettleInstrCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsSettleInstrCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsSettleInstrBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsSettleInstrDHKID: TLargeintField
      FieldName = 'DHKID'
    end
  end
  object cdsCBestInstOTC: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftDate
        Name = 'DueDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'InstructionMode'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryCBestInstrOTC'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 624
    Top = 270
    object cdsCBestInstOTCInstructionID: TLargeintField
      FieldName = 'InstructionID'
    end
    object cdsCBestInstOTCexternalReference: TStringField
      FieldName = 'externalReference'
      Size = 100
    end
    object cdsCBestInstOTCinstructionType: TStringField
      FieldName = 'instructionType'
      Size = 10
    end
    object cdsCBestInstOTCparticipantCode: TStringField
      FieldName = 'participantCode'
      Size = 10
    end
    object cdsCBestInstOTCparticipantAccount: TStringField
      FieldName = 'participantAccount'
    end
    object cdsCBestInstOTCparticipantAccountCash: TStringField
      FieldName = 'participantAccountCash'
    end
    object cdsCBestInstOTCcounterpartCode: TStringField
      FieldName = 'counterpartCode'
      Size = 10
    end
    object cdsCBestInstOTCsecurityCode: TStringField
      FieldName = 'securityCode'
    end
    object cdsCBestInstOTCnumberOfSecurities: TFloatField
      FieldName = 'numberOfSecurities'
    end
    object cdsCBestInstOTCtradeDate: TStringField
      FieldName = 'tradeDate'
      Size = 10
    end
    object cdsCBestInstOTCcurrencyCode: TStringField
      FieldName = 'currencyCode'
      Size = 5
    end
    object cdsCBestInstOTCsettlementAmount: TFloatField
      FieldName = 'settlementAmount'
    end
    object cdsCBestInstOTCsettlementDate: TStringField
      FieldName = 'settlementDate'
      Size = 10
    end
    object cdsCBestInstOTCpurpose: TStringField
      FieldName = 'purpose'
      Size = 10
    end
    object cdsCBestInstOTCtradingReference: TStringField
      FieldName = 'tradingReference'
    end
    object cdsCBestInstOTCsettlementReason: TStringField
      FieldName = 'settlementReason'
      Size = 100
    end
    object cdsCBestInstOTCdescription: TStringField
      FieldName = 'description'
      Size = 150
    end
    object cdsCBestInstOTCsecurityCodeType: TStringField
      FieldName = 'securityCodeType'
      Size = 10
    end
  end
  object cdsCustodyLink: TNClientDataset
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftLargeint
        Name = 'CUSTODY_INSTRID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCustodyLink'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 714
    Top = 270
    object cdsCustodyLinkCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyLinkSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsCustodyLinkQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCustodyLinkSETTLE_AMT: TFloatField
      FieldName = 'SETTLE_AMT'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.otc'
    Left = 534
    Top = 273
  end
  object cdsTmpSettleInstr: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 240
    Top = 396
    object cdsTmpSettleInstrCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsTmpSettleInstrCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 30
    end
    object cdsTmpSettleInstrACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsTmpSettleInstrACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsTmpSettleInstrACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsTmpSettleInstrVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsTmpSettleInstrTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsTmpSettleInstrSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsTmpSettleInstrSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsTmpSettleInstrINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsTmpSettleInstrPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsTmpSettleInstrPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsTmpSettleInstrCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsTmpSettleInstrCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsTmpSettleInstrSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsTmpSettleInstrSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsTmpSettleInstrSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsTmpSettleInstrQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpSettleInstrCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsTmpSettleInstrORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpSettleInstrSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpSettleInstrREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsTmpSettleInstrPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsTmpSettleInstrTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsTmpSettleInstrSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsTmpSettleInstrBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsTmpSettleInstrBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsTmpSettleInstrCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsTmpSettleInstrLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsTmpSettleInstrLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsTmpSettleInstrCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsTmpSettleInstrCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsTmpSettleInstrCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsTmpSettleInstrCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsTmpSettleInstrSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsTmpSettleInstrMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTmpSettleInstrMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTmpSettleInstrAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTmpSettleInstrAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTmpSettleInstrUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTmpSettleInstrUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTmpSettleInstrNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTmpSettleInstrISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTmpSettleInstrID: TLargeintField
      FieldName = 'ID'
    end
    object cdsTmpSettleInstrCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsTmpSettleInstrPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsTmpSettleInstrCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsTmpSettleInstrISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsTmpSettleInstrFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsTmpSettleInstrFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsTmpSettleInstrFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsTmpSettleInstrSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsTmpSettleInstrKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsTmpSettleInstrSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsTmpSettleInstrSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsTmpSettleInstrMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsTmpSettleInstrEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsTmpSettleInstrCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsTmpSettleInstrCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsTmpSettleInstrBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsTmpSettleInstrNEW_CUSTODY_INSTRID: TLargeintField
      FieldName = 'NEW_CUSTODY_INSTRID'
    end
    object cdsTmpSettleInstrDHKID: TLargeintField
      FieldName = 'DHKID'
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xls'
    Left = 534
    Top = 318
  end
  object cdsColWColDS: TNClientDataset
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
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 585
    Top = 171
    object cdsColWColDSCBEST_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CBEST_STATUS'
      Size = 1
    end
    object cdsColWColDSCREATE_FILE: TStringField
      DisplayLabel = 'Create File'
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsColWColDSCOUNT_CREATE_FILE: TIntegerField
      DisplayLabel = 'Count Create File'
      FieldName = 'COUNT_CREATE_FILE'
      DisplayFormat = '#,##0;'
    end
    object cdsColWColDSCBEST_UPLOAD: TStringField
      DisplayLabel = 'Upload'
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsColWColDSCUSTODY_INSTRID: TLargeintField
      DisplayLabel = 'Custody Instr ID'
      FieldName = 'CUSTODY_INSTRID'
    end
    object cdsColWColDSCUSTODY_EXTREF: TStringField
      DisplayLabel = 'Extref'
      FieldName = 'CUSTODY_EXTREF'
    end
    object cdsColWColDSTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsColWColDSSETTLEMENTDATE: TDateField
      DisplayLabel = 'Settlement Date'
      FieldName = 'SETTLEMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsColWColDSSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsColWColDSINSTRUCTION: TStringField
      DisplayLabel = 'Instruction'
      FieldName = 'INSTRUCTION'
      Size = 10
    end
    object cdsColWColDSACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsColWColDSACCNO: TStringField
      DisplayLabel = 'Acc No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsColWColDSACCNAME: TStringField
      DisplayLabel = 'Acc Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsColWColDSACCINIT: TStringField
      DisplayLabel = 'Acc Initial'
      FieldName = 'ACCINIT'
    end
    object cdsColWColDSPARTY_CODE: TStringField
      DisplayLabel = 'Party Code'
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsColWColDSCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsColWColDSSECURITIY_CODE: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'SECURITIY_CODE'
    end
    object cdsColWColDSQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#.##;#.##;0'
    end
    object cdsColWColDSCUSTODY_DESC: TStringField
      DisplayLabel = 'Custody Desc'
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsColWColDSREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsColWColDSCBEST_01: TStringField
      FieldName = 'CBEST_01'
    end
    object cdsColWColDSCBEST_04: TStringField
      FieldName = 'CBEST_04'
    end
    object cdsColWColDSBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
  end
  object dsColWColDS: TDataSource
    DataSet = cdsColWColDS
    Left = 750
    Top = 219
  end
  object PopupMenu1: TPopupMenu
    Left = 660
    Top = 171
    object Settle3: TMenuItem
      Caption = 'Settle'
      object SettleByCBest2: TMenuItem
        Action = actSettleByCBest
      end
      object SettleManual1: TMenuItem
        Action = actSettleOLTInstr
      end
    end
    object Cancel2: TMenuItem
      Action = actSettleCancel
    end
    object Reverse2: TMenuItem
      Action = actSettleReverse
    end
  end
  object cdsColWColDSTmp: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILTERBY'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDHKInstructionTmp'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 750
    Top = 171
    object cdsColWColDSTmpCBEST_STATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CBEST_STATUS'
      Size = 1
    end
    object cdsColWColDSTmpCREATE_FILE: TStringField
      DisplayLabel = 'Create File'
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsColWColDSTmpCOUNT_CREATE_FILE: TIntegerField
      DisplayLabel = 'Count Create File'
      FieldName = 'COUNT_CREATE_FILE'
      DisplayFormat = '#,##0;'
    end
    object cdsColWColDSTmpCBEST_UPLOAD: TStringField
      DisplayLabel = 'Upload'
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsColWColDSTmpCUSTODY_INSTRID: TLargeintField
      DisplayLabel = 'Custody Instr ID'
      FieldName = 'CUSTODY_INSTRID'
    end
    object cdsColWColDSTmpCUSTODY_EXTREF: TStringField
      DisplayLabel = 'Extref'
      FieldName = 'CUSTODY_EXTREF'
    end
    object cdsColWColDSTmpTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsColWColDSTmpSETTLEMENTDATE: TDateField
      DisplayLabel = 'Settlement Date'
      FieldName = 'SETTLEMENTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsColWColDSTmpSETTLE_SIDE: TStringField
      DisplayLabel = 'Settle Side'
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsColWColDSTmpINSTRUCTION: TStringField
      DisplayLabel = 'Instruction'
      FieldName = 'INSTRUCTION'
      Size = 10
    end
    object cdsColWColDSTmpACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsColWColDSTmpACCNO: TStringField
      DisplayLabel = 'Acc No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsColWColDSTmpACCNAME: TStringField
      DisplayLabel = 'Acc Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsColWColDSTmpACCINIT: TStringField
      DisplayLabel = 'Acc Initial'
      FieldName = 'ACCINIT'
    end
    object cdsColWColDSTmpPARTY_CODE: TStringField
      DisplayLabel = 'Party Code'
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsColWColDSTmpCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsColWColDSTmpSECURITIY_CODE: TStringField
      DisplayLabel = 'Security Code'
      FieldName = 'SECURITIY_CODE'
    end
    object cdsColWColDSTmpQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
    end
    object cdsColWColDSTmpCUSTODY_DESC: TStringField
      DisplayLabel = 'Custody Desc'
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsColWColDSTmpREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsColWColDSTmpCBEST_01: TStringField
      FieldName = 'CBEST_01'
    end
    object cdsColWColDSTmpCBEST_04: TStringField
      FieldName = 'CBEST_04'
    end
    object cdsColWColDSTmpBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
  end
  object cdsGenerateOTCTXT: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CIID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryGenerateOTCTXT'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 352
    Top = 404
    object cdsGenerateOTCTXTDATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 534
    end
  end
end
