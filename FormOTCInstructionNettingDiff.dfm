object frmOTCInstructionNettingDiff: TfrmOTCInstructionNettingDiff
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'OTC Custody Netting'
  ClientHeight = 285
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 235
    Width = 563
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitWidth = 564
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 563
    Height = 235
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 564
    object gvwNetting: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwNettingCUSTODY_INSTRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_INSTRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwNettingACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwNettingCUSTODY_EXTREF: TcxGridDBBandedColumn
        Caption = 'Custody Exreff'
        DataBinding.FieldName = 'CUSTODY_EXTREF'
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwNettingACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwNettingACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwNettingVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwNettingTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwNettingSETTLEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwNettingSETTLE_SIDE: TcxGridDBBandedColumn
        Caption = 'Settle Side'
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
      object gvwNettingINSTRUCTION_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwNettingPARTY_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwNettingPARTY_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_ACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwNettingCOUNTER_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwNettingCOUNTER_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_ACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwNettingSECURITYCODE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECURITYCODE_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwNettingSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwNettingSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwNettingQTY: TcxGridDBBandedColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwNettingCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwNettingORIGINAL_AMT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'ORIGINAL_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwNettingSETTLE_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_AMOUNT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwNettingREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwNettingPURPOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PURPOSE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwNettingTRADE_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADE_REF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwNettingSETTLE_REASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_REASON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwNettingBENEFICIARYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwNettingBENEFICIARYACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwNettingCORPACT_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CORPACT_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwNettingLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwNettingLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwNettingCONFIRM_BY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_BY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwNettingCREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwNettingCOUNT_CREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNT_CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwNettingCBEST_UPLOAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_UPLOAD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwNettingSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwNettingMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwNettingMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwNettingAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwNettingAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwNettingUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwNettingUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwNettingNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwNettingISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwNettingID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwNettingCUSTODY_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_DESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwNettingPARTY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwNettingCOUNTER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwNettingISMULTICCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISMULTICCY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwNettingFOREIGN_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwNettingFOREIGN_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_EXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwNettingFOREIGN_SETTTLEAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_SETTTLEAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwNettingSID_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_NO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwNettingKSEI_RECON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_RECON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwNettingSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwNettingSALDO_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwNettingMATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwNetting
    end
  end
  object dsSubject: TDataSource
    DataSet = frmOTCInstruction.cdsTmpSettleInstr
    Left = 183
    Top = 99
  end
end
