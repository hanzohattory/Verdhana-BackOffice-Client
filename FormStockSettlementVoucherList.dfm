inherited frmStockSettlementVoucherList: TfrmStockSettlementVoucherList
  Caption = 'Stock Settlement Voucher List'
  ClientWidth = 1331
  ExplicitWidth = 1331
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1331
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitWidth = 1331
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00;(#,##0.00);.0.00'
          Kind = skSum
          FieldName = 'QTY'
          Column = gvwMasterQTY
        end
        item
          Format = '#,##0.00;(#,##0.00);.0.00'
          Kind = skSum
          FieldName = 'AMOUNT'
          Column = gvwMasterAMOUNT
        end>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.CellSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.GroupByBox = True
      object gvwMasterSSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSSNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSNO'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSSDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SSDESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRDCODE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Deliver'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Receive'
            Value = 'R'
          end
          item
            Description = 'Netting'
            Value = 'N'
          end>
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Settled'
            Value = 'S'
          end
          item
            Description = 'Reversed'
            Value = 'R'
          end
          item
            Description = 'Cancelled'
            Value = 'C'
          end>
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterSHORTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHORTNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterLOCALCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCALCODE'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        Caption = 'Settle Amount'
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn
        Caption = 'Instruction Type'
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCL_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CL_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn
        Caption = 'Original Amount'
        DataBinding.FieldName = 'ORIG_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYCODE: TcxGridDBBandedColumn
        Caption = 'Custody Code'
        DataBinding.FieldName = 'CUSTODYCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn
        Caption = 'Custody Account No.'
        DataBinding.FieldName = 'CUSTODYACCNO'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn
        Caption = 'Different Amount'
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_MODE: TcxGridDBBandedColumn
        Caption = 'Settle Mode'
        DataBinding.FieldName = 'SETTLE_MODE'
        RepositoryItem = dmGlobal.luStockSettlementVoucherSettleModel
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACS_PRICE: TcxGridDBBandedColumn
        Caption = 'ACS Price'
        DataBinding.FieldName = 'ACS_PRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACS_PERCENT: TcxGridDBBandedColumn
        Caption = 'ACS Percent'
        DataBinding.FieldName = 'ACS_PERCENT'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_AMOUNT: TcxGridDBBandedColumn
        Caption = 'Settle Amount'
        DataBinding.FieldName = 'SETTLE_AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object gvwCustodyInstruction: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsCustodyInstruction
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.Indicator = True
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwCustodyInstructionCUSTODY_INSTRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_INSTRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCUSTODY_EXTREF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_EXTREF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionEXCHANGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCHANGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSETTLEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionINSTRUCTION_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionPARTY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionPARTY_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionPARTY_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_ACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCOUNTER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCOUNTER_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_CODE'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCOUNTER_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNTER_ACC'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSECURITYCODE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECURITYCODE_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionORIGINAL_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORIGINAL_AMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSETTLE_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_AMOUNT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSALDO_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionISMULTICCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISMULTICCY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionFOREIGN_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionFOREIGN_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_EXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionFOREIGN_SETTTLEAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_SETTTLEAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCUSTODY_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_DESC'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionPURPOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PURPOSE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionTRADE_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADE_REF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSETTLE_REASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_REASON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionBENEFICIARYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionBENEFICIARYACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCORPACT_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CORPACT_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCONFIRM_BY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_BY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCONFIRM_WITH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_WITH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCOUNT_CREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNT_CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCBEST_UPLOAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_UPLOAD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSID_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID_NO'
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionMATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionKSEI_RECON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KSEI_RECON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionCLIENT_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionBS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionDHKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DHKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionNEW_CUSTODY_INSTRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_CUSTODY_INSTRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 61
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionMERGE_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MERGE_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 62
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionSPLIT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SPLIT_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 63
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionIS_MERGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_MERGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 64
        Position.RowIndex = 0
      end
      object gvwCustodyInstructionIS_SPLIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_SPLIT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 65
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Stock Voucher'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Custody Instruction'
      GridView = gvwCustodyInstruction
      Visible = False
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actCancel'
        Permission = '[Stock Settlement Voucher List].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Stock Settlement Voucher List].Copy From Selected Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Stock Settlement Voucher List].View'
      end
      item
        ActionName = 'actView'
        Permission = '[Stock Settlement Voucher List].View Approval Data'
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
    inherited View1: TMenuItem
      Visible = False
    end
    object ViewDetail1: TMenuItem [2]
      Action = actViewDetail
    end
    object ViewTransaction1: TMenuItem [6]
      Action = actViewTransaction
    end
    object Copygridwithheader1: TMenuItem [7]
      Action = actCopySelected
    end
    object SettleSelectedStockVoucher1: TMenuItem [13]
      Action = actSettle
    end
    object CancelStockVoucher1: TMenuItem [14]
      Action = actCancelVoucher
    end
    object ReverseStockVoucher1: TMenuItem [15]
      Action = actReverse
    end
    object N5: TMenuItem [16]
      Caption = '-'
    end
    object StockSettlementVoucherPostingByDate1: TMenuItem [17]
      Action = actSettleVouecherPostByDate
    end
    object N1: TMenuItem [18]
      Caption = '-'
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsStockSettlementVoucherList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actRefresh: TNAction
      Caption = 'Load Data'
    end
    inherited actInsertFromCurrentData: TNAction
      Visible = False
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View'
      CheckPermission = False
    end
    object actViewDetail: TNAction
      Category = 'NActions'
      Caption = 'View Detail'
      OnExecute = actViewDetailExecute
      CheckPermission = False
    end
    object actSettle: TNAction
      Category = 'NActions'
      Caption = 'Settle Selected Stock Voucher'
      OnExecute = actSettleExecute
      OnUpdate = actSettleUpdate
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse Selected Stock Voucher'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actCancelVoucher: TNAction
      Category = 'NActions'
      Caption = 'Cancel Selected Stock Voucher'
      OnExecute = actCancelVoucherExecute
      OnUpdate = actCancelVoucherUpdate
      CheckPermission = False
    end
    object actCreateVPFile: TNAction
      Category = 'NActions'
      Caption = 'actCreateVPFile'
      OnExecute = actCreateVPFileExecute
      CheckPermission = False
    end
    object actCopySelected: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopySelectedExecute
      CheckPermission = False
    end
    object actSettleVouecherPostByDate: TNAction
      Category = 'NActions'
      Caption = 'Stock Settlement Voucher Posting By Date'
      ImageIndex = 1
      OnExecute = actSettleVouecherPostByDateExecute
      CheckPermission = False
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
          ItemName = 'cmbSettleType'
        end
        item
          Visible = True
          ItemName = 'dtValueDate'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkPosted'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkReversed'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkCanceled'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
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
    object cmbSettleType: TcxBarEditItem
      Caption = 'Settle Type'
      Category = 0
      Hint = 'Settle Type'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'Deliver'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Receive'
          Value = 'R'
        end
        item
          Description = 'Netting'
          Value = 'N'
        end
        item
          Description = 'All'
          Value = 'A'
        end>
    end
    object dtValueDate: TcxBarEditItem
      Caption = 'Value Date'
      Category = 0
      Hint = 'Value Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'O'
      Properties.ValueUnchecked = '-'
    end
    object chkPosted: TcxBarEditItem
      Caption = 'Settled'
      Category = 0
      Hint = 'Settled'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = '-'
    end
    object chkReversed: TcxBarEditItem
      Caption = 'Reversed'
      Category = 0
      Hint = 'Reversed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'R'
      Properties.ValueUnchecked = '-'
    end
    object chkCanceled: TcxBarEditItem
      Caption = 'Canceled'
      Category = 0
      Hint = 'Canceled'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'C'
      Properties.ValueUnchecked = '-'
    end
    object dxBarButton1: TdxBarButton
      Action = actSettleVouecherPostByDate
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsStockSettlementVoucherList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SETTLETYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockSettleVoucher'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsStockSettlementVoucherListCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 594
    Top = 222
    object cdsStockSettlementVoucherListSSID: TLargeintField
      FieldName = 'SSID'
      Required = True
    end
    object cdsStockSettlementVoucherListSSNO: TStringField
      DisplayLabel = 'Voucher No.'
      FieldName = 'SSNO'
      Required = True
    end
    object cdsStockSettlementVoucherListSSDESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SSDESC'
      Required = True
      Size = 150
    end
    object cdsStockSettlementVoucherListENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettlementVoucherListVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockSettlementVoucherListACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockSettlementVoucherListACCCODE: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsStockSettlementVoucherListACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsStockSettlementVoucherListACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsStockSettlementVoucherListPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsStockSettlementVoucherListSETTLE_TYPE: TStringField
      DisplayLabel = 'Settle Type'
      DisplayWidth = 1
      FieldName = 'SETTLE_TYPE'
      Size = 1
    end
    object cdsStockSettlementVoucherListQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSettlementVoucherListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsStockSettlementVoucherListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsStockSettlementVoucherListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockSettlementVoucherListSHORTNAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'SHORTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsStockSettlementVoucherListLOCALCODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'LOCALCODE'
      ReadOnly = True
    end
    object cdsStockSettlementVoucherListCL_ACCID: TLargeintField
      FieldName = 'CL_ACCID'
    end
    object cdsStockSettlementVoucherListAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettlementVoucherListINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsStockSettlementVoucherListORIG_AMOUNT: TFloatField
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
    end
    object cdsStockSettlementVoucherListCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsStockSettlementVoucherListCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsStockSettlementVoucherListDIFF_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0.##;(#,##0.##);0'
      Calculated = True
    end
    object cdsStockSettlementVoucherListSETTLE_MODE: TStringField
      FieldName = 'SETTLE_MODE'
      Size = 1
    end
    object cdsStockSettlementVoucherListACS_PRICE: TFloatField
      FieldName = 'ACS_PRICE'
      DisplayFormat = '#, ##0;(#,##0.00);0.00'
    end
    object cdsStockSettlementVoucherListACS_PERCENT: TFloatField
      FieldName = 'ACS_PERCENT'
      DisplayFormat = '#, ##0%;(#,##0.00)%;0.00%'
    end
    object cdsStockSettlementVoucherListSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#, ##0;(#,##0.00);0.00'
    end
    object cdsStockSettlementVoucherListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
  end
  object cdsCustodyInstruction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'VALUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryCustodyInstruction'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 594
    Top = 273
    object cdsCustodyInstructionCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyInstructionCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 40
    end
    object cdsCustodyInstructionEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsCustodyInstructionACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCustodyInstructionACCNO: TStringField
      DisplayLabel = 'Account No.'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCustodyInstructionACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCustodyInstructionVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsCustodyInstructionTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCustodyInstructionSETTLEDATE: TDateField
      DisplayLabel = 'Settle Date'
      FieldName = 'SETTLEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCustodyInstructionSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsCustodyInstructionINSTRUCTION_TYPE: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsCustodyInstructionPARTY_CODE: TStringField
      DisplayLabel = 'Party Code'
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsCustodyInstructionPARTY_ACC: TStringField
      DisplayLabel = 'Party Account'
      FieldName = 'PARTY_ACC'
    end
    object cdsCustodyInstructionCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsCustodyInstructionCOUNTER_CODE: TStringField
      DisplayLabel = 'Counter Code'
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsCustodyInstructionCOUNTER_ACC: TStringField
      DisplayLabel = 'Counter Account'
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
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCKCODE'
    end
    object cdsCustodyInstructionQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
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
      DisplayLabel = 'Description'
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsCustodyInstructionREMARKS: TStringField
      DisplayLabel = 'Remark'
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
      DisplayLabel = 'SID No.'
      FieldName = 'SID_NO'
    end
    object cdsCustodyInstructionSTAT: TStringField
      DisplayLabel = 'Status'
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
    object cdsCustodyInstructionBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsCustodyInstructionDHKID: TLargeintField
      FieldName = 'DHKID'
    end
    object cdsCustodyInstructionNEW_CUSTODY_INSTRID: TLargeintField
      FieldName = 'NEW_CUSTODY_INSTRID'
    end
    object cdsCustodyInstructionMERGE_ID: TIntegerField
      FieldName = 'MERGE_ID'
    end
    object cdsCustodyInstructionSPLIT_ID: TIntegerField
      FieldName = 'SPLIT_ID'
    end
    object cdsCustodyInstructionIS_MERGE: TBooleanField
      FieldName = 'IS_MERGE'
    end
    object cdsCustodyInstructionIS_SPLIT: TBooleanField
      FieldName = 'IS_SPLIT'
    end
  end
  object dsCustodyInstruction: TDataSource
    DataSet = cdsCustodyInstruction
    Left = 561
    Top = 360
  end
  object cdsGenerateOTCTXT: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CIID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryGenerateOTCTXT'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 356
    object cdsGenerateOTCTXTDATA: TStringField
      FieldName = 'DATA'
      ReadOnly = True
      Size = 534
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xls'
    Left = 702
    Top = 278
  end
end
