inherited frmCorpActList: TfrmCorpActList
  Caption = 'Corporate Action'
  ClientHeight = 475
  ClientWidth = 1154
  ExplicitWidth = 1154
  ExplicitHeight = 475
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1154
    Height = 449
    ExplicitWidth = 1154
    ExplicitHeight = 449
    inherited gvwMaster: TcxGridDBBandedTableView
      OnCellClick = gvwMasterCellClick
      object gvwMasterCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANO: TcxGridDBBandedColumn
        Caption = 'Corp Act No.'
        DataBinding.FieldName = 'CANO'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCATYPE: TcxGridDBBandedColumn
        Caption = 'Corp Act Type'
        DataBinding.FieldName = 'CATYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'HMETD'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Cash Dividen'
            Value = '2'
          end
          item
            Description = 'Stock Dividen'
            Value = '3'
          end
          item
            Description = 'Dividen Mix'
            Value = '4'
          end
          item
            Description = 'Stock Bonus'
            Value = '5'
          end
          item
            Description = 'Stock Split'
            Value = '6'
          end
          item
            Description = 'Stock Reverse'
            Value = '7'
          end
          item
            Description = 'Stock Merge'
            Value = '8'
          end
          item
            Description = 'Coupon Payment'
            Value = '9'
          end>
        RepositoryItem = dmGlobal.luCAType
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Width = 194
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterISINCODE: TcxGridDBBandedColumn
        Caption = 'ISIN Code'
        DataBinding.FieldName = 'ISINCODE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBASE_STK_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_STK_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterGET_STK_RT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_STK_RT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterBASE_CASH_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CASH_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterGET_CASH_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_CASH_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBASE_QTY_PRICE_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_QTY_PRICE_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterEXER_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterWR_QTY_PRICE_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_QTY_PRICE_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterWR_EXER_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_EXER_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterRND_CALC_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RND_CALC_MODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterLOCAL_TAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCAL_TAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterFOR_TAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOR_TAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterRIGHTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGHTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterRIGHTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGHTCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterWARRANTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WARRANTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterWAARANTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WAARANTCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterNGRG_CUMDATE: TcxGridDBBandedColumn
        Caption = 'Cum Date'
        DataBinding.FieldName = 'NGRG_CUMDATE'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterTN_CUMDATE: TcxGridDBBandedColumn
        Caption = 'TN Cum Date'
        DataBinding.FieldName = 'TN_CUMDATE'
        Visible = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterNGRG_EXDATE: TcxGridDBBandedColumn
        Caption = 'Ex Date'
        DataBinding.FieldName = 'NGRG_EXDATE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterTN_EXDATE: TcxGridDBBandedColumn
        Caption = 'TN Ex Date'
        DataBinding.FieldName = 'TN_EXDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterRECDATE: TcxGridDBBandedColumn
        Caption = 'Recording Date'
        DataBinding.FieldName = 'RECDATE'
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterDISTDATE: TcxGridDBBandedColumn
        Caption = 'Distribution Date'
        DataBinding.FieldName = 'DISTDATE'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterPAYDATE: TcxGridDBBandedColumn
        Caption = 'Payment Date'
        DataBinding.FieldName = 'PAYDATE'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_LISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_LISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_LISDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_LISDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_EXERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_EXERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterSTR_DISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_DISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterEND_DISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_DISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterRI_LASTPAY_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_LASTPAY_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterALLOTMENT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTMENT_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterREFUND_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFUND_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterRGNG_WR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RGNG_WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterTN_WR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TN_WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterWR_STR_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_STR_EXERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterWR_END_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_END_EXERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterWR_EXPDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_EXPDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterCA_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_DESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'On Progress To Settle'
            ImageIndex = 0
            Value = 'P'
          end
          item
            Description = 'Open'
            Value = 'O'
          end
          item
            Description = 'Settle'
            Value = 'S'
          end
          item
            Description = 'Exercise Process'
            Value = 'X'
          end
          item
            Description = 'Close'
            Value = 'C'
          end
          item
            Description = 'Cancel'
            Value = 'F'
          end
          item
            Description = 'Expired'
            Value = 'E'
          end
          item
            Description = 'Reversed'
            Value = 'R'
          end>
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCASHDIV_RCV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHDIV_RCV'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXERCISES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXERCISES'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXPIRED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXPIRED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXER_ADM_FEE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXER_ADM_FEE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterRI_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterWR_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwMasterWR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwMasterBASE_RI_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_RI_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwMasterGET_RI_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_RI_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwMasterRI_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwMasterBASE_WR_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_WR_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwMasterGET_WR_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_WR_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
      object gvwMasterWR_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 61
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 62
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 63
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 64
        Position.RowIndex = 0
      end
      object gvwMasterNEW_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 65
        Position.RowIndex = 0
      end
      object gvwMasterRIGTHNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGTHNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 66
        Position.RowIndex = 0
      end
      object gvwMasterWARRANTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WARRANTNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 67
        Position.RowIndex = 0
      end
      object gvwMasterLASTCOUPON_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LASTCOUPON_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 68
        Position.RowIndex = 0
      end
      object gvwMasterNEXTCOUPON_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEXTCOUPON_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 69
        Position.RowIndex = 0
      end
      object gvwMasterMATURITY_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATURITY_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 70
        Position.RowIndex = 0
      end
      object gvwMasterCOUPONDAYS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUPONDAYS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 71
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_RATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_RATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 72
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 73
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 74
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 75
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 76
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 77
        Position.RowIndex = 0
      end
      object gvwMasterWR_END_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_END_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 78
        Position.RowIndex = 0
      end
      object gvwMasterFIRST_HANDOVER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_HANDOVER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 79
        Position.RowIndex = 0
      end
      object gvwMasterSCND_HANDOVER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SCND_HANDOVER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 80
        Position.RowIndex = 0
      end
      object gvwMasterCLOSING_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSING_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 81
        Position.RowIndex = 0
      end
      object gvwMasterCOMPLAIN_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPLAIN_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 82
        Position.RowIndex = 0
      end
      object gvwMasterEFFECTIVE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EFFECTIVE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 83
        Position.RowIndex = 0
      end
      object gvwMasterRUPSLB_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RUPSLB_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 84
        Position.RowIndex = 0
      end
      object gvwMasterSTR_IMPL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_IMPL_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 85
        Position.RowIndex = 0
      end
      object gvwMasterEND_IMPL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_IMPL_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 86
        Position.RowIndex = 0
      end
      object gvwMasterSTR_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 87
        Position.RowIndex = 0
      end
      object gvwMasterEND_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 88
        Position.RowIndex = 0
      end
      object gvwMasterMERGE_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MERGE_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 89
        Position.RowIndex = 0
      end
      object gvwMasterSTR_TRADE_MERGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_TRADE_MERGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 90
        Position.RowIndex = 0
      end
      object gvwMasterRECMERGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RECMERGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 91
        Position.RowIndex = 0
      end
      object gvwMasterSHAREHOLDER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHAREHOLDER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 92
        Position.RowIndex = 0
      end
      object gvwMasterREPORT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPORT_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 93
        Position.RowIndex = 0
      end
      object gvwMasterSTR_NEW_TRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_NEW_TRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 94
        Position.RowIndex = 0
      end
      object gvwMasterEND_OLD_TRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_OLD_TRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 95
        Position.RowIndex = 0
      end
      object gvwMasterANNO_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ANNO_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 96
        Position.RowIndex = 0
      end
      object gvwMasterSTR_RESCISSION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_RESCISSION_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 97
        Position.RowIndex = 0
      end
      object gvwMasterEND_RESCISSION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_RESCISSION_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 98
        Position.RowIndex = 0
      end
      object gvwMasterROUNDSTOCK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ROUNDSTOCK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 99
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 100
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 101
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 102
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 103
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 104
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 105
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 106
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 107
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 108
        Position.RowIndex = 0
      end
      object gvwMasterCASHDIV_RECVSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHDIV_RECVSTAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 109
        Position.RowIndex = 0
      end
      object gvwMasterENTITLEMENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTITLEMENT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 110
        Position.RowIndex = 0
      end
      object gvwMasterEXERCISES_CLOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERCISES_CLOSE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 111
        Position.RowIndex = 0
      end
      object gvwMasterCASH_STAT: TcxGridDBBandedColumn
        Caption = 'Cash Status'
        DataBinding.FieldName = 'CASH_STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Create Voucher'
            ImageIndex = 0
            Value = 'F'
          end
          item
            Description = 'Paid'
            Value = 'P'
          end
          item
            Description = 'Outstanding'
            Value = 'O'
          end>
        Visible = False
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 112
        Position.RowIndex = 0
      end
      object gvwMasterSTOCK_STAT: TcxGridDBBandedColumn
        Caption = 'Stock Status'
        DataBinding.FieldName = 'STOCK_STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Entitled'
            ImageIndex = 0
            Value = 'T'
          end
          item
            Description = 'Distributed'
            Value = 'D'
          end
          item
            Description = 'Outstanding'
            Value = 'O'
          end>
        Visible = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 113
        Position.RowIndex = 0
      end
      object gvwMasterRI_STOCK_DIST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STOCK_DIST'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 114
        Position.RowIndex = 0
      end
      object gvwMasterCASH_DVDPAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_DVDPAY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 115
        Position.RowIndex = 0
      end
      object gvwMasterLAST_OLD_NOMDATE: TcxGridDBBandedColumn
        Caption = 'Last Old Nominal'
        DataBinding.FieldName = 'LAST_OLD_NOMDATE'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterST_TRD_NOMDATE: TcxGridDBBandedColumn
        Caption = 'Start New Nominal'
        DataBinding.FieldName = 'ST_TRD_NOMDATE'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 213
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = 'Settlement'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Settlement'
      end
      item
        ActionName = 'actDelete'
        Permission = 'Settlement'
      end
      item
        ActionName = 'actRefresh'
        Permission = 'Settlement'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Settlement'
      end
      item
        ActionName = 'actOpen'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actEdit'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actRefresh'
        Permission = 'Corporate Action'
      end
      item
        ActionName = 'actCancel'
        Permission = 'Corporate Action'
      end>
    AssignedPermission = <
      item
        Name = 'Corporate Action'
        Description = 'Corporate Action'
      end>
    Left = 299
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010F002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C47456AB9AFACE94E45437F020202030000
      000000000000000000000000000000000000FBFBFB04D2D2D22DB3B3B34CC5C5
      C53AC5C5C53AC5C5C53AC5C5C53AC5C5C53AC5C5C53AC5C5C53AC5C5C53AC5C5
      C53AC5C5C53AB0B0B04FCBCBCB34F9F9F9060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000756C6CB3E3D9D6FF6F605DC00605050B0000
      00000000000000000000000000000000000000000000DBF0E5250B9C51FF0F9E
      54F5FBFBFB04FBFBFB04F9F9FA060000A4FF0000A4FFFBFBFB04FBFBFB04FBFB
      FB04894C22FC884B22FFF5F2EE13000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000000000000000
      00000000000000000000000000006A6060AAD6CAC8FF5B4C4AB6040303080000
      0000000000000000000000000000000000000000000085E5B4FF5DE09EFF56DE
      99FF0A9C52FA000000005757D2FF4747DAFF4D4DDBFF1414AEFB00000000884B
      22FFB88761FFC29877FFCBA98FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000000000000000
      0000000000000000000000000000625857A6D2C5C3FF564847C2030303090000
      000000000000000000000000000000000000F3FAF70C52DE97FF6AE2A6FF61E0
      A0FF26AA68FA000000006E6EE2FF5353DDFF5B5BDEFF5959D3FF00000000A676
      52FDBC8D69FFC8A385FFC49C7CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000000000000000
      000000000000000000001916162FAB9D9DE4D6C9C8FF857676F81B17174A0000
      0000000000000000000000000000000000000000000035B674FD4ADC92FF7BE6
      B0FF9FD8BC61000000000606A7FE4040D9FF5656DDFF2828B3D700000000BA98
      8091C7A183FFBA8B66FF98623EFB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000000000000000
      00000000000003030306807374B9EADCDDFFB3A8A8FFA99D9DFF6A5D5DDB0605
      050F000000000000000000000000000000000000000000000000D5EEE22A01A5
      E1FEFCFDFE03000000000000000077A9E388FEFEFF010000000000000000FAFC
      FE05039FDFFCEFE8E32000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000000000000000
      0000000000004840417BEEE3E3FFE8DDDDFFA39999FFDCD1CFFFBAABAAFF4136
      37A5020202070000000000000000000000000000000000000000000000000000
      00006DAAE5921C88D9E30000000087B8E9780000000000000000168EDCE99CC5
      ED63000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000001411112C797271B1807675B92521
      20531612123ACBBEBFF7FFFDFCFFC1B7B6FFAAA09FFFE5D9D8FFDBCDCCFF8676
      76FB241E1E610000000000000000000000000000000000000000000000000000
      00000000000000000000119ADEEE2A7BD7D5338BDBCC1E85D9E1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000004E4342A96864627C55504F624F42
      42AD807070EDFBF1F1FFF4EBE9FFA39897FFB4A8A7FFE9DDDCFFDACBC9FFAB9A
      99FF665657F10E0B0B2A00000000000000000000000000000000000000000000
      0000000000003E3D38F5C4C7C6FFACB0AEFFA0A4A2FF959A98FFA7A7A46E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD00000000000000000000000000362E2D8906050508050505073A2F
      2F91D4C4C4FFFFFCFCFFDBD6D4FFA39896FFB9ACACFFEFE4E3FFD5C6C4FFB2A1
      9FFF7C6A6AFF3C3032BB01010106000000000000000000000000000000000000
      00000000000074746FF5B4B7B6FFA8ACAAFF9CA09EFF8F9492FF585853D70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      94000000000000000000000000000000000036302F72716969BD706564C0A998
      98FFF8EEEEFFFEFEFEFFCDC9C8FFAEA19FFFCABFBDFFFCF8F7FFF5F0EFFFD9CF
      CFFF8E7B7BFF5E4D4EFF1E17177E000000000000000000000000000000000000
      000000000000646460FAB4B7B6FFA8ACAAFF9CA09EFF8B8F8DFF514F4AE90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000605050C3A343580877977FEECE1
      E0FFFFFFFFFFFEFEFEFFEAE4E4FFDBD4D3FFECE5E5FFFCF9F9FFF5F0EFFFD9CF
      CFFFD9CFCFFF7A6A6CFF493A3CF61410115A0000000000000000000000000000
      0000FBFBFB05767671F8B4B7B6FFA8ACAAFF9CA09EFF8F9492FF3E3D37F70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000028222364B6A7A5FDF7EF
      EEFFD5D1D2FFAAA4A4FFA7A3A3FFADAAAAFFA8A6A6FF97908FFF9F9C9CFFADAA
      AAFFD9CFCFFFD9CFCFFF918588FF483D41E60000000000000000000000000000
      000000000000797976F68D8E8CFF474540FF4C4B46FF787A77FF4D4A46E60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      000000000000000000000000000000000000000000004A444481CCC0C1FFF7EF
      EEFFA19695FF8A7E7DFF998C8BFFA69F9FFF9E9695FF7A6968FF847778FF8C86
      86FF928887FFEFE4E3FFD8D0D0FF746A6DEB0000000000000000000000000000
      000000000000A0A4A1FF616664FF8B918EFF8C918FFF656967FF4A4C49FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000017151523595253958980
      81DCF7EFEEFFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4
      E3FFEFE4E3FF9A9193EF6A6363B52A2626490000000000000000000000000000
      00000000000000000000F3F3F20F6D6D69EC919391F9FEFEFE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A08
      09282F29298B766D6FCE8C8385E4958C8EE8998F91E9918788E98E8486E56B64
      66BF322C2C7B0D0B0C3404030309000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FDC7000000000000F003000080010000
      C0010000842100000001000004210000000100008421000000010000C6630000
      00010000F2CF000080010000FC3F0000C0030000F81F0000E0070000F81F0000
      F00F0000F81F0000F03F0000F01F0000F03F0000F81F0000F03F0000F81F0000
      E03F0000FC3F0000E07F0000FFFF0000FFFFFFFFFFFFC001C003C003C0038000
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
    Left = 155
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
    Left = 99
    Top = 226
    object ViewTransaction1: TMenuItem [5]
      Action = actViewTransaction
    end
    inherited Insert2: TMenuItem
      object NewHMETD1: TMenuItem
        Action = actNewHMETD
      end
      object NewCashDeviden1: TMenuItem
        Action = actCDeviden
      end
      object StockDeviden1: TMenuItem
        Action = actSDeviden
      end
      object StockMix1: TMenuItem
        Action = actStockMix
      end
      object StockBonus1: TMenuItem
        Action = actSBonus
      end
      object StockSplit1: TMenuItem
        Action = actSSplit
      end
      object StockReverse1: TMenuItem
        Action = actSReverse
      end
      object StockMerge1: TMenuItem
        Action = actSMerge
      end
      object CouponPayment1: TMenuItem
        Action = actCPayment
      end
    end
    object Cancel1: TMenuItem [10]
      Action = actCancelProcess
    end
    object ReverseProcess1: TMenuItem [11]
      Action = actReverseProcess
    end
    object N7: TMenuItem [12]
      Caption = '-'
    end
    object Entitlement1: TMenuItem [13]
      Action = actEntitlement
    end
    object CoporateActionProcess1: TMenuItem [14]
      Action = actCorpactProcess
    end
    object SubMenuExercise: TMenuItem [15]
      Action = actExercise
    end
    object N5: TMenuItem [16]
      Caption = '-'
    end
    object EntitlementMonitoring1: TMenuItem [17]
      Action = actEntitlementMonitoring
      Visible = False
    end
    object ExerciseMonitoring1: TMenuItem [18]
      Action = actExerciseMonitoring
      Visible = False
    end
    object ExerciseWarrantMonitoring1: TMenuItem [19]
      Action = actExerciseWarrantMonitoring
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCorpactList
  end
  inherited aclEditor: TActionList
    Left = 97
    Top = 283
    inherited actNew: TNAction
      Visible = False
      CheckPermission = False
    end
    inherited actEdit: TNAction
      Visible = False
      OnUpdate = actEditUpdate
    end
    object actEntitlement: TNAction
      Category = 'NActions'
      Caption = 'Entitlement'
      ImageIndex = 3
      OnExecute = actEntitlementExecute
      OnUpdate = actEntitlementUpdate
      CheckPermission = False
    end
    object actNewHMETD: TNAction
      Category = 'NActions'
      Caption = 'HMETD (Right Issue)'
      OnExecute = actNewHMETDExecute
      CheckPermission = False
    end
    object actCDeviden: TNAction
      Category = 'NActions'
      Caption = 'Cash Deviden'
      OnExecute = actCDevidenExecute
      OnUpdate = actCDevidenUpdate
      CheckPermission = False
    end
    object actSDeviden: TNAction
      Category = 'NActions'
      Caption = 'Stock Deviden'
      OnExecute = actSDevidenExecute
      CheckPermission = False
    end
    object actStockMix: TNAction
      Category = 'NActions'
      Caption = 'Stock Mix'
      OnExecute = actStockMixExecute
      CheckPermission = False
    end
    object actSBonus: TNAction
      Category = 'NActions'
      Caption = 'Stock Bonus'
      OnExecute = actSBonusExecute
      CheckPermission = False
    end
    object actSSplit: TNAction
      Category = 'NActions'
      Caption = 'Stock Split'
      OnExecute = actSSplitExecute
      CheckPermission = False
    end
    object actSReverse: TNAction
      Category = 'NActions'
      Caption = 'Stock Reverse'
      OnExecute = actSReverseExecute
      CheckPermission = False
    end
    object actSMerge: TNAction
      Category = 'NActions'
      Caption = 'Stock Merge'
      OnExecute = actSMergeExecute
      CheckPermission = False
    end
    object actCPayment: TNAction
      Category = 'NActions'
      Caption = 'Coupon Payment'
      Enabled = False
      Visible = False
      OnExecute = actCPaymentExecute
      CheckPermission = False
    end
    object actExercise: TNAction
      Category = 'NActions'
      Caption = 'Exercise Allocation'
      OnExecute = actExerciseExecute
      OnUpdate = actExerciseMonitoringUpdate
      CheckPermission = False
    end
    object actExecuteByFinance: TNAction
      Category = 'NActions'
      Caption = 'Execute By Finance'
      OnExecute = actExecuteByFinanceExecute
      CheckPermission = False
    end
    object actCashHandOver: TNAction
      Category = 'NActions'
      Caption = 'Cash Loan'
      OnExecute = actCashHandOverExecute
      CheckPermission = False
    end
    object actProcessFinance: TNAction
      Category = 'NActions'
      Caption = 'Cash Dividen Process'
      Visible = False
      OnExecute = actProcessFinanceExecute
      OnUpdate = actProcessFinanceUpdate
      CheckPermission = False
    end
    object actProcessStock: TNAction
      Category = 'NActions'
      Caption = 'Split / Reverse Stock Process'
      Visible = False
      OnExecute = actProcessStockExecute
      OnUpdate = actProcessStockUpdate
      CheckPermission = False
    end
    object actExerciseMonitoring: TNAction
      Category = 'NActions'
      Caption = 'Exercise Right Monitoring'
      OnExecute = actExerciseMonitoringExecute
      OnUpdate = actExerciseMonitoringUpdate
      CheckPermission = False
    end
    object actCorpactDistributionProcess: TNAction
      Category = 'NActions'
      Caption = 'Stock Distribution Process'
      OnExecute = actCorpactDistributionProcessExecute
      OnUpdate = actCorpactDistributionProcessUpdate
      CheckPermission = False
    end
    object actEntitlementMonitoring: TNAction
      Category = 'NActions'
      Caption = 'Entitlement Monitoring'
      OnExecute = actEntitlementMonitoringExecute
      CheckPermission = False
    end
    object actSplitReverseProcess: TNAction
      Category = 'NActions'
      Caption = 'Split / Reverse Process (Transfer Qty)'
      Visible = False
      OnExecute = actSplitReverseProcessExecute
      OnUpdate = actSplitReverseProcessUpdate
      CheckPermission = False
    end
    object actExerciseWarrantAllocation: TNAction
      Category = 'NActions'
      Caption = 'Exercise Warrant Allocation'
      Visible = False
      OnExecute = actExerciseWarrantAllocationExecute
      OnUpdate = actExerciseWarrantAllocationUpdate
      CheckPermission = False
    end
    object actExerciseWarrantMonitoring: TNAction
      Category = 'NActions'
      Caption = 'Exercise Warrant Monitoring'
      Visible = False
      OnExecute = actExerciseWarrantMonitoringExecute
      OnUpdate = actExerciseWarrantMonitoringUpdate
      CheckPermission = False
    end
    object actCancelProcess: TNAction
      Category = 'NActions'
      Caption = 'Cancel Process'
      OnExecute = actCancelProcessExecute
      OnUpdate = actCancelProcessUpdate
      CheckPermission = False
    end
    object actCorpactProcess: TNAction
      Category = 'NActions'
      Caption = 'Corporate Action Process'
      OnExecute = actCorpactProcessExecute
      CheckPermission = False
    end
    object actReverseProcess: TNAction
      Category = 'NActions'
      Caption = 'Reverse Process'
      OnExecute = actReverseProcessExecute
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
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAll'
        end
        item
          Visible = True
          ItemName = 'edCAType'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
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
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkClose'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkExercise'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkExpired'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuRefresh'
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
    object dxBarButton1: TdxBarButton
      Caption = 'Entitlement'
      Category = 0
      Hint = 'Entitlement'
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actEntitlement
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object chkAll: TcxBarEditItem
      Caption = 'View All'
      Category = 0
      Hint = 'View All'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = chkAllPropertiesEditValueChanged
    end
    object edCAType: TcxBarEditItem
      Caption = 'CorpAct Type'
      Category = 0
      Enabled = False
      Hint = 'CorpAct Type'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <>
      RepositoryItem = dmGlobal.luCAType
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
    object chkClose: TcxBarEditItem
      Caption = 'Closed'
      Category = 0
      Hint = 'Closed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'C'
      Properties.ValueUnchecked = '-'
    end
    object chkExercise: TcxBarEditItem
      Caption = 'Exercised'
      Category = 0
      Hint = 'Exercised'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'X'
      Properties.ValueUnchecked = '-'
    end
    object chkExpired: TcxBarEditItem
      Caption = 'Expired'
      Category = 0
      Hint = 'Expired'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'E'
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
      Properties.ValueChecked = 'F'
      Properties.ValueUnchecked = '-'
    end
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsCorpAct
    ListDataset = cdsCorpactList
    MasterTableName = 'main.B_CORPACT_ANNO'
    Keys = <
      item
        FieldName = 'CAID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'CAID'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    OnGetEditorClass = DataContainerGetEditorClass
  end
  inherited ReportContainer: TNClientReportContainer
    Left = 437
  end
  object cdsCorpactList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CATYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OPENED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CLOSED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXERCISE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EXPIRED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CANCELED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REVERSED'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpact_AnnoList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 27
    Top = 228
    object cdsCorpactListCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpactListCANO: TStringField
      FieldName = 'CANO'
    end
    object cdsCorpactListCATYPE: TStringField
      FieldName = 'CATYPE'
      Size = 1
    end
    object cdsCorpactListSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsCorpactListSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpactListSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCorpactListISINCODE: TStringField
      FieldName = 'ISINCODE'
    end
    object cdsCorpactListBASE_STK_RATIO: TFloatField
      FieldName = 'BASE_STK_RATIO'
    end
    object cdsCorpactListGET_STK_RT: TFloatField
      FieldName = 'GET_STK_RT'
    end
    object cdsCorpactListBASE_CASH_RATIO: TFloatField
      FieldName = 'BASE_CASH_RATIO'
    end
    object cdsCorpactListGET_CASH_RATIO: TFloatField
      FieldName = 'GET_CASH_RATIO'
    end
    object cdsCorpactListBASE_QTY_PRICE_RATIO: TFloatField
      FieldName = 'BASE_QTY_PRICE_RATIO'
    end
    object cdsCorpactListEXER_PRICE: TFloatField
      FieldName = 'EXER_PRICE'
    end
    object cdsCorpactListWR_QTY_PRICE_RATIO: TFloatField
      FieldName = 'WR_QTY_PRICE_RATIO'
    end
    object cdsCorpactListWR_EXER_PRICE: TFloatField
      FieldName = 'WR_EXER_PRICE'
    end
    object cdsCorpactListRND_CALC_MODE: TStringField
      FieldName = 'RND_CALC_MODE'
      Size = 1
    end
    object cdsCorpactListLOCAL_TAX: TFloatField
      FieldName = 'LOCAL_TAX'
    end
    object cdsCorpactListFOR_TAX: TFloatField
      FieldName = 'FOR_TAX'
    end
    object cdsCorpactListRIGHTID: TIntegerField
      FieldName = 'RIGHTID'
    end
    object cdsCorpactListRIGHTCODE: TStringField
      FieldName = 'RIGHTCODE'
    end
    object cdsCorpactListWARRANTID: TIntegerField
      FieldName = 'WARRANTID'
    end
    object cdsCorpactListWAARANTCODE: TStringField
      FieldName = 'WAARANTCODE'
    end
    object cdsCorpactListNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListTN_CUMDATE: TDateField
      FieldName = 'TN_CUMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListNGRG_EXDATE: TDateField
      FieldName = 'NGRG_EXDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListTN_EXDATE: TDateField
      FieldName = 'TN_EXDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRECDATE: TDateField
      FieldName = 'RECDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListDISTDATE: TDateField
      FieldName = 'DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListPAYDATE: TDateField
      FieldName = 'PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_STR_LISTDATE: TDateField
      FieldName = 'RI_STR_LISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_END_LISDATE: TDateField
      FieldName = 'RI_END_LISDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_STR_TRDDATE: TDateField
      FieldName = 'RI_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_END_TRDDATE: TDateField
      FieldName = 'RI_END_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_DISTDATE: TDateField
      FieldName = 'STR_DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListEND_DISTDATE: TDateField
      FieldName = 'END_DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRI_LASTPAY_DATE: TDateField
      FieldName = 'RI_LASTPAY_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListREFUND_DATE: TDateField
      FieldName = 'REFUND_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRGNG_WR_STR_TRDDATE: TDateField
      FieldName = 'RGNG_WR_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListTN_WR_STR_TRDDATE: TDateField
      FieldName = 'TN_WR_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListWR_STR_EXERDATE: TDateField
      FieldName = 'WR_STR_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListWR_END_EXERDATE: TDateField
      FieldName = 'WR_END_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListWR_EXPDATE: TDateField
      FieldName = 'WR_EXPDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListCA_DESC: TStringField
      FieldName = 'CA_DESC'
      Size = 100
    end
    object cdsCorpactListSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpactListCASHDIV_RCV: TDateField
      FieldName = 'CASHDIV_RCV'
    end
    object cdsCorpactListRI_EXERCISES: TStringField
      DisplayLabel = 'Exercises'
      FieldName = 'RI_EXERCISES'
      Size = 1
    end
    object cdsCorpactListRI_EXPIRED: TStringField
      DisplayLabel = 'Expired'
      FieldName = 'RI_EXPIRED'
      Size = 1
    end
    object cdsCorpactListRI_EXER_ADM_FEE: TFloatField
      FieldName = 'RI_EXER_ADM_FEE'
    end
    object cdsCorpactListRI_ISINCODE: TStringField
      FieldName = 'RI_ISINCODE'
    end
    object cdsCorpactListWR_ISINCODE: TStringField
      FieldName = 'WR_ISINCODE'
    end
    object cdsCorpactListWR_STR_TRDDATE: TDateField
      FieldName = 'WR_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListBASE_RI_QTY: TFloatField
      FieldName = 'BASE_RI_QTY'
    end
    object cdsCorpactListGET_RI_QTY: TFloatField
      FieldName = 'GET_RI_QTY'
    end
    object cdsCorpactListRI_PRICE: TFloatField
      FieldName = 'RI_PRICE'
    end
    object cdsCorpactListBASE_WR_QTY: TFloatField
      FieldName = 'BASE_WR_QTY'
    end
    object cdsCorpactListGET_WR_QTY: TFloatField
      FieldName = 'GET_WR_QTY'
    end
    object cdsCorpactListWR_PRICE: TFloatField
      FieldName = 'WR_PRICE'
    end
    object cdsCorpactListNEW_STOCKID: TIntegerField
      FieldName = 'NEW_STOCKID'
    end
    object cdsCorpactListNEW_STOCKCODE: TStringField
      FieldName = 'NEW_STOCKCODE'
    end
    object cdsCorpactListNEW_STOCKNAME: TStringField
      FieldName = 'NEW_STOCKNAME'
      Size = 100
    end
    object cdsCorpactListNEW_ISINCODE: TStringField
      FieldName = 'NEW_ISINCODE'
    end
    object cdsCorpactListRIGTHNAME: TStringField
      FieldName = 'RIGTHNAME'
      Size = 100
    end
    object cdsCorpactListWARRANTNAME: TStringField
      FieldName = 'WARRANTNAME'
      Size = 100
    end
    object cdsCorpactListLASTCOUPON_DATE: TDateField
      FieldName = 'LASTCOUPON_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListNEXTCOUPON_DATE: TDateField
      FieldName = 'NEXTCOUPON_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListMATURITY_DATE: TDateField
      FieldName = 'MATURITY_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListCOUPONDAYS: TIntegerField
      FieldName = 'COUPONDAYS'
    end
    object cdsCorpactListINTEREST_RATE: TFloatField
      FieldName = 'INTEREST_RATE'
    end
    object cdsCorpactListVOUCHERDATE: TDateTimeField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCorpactListCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpactListSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      Size = 5
    end
    object cdsCorpactListEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCorpactListBROKER_ACCBANKID: TLargeintField
      FieldName = 'BROKER_ACCBANKID'
    end
    object cdsCorpactListWR_END_TRDDATE: TDateField
      FieldName = 'WR_END_TRDDATE'
    end
    object cdsCorpactListFIRST_HANDOVER_DATE: TDateField
      FieldName = 'FIRST_HANDOVER_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSCND_HANDOVER_DATE: TDateField
      FieldName = 'SCND_HANDOVER_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListCLOSING_PRICE: TFloatField
      FieldName = 'CLOSING_PRICE'
    end
    object cdsCorpactListCOMPLAIN_DATE: TDateField
      FieldName = 'COMPLAIN_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListRUPSLB_DATE: TDateField
      FieldName = 'RUPSLB_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_IMPL_DATE: TDateField
      FieldName = 'STR_IMPL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListEND_IMPL_DATE: TDateField
      FieldName = 'END_IMPL_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_TRADE_DATE: TDateField
      FieldName = 'STR_TRADE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListEND_TRADE_DATE: TDateField
      FieldName = 'END_TRADE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListMERGE_TRADE_DATE: TDateField
      FieldName = 'MERGE_TRADE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_TRADE_MERGE: TDateField
      FieldName = 'STR_TRADE_MERGE'
    end
    object cdsCorpactListRECMERGE: TDateField
      FieldName = 'RECMERGE'
    end
    object cdsCorpactListSHAREHOLDER_DATE: TDateField
      FieldName = 'SHAREHOLDER_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_NEW_TRADE: TDateField
      FieldName = 'STR_NEW_TRADE'
    end
    object cdsCorpactListEND_OLD_TRADE: TDateField
      FieldName = 'END_OLD_TRADE'
    end
    object cdsCorpactListANNO_DATE: TDateField
      FieldName = 'ANNO_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListSTR_RESCISSION_DATE: TDateField
      FieldName = 'STR_RESCISSION_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListEND_RESCISSION_DATE: TDateField
      FieldName = 'END_RESCISSION_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListROUNDSTOCK: TIntegerField
      FieldName = 'ROUNDSTOCK'
    end
    object cdsCorpactListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpactListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpactListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpactListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpactListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpactListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpactListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpactListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpactListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpactListCASHDIV_RECVSTAT: TStringField
      FieldName = 'CASHDIV_RECVSTAT'
      Size = 1
    end
    object cdsCorpactListENTITLEMENT: TStringField
      FieldName = 'ENTITLEMENT'
      Size = 1
    end
    object cdsCorpactListEXERCISES_CLOSE: TStringField
      FieldName = 'EXERCISES_CLOSE'
      Size = 1
    end
    object cdsCorpactListCASH_STAT: TStringField
      FieldName = 'CASH_STAT'
      Size = 1
    end
    object cdsCorpactListSTOCK_STAT: TStringField
      FieldName = 'STOCK_STAT'
      Size = 1
    end
    object cdsCorpactListRI_STOCK_DIST: TStringField
      FieldName = 'RI_STOCK_DIST'
      Size = 1
    end
    object cdsCorpactListCASH_DVDPAY: TDateField
      FieldName = 'CASH_DVDPAY'
    end
    object cdsCorpactListLAST_OLD_NOMDATE: TDateField
      FieldName = 'LAST_OLD_NOMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListST_TRD_NOMDATE: TDateField
      FieldName = 'ST_TRD_NOMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpactListGENERATE_ENT: TStringField
      FieldName = 'GENERATE_ENT'
      Size = 1
    end
    object cdsCorpactListSTOCKTRANSID: TLargeintField
      FieldName = 'STOCKTRANSID'
    end
    object cdsCorpactListLEDGERTRANSID: TLargeintField
      FieldName = 'LEDGERTRANSID'
    end
  end
  object cdsCorpAct: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmSettlement_qryCorpAct_Anno'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCorpActNewRecord
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 297
    Top = 150
    object cdsCorpActCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsCorpActCANO: TStringField
      FieldName = 'CANO'
    end
    object cdsCorpActCATYPE: TStringField
      FieldName = 'CATYPE'
      Size = 1
    end
    object cdsCorpActSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      OnChange = cdsCorpActSTOCKIDChange
    end
    object cdsCorpActSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsCorpActSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsCorpActISINCODE: TStringField
      FieldName = 'ISINCODE'
    end
    object cdsCorpActBASE_STK_RATIO: TFloatField
      FieldName = 'BASE_STK_RATIO'
    end
    object cdsCorpActGET_STK_RT: TFloatField
      FieldName = 'GET_STK_RT'
    end
    object cdsCorpActBASE_QTY_PRICE_RATIO: TFloatField
      FieldName = 'BASE_QTY_PRICE_RATIO'
    end
    object cdsCorpActGET_CASH_RATIO: TFloatField
      FieldName = 'GET_CASH_RATIO'
    end
    object cdsCorpActBASE_CASH_RATIO: TFloatField
      FieldName = 'BASE_CASH_RATIO'
    end
    object cdsCorpActEXER_PRICE: TFloatField
      FieldName = 'EXER_PRICE'
      DisplayFormat = '#,##0'
    end
    object cdsCorpActWR_QTY_PRICE_RATIO: TFloatField
      FieldName = 'WR_QTY_PRICE_RATIO'
    end
    object cdsCorpActWR_EXER_PRICE: TFloatField
      FieldName = 'WR_EXER_PRICE'
    end
    object cdsCorpActRND_CALC_MODE: TStringField
      FieldName = 'RND_CALC_MODE'
      Size = 1
    end
    object cdsCorpActLOCAL_TAX: TFloatField
      FieldName = 'LOCAL_TAX'
    end
    object cdsCorpActFOR_TAX: TFloatField
      FieldName = 'FOR_TAX'
    end
    object cdsCorpActRIGHTID: TIntegerField
      FieldName = 'RIGHTID'
      OnChange = cdsCorpActRIGHTIDChange
    end
    object cdsCorpActRIGHTCODE: TStringField
      FieldName = 'RIGHTCODE'
    end
    object cdsCorpActWARRANTID: TIntegerField
      FieldName = 'WARRANTID'
      OnChange = cdsCorpActWARRANTIDChange
    end
    object cdsCorpActWAARANTCODE: TStringField
      FieldName = 'WAARANTCODE'
    end
    object cdsCorpActNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActTN_CUMDATE: TDateField
      FieldName = 'TN_CUMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActNGRG_EXDATE: TDateField
      FieldName = 'NGRG_EXDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActTN_EXDATE: TDateField
      FieldName = 'TN_EXDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRECDATE: TDateField
      FieldName = 'RECDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActDISTDATE: TDateField
      FieldName = 'DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActPAYDATE: TDateField
      FieldName = 'PAYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_STR_LISTDATE: TDateField
      FieldName = 'RI_STR_LISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_END_LISDATE: TDateField
      FieldName = 'RI_END_LISDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_STR_TRDDATE: TDateField
      FieldName = 'RI_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_END_TRDDATE: TDateField
      FieldName = 'RI_END_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActSTR_DISTDATE: TDateField
      FieldName = 'STR_DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActEND_DISTDATE: TDateField
      FieldName = 'END_DISTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRI_LASTPAY_DATE: TDateField
      FieldName = 'RI_LASTPAY_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActREFUND_DATE: TDateField
      FieldName = 'REFUND_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActRGNG_WR_STR_TRDDATE: TDateField
      FieldName = 'RGNG_WR_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActTN_WR_STR_TRDDATE: TDateField
      FieldName = 'TN_WR_STR_TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActWR_STR_EXERDATE: TDateField
      FieldName = 'WR_STR_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActWR_END_EXERDATE: TDateField
      FieldName = 'WR_END_EXERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActWR_EXPDATE: TDateField
      FieldName = 'WR_EXPDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActCA_DESC: TStringField
      FieldName = 'CA_DESC'
      Size = 100
    end
    object cdsCorpActCASHDIV_RCV: TDateField
      FieldName = 'CASHDIV_RCV'
    end
    object cdsCorpActRI_EXER_ADM_FEE: TFloatField
      FieldName = 'RI_EXER_ADM_FEE'
      DisplayFormat = '#,##0.00'
    end
    object cdsCorpActRI_ISINCODE: TStringField
      FieldName = 'RI_ISINCODE'
    end
    object cdsCorpActWR_ISINCODE: TStringField
      FieldName = 'WR_ISINCODE'
    end
    object cdsCorpActWR_STR_TRDDATE: TDateField
      FieldName = 'WR_STR_TRDDATE'
    end
    object cdsCorpActBASE_RI_QTY: TFloatField
      FieldName = 'BASE_RI_QTY'
    end
    object cdsCorpActGET_RI_QTY: TFloatField
      FieldName = 'GET_RI_QTY'
    end
    object cdsCorpActRI_PRICE: TFloatField
      FieldName = 'RI_PRICE'
    end
    object cdsCorpActBASE_WR_QTY: TFloatField
      FieldName = 'BASE_WR_QTY'
    end
    object cdsCorpActGET_WR_QTY: TFloatField
      FieldName = 'GET_WR_QTY'
    end
    object cdsCorpActWR_PRICE: TFloatField
      FieldName = 'WR_PRICE'
    end
    object cdsCorpActNEW_STOCKID: TIntegerField
      FieldName = 'NEW_STOCKID'
    end
    object cdsCorpActNEW_STOCKCODE: TStringField
      FieldName = 'NEW_STOCKCODE'
    end
    object cdsCorpActNEW_STOCKNAME: TStringField
      FieldName = 'NEW_STOCKNAME'
      Size = 100
    end
    object cdsCorpActNEW_ISINCODE: TStringField
      FieldName = 'NEW_ISINCODE'
    end
    object cdsCorpActRIGTHNAME: TStringField
      FieldName = 'RIGTHNAME'
      Size = 100
    end
    object cdsCorpActWARRANTNAME: TStringField
      FieldName = 'WARRANTNAME'
      Size = 100
    end
    object cdsCorpActLASTCOUPON_DATE: TDateField
      FieldName = 'LASTCOUPON_DATE'
    end
    object cdsCorpActNEXTCOUPON_DATE: TDateField
      FieldName = 'NEXTCOUPON_DATE'
    end
    object cdsCorpActMATURITY_DATE: TDateField
      FieldName = 'MATURITY_DATE'
    end
    object cdsCorpActCOUPONDAYS: TIntegerField
      FieldName = 'COUPONDAYS'
    end
    object cdsCorpActINTEREST_RATE: TFloatField
      FieldName = 'INTEREST_RATE'
    end
    object cdsCorpActSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCorpActMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCorpActMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCorpActAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCorpActAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCorpActUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCorpActUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCorpActNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCorpActISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCorpActID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCorpActVOUCHERDATE: TDateTimeField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCorpActCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCorpActSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      OnChange = cdsCorpActSETTLE_CCYCODEChange
      Size = 5
    end
    object cdsCorpActEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCorpActBROKER_ACCBANKID: TLargeintField
      FieldName = 'BROKER_ACCBANKID'
    end
    object cdsCorpActWR_END_TRDDATE: TDateField
      FieldName = 'WR_END_TRDDATE'
    end
    object cdsCorpActFIRST_HANDOVER_DATE: TDateField
      FieldName = 'FIRST_HANDOVER_DATE'
    end
    object cdsCorpActSCND_HANDOVER_DATE: TDateField
      FieldName = 'SCND_HANDOVER_DATE'
    end
    object cdsCorpActCOMPLAIN_DATE: TDateField
      FieldName = 'COMPLAIN_DATE'
    end
    object cdsCorpActCLOSING_PRICE: TFloatField
      FieldName = 'CLOSING_PRICE'
    end
    object cdsCorpActEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
    end
    object cdsCorpActRUPSLB_DATE: TDateField
      FieldName = 'RUPSLB_DATE'
    end
    object cdsCorpActSTR_IMPL_DATE: TDateField
      FieldName = 'STR_IMPL_DATE'
    end
    object cdsCorpActEND_IMPL_DATE: TDateField
      FieldName = 'END_IMPL_DATE'
    end
    object cdsCorpActSTR_TRADE_DATE: TDateField
      FieldName = 'STR_TRADE_DATE'
    end
    object cdsCorpActEND_TRADE_DATE: TDateField
      FieldName = 'END_TRADE_DATE'
    end
    object cdsCorpActMERGE_TRADE_DATE: TDateField
      FieldName = 'MERGE_TRADE_DATE'
    end
    object cdsCorpActSTR_TRADE_MERGE: TDateField
      FieldName = 'STR_TRADE_MERGE'
    end
    object cdsCorpActRECMERGE: TDateField
      FieldName = 'RECMERGE'
    end
    object cdsCorpActSHAREHOLDER_DATE: TDateField
      FieldName = 'SHAREHOLDER_DATE'
    end
    object cdsCorpActREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
    end
    object cdsCorpActSTR_NEW_TRADE: TDateField
      FieldName = 'STR_NEW_TRADE'
    end
    object cdsCorpActEND_OLD_TRADE: TDateField
      FieldName = 'END_OLD_TRADE'
    end
    object cdsCorpActANNO_DATE: TDateField
      FieldName = 'ANNO_DATE'
    end
    object cdsCorpActSTR_RESCISSION_DATE: TDateField
      FieldName = 'STR_RESCISSION_DATE'
    end
    object cdsCorpActEND_RESCISSION_DATE: TDateField
      FieldName = 'END_RESCISSION_DATE'
    end
    object cdsCorpActROUNDSTOCK: TIntegerField
      FieldName = 'ROUNDSTOCK'
    end
    object cdsCorpActRI_EXERCISES: TStringField
      DisplayLabel = 'Exercises'
      FieldName = 'RI_EXERCISES'
      Size = 1
    end
    object cdsCorpActRI_EXPIRED: TStringField
      DisplayLabel = 'Expired'
      FieldName = 'RI_EXPIRED'
      Size = 1
    end
    object cdsCorpActRI_STOCK_DIST: TStringField
      FieldName = 'RI_STOCK_DIST'
      Size = 1
    end
    object cdsCorpActCASHDIV_RECVSTAT: TStringField
      FieldName = 'CASHDIV_RECVSTAT'
      Size = 1
    end
    object cdsCorpActENTITLEMENT: TStringField
      FieldName = 'ENTITLEMENT'
      Size = 1
    end
    object cdsCorpActEXERCISES_CLOSE: TStringField
      FieldName = 'EXERCISES_CLOSE'
      Size = 1
    end
    object cdsCorpActCASH_STAT: TStringField
      FieldName = 'CASH_STAT'
      Size = 1
    end
    object cdsCorpActSTOCK_STAT: TStringField
      FieldName = 'STOCK_STAT'
      Size = 1
    end
    object cdsCorpActCASH_DVDPAY: TDateField
      FieldName = 'CASH_DVDPAY'
    end
    object cdsCorpActLAST_OLD_NOMDATE: TDateField
      FieldName = 'LAST_OLD_NOMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActST_TRD_NOMDATE: TDateField
      FieldName = 'ST_TRD_NOMDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCorpActCANCEL_EXERPAID: TStringField
      FieldName = 'CANCEL_EXERPAID'
      Size = 1
    end
    object cdsCorpActFOREX_CASH_RATIO: TFloatField
      FieldName = 'FOREX_CASH_RATIO'
    end
    object cdsCorpActISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsCorpActACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsCorpActACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCorpActGENERATE_ENT: TStringField
      FieldName = 'GENERATE_ENT'
      Size = 1
    end
  end
  object cdsRecCount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryCheckReconEnt'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 441
    Top = 171
    object cdsRecCountRECCOUNT: TIntegerField
      FieldName = 'RECCOUNT'
      ReadOnly = True
    end
  end
end
