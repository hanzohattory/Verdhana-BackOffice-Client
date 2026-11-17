inherited frmContracts: TfrmContracts
  Caption = 'Contract'
  ClientHeight = 577
  ClientWidth = 1482
  ExplicitWidth = 1482
  ExplicitHeight = 577
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1482
    Height = 551
    ExplicitWidth = 1482
    ExplicitHeight = 551
    inherited gvwMaster: TcxGridDBBandedTableView
      OnFocusedRecordChanged = gvwMasterFocusedRecordChanged
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = 
            'Total Net Value: #,##0.00; Total Net Value: (#,##0.00);Total Net' +
            ' Value: 0'
          Kind = skSum
          FieldName = 'NETVALUE'
        end
        item
          Format = 
            ', Total Commission: #,##0.00;, Total Commission: (#,##0.00);, To' +
            'tal Commission:  0'
          Kind = skSum
          FieldName = 'COMMAMT'
          Column = gvwMasterCOMMAMT
        end
        item
          Format = 
            ', Total Net Amount: #,##0.00;, Total Net Amount: (#,##0.00);, To' +
            'tal Net Amount: 0'
          Kind = skSum
          FieldName = 'NETAMT'
          Column = gvwMasterNETAMT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'QTY'
          Column = gvwMasterQTY
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'NETAMT'
          Column = gvwMasterNETAMT
        end>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsSelection.InvertSelect = True
      OptionsView.GroupByBox = True
      Styles.Selection = dmGlobal.rowSelected
      object gvwMasterCONCODE: TcxGridDBBandedColumn
        Caption = 'Contract No.'
        DataBinding.FieldName = 'CONCODE'
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        Caption = 'Market'
        DataBinding.FieldName = 'MARKETCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCASHSETTLEDATE: TcxGridDBBandedColumn
        Caption = 'Cash Settle Date'
        DataBinding.FieldName = 'CASHSETTLEDATE'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKSETTLEDATE: TcxGridDBBandedColumn
        Caption = 'Stock Settle Date'
        DataBinding.FieldName = 'STOCKSETTLEDATE'
        Visible = False
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        VisibleForCustomization = False
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        VisibleForCustomization = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterTC_MODEL: TcxGridDBBandedColumn
        Caption = 'TC Model'
        DataBinding.FieldName = 'TC_MODEL'
        RepositoryItem = dmGlobal.luTCModel
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterNETTYPE: TcxGridDBBandedColumn
        Caption = 'Net Type'
        DataBinding.FieldName = 'NETTYPE'
        RepositoryItem = dmGlobal.luBuySell
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCOMMAMT: TcxGridDBBandedColumn
        Caption = 'Commission Amount'
        DataBinding.FieldName = 'COMMAMT'
        Visible = False
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterNETAMT: TcxGridDBBandedColumn
        Caption = 'Net Amount'
        DataBinding.FieldName = 'NETAMT'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCONSTS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'CONSTS'
        RepositoryItem = dmGlobal.luDealTicketStat
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCONDATE: TcxGridDBBandedColumn
        Caption = 'Contract Date'
        DataBinding.FieldName = 'CONDATE'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterENTTCODE: TcxGridDBBandedColumn
        Caption = 'Entity Code'
        DataBinding.FieldName = 'ENTTCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterENTNAME: TcxGridDBBandedColumn
        Caption = 'Entity Name'
        DataBinding.FieldName = 'ENTNAME'
        Visible = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Visible = False
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Visible = False
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterAVGPRICE: TcxGridDBBandedColumn
        Caption = 'Avg. Price'
        DataBinding.FieldName = 'AVGPRICE'
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'QTY'
        Visible = False
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCINIT'
        Visible = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        Caption = 'Account SOP ID'
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Foreign CCY'
        DataBinding.FieldName = 'FOREIGN_CCYCODE'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_EXRATE: TcxGridDBBandedColumn
        Caption = 'Foreign Exrate'
        DataBinding.FieldName = 'FOREIGN_EXRATE'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_NETAMT: TcxGridDBBandedColumn
        Caption = 'Foreign Net Amount'
        DataBinding.FieldName = 'FOREIGN_NETAMT'
        Visible = False
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_CURREXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_CURREXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CASH: TcxGridDBBandedColumn
        Caption = 'Settle Cash'
        DataBinding.FieldName = 'SETTLE_CASH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_STOCK: TcxGridDBBandedColumn
        Caption = 'Settle Stock'
        DataBinding.FieldName = 'SETTLE_STOCK'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterEXCELL_CLASS: TcxGridDBBandedColumn
        Caption = 'Excell Class'
        DataBinding.FieldName = 'EXCELL_CLASS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Standard 1 Format'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Standard 2 Format'
            Value = '2'
          end
          item
            Description = 'Citigroup Format'
            Value = '3'
          end
          item
            Description = 'Daiwa Format'
            Value = '4'
          end
          item
            Description = 'DBS Format'
            Value = '5'
          end
          item
            Description = 'Schroders Format'
            Value = '6'
          end
          item
            Description = 'OCBC Format'
            Value = '7'
          end
          item
            Description = 'BPJS Format'
            Value = '8'
          end
          item
            Description = 'WIKA Format'
            Value = '9'
          end
          item
            Description = 'Merylinch Format'
            Value = '10'
          end>
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterISMULTICCY: TcxGridDBBandedColumn
        Caption = 'Is Multy Currency'
        DataBinding.FieldName = 'ISMULTICCY'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterEMAILSTATUS: TcxGridDBBandedColumn
        Caption = 'Email Status'
        DataBinding.FieldName = 'EMAILSTATUS'
        RepositoryItem = dmGlobal.luEmailStatus
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterISSINV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISSINV'
        RepositoryItem = dmGlobal.chkStandard
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterADDITIONAL_FEE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ADDITIONAL_FEE'
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterNETVALUE_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETVALUE_1'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_NETVALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_NETVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterFileReportGenerate: TcxGridDBBandedColumn
        Caption = 'File Report Generate'
        DataBinding.FieldName = 'FileReportGenerate'
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMastereMateraiStatus: TcxGridDBBandedColumn
        Caption = 'e-Materai Status'
        DataBinding.FieldName = 'eMateraiStatus'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCCODE'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACC_NAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACC_NAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterReportID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ReportID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterREPORT_CAPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPORT_CAPTION'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterAGCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AGCTYPE'
        Visible = False
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterCON_ADDR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CON_ADDR'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterCITY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CITY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterZIPCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ZIPCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterTC_SENDBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TC_SENDBY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterSALESID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterDEALERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DEALERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterNETVALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETVALUE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterCUSTODYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterSIDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIDNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwMasterBANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwMasterSETT_CLEARACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETT_CLEARACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwMasterSETT_CLEARSUBACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETT_CLEARSUBACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwMasterFINALSTS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FINALSTS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 61
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 62
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 63
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 64
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 65
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 66
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 67
        Position.RowIndex = 0
      end
      object gvwMasterISOMG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISOMG'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 68
        Position.RowIndex = 0
      end
      object gvwMasterOTC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OTC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 69
        Position.RowIndex = 0
      end
      object gvwMasterVALUEAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 70
        Position.RowIndex = 0
      end
      object gvwMasterCHARGEAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGEAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 71
        Position.RowIndex = 0
      end
      object gvwMasterS_STS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S_STS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 72
        Position.RowIndex = 0
      end
      object gvwMasterC_STS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'C_STS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 73
        Position.RowIndex = 0
      end
      object gvwMasterC_SETTLEMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'C_SETTLEMODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 74
        Position.RowIndex = 0
      end
      object gvwMasterS_SETTLEMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S_SETTLEMODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 75
        Position.RowIndex = 0
      end
      object gvwMasterCASHKEEP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHKEEP'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 76
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKKEEP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKKEEP'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 77
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 78
        Position.RowIndex = 0
      end
      object gvwMasterSALES_BRANCHID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALES_BRANCHID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 79
        Position.RowIndex = 0
      end
      object gvwMasterENTTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 80
        Position.RowIndex = 0
      end
      object gvwMasterROUND_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ROUND_AMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 81
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 82
        Position.RowIndex = 0
      end
      object gvwMasterJRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 83
        Position.RowIndex = 0
      end
      object gvwMasterCASHMOVEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHMOVEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 84
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKMOVEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKMOVEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 85
        Position.RowIndex = 0
      end
      object gvwMasterEMAILID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAILID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 86
        Position.RowIndex = 0
      end
      object gvwMasterSENDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SENDID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 87
        Position.RowIndex = 0
      end
      object gvwMasterMOVE_CSET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MOVE_CSET'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 88
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 89
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_EXRATE_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_EXRATE_MODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 90
        Position.RowIndex = 0
      end
      object gvwMasterSALDO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALDO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 91
        Position.RowIndex = 0
      end
      object gvwMasterISWAPU: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISWAPU'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 92
        Position.RowIndex = 0
      end
      object gvwMasterEMATERAI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMATERAI'
        Position.BandIndex = 0
        Position.ColIndex = 93
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKTRANSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 94
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERTRANSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERTRANSID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 95
        Position.RowIndex = 0
      end
      object gvwMasterfinalFilePatch: TcxGridDBBandedColumn
        DataBinding.FieldName = 'finalFilePatch'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 96
        Position.RowIndex = 0
      end
      object gvwMasterfinalFileName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'finalFileName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 97
        Position.RowIndex = 0
      end
      object TcxGridDBBandedColumn
        Caption = 'Main Account Code'
        DataBinding.FieldName = 'MAIN_ACCOUNTCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 98
        Position.RowIndex = 0
      end
      object TcxGridDBBandedColumn
        Caption = 'Main Account Name'
        DataBinding.FieldName = 'MAIN_ACCOUNTNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 99
        Position.RowIndex = 0
      end
      object TcxGridDBBandedColumn
        Caption = 'Trading ID'
        DataBinding.FieldName = 'TRADINGID'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 100
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Contract].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Contract].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Contract].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Contract].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Contract].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Contract].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Contract].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Contract].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Contract].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Contract].Reject'
      end
      item
        ActionName = 'actGenerateContractFile'
        Permission = '[Contract].Generate Contract File'
      end
      item
        ActionName = 'actViewContractFile'
        Permission = '[Contract].View Contract File'
      end
      item
        ActionName = 'actCloseContract'
        Permission = '[Contract].Close Contract'
      end
      item
        ActionName = 'actCancelContract'
        Permission = '[Contract].Cancel Contract'
      end
      item
        ActionName = 'actReverseContract'
        Permission = '[Contract].Reverse Contract'
      end
      item
        ActionName = 'actCloseContractByDate'
        Permission = '[Contract].Close Contract'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Contract].View'
      end
      item
        ActionName = 'actReportTCByReportID'
        Permission = '[Contracts].PrintByReportType'
      end>
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010D002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A55252000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A00000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD00004284000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF000073E700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF0084BDF700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF700107BEF00CEE7FF00318CE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF700188CFF00108C
      FF000084FF00FFFFFF00CEE7FF00107BEF000073EF009CCEF700FFFFFF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF00007BFF00FFFFFF0084BDF7000073EF00006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF001084FF00CEE7FF00FFFFFF008CC6F700006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A0000000000007BF700399CFF002194
      FF00108CFF00D6E7FF00FFFFFF00CEE7FF009CCEFF00FFFFFF00CEE7FF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00108CFF00FFFFFF00FFFFFF009CCEFF00429CF7004294EF004294EF004294
      EF00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00218CFF00D6E7FF00FFFFFF00FFFFFF00DEEFFF000073EF000073E700006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A0000000000007BF70063ADFF00319C
      FF00188CFF00218CFF00D6E7FF00FFFFFF00FFFFFF00CEE7FF00107BEF000073
      E7000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00E7F7FF00FFFFFF00D6E7FF0063ADFF00FFFFFF00429CF7000073EF000073
      E7000073E7000063D600004A94000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD52520000000000007BF70073BDFF00429C
      FF002194FF00108CFF00A5D6FF00FFFFFF00FFFFFF00CEE7FF001084F7000073
      EF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF0073BDFF00ADD6FF00188CFF000084FF00B5D6FF009CCEFF00007BF7000073
      EF000073EF00006BD600004A9C000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF70084C6FF004AA5
      FF002994FF00ADD6FF00FFFFFF00D6EFFF00D6EFFF00FFFFFF00CEE7FF00007B
      F700007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00FFFFFF00FFFFFF00A5D6FF004AA5FF0042A5FF00429CFF00429C
      FF00007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00188CFF000884FF000884FF002994FF00E7EFFF001084FF00007B
      F700007BF700006BE7000052AD000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF7008CC6FF0052AD
      FF00399CFF00F7FFFF00D6EFFF002194FF002194FF00D6EFFF00FFFFFF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00FFFFFF008CC6FF00108CFF000884FF000084FF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00218CFF00188CFF00108CFF006BB5FF0073BDFF000084
      FF00007BFF000073EF00005AB5000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF008CC6FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF0084C6FF000884
      FF000084FF00007BF700005AC6000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A00000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A9400004284000000000000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D600526BDE00EFF7FF009CADE7001031C6000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF7000884FF000084
      FF001084FF0084BDFF00FFFFFF00FFFFFF00FFFFFF0084B5EF001073DE00006B
      DE00006BE7000063CE00004A940000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D600FFFFFF00F7FFFF000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D6000029D6000029CE000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF00ADBDFF001039E7000029D600ADBDF700FFFFFF009CADEF000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF700188CFF00108C
      FF00A5D6FF00EFF7FF0063ADFF00429CF70063ADF700EFF7FF009CCEF700006B
      DE00006BE7000063CE00004A940000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E700FFFFFF00FFFFFF000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E7000029DE000029D6000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF00FFFFFF008CA5F7000029E700526BE700FFFFFF00BDCEF7000029C6000021
      BD000029C6000021AD0000106B000000000000000000007BF700399CFF002194
      FF00FFFFFF0063B5FF00007BFF00007BF700007BF70063ADF700FFFFFF00006B
      DE00006BE7000063CE00004A940000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF00FFFFFF00FFFFFF008CA5F700EFF7FF00FFFFFF009CB5F7000029D6000029
      CE000029C6000021B50000106B000000000000000000007BF70063ADFF00319C
      FF00FFFFFF004AA5FF0063B5FF00FFFFFF00007BFF00218CF70084BDF7000073
      E7000073E7000063D600004A940000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF006384FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7FF003152DE000029
      D6000029CE000021B500001873000000000000000000007BF70073BDFF00429C
      FF00F7FFFF00B5DEFF0084C6FF00FFFFFF00FFFFFF0063ADFF00007BF7000073
      EF000073EF00006BD600004A9C0000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F700FFFFFF00FFFFFF000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F7000031F7000031F7000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF00426BFF00849CFF00637BF700CEDEFF00FFFFFF00EFF7FF003152
      E7000029DE000029C600001884000000000000000000007BF70084C6FF004AA5
      FF007BBDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDDEFF00007B
      F700007BF700006BE7000052AD0000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF00FFFFFF00FFFFFF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF000031FF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF001042FF00EFF7FF00FFFFFF00EFF7
      FF000029E7000029CE00001894000000000000000000007BF7008CC6FF0052AD
      FF00399CFF0063B5FF00C6E7FF00FFFFFF00FFFFFF00B5DEFF002194FF000084
      FF00007BFF000073EF00005AB50000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF00315AFF00EFF7FF00CEDE
      FF000031EF000029D60000219C000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF0094CEFF00FFFFFF005AADFF00188CFF000884FF000884
      FF000084FF00007BF700005AC60000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      0800006308000052080000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      08000063080000520800000000000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B3100000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B310000000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD100000630800000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD1000006308000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B310000000000000000000021B5420031C6630029BD
      520021BD4A0018BD390010B5310010B5290029BD3900D6F7D60008B5180008B5
      180008B5180008A51000006B0800000000000000000021B5420031C6630029BD
      520021BD4A0018BD3900D6F7DE0031BD420008B5210008B5180008B5180008B5
      180008B5180008A51000006B08000000000000000000D66B0000F7841000EF7B
      0800E7730000FFFFFF00D66B0000D66B0000CE630000D68C4200F7EFDE00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000F7841000EF7B
      0800E7730000FFEFDE00E7944200D66B0000CE630000C6630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A0039CE730031C6
      630029BD520021BD4A0018BD420052CE6B00F7FFF700FFFFFF0008B5180008B5
      180008BD180008A5100000630800000000000000000021B54A0039CE730031C6
      630029BD520021BD4A00FFFFFF00F7FFF7004ACE630008B5210008B5180008B5
      180008BD180008A51000006308000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00E76B0000DE7B2100F7D6AD00FFFFFF00FFFFFF00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00FFFFFF00F7D6AD00DE7B2100CE630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A0084DE9C00FFFFFF00FFFFFF00FFFFFF0010B5290008B5
      180008B5180008A5100000630800000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A00FFFFFF00FFFFFF00FFFFFF007BD68C0010B5290008B5
      180008B5180008A51000006308000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00F7BD8400FFF7EF00FFFFFF00FFFFFF00FFFFFF00CE63
      0000C6630000B55200006B3100000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFB58400FFFFFF00CE63
      0000C6630000B55200006B310000000000000000000021B54A0073DE9C0052CE
      840039C67300B5EFC600FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD310010B5
      290008BD210008A51800006B0800000000000000000021B54A0073DE9C0052CE
      840039C6730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7B50010B5
      290008BD210008A51800006B08000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFB57300FFF7EF00FFFFFF00FFFFFF00FFFFFF00D66B
      0000CE630000BD5A0000733900000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFAD7300FFFFFF00D66B
      0000CE630000BD5A000073390000000000000000000021B54A008CDEAD005AD6
      8C0042CE7300B5EFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD420018BD
      390010BD310008AD2100006B0800000000000000000021B54A008CDEAD005AD6
      8C0042CE730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7BD0018BD
      390010BD310008AD2100006B08000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00F77B0000F7841000FFD6AD00FFFFFF00FFFFFF00DE6B
      0000DE6B0000C6630000844200000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00FFFFFF00FFD6AD00F7841000EF730000FFFFFF00DE6B
      0000DE6B0000C663000084420000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C673007BDEA500FFFFFF00FFFFFF00FFFFFF0021BD520018BD
      420018BD390010AD2900087B1000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C67300FFFFFF00FFFFFF00FFFFFF007BDE9C0021BD520018BD
      420018BD390010AD2900087B10000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFFFFF00F7841000F77B0800F77B0000F79C4200FFEFDE00E773
      0000E7730000CE630000944200000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFF7E700F7A54A00F77B0800F77B0000F77B0000FFFFFF00E773
      0000E7730000CE63000094420000000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B0042CE73005AD68C00F7FFF700FFFFFF0029C6630021BD
      520021C64A0018B5390008841800000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B00FFFFFF00F7FFF7005AD68C0031C66B0029C6630021BD
      520021C64A0018B53900088418000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A00000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A0000000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE84004ACE7B0042CE7B004ACE8400DEF7E70031C66B0029C6
      630029C65A0021B54A00108C1800000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE8400DEF7E70052CE840042CE730039C6730031C66B0029C6
      630029C65A0021B54A00108C18000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD5200000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD520000000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C2100000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C21000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A00000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A0000000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE63000000000000000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE6300000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD39000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FDC7000000000000F003000000000000
      C001000000000000000100000000000000010000000000000001000000000000
      00010000000000008001000000000000C003000000000000E007000000000000
      F00F000000000000F03F000000000000F03F000000000000F03F000000000000
      E03F000000000000E07F000000000000FFFFFFFFFFFFC001C003C003C0038000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      C003C003C0038000FFFFFFFFFFFFC001FFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
    inherited ViewAuditLog1: TMenuItem [2]
    end
    inherited ViewAuditLogForm1: TMenuItem [3]
    end
    object ViewTransaction2: TMenuItem [4]
      Action = actViewTransaction
    end
    object Print1: TMenuItem [5]
      Caption = 'Print'
      object PrintClientSide1: TMenuItem
        Action = actPrintClientSide
      end
      object PrintByReportType1: TMenuItem
        Action = actReportTCByReportID
      end
    end
    inherited actPrint1: TMenuItem [6]
      Visible = False
    end
    inherited Insert2: TMenuItem
      Visible = False
    end
    object GenerateFile1: TMenuItem [10]
      Caption = 'Generate File'
      object GenerateSelectedContractToExcel1: TMenuItem
        Action = actGenerateContactToExcel
      end
      object GenerateContactFileByDefault1: TMenuItem
        Action = actGenerateContractFileByDefault
      end
      object GenerateContractFile2: TMenuItem
        Action = actGenerateSelectedContractFile
      end
    end
    object Close1: TMenuItem [11]
      Caption = 'Close'
      object Selected1: TMenuItem
        Action = actCloseContract
      end
      object CloseContractByDate1: TMenuItem
        Action = actCloseContractByDate
      end
    end
    object CopyCell1: TMenuItem [12]
      Action = actCopyCell
    end
    object CancelContract1: TMenuItem [13]
      Action = actCancelContract
    end
    object ReverseContract1: TMenuItem [14]
      Action = actReverseContract
    end
    object SendEmail1: TMenuItem [15]
      Caption = 'Send Email'
      object SendContractByEmail1: TMenuItem
        Action = actSendMail
      end
      object SendAllClosedContractByMail1: TMenuItem
        Action = actSendClosedContractByMail
      end
    end
    object N6: TMenuItem [16]
      Caption = '-'
    end
    object ViewContractFile2: TMenuItem [17]
      Action = actViewContractFile
    end
    object ViewSendMailContract1: TMenuItem [18]
      Action = actViewSendMail
    end
    object SendTCforStamping1: TMenuItem [19]
      Action = actSendTCForStamping
    end
    object N1: TMenuItem [20]
      Caption = '-'
    end
    object ReCalculateMinimumFee1: TMenuItem [21]
      Action = actReCalculateMinFee
    end
    object N5: TMenuItem [22]
      Caption = '-'
    end
    object SplitSettlementInstruction1: TMenuItem [23]
      Action = actSettlementInstruction
    end
    object GenerateSInvest1: TMenuItem [25]
      Caption = 'Generate S-Invest Trade Detail'
      object GenerateSInvestTradeDetailTextFile1: TMenuItem
        Action = actGenerateTDTXT
      end
      object GenerateSInvestTradeDetailCSVFile1: TMenuItem
        Action = actGenerateTDCSV
      end
    end
    object GenerateSInvestTradeConfirmation1: TMenuItem [26]
      Caption = 'Generate S-Invest Trade Confirmation'
      object FormatTextFile1: TMenuItem
        Action = actGenerateTCTXT
      end
      object FormatCSVFile1: TMenuItem
        Action = actGenerateTCCSV
      end
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsContractList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
    inherited actRefresh: TNAction
      Caption = 'Load Data'
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actPrint: TNAction
      Caption = 'Print Both Side'
    end
    inherited actViewAuditLog: TNAction
      Visible = True
      CheckPermission = True
    end
    object actViewDataList: TNAction [17]
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actViewTransLeg: TNAction [18]
      Category = 'NActions'
      Caption = 'View Transaction Leg'
      OnExecute = actViewTransLegExecute
      OnUpdate = actViewTransLegUpdate
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actNewGenContract: TNDataActionInsert [19]
      Category = 'NDataContainerActions'
      Caption = 'New Contract File'
      CheckPermission = False
    end
    object actEditGenContract: TNDataActionEdit [20]
      Category = 'NDataContainerActions'
      Caption = 'Edit Contract File'
      CheckPermission = False
    end
    object actGenerateContractFile: TNAction [21]
      Category = 'Generate'
      Caption = 'Generate Contract File'
      Enabled = False
      Visible = False
      OnExecute = actGenerateContractFileExecute
      OnUpdate = actGenerateContractFileUpdate
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actViewContractFile: TNAction [22]
      Category = 'NActions'
      Caption = 'View Contract File'
      Enabled = False
      Visible = False
      OnExecute = actViewContractFileExecute
      OnUpdate = actViewContractFileUpdate
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
    end
    object actCloseContract: TNAction [23]
      Category = 'NActions'
      Caption = 'Close Selected Contract'
      OnExecute = actCloseContractExecute
      OnUpdate = actEditUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actCancelContract: TNAction [24]
      Category = 'NActions'
      Caption = 'Cancel Contract'
      OnExecute = actCancelContractExecute
      OnUpdate = actEditUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actReverseContract: TNAction [25]
      Category = 'NActions'
      Caption = 'Reverse Contract'
      OnExecute = actReverseContractExecute
      OnUpdate = actReverseContractUpdate
      CheckPermission = True
      ActionLog = dmGlobal.ActionLog
    end
    object actPrintPerAlloc: TNAction [26]
      Category = 'Report'
      Caption = 'Print Per Allocation'
      ImageIndex = 12
      OnExecute = actPrintPerAllocExecute
      OnUpdate = actPrintPerAllocUpdate
      CheckPermission = False
    end
    object actSplitSI: TNAction [27]
      Category = 'NActions'
      Caption = 'Settlement Instruction '
      OnExecute = actSplitSIExecute
      OnUpdate = actSplitSIUpdate
      CheckPermission = False
    end
    object actExcelExport: TNAction [28]
      Category = 'NActions'
      Caption = 'Excel Export'
      Enabled = False
      Visible = False
      OnExecute = actExcelExportExecute
      CheckPermission = False
    end
    object actExcelExportSend: TNAction [29]
      Category = 'NActions'
      Caption = 'Excel Export then Send Email'
      Enabled = False
      Visible = False
      OnExecute = actExcelExportSendExecute
      CheckPermission = False
    end
    object actSendMail: TNAction [30]
      Category = 'NActions'
      Caption = 'Send Selected Contract By Email'
      OnExecute = actSendMailExecute
      CheckPermission = False
    end
    object actViewSendMail: TNAction [31]
      Category = 'NActions'
      Caption = 'View Send Mail Contract'
      OnExecute = actViewSendMailExecute
      OnUpdate = actViewSendMailUpdate
      CheckPermission = False
    end
    object actCloseContractAll: TNAction [32]
      Category = 'NActions'
      Caption = 'Close All Contract'
      OnExecute = actCloseContractAllExecute
      OnUpdate = actCloseContractAllUpdate
      CheckPermission = False
    end
    object actChangeSettleCcy: TNAction [33]
      Category = 'NActions'
      Caption = 'Change Settlement Currency'
      OnExecute = actChangeSettleCcyExecute
      CheckPermission = False
    end
    object actPrintClientSide: TNAction
      Category = 'Report'
      Caption = 'Print By Report Default'
      ImageIndex = 12
      OnExecute = actPrintClientSideExecute
      CheckPermission = False
    end
    object actPrintBrokerSide: TNAction
      Category = 'Report'
      Caption = 'Print Broker Side'
      ImageIndex = 12
      OnExecute = actPrintBrokerSideExecute
      CheckPermission = False
    end
    object actCancelAllContract: TNAction
      Category = 'NActions'
      Caption = 'Cancel All Contract'
      OnExecute = actCancelAllContractExecute
      CheckPermission = False
    end
    object actSettlementInstruction: TNAction
      Category = 'Settlement'
      Caption = 'Settlement Instruction'
      OnExecute = actSettlementInstructionExecute
      OnUpdate = actSettlementInstructionUpdate
      CheckPermission = False
    end
    object actGenerateTDTXT: TNAction
      Category = 'S-Invest'
      Caption = 'Format Text File'
      OnExecute = actGenerateTDTXTExecute
      CheckPermission = False
    end
    object actGenerateTDCSV: TNAction
      Category = 'S-Invest'
      Caption = 'Format CSV File'
      OnExecute = actGenerateTDCSVExecute
      CheckPermission = False
    end
    object actGenerateTCCSV: TNAction
      Category = 'S-Invest'
      Caption = 'Format CSV File'
      OnExecute = actGenerateTCCSVExecute
      CheckPermission = False
    end
    object actGenerateTCTXT: TNAction
      Category = 'S-Invest'
      Caption = 'Format Text File'
      OnExecute = actGenerateTCTXTExecute
      CheckPermission = False
    end
    object actCopyCell: TNAction
      Category = 'NActions'
      Caption = 'Copy grid with header'
      ShortCut = 16472
      OnExecute = actCopyCellExecute
      CheckPermission = False
    end
    object actViewLedgerDetail: TNAction
      Category = 'NActions'
      Caption = 'View Ledger Detail'
      OnExecute = actViewLedgerDetailExecute
      CheckPermission = False
    end
    object actSendClosedContractByMail: TNAction
      Category = 'NActions'
      Caption = 'Send All Closed Contract By Mail'
      OnExecute = actSendClosedContractByMailExecute
      CheckPermission = False
    end
    object actCloseContractByDate: TNAction
      Category = 'NActions'
      Caption = 'Close All Contract By Date'
      OnExecute = actCloseContractByDateExecute
      OnUpdate = actCloseContractByDateUpdate
      CheckPermission = False
    end
    object actReCalculateMinFee: TNAction
      Category = 'NActions'
      Caption = 'ReCalculate Minimum Fee'
      OnExecute = actReCalculateMinFeeExecute
      CheckPermission = False
    end
    object actGenerateSelectedContractFile: TNAction
      Category = 'Generate'
      Caption = 'Generate Selected Contract File By Type'
      OnExecute = actGenerateSelectedContractFileExecute
      OnUpdate = actGenerateSelectedContractFileUpdate
      CheckPermission = False
    end
    object actSendTCForStamping: TNAction
      Category = 'NActions'
      Caption = 'Send TC for Stamping'
      OnExecute = actSendTCForStampingExecute
      CheckPermission = False
    end
    object actGenerateContactToExcel: TNAction
      Category = 'Generate'
      Caption = 'Generate Selected Contract To Excel'
      OnExecute = actGenerateContactToExcelExecute
      CheckPermission = False
    end
    object actSInvestReconTCSelected: TNAction
      Category = 'S-Invest'
      Caption = 'Generate Selected S-Invest Recon TC'
      CheckPermission = False
    end
    object actReportTCByReportID: TNAction
      Category = 'Report'
      Caption = 'Print By Report Type'
      ImageIndex = 12
      OnExecute = actReportTCByReportIDExecute
      CheckPermission = False
    end
    object actGenerateContractFileByDefault: TNAction
      Category = 'Generate'
      Caption = 'Generate Selected Contact File By Default'
      OnExecute = actGenerateContractFileByDefaultExecute
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
          ItemName = 'dtTransDateStart'
        end
        item
          Visible = True
          ItemName = 'cbMarket'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllMarket'
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
          ItemName = 'chkCanceled'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkReversed'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuPrint: TdxBarButton
      Action = nil
      Caption = 'Print Both Side'
      Visible = ivNever
    end
    inherited mnuInsert: TdxBarSubItem
      Visible = ivNever
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Visible = ivAlways
      ImageIndex = 12
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actPrintClientSide
      Category = 0
    end
    object dtTransDateStart: TcxBarEditItem
      Caption = 'Contract Date'
      Category = 0
      Hint = 'Contract Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd MMM yyyy'
    end
    object cbMarket: TcxBarEditItem
      Caption = 'Market Code'
      Category = 0
      Hint = 'Market Code'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luMarket
    end
    object chkAllMarket: TcxBarEditItem
      Caption = 'All Market'
      Category = 0
      Hint = 'All Market'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      RepositoryItem = dmGlobal.chkStandard
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
      Caption = 'Closed'
      Category = 0
      Hint = 'Closed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
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
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    Control4Eyes = True
    ListDataset = cdsContractList
    DetailsData = <
      item
        DetailTableName = 'main.B_CON_ORDERS'
        UpdateTableName = 'appr.B_CON_ORDERS_UPD'
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end
      item
        DetailTableName = 'main.B_CON_ALLOC'
        UpdateTableName = 'appr.B_CON_ALLOC_UPD'
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end
      item
        DetailTableName = 'main.B_CON_CHARGE'
        UpdateTableName = 'main.B_CON_CHARGE_UPD'
        DetailKeys = <
          item
            FieldName = 'CHARGE_ID'
            FieldIndex = 0
          end>
      end
      item
        DetailTableName = 'main.B_CON_SETTLE'
        UpdateTableName = 'appr.B_CON_SETTLE_UPD'
        DetailKeys = <
          item
            FieldName = 'SEQNO'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_CONTRACT'
    UpdateTableName = 'appr.B_CONTRACT_UPD'
    Keys = <
      item
        FieldName = 'CONID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CONID'
        SequenceName = 'TBL_B_CONTRACT'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Middle Office\TradeConfirmation.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'ContractID'
        ParamType = ptInput
      end>
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '.xls'
    Filter = 'Excel File|*.xls'
    Left = 360
    Top = 400
  end
  object cdsConAlloc: TNClientDataset
    Aggregates = <>
    DataSetField = cdsContractqryConAlloc
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 528
    Top = 336
    object cdsConAllocCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsConAllocSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsConAllocACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsConAllocACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsConAllocACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsConAllocACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsConAllocBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsConAllocSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsConAllocSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Size = 30
    end
    object cdsConAllocSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsConAllocCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
    object cdsConAllocCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsConAllocVALID_CALC_METHOD: TStringField
      FieldName = 'VALID_CALC_METHOD'
      Size = 2
    end
    object cdsConAllocCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsConAllocVALID_COMM_RATE: TFloatField
      FieldName = 'VALID_COMM_RATE'
    end
    object cdsConAllocAPRICE: TFloatField
      FieldName = 'APRICE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsConAllocAQTY: TFloatField
      FieldName = 'AQTY'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocAVALUE: TFloatField
      FieldName = 'AVALUE'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocREALPRICE: TFloatField
      FieldName = 'REALPRICE'
    end
    object cdsConAllocREALVALUE: TFloatField
      FieldName = 'REALVALUE'
    end
    object cdsConAllocPRICE_DIFF: TFloatField
      FieldName = 'PRICE_DIFF'
    end
    object cdsConAllocCHARGES_DIFF: TFloatField
      FieldName = 'CHARGES_DIFF'
    end
    object cdsConAllocCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object cdsConAllocBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsConAllocWAPU: TFloatField
      FieldName = 'WAPU'
    end
    object cdsConAllocWHT: TFloatField
      FieldName = 'WHT'
    end
    object cdsConAllocSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsConAllocTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsConAllocCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsConAllocALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
      DisplayFormat = '#,##0'
    end
    object cdsConAllocISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsConAllocFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsConAllocFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsConAllocFOREIGN_ALLOCAMT: TFloatField
      FieldName = 'FOREIGN_ALLOCAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsConAllocFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsConAllocC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsConAllocS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsConAllocCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsConAllocSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsConAllocDUECASH: TDateField
      FieldName = 'DUECASH'
    end
    object cdsConAllocDUESTOCK: TDateField
      FieldName = 'DUESTOCK'
    end
    object cdsConAllocMOVEDUESTOCK: TDateField
      FieldName = 'MOVEDUESTOCK'
    end
    object cdsConAllocMOVEDUECASH: TDateField
      FieldName = 'MOVEDUECASH'
    end
    object cdsConAllocDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsConAllocDA_SEQID: TLargeintField
      FieldName = 'DA_SEQID'
    end
    object cdsConAllocDX_SEQID: TLargeintField
      FieldName = 'DX_SEQID'
    end
    object cdsConAllocSI_STOCK: TStringField
      FieldName = 'SI_STOCK'
      Size = 1
    end
    object cdsConAllocSI_CASH: TStringField
      FieldName = 'SI_CASH'
      Size = 1
    end
    object cdsConAllocCASH_SETTLED_STAT: TStringField
      FieldName = 'CASH_SETTLED_STAT'
      Size = 1
    end
    object cdsConAllocCASH_SETTLED_AMT: TFloatField
      FieldName = 'CASH_SETTLED_AMT'
    end
    object cdsConAllocCASH_SETTLED_DATE: TDateField
      FieldName = 'CASH_SETTLED_DATE'
    end
    object cdsConAllocSTOCK_SETTLED_STAT: TStringField
      FieldName = 'STOCK_SETTLED_STAT'
      Size = 1
    end
    object cdsConAllocSTOCK_SETTLED_QTY: TFloatField
      FieldName = 'STOCK_SETTLED_QTY'
    end
    object cdsConAllocSTOCCK_SETTLED_DATE: TDateField
      FieldName = 'STOCCK_SETTLED_DATE'
    end
    object cdsConAllocMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConAllocMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConAllocAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConAllocAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConAllocUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConAllocUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConAllocNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConAllocISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConAllocID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConAllocqryConAllocExec: TDataSetField
      FieldName = 'qryConAllocExec'
    end
    object cdsConAllocNETAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETAMT'
      Calculated = True
    end
    object cdsConAllocFOREIGN_NETAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FOREIGN_NETAMT'
      Calculated = True
    end
  end
  object cdsContract: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryContract'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 448
    Top = 336
    object cdsContractCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsContractCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsContractAGCTYPE: TStringField
      FieldName = 'AGCTYPE'
      Size = 1
    end
    object cdsContractACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsContractACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsContractACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsContractCON_ADDR: TStringField
      FieldName = 'CON_ADDR'
      Size = 150
    end
    object cdsContractCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsContractZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Size = 10
    end
    object cdsContractSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsContractSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsContractSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsContractTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsContractTC_SENDBY: TStringField
      FieldName = 'TC_SENDBY'
      Size = 10
    end
    object cdsContractSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsContractDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsContractCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsContractNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsContractNETVALUE: TFloatField
      FieldName = 'NETVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 10
    end
    object cdsContractSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsContractBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsContractBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsContractBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 100
    end
    object cdsContractSETT_CLEARACC: TStringField
      FieldName = 'SETT_CLEARACC'
    end
    object cdsContractSETT_CLEARSUBACC: TStringField
      FieldName = 'SETT_CLEARSUBACC'
    end
    object cdsContractFINALSTS: TStringField
      FieldName = 'FINALSTS'
      Size = 1
    end
    object cdsContractCONSTS: TStringField
      FieldName = 'CONSTS'
      Size = 1
    end
    object cdsContractMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsContractOTC: TFloatField
      FieldName = 'OTC'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsContractFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsContractFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      OnChange = cdsContractFOREIGN_EXRATEChange
      DisplayFormat = '#,##0.00'
    end
    object cdsContractFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.##########'
    end
    object cdsContractQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsContractROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsContractFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsContractC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsContractS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsContractCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsContractSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsContractEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsContractSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsContractPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsContractJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsContractSETTLE_CASH: TStringField
      FieldName = 'SETTLE_CASH'
      Size = 1
    end
    object cdsContractSETTLE_STOCK: TStringField
      FieldName = 'SETTLE_STOCK'
      Size = 1
    end
    object cdsContractS_STS: TStringField
      FieldName = 'S_STS'
      Size = 1
    end
    object cdsContractC_STS: TStringField
      FieldName = 'C_STS'
      Size = 1
    end
    object cdsContractENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsContractCASHMOVEDATE: TDateField
      FieldName = 'CASHMOVEDATE'
    end
    object cdsContractSTOCKMOVEDATE: TDateField
      FieldName = 'STOCKMOVEDATE'
    end
    object cdsContractACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsContractEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsContractMOVE_CSET: TStringField
      FieldName = 'MOVE_CSET'
      Size = 1
    end
    object cdsContractSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsContractqryConChargeSum: TDataSetField
      FieldName = 'qryConChargeSum'
    end
    object cdsContractqryConAlloc: TDataSetField
      FieldName = 'qryConAlloc'
    end
    object cdsContractFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      Size = 1
    end
    object cdsContractqryConAllocExec: TDataSetField
      FieldName = 'qryConAllocExec'
    end
  end
  object ReportPerAlloc: TNClientReportContainer
    ReportClient = ReportClientTCPerAlloc
    ReportName = 'Middle Office\TradeConfirmationPerAlloc.fr3'
    Params = <
      item
        DataType = ftLargeint
        Name = 'ContractID'
        ParamType = ptInput
      end>
    Left = 688
    Top = 224
  end
  object ReportClientTCPerAlloc: TfrxReportClient
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42215.820304525470000000
    ReportOptions.LastChange = 42215.820304525470000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Connection = dmGlobal.ReportServerConnection
    Left = 688
    Top = 272
  end
  object cdsConSI: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryConSI'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 376
    Top = 336
    object cdsConSISIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsConSISINO: TStringField
      FieldName = 'SINO'
    end
    object cdsConSIENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsConSIVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsConSISITYPE: TStringField
      FieldName = 'SITYPE'
      Size = 2
    end
    object cdsConSICASH_STOCK: TStringField
      FieldName = 'CASH_STOCK'
      Size = 1
    end
    object cdsConSISETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsConSIINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsConSINETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsConSIACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsConSIACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsConSIACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsConSITRANSFER_MODE: TStringField
      FieldName = 'TRANSFER_MODE'
      Size = 5
    end
    object cdsConSIBASE_CCYCODE: TStringField
      FieldName = 'BASE_CCYCODE'
      Size = 5
    end
    object cdsConSIBASE_NETAMT: TFloatField
      FieldName = 'BASE_NETAMT'
    end
    object cdsConSIBANK_CHARGES: TFloatField
      FieldName = 'BANK_CHARGES'
    end
    object cdsConSISETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsConSISETTLE_EXRATE: TFloatField
      FieldName = 'SETTLE_EXRATE'
    end
    object cdsConSISETTLE_NETAMT: TFloatField
      FieldName = 'SETTLE_NETAMT'
    end
    object cdsConSISETTLED_AMT: TFloatField
      FieldName = 'SETTLED_AMT'
    end
    object cdsConSISTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsConSISTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsConSIQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsConSITRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsConSIDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsConSISETTLEDDATE: TDateField
      FieldName = 'SETTLEDDATE'
    end
    object cdsConSISI_DESC: TStringField
      FieldName = 'SI_DESC'
      Size = 150
    end
    object cdsConSISTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsConSIOLD_SIID: TLargeintField
      FieldName = 'OLD_SIID'
    end
    object cdsConSIVOUCHERAMT: TFloatField
      FieldName = 'VOUCHERAMT'
    end
    object cdsConSIVOUCHERQTY: TFloatField
      FieldName = 'VOUCHERQTY'
    end
    object cdsConSINO_INTRC: TStringField
      FieldName = 'NO_INTRC'
      Size = 1
    end
    object cdsConSIMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsConSIMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsConSIAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsConSIAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsConSIUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsConSIUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsConSINOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsConSIISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsConSIID: TLargeintField
      FieldName = 'ID'
    end
    object cdsConSISETTLED_QTY: TFloatField
      FieldName = 'SETTLED_QTY'
    end
    object cdsConSITRF_PRVT_BANK: TStringField
      FieldName = 'TRF_PRVT_BANK'
      Size = 1
    end
    object cdsConSIBANKACCBRANCH: TStringField
      FieldName = 'BANKACCBRANCH'
      Size = 150
    end
    object cdsConSICP_BANKACCBRANCH: TStringField
      FieldName = 'CP_BANKACCBRANCH'
      Size = 150
    end
    object cdsConSIACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsConSIUSE_ACS: TStringField
      FieldName = 'USE_ACS'
      Size = 1
    end
    object cdsConSISOURCE_ACCBANKID: TLargeintField
      FieldName = 'SOURCE_ACCBANKID'
    end
    object cdsConSISOURCE_ACCBANKCODE: TStringField
      FieldName = 'SOURCE_ACCBANKCODE'
      Size = 10
    end
    object cdsConSISOURCE_ACCBANKNO: TStringField
      FieldName = 'SOURCE_ACCBANKNO'
    end
    object cdsConSISOURCE_ACCBANKNAME: TStringField
      FieldName = 'SOURCE_ACCBANKNAME'
      Size = 150
    end
    object cdsConSITARGET_ACCBANKID: TLargeintField
      FieldName = 'TARGET_ACCBANKID'
    end
    object cdsConSITARGET_ACCBANKCODE: TStringField
      FieldName = 'TARGET_ACCBANKCODE'
      Size = 10
    end
    object cdsConSITARGET_ACCBANKNO: TStringField
      FieldName = 'TARGET_ACCBANKNO'
    end
    object cdsConSITARGET_ACCBANKNAME: TStringField
      FieldName = 'TARGET_ACCBANKNAME'
      Size = 150
    end
  end
  object cdsContractExcel: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryContractExcel'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 400
    object cdsContractExcelCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractExcelSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsContractExcelACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsContractExcelACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsContractExcelACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsContractExcelBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsContractExcelSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsContractExcelSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      Size = 30
    end
    object cdsContractExcelSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsContractExcelCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
    object cdsContractExcelCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 2
    end
    object cdsContractExcelVALID_CALC_METHOD: TStringField
      FieldName = 'VALID_CALC_METHOD'
      Size = 2
    end
    object cdsContractExcelCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
    end
    object cdsContractExcelVALID_COMM_RATE: TFloatField
      FieldName = 'VALID_COMM_RATE'
    end
    object cdsContractExcelAPRICE: TFloatField
      FieldName = 'APRICE'
    end
    object cdsContractExcelAQTY: TFloatField
      FieldName = 'AQTY'
    end
    object cdsContractExcelAVALUE: TFloatField
      FieldName = 'AVALUE'
    end
    object cdsContractExcelCHARGES: TFloatField
      FieldName = 'CHARGES'
    end
    object cdsContractExcelBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
    end
    object cdsContractExcelVAT: TFloatField
      FieldName = 'VAT'
    end
    object cdsContractExcelWHT: TFloatField
      FieldName = 'WHT'
    end
    object cdsContractExcelSELLTAX: TFloatField
      FieldName = 'SELLTAX'
    end
    object cdsContractExcelTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object cdsContractExcelCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsContractExcelALLOCAMT: TFloatField
      FieldName = 'ALLOCAMT'
    end
    object cdsContractExcelISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsContractExcelFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsContractExcelFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsContractExcelFOREIGN_ALLOCAMT: TFloatField
      FieldName = 'FOREIGN_ALLOCAMT'
    end
    object cdsContractExcelC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsContractExcelS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsContractExcelCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsContractExcelSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsContractExcelDUECASH: TDateField
      FieldName = 'DUECASH'
    end
    object cdsContractExcelDUESTOCK: TDateField
      FieldName = 'DUESTOCK'
    end
    object cdsContractExcelDEALTICKETID: TLargeintField
      FieldName = 'DEALTICKETID'
    end
    object cdsContractExcelDA_SEQID: TLargeintField
      FieldName = 'DA_SEQID'
    end
    object cdsContractExcelDX_SEQID: TLargeintField
      FieldName = 'DX_SEQID'
    end
    object cdsContractExcelMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractExcelMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractExcelAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractExcelAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractExcelUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractExcelUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractExcelNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractExcelISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractExcelID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractExcelCONCODE: TStringField
      FieldName = 'CONCODE'
      ReadOnly = True
      Size = 25
    end
    object cdsContractExcelCONDATE: TDateField
      FieldName = 'CONDATE'
      ReadOnly = True
    end
    object cdsContractExcelCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
      ReadOnly = True
    end
    object cdsContractExcelSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
      ReadOnly = True
    end
    object cdsContractExcelMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsContractExcelISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsContractExcelACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsContractExcelSEDOL: TStringField
      FieldName = 'SEDOL'
      ReadOnly = True
      Size = 50
    end
    object cdsContractExcelNPWP: TStringField
      FieldName = 'NPWP'
      ReadOnly = True
      Size = 30
    end
    object cdsContractExcelCONTNAME: TStringField
      FieldName = 'CONTNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsContractExcelCONTPHONE: TStringField
      FieldName = 'CONTPHONE'
      ReadOnly = True
      Size = 30
    end
    object cdsContractExcelCONTFAX: TStringField
      FieldName = 'CONTFAX'
      ReadOnly = True
      Size = 30
    end
    object cdsContractExcelCONTEMAIL: TStringField
      FieldName = 'CONTEMAIL'
      ReadOnly = True
      Size = 150
    end
  end
  object cdsContractList: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISALLMARKET'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryContractList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsContractListCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsContractListCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsContractListCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractListCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractListSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractListMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsContractListAGCTYPE: TStringField
      FieldName = 'AGCTYPE'
      Size = 1
    end
    object cdsContractListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsContractListACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsContractListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsContractListCON_ADDR: TStringField
      FieldName = 'CON_ADDR'
      Size = 150
    end
    object cdsContractListCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsContractListZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Size = 10
    end
    object cdsContractListSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsContractListSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsContractListSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsContractListTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsContractListTC_SENDBY: TStringField
      FieldName = 'TC_SENDBY'
      Size = 10
    end
    object cdsContractListSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsContractListDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsContractListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsContractListNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsContractListNETVALUE: TFloatField
      FieldName = 'NETVALUE'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractListCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractListNETAMT: TFloatField
      FieldName = 'NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractListCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 10
    end
    object cdsContractListSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsContractListBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsContractListBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsContractListBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 100
    end
    object cdsContractListSETT_CLEARACC: TStringField
      FieldName = 'SETT_CLEARACC'
    end
    object cdsContractListSETT_CLEARSUBACC: TStringField
      FieldName = 'SETT_CLEARSUBACC'
    end
    object cdsContractListFINALSTS: TStringField
      FieldName = 'FINALSTS'
      Size = 1
    end
    object cdsContractListCONSTS: TStringField
      FieldName = 'CONSTS'
      Size = 1
    end
    object cdsContractListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractListISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsContractListOTC: TFloatField
      FieldName = 'OTC'
      DisplayFormat = '#,##0'
    end
    object cdsContractListVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
    end
    object cdsContractListCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
    end
    object cdsContractListS_STS: TStringField
      FieldName = 'S_STS'
      Size = 1
    end
    object cdsContractListC_STS: TStringField
      FieldName = 'C_STS'
      Size = 1
    end
    object cdsContractListISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsContractListFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsContractListFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsContractListFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractListC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsContractListS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Size = 5
    end
    object cdsContractListCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsContractListSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsContractListAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
      DisplayFormat = '#,##0.000000'
    end
    object cdsContractListEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsContractListSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsContractListENTTID: TIntegerField
      FieldName = 'ENTTID'
      ReadOnly = True
    end
    object cdsContractListENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
    end
    object cdsContractListENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsContractListQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsContractListROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsContractListFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsContractListPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsContractListJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsContractListSETTLE_CASH: TStringField
      FieldName = 'SETTLE_CASH'
      Size = 1
    end
    object cdsContractListSETTLE_STOCK: TStringField
      FieldName = 'SETTLE_STOCK'
      Size = 1
    end
    object cdsContractListACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsContractListACCINIT: TStringField
      DisplayLabel = 'Account Initial'
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsContractListEXCELL_CLASS: TIntegerField
      FieldName = 'EXCELL_CLASS'
      ReadOnly = True
    end
    object cdsContractListCASHMOVEDATE: TDateField
      FieldName = 'CASHMOVEDATE'
    end
    object cdsContractListSTOCKMOVEDATE: TDateField
      FieldName = 'STOCKMOVEDATE'
    end
    object cdsContractListEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsContractListSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsContractListMOVE_CSET: TStringField
      FieldName = 'MOVE_CSET'
      Size = 1
    end
    object cdsContractListEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsContractListISSINV: TStringField
      DisplayLabel = 'Is S-Invest'
      FieldName = 'ISSINV'
      Size = 1
    end
    object cdsContractListENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsContractListFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      Size = 1
    end
    object cdsContractListSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsContractListISWAPU: TStringField
      FieldName = 'ISWAPU'
      ReadOnly = True
      Size = 1
    end
    object cdsContractListADDITIONAL_FEE: TFloatField
      DisplayLabel = 'Additional Minimun Fee'
      FieldName = 'ADDITIONAL_FEE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractListEMATERAI: TFloatField
      DisplayLabel = 'e-Materai Charge'
      FieldName = 'EMATERAI'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractListNETVALUE_1: TFloatField
      DisplayLabel = 'Net Value'
      FieldName = 'NETVALUE_1'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0'
    end
    object cdsContractListFOREIGN_NETVALUE: TFloatField
      DisplayLabel = 'Foreign Net Value'
      FieldName = 'FOREIGN_NETVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsContractListACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsContractListACC_NAME: TStringField
      FieldName = 'ACC_NAME'
      ReadOnly = True
      Size = 150
    end
    object cdsContractListFileReportGenerate: TLargeintField
      FieldName = 'FileReportGenerate'
      ReadOnly = True
      Required = True
      OnGetText = cdsContractListFileReportGenerateGetText
    end
    object cdsContractListeMateraiStatus: TStringField
      FieldName = 'eMateraiStatus'
      ReadOnly = True
      Required = True
      OnGetText = cdsContractListeMateraiStatusGetText
      Size = 1
    end
    object cdsContractListReportID: TIntegerField
      FieldName = 'ReportID'
      ReadOnly = True
      Required = True
    end
    object cdsContractListREPORT_CAPTION: TStringField
      DisplayLabel = 'Report Type Desc'
      FieldName = 'REPORT_CAPTION'
      ReadOnly = True
      Size = 100
    end
    object cdsContractListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsContractListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsContractListfinalFilePatch: TWideStringField
      FieldName = 'finalFilePatch'
      ReadOnly = True
      Size = 1000
    end
    object cdsContractListfinalFileName: TWideStringField
      FieldName = 'finalFileName'
      ReadOnly = True
      Size = 1000
    end
    object cdsContractListMAIN_ACCOUNTCODE: TStringField
      FieldName = 'MAIN_ACCOUNTCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsContractListMAIN_ACCOUNTNAME: TStringField
      FieldName = 'MAIN_ACCOUNTNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsContractListTRADINGID: TStringField
      FieldName = 'TRADINGID'
      ReadOnly = True
    end
    object cdsContractListstampedFile: TBlobField
      FieldName = 'stampedFile'
      ReadOnly = True
    end
    object cdsContractListMAIL_OBJECT_FILE: TBlobField
      FieldName = 'MAIL_OBJECT_FILE'
      ReadOnly = True
    end
  end
  object cdsTransLegCash: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryTransLegCash'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 224
    object cdsTransLegCashCTLID: TLargeintField
      FieldName = 'CTLID'
      Required = True
    end
    object cdsTransLegCashCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsTransLegCashCONCODE: TStringField
      FieldName = 'CONCODE'
      Size = 25
    end
    object cdsTransLegCashTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsTransLegCashBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsTransLegCashLEG: TStringField
      FieldName = 'LEG'
      Size = 1
    end
    object cdsTransLegCashACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsTransLegCashACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsTransLegCashALTYPE: TStringField
      FieldName = 'ALTYPE'
      Size = 10
    end
    object cdsTransLegCashCSLACCCODE: TStringField
      FieldName = 'CSLACCCODE'
    end
    object cdsTransLegCashCDUE: TDateField
      FieldName = 'CDUE'
    end
    object cdsTransLegCashDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsTransLegCashCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsTransLegCashEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsTransLegCashAMT: TFloatField
      FieldName = 'AMT'
    end
    object cdsTransLegCashISCLOSE: TStringField
      FieldName = 'ISCLOSE'
      Size = 1
    end
    object cdsTransLegCashRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsTransLegCashRSVDTLID: TStringField
      FieldName = 'RSVDTLID'
      Size = 1
    end
    object cdsTransLegCashRVSDDATE: TDateField
      FieldName = 'RVSDDATE'
    end
    object cdsTransLegCashSTLKEY: TStringField
      FieldName = 'STLKEY'
      Size = 10
    end
    object cdsTransLegCashSPLIT: TStringField
      FieldName = 'SPLIT'
      Size = 1
    end
    object cdsTransLegCashSPLITLINK: TLargeintField
      FieldName = 'SPLITLINK'
    end
    object cdsTransLegCashC2SLINK: TLargeintField
      FieldName = 'C2SLINK'
    end
    object cdsTransLegCashCUSTBANK: TStringField
      FieldName = 'CUSTBANK'
      Size = 15
    end
    object cdsTransLegCashRDNCODE: TStringField
      FieldName = 'RDNCODE'
      Size = 15
    end
    object cdsTransLegCashRDNACC: TStringField
      FieldName = 'RDNACC'
      Size = 15
    end
    object cdsTransLegCashCBEST01: TStringField
      FieldName = 'CBEST01'
      Size = 15
    end
    object cdsTransLegCashCBEST04: TStringField
      FieldName = 'CBEST04'
      Size = 15
    end
    object cdsTransLegCashSTLD: TStringField
      FieldName = 'STLD'
      Size = 1
    end
    object cdsTransLegCashAMTSTLD: TFloatField
      FieldName = 'AMTSTLD'
    end
    object cdsTransLegCashTAMTSTLD: TFloatField
      FieldName = 'TAMTSTLD'
    end
    object cdsTransLegCashORIGINALAMT: TFloatField
      FieldName = 'ORIGINALAMT'
    end
    object cdsTransLegCashMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTransLegCashMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTransLegCashAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTransLegCashAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTransLegCashUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTransLegCashUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTransLegCashNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTransLegCashISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTransLegCashID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsTransLegStock: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryTransLegStock'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 552
    Top = 272
    object cdsTransLegStockCTLID: TLargeintField
      FieldName = 'CTLID'
      Required = True
    end
    object cdsTransLegStockCONID: TLargeintField
      FieldName = 'CONID'
    end
    object cdsTransLegStockCONCODE: TStringField
      FieldName = 'CONCODE'
      Size = 25
    end
    object cdsTransLegStockTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsTransLegStockBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsTransLegStockLEG: TStringField
      FieldName = 'LEG'
      Size = 1
    end
    object cdsTransLegStockACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsTransLegStockACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsTransLegStockALTYPE: TStringField
      FieldName = 'ALTYPE'
      Size = 10
    end
    object cdsTransLegStockSSLACCCODE: TStringField
      FieldName = 'SSLACCCODE'
    end
    object cdsTransLegStockSDUE: TDateField
      FieldName = 'SDUE'
    end
    object cdsTransLegStockDR: TStringField
      FieldName = 'DR'
      Size = 1
    end
    object cdsTransLegStockBOARD: TLargeintField
      FieldName = 'BOARD'
    end
    object cdsTransLegStockSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsTransLegStockSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsTransLegStockQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsTransLegStockAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsTransLegStockISCLOSE: TStringField
      FieldName = 'ISCLOSE'
      Size = 1
    end
    object cdsTransLegStockRVSD: TStringField
      FieldName = 'RVSD'
      Size = 1
    end
    object cdsTransLegStockRSVDTLID: TStringField
      FieldName = 'RSVDTLID'
      Size = 1
    end
    object cdsTransLegStockRVSDDATE: TDateField
      FieldName = 'RVSDDATE'
    end
    object cdsTransLegStockSTLKEY: TStringField
      FieldName = 'STLKEY'
      Size = 10
    end
    object cdsTransLegStockSPLIT: TStringField
      FieldName = 'SPLIT'
      Size = 1
    end
    object cdsTransLegStockSPLITLINK: TLargeintField
      FieldName = 'SPLITLINK'
    end
    object cdsTransLegStockS2CLINK: TLargeintField
      FieldName = 'S2CLINK'
    end
    object cdsTransLegStockCUSTBANK: TStringField
      FieldName = 'CUSTBANK'
      Size = 15
    end
    object cdsTransLegStockCBEST01: TStringField
      FieldName = 'CBEST01'
      Size = 15
    end
    object cdsTransLegStockCBEST04: TStringField
      FieldName = 'CBEST04'
      Size = 15
    end
    object cdsTransLegStockSTLD: TStringField
      FieldName = 'STLD'
      Size = 1
    end
    object cdsTransLegStockAMTSTLD: TFloatField
      FieldName = 'AMTSTLD'
    end
    object cdsTransLegStockTAMTSTLD: TFloatField
      FieldName = 'TAMTSTLD'
    end
    object cdsTransLegStockORIGINALAMT: TFloatField
      FieldName = 'ORIGINALAMT'
    end
    object cdsTransLegStockMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTransLegStockMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTransLegStockAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTransLegStockAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTransLegStockUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTransLegStockUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTransLegStockNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTransLegStockISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTransLegStockID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsGenConFile: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryGenConFile'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 440
    Top = 280
    object cdsGenConFileCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsGenConFileACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsGenConFileACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsGenConFilePROCESS_NAME: TStringField
      FieldName = 'PROCESS_NAME'
      Size = 150
    end
    object cdsGenConFileMAIL_SUBJECT: TStringField
      FieldName = 'MAIL_SUBJECT'
      Size = 100
    end
    object cdsGenConFileMAIL_TO: TStringField
      FieldName = 'MAIL_TO'
      Size = 100
    end
    object cdsGenConFileMAIL_MESSAGE: TMemoField
      FieldName = 'MAIL_MESSAGE'
      BlobType = ftMemo
    end
    object cdsGenConFileMAIL_OBJECT_FILENAME: TStringField
      FieldName = 'MAIL_OBJECT_FILENAME'
      Size = 100
    end
    object cdsGenConFileMAIL_OBJECT_FILE: TBlobField
      FieldName = 'MAIL_OBJECT_FILE'
    end
    object cdsGenConFileMAIL_STATUS: TStringField
      FieldName = 'MAIL_STATUS'
      Size = 1
    end
    object cdsGenConFileNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsGenConFileMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGenConFileMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGenConFileAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGenConFileAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGenConFileUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGenConFileUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGenConFileNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGenConFileISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGenConFileID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGenConFilestampedFile: TBlobField
      FieldName = 'stampedFile'
    end
    object cdsGenConFilestampedFileName: TStringField
      FieldName = 'stampedFileName'
      Size = 500
    end
  end
  object ReportClientSide: TNClientReportContainer
    ReportClient = ReportClientTCClientSide
    ReportName = 'Middle Office\TradeConfirmation_Client.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'CONID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptUnknown
      end>
    Left = 824
    Top = 224
  end
  object ReportBrokerSide: TNClientReportContainer
    ReportClient = ReportClientTCBrokerSide
    ReportName = 'Middle Office\TradeConfirmation_Broker.fr3'
    Params = <
      item
        DataType = ftLargeint
        Name = 'ContractID'
        ParamType = ptInput
      end>
    Left = 968
    Top = 224
  end
  object ReportClientTCClientSide: TfrxReportClient
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42215.820304525470000000
    ReportOptions.LastChange = 42215.820304525470000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Connection = dmGlobal.ReportServerConnection
    Left = 824
    Top = 272
  end
  object ReportClientTCBrokerSide: TfrxReportClient
    Version = '2022.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42215.820304525470000000
    ReportOptions.LastChange = 42215.820304525470000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Connection = dmGlobal.ReportServerConnection
    Left = 968
    Top = 272
  end
  object cdsGenerateContractToExcel: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryGeneratecontractToExcel'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 688
    Top = 352
  end
  object cdsReportParameter: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryReportParameter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 456
    object cdsReportParameterDATAKEY: TStringField
      FieldName = 'DATAKEY'
      Required = True
      Size = 32
    end
    object cdsReportParameterDATAVALUE: TMemoField
      FieldName = 'DATAVALUE'
      BlobType = ftMemo
    end
  end
  object cdsCheckFinalStamping: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMiddleOffice_qryCheckFinalStamping'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 360
    Top = 456
    object cdsCheckFinalStampingCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsCheckFinalStampingCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsCheckFinalStampingENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCheckFinalStampingCONDATE: TDateField
      FieldName = 'CONDATE'
    end
    object cdsCheckFinalStampingCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
    end
    object cdsCheckFinalStampingSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
    end
    object cdsCheckFinalStampingCASHMOVEDATE: TDateField
      FieldName = 'CASHMOVEDATE'
    end
    object cdsCheckFinalStampingSTOCKMOVEDATE: TDateField
      FieldName = 'STOCKMOVEDATE'
    end
    object cdsCheckFinalStampingMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsCheckFinalStampingAGCTYPE: TStringField
      FieldName = 'AGCTYPE'
      Size = 1
    end
    object cdsCheckFinalStampingACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCheckFinalStampingACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCheckFinalStampingACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCheckFinalStampingACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCheckFinalStampingCON_ADDR: TStringField
      FieldName = 'CON_ADDR'
      Size = 150
    end
    object cdsCheckFinalStampingCITY: TStringField
      FieldName = 'CITY'
    end
    object cdsCheckFinalStampingZIPCODE: TStringField
      FieldName = 'ZIPCODE'
      Size = 10
    end
    object cdsCheckFinalStampingSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsCheckFinalStampingSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCheckFinalStampingSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 150
    end
    object cdsCheckFinalStampingAVGPRICE: TFloatField
      FieldName = 'AVGPRICE'
    end
    object cdsCheckFinalStampingQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCheckFinalStampingTC_MODEL: TStringField
      FieldName = 'TC_MODEL'
      Size = 3
    end
    object cdsCheckFinalStampingTC_SENDBY: TStringField
      FieldName = 'TC_SENDBY'
      Size = 10
    end
    object cdsCheckFinalStampingSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsCheckFinalStampingDEALERID: TLargeintField
      FieldName = 'DEALERID'
    end
    object cdsCheckFinalStampingCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCheckFinalStampingNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCheckFinalStampingVALUEAMT: TFloatField
      FieldName = 'VALUEAMT'
    end
    object cdsCheckFinalStampingNETVALUE: TFloatField
      FieldName = 'NETVALUE'
    end
    object cdsCheckFinalStampingCHARGEAMT: TFloatField
      FieldName = 'CHARGEAMT'
    end
    object cdsCheckFinalStampingCOMMAMT: TFloatField
      FieldName = 'COMMAMT'
    end
    object cdsCheckFinalStampingOTC: TFloatField
      FieldName = 'OTC'
    end
    object cdsCheckFinalStampingROUND_AMT: TFloatField
      FieldName = 'ROUND_AMT'
    end
    object cdsCheckFinalStampingNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object cdsCheckFinalStampingCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 10
    end
    object cdsCheckFinalStampingSIDNO: TStringField
      FieldName = 'SIDNO'
    end
    object cdsCheckFinalStampingBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsCheckFinalStampingBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
    end
    object cdsCheckFinalStampingBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 100
    end
    object cdsCheckFinalStampingSETT_CLEARACC: TStringField
      FieldName = 'SETT_CLEARACC'
    end
    object cdsCheckFinalStampingSETT_CLEARSUBACC: TStringField
      FieldName = 'SETT_CLEARSUBACC'
    end
    object cdsCheckFinalStampingFINALSTS: TStringField
      FieldName = 'FINALSTS'
      Size = 1
    end
    object cdsCheckFinalStampingCONSTS: TStringField
      FieldName = 'CONSTS'
      Size = 1
    end
    object cdsCheckFinalStampingISOMG: TStringField
      FieldName = 'ISOMG'
      Size = 1
    end
    object cdsCheckFinalStampingISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsCheckFinalStampingFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsCheckFinalStampingFOREIGN_CURREXRATE: TFloatField
      FieldName = 'FOREIGN_CURREXRATE'
    end
    object cdsCheckFinalStampingFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
    end
    object cdsCheckFinalStampingFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
    end
    object cdsCheckFinalStampingC_SETTLEMODE: TStringField
      FieldName = 'C_SETTLEMODE'
      Size = 5
    end
    object cdsCheckFinalStampingS_SETTLEMODE: TStringField
      FieldName = 'S_SETTLEMODE'
      Required = True
      Size = 10
    end
    object cdsCheckFinalStampingCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      Size = 1
    end
    object cdsCheckFinalStampingSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      Size = 1
    end
    object cdsCheckFinalStampingEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCheckFinalStampingSALES_BRANCHID: TLargeintField
      FieldName = 'SALES_BRANCHID'
    end
    object cdsCheckFinalStampingPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCheckFinalStampingJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCheckFinalStampingSETTLE_CASH: TStringField
      FieldName = 'SETTLE_CASH'
      Size = 1
    end
    object cdsCheckFinalStampingSETTLE_STOCK: TStringField
      FieldName = 'SETTLE_STOCK'
      Size = 1
    end
    object cdsCheckFinalStampingSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsCheckFinalStampingSTOCKTRANSID_REVERSED: TLargeintField
      FieldName = 'STOCKTRANSID_REVERSED'
    end
    object cdsCheckFinalStampingLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
    object cdsCheckFinalStampingLEDGERTRANSID_REVERSED: TLargeintField
      FieldName = 'LEDGERTRANSID_REVERSED'
    end
    object cdsCheckFinalStampingS_STS: TStringField
      FieldName = 'S_STS'
      Size = 1
    end
    object cdsCheckFinalStampingC_STS: TStringField
      FieldName = 'C_STS'
      Size = 1
    end
    object cdsCheckFinalStampingEMAILID: TLargeintField
      FieldName = 'EMAILID'
    end
    object cdsCheckFinalStampingMOVE_CSET: TStringField
      FieldName = 'MOVE_CSET'
      Size = 1
    end
    object cdsCheckFinalStampingSENDID: TLargeintField
      FieldName = 'SENDID'
    end
    object cdsCheckFinalStampingFOREIGN_EXRATE_MODE: TStringField
      FieldName = 'FOREIGN_EXRATE_MODE'
      Required = True
      Size = 1
    end
    object cdsCheckFinalStampingSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsCheckFinalStampingISSINV: TStringField
      FieldName = 'ISSINV'
      Size = 1
    end
    object cdsCheckFinalStampingADDMINFEE_BRKFEE: TFloatField
      FieldName = 'ADDMINFEE_BRKFEE'
    end
    object cdsCheckFinalStampingADDMINFEE_VAT: TFloatField
      FieldName = 'ADDMINFEE_VAT'
    end
    object cdsCheckFinalStampingADDITIONAL_FEE: TFloatField
      FieldName = 'ADDITIONAL_FEE'
    end
    object cdsCheckFinalStampingMIN_COMM: TFloatField
      FieldName = 'MIN_COMM'
    end
    object cdsCheckFinalStampingTOTAL_FEE: TFloatField
      FieldName = 'TOTAL_FEE'
    end
    object cdsCheckFinalStampingSTOCK_SETTLE_MODE: TStringField
      FieldName = 'STOCK_SETTLE_MODE'
      Size = 1
    end
    object cdsCheckFinalStampingACS_PRICE: TFloatField
      FieldName = 'ACS_PRICE'
    end
    object cdsCheckFinalStampingACS_PERCENT: TFloatField
      FieldName = 'ACS_PERCENT'
    end
    object cdsCheckFinalStampingTOTAL_BUY: TFloatField
      FieldName = 'TOTAL_BUY'
    end
    object cdsCheckFinalStampingTOTAL_SELL: TFloatField
      FieldName = 'TOTAL_SELL'
    end
    object cdsCheckFinalStampingEMATERAI: TFloatField
      FieldName = 'EMATERAI'
    end
    object cdsCheckFinalStampingEMATERAI_ID: TLargeintField
      FieldName = 'EMATERAI_ID'
    end
    object cdsCheckFinalStampingCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
    end
    object cdsCheckFinalStampingCANCELED_DATE: TDateTimeField
      FieldName = 'CANCELED_DATE'
    end
    object cdsCheckFinalStampingCANCELED_SYSDATE: TDateTimeField
      FieldName = 'CANCELED_SYSDATE'
    end
    object cdsCheckFinalStampingCANCELED_UI: TStringField
      FieldName = 'CANCELED_UI'
      Size = 30
    end
    object cdsCheckFinalStampingINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object cdsCheckFinalStampingINSERT_SYSTEMDATE: TDateTimeField
      FieldName = 'INSERT_SYSTEMDATE'
    end
    object cdsCheckFinalStampingINSERT_UI: TStringField
      FieldName = 'INSERT_UI'
      Size = 30
    end
    object cdsCheckFinalStampingCLOSED_DATE: TDateTimeField
      FieldName = 'CLOSED_DATE'
    end
    object cdsCheckFinalStampingCLOSED_SYSDATE: TDateTimeField
      FieldName = 'CLOSED_SYSDATE'
    end
    object cdsCheckFinalStampingCLOSED_UI: TStringField
      FieldName = 'CLOSED_UI'
      Size = 30
    end
    object cdsCheckFinalStampingREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsCheckFinalStampingREVERSED_DATE: TDateTimeField
      FieldName = 'REVERSED_DATE'
    end
    object cdsCheckFinalStampingREVERSED_SYSDATE: TDateTimeField
      FieldName = 'REVERSED_SYSDATE'
    end
    object cdsCheckFinalStampingREVERSED_UI: TStringField
      FieldName = 'REVERSED_UI'
      Size = 30
    end
    object cdsCheckFinalStampingREVERSED_POST: TStringField
      FieldName = 'REVERSED_POST'
      Size = 1
    end
    object cdsCheckFinalStampingREVERSED_POST_DATE: TDateTimeField
      FieldName = 'REVERSED_POST_DATE'
    end
    object cdsCheckFinalStampingREVERSED_POST_UI: TStringField
      FieldName = 'REVERSED_POST_UI'
      Size = 30
    end
    object cdsCheckFinalStampingMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCheckFinalStampingMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCheckFinalStampingAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCheckFinalStampingAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCheckFinalStampingUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCheckFinalStampingUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCheckFinalStampingNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCheckFinalStampingISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCheckFinalStampingID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCheckFinalStampingeMateraiStatus: TStringField
      FieldName = 'eMateraiStatus'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsCheckFinalStampingfinalFilePatch: TWideStringField
      FieldName = 'finalFilePatch'
      ReadOnly = True
      Size = 1000
    end
    object cdsCheckFinalStampingfinalFileName: TWideStringField
      FieldName = 'finalFileName'
      ReadOnly = True
      Size = 1000
    end
  end
end
