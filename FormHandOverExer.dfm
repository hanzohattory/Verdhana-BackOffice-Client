inherited frmHandOverExer: TfrmHandOverExer
  Caption = 'Hand Over Exercise'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCANO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCATYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CATYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISINCODE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBASE_STK_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_STK_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterGET_STK_RT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_STK_RT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBASE_CASH_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CASH_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterGET_CASH_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_CASH_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterBASE_QTY_PRICE_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_QTY_PRICE_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterEXER_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterWR_QTY_PRICE_RATIO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_QTY_PRICE_RATIO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterWR_EXER_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_EXER_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterRND_CALC_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RND_CALC_MODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterLOCAL_TAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOCAL_TAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterFOR_TAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOR_TAX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterRIGHTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGHTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterRIGHTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGHTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterWARRANTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WARRANTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterWAARANTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WAARANTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterNGRG_CUMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NGRG_CUMDATE'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterTN_CUMDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TN_CUMDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterNGRG_EXDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NGRG_EXDATE'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterTN_EXDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TN_EXDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterRECDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RECDATE'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterDISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTDATE'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterPAYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_LISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_LISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_LISDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_LISDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterRI_STR_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_STR_EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterRI_END_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_END_EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterSTR_DISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_DISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterEND_DISTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_DISTDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterRI_LASTPAY_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_LASTPAY_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterALLOTMENT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTMENT_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterREFUND_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFUND_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterRGNG_WR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RGNG_WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterTN_WR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TN_WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterWR_STR_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_STR_EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterWR_END_EXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_END_EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterWR_EXPDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_EXPDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterCA_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_DESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterCASHDIV_RCV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASHDIV_RCV'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXERCISES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXERCISES'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXPIRED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXPIRED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 56
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 57
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 58
        Position.RowIndex = 0
      end
      object gvwMasterRI_EXER_ADM_FEE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_EXER_ADM_FEE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 59
        Position.RowIndex = 0
      end
      object gvwMasterRI_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 60
        Position.RowIndex = 0
      end
      object gvwMasterWR_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 61
        Position.RowIndex = 0
      end
      object gvwMasterWR_STR_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_STR_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 62
        Position.RowIndex = 0
      end
      object gvwMasterBASE_RI_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_RI_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 63
        Position.RowIndex = 0
      end
      object gvwMasterGET_RI_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_RI_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 64
        Position.RowIndex = 0
      end
      object gvwMasterRI_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RI_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 65
        Position.RowIndex = 0
      end
      object gvwMasterBASE_WR_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_WR_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 66
        Position.RowIndex = 0
      end
      object gvwMasterGET_WR_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GET_WR_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 67
        Position.RowIndex = 0
      end
      object gvwMasterWR_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 68
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 69
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 70
        Position.RowIndex = 0
      end
      object gvwMasterNEW_STOCKNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_STOCKNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 71
        Position.RowIndex = 0
      end
      object gvwMasterNEW_ISINCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEW_ISINCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 72
        Position.RowIndex = 0
      end
      object gvwMasterRIGTHNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RIGTHNAME'
        Position.BandIndex = 0
        Position.ColIndex = 73
        Position.RowIndex = 0
      end
      object gvwMasterWARRANTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WARRANTNAME'
        Position.BandIndex = 0
        Position.ColIndex = 74
        Position.RowIndex = 0
      end
      object gvwMasterLASTCOUPON_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LASTCOUPON_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 75
        Position.RowIndex = 0
      end
      object gvwMasterNEXTCOUPON_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NEXTCOUPON_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 76
        Position.RowIndex = 0
      end
      object gvwMasterMATURITY_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATURITY_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 77
        Position.RowIndex = 0
      end
      object gvwMasterCOUPONDAYS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUPONDAYS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 78
        Position.RowIndex = 0
      end
      object gvwMasterINTEREST_RATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_RATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 79
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 80
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 81
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 82
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 83
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_ACCBANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_ACCBANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 84
        Position.RowIndex = 0
      end
      object gvwMasterWR_END_TRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WR_END_TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 85
        Position.RowIndex = 0
      end
      object gvwMasterFIRST_HANDOVER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIRST_HANDOVER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 86
        Position.RowIndex = 0
      end
      object gvwMasterSCND_HANDOVER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SCND_HANDOVER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 87
        Position.RowIndex = 0
      end
      object gvwMasterCLOSING_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLOSING_PRICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 88
        Position.RowIndex = 0
      end
      object gvwMasterCOMPLAIN_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPLAIN_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 89
        Position.RowIndex = 0
      end
      object gvwMasterEFFECTIVE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EFFECTIVE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 90
        Position.RowIndex = 0
      end
      object gvwMasterRUPSLB_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RUPSLB_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 91
        Position.RowIndex = 0
      end
      object gvwMasterSTR_IMPL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_IMPL_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 92
        Position.RowIndex = 0
      end
      object gvwMasterEND_IMPL_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_IMPL_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 93
        Position.RowIndex = 0
      end
      object gvwMasterSTR_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 94
        Position.RowIndex = 0
      end
      object gvwMasterEND_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 95
        Position.RowIndex = 0
      end
      object gvwMasterMERGE_TRADE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MERGE_TRADE_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 96
        Position.RowIndex = 0
      end
      object gvwMasterSTR_TRADE_MERGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_TRADE_MERGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 97
        Position.RowIndex = 0
      end
      object gvwMasterRECMERGE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RECMERGE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 98
        Position.RowIndex = 0
      end
      object gvwMasterSHAREHOLDER_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHAREHOLDER_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 99
        Position.RowIndex = 0
      end
      object gvwMasterREPORT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPORT_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 100
        Position.RowIndex = 0
      end
      object gvwMasterSTR_NEW_TRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_NEW_TRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 101
        Position.RowIndex = 0
      end
      object gvwMasterEND_OLD_TRADE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_OLD_TRADE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 102
        Position.RowIndex = 0
      end
      object gvwMasterANNO_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ANNO_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 103
        Position.RowIndex = 0
      end
      object gvwMasterSTR_RESCISSION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STR_RESCISSION_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 104
        Position.RowIndex = 0
      end
      object gvwMasterEND_RESCISSION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'END_RESCISSION_DATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 105
        Position.RowIndex = 0
      end
      object gvwMasterROUNDSTOCK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ROUNDSTOCK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 106
        Position.RowIndex = 0
      end
    end
    object grdMasterDBBandedTableView1: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
    object gvwDetail: TcxGridDBBandedTableView [2]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsHandOverExerDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
      object gvwDetailCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailEXER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_ID'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailEXERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDetailCA_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDetailCA_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDetailEXERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERQTY'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDetailEXER_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDetailEXER_WARRQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_WARRQTY'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDetailEXER_PAYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_PAYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDetailEXER_PAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_PAID'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDetailEXER_PAIDAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXER_PAIDAMT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDetailRCASH_VOUCHEID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RCASH_VOUCHEID'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwDetailRCASH_VOUCHERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RCASH_VOUCHERNO'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwDetailPCASH_VOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PCASH_VOUCHERID'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwDetailPCASH_VOUCHERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PCASH_VOUCHERNO'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwDetailMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwDetailMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwDetailAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwDetailAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwDetailUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwDetailUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwDetailNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwDetailISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwDetailID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwDetailSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwDetail
      end
    end
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010E002700CC0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C47456AB9AFACE94E45437F020202030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000756C6CB3E3D9D6FF6F605DC00605050B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000000000000000
      00000000000000000000000000006A6060AAD6CAC8FF5B4C4AB6040303080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000000000000000
      0000000000000000000000000000625857A6D2C5C3FF564847C2030303090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000000000000000
      000000000000000000001916162FAB9D9DE4D6C9C8FF857676F81B17174A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000000000000000
      00000000000003030306807374B9EADCDDFFB3A8A8FFA99D9DFF6A5D5DDB0605
      050F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000000000000000
      0000000000004840417BEEE3E3FFE8DDDDFFA39999FFDCD1CFFFBAABAAFF4136
      37A5020202070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000001411112C797271B1807675B92521
      20531612123ACBBEBFF7FFFDFCFFC1B7B6FFAAA09FFFE5D9D8FFDBCDCCFF8676
      76FB241E1E610000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000004E4342A96864627C55504F624F42
      42AD807070EDFBF1F1FFF4EBE9FFA39897FFB4A8A7FFE9DDDCFFDACBC9FFAB9A
      99FF665657F10E0B0B2A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD00000000000000000000000000362E2D8906050508050505073A2F
      2F91D4C4C4FFFFFCFCFFDBD6D4FFA39896FFB9ACACFFEFE4E3FFD5C6C4FFB2A1
      9FFF7C6A6AFF3C3032BB01010106000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      94000000000000000000000000000000000036302F72716969BD706564C0A998
      98FFF8EEEEFFFEFEFEFFCDC9C8FFAEA19FFFCABFBDFFFCF8F7FFF5F0EFFFD9CF
      CFFF8E7B7BFF5E4D4EFF1E17177E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000605050C3A343580877977FEECE1
      E0FFFFFFFFFFFEFEFEFFEAE4E4FFDBD4D3FFECE5E5FFFCF9F9FFF5F0EFFFD9CF
      CFFFD9CFCFFF7A6A6CFF493A3CF61410115A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000028222364B6A7A5FDF7EF
      EEFFD5D1D2FFAAA4A4FFA7A3A3FFADAAAAFFA8A6A6FF97908FFF9F9C9CFFADAA
      AAFFD9CFCFFFD9CFCFFF918588FF483D41E60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      000000000000000000000000000000000000000000004A444481CCC0C1FFF7EF
      EEFFA19695FF8A7E7DFF998C8BFFA69F9FFF9E9695FF7A6968FF847778FF8C86
      86FF928887FFEFE4E3FFD8D0D0FF746A6DEB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000017151523595253958980
      81DCF7EFEEFFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4
      E3FFEFE4E3FF9A9193EF6A6363B52A2626490000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    inherited PrintCompMainGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsHanOverExer
  end
  inherited BarMBrowse: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
  end
  object cdsHanOverExer: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryHandOverExer'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 33
    Top = 225
    object cdsHanOverExerCAID: TLargeintField
      FieldName = 'CAID'
    end
    object cdsHanOverExerCANO: TStringField
      FieldName = 'CANO'
      ReadOnly = True
    end
    object cdsHanOverExerCATYPE: TStringField
      FieldName = 'CATYPE'
      ReadOnly = True
      Size = 1
    end
    object cdsHanOverExerSTOCKID: TIntegerField
      FieldName = 'STOCKID'
      ReadOnly = True
    end
    object cdsHanOverExerSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
    end
    object cdsHanOverExerSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerISINCODE: TStringField
      FieldName = 'ISINCODE'
      ReadOnly = True
    end
    object cdsHanOverExerBASE_STK_RATIO: TFloatField
      FieldName = 'BASE_STK_RATIO'
      ReadOnly = True
    end
    object cdsHanOverExerGET_STK_RT: TFloatField
      FieldName = 'GET_STK_RT'
      ReadOnly = True
    end
    object cdsHanOverExerBASE_CASH_RATIO: TFloatField
      FieldName = 'BASE_CASH_RATIO'
      ReadOnly = True
    end
    object cdsHanOverExerGET_CASH_RATIO: TFloatField
      FieldName = 'GET_CASH_RATIO'
      ReadOnly = True
    end
    object cdsHanOverExerBASE_QTY_PRICE_RATIO: TFloatField
      FieldName = 'BASE_QTY_PRICE_RATIO'
      ReadOnly = True
    end
    object cdsHanOverExerEXER_PRICE: TFloatField
      FieldName = 'EXER_PRICE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_QTY_PRICE_RATIO: TFloatField
      FieldName = 'WR_QTY_PRICE_RATIO'
      ReadOnly = True
    end
    object cdsHanOverExerWR_EXER_PRICE: TFloatField
      FieldName = 'WR_EXER_PRICE'
      ReadOnly = True
    end
    object cdsHanOverExerRND_CALC_MODE: TStringField
      FieldName = 'RND_CALC_MODE'
      ReadOnly = True
      Size = 1
    end
    object cdsHanOverExerLOCAL_TAX: TFloatField
      FieldName = 'LOCAL_TAX'
      ReadOnly = True
    end
    object cdsHanOverExerFOR_TAX: TFloatField
      FieldName = 'FOR_TAX'
      ReadOnly = True
    end
    object cdsHanOverExerRIGHTID: TIntegerField
      FieldName = 'RIGHTID'
      ReadOnly = True
    end
    object cdsHanOverExerRIGHTCODE: TStringField
      FieldName = 'RIGHTCODE'
      ReadOnly = True
    end
    object cdsHanOverExerWARRANTID: TIntegerField
      FieldName = 'WARRANTID'
      ReadOnly = True
    end
    object cdsHanOverExerWAARANTCODE: TStringField
      FieldName = 'WAARANTCODE'
      ReadOnly = True
    end
    object cdsHanOverExerNGRG_CUMDATE: TDateField
      FieldName = 'NGRG_CUMDATE'
      ReadOnly = True
    end
    object cdsHanOverExerTN_CUMDATE: TDateField
      FieldName = 'TN_CUMDATE'
      ReadOnly = True
    end
    object cdsHanOverExerNGRG_EXDATE: TDateField
      FieldName = 'NGRG_EXDATE'
      ReadOnly = True
    end
    object cdsHanOverExerTN_EXDATE: TDateField
      FieldName = 'TN_EXDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRECDATE: TDateField
      FieldName = 'RECDATE'
      ReadOnly = True
    end
    object cdsHanOverExerDISTDATE: TDateField
      FieldName = 'DISTDATE'
      ReadOnly = True
    end
    object cdsHanOverExerPAYDATE: TDateField
      FieldName = 'PAYDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_STR_LISTDATE: TDateField
      FieldName = 'RI_STR_LISTDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_END_LISDATE: TDateField
      FieldName = 'RI_END_LISDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_STR_TRDDATE: TDateField
      FieldName = 'RI_STR_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_END_TRDDATE: TDateField
      FieldName = 'RI_END_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_STR_EXERDATE: TDateField
      FieldName = 'RI_STR_EXERDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_END_EXERDATE: TDateField
      FieldName = 'RI_END_EXERDATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_DISTDATE: TDateField
      FieldName = 'STR_DISTDATE'
      ReadOnly = True
    end
    object cdsHanOverExerEND_DISTDATE: TDateField
      FieldName = 'END_DISTDATE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_LASTPAY_DATE: TDateField
      FieldName = 'RI_LASTPAY_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerALLOTMENT_DATE: TDateField
      FieldName = 'ALLOTMENT_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerREFUND_DATE: TDateField
      FieldName = 'REFUND_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerRGNG_WR_STR_TRDDATE: TDateField
      FieldName = 'RGNG_WR_STR_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerTN_WR_STR_TRDDATE: TDateField
      FieldName = 'TN_WR_STR_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_STR_EXERDATE: TDateField
      FieldName = 'WR_STR_EXERDATE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_END_EXERDATE: TDateField
      FieldName = 'WR_END_EXERDATE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_EXPDATE: TDateField
      FieldName = 'WR_EXPDATE'
      ReadOnly = True
    end
    object cdsHanOverExerCA_DESC: TStringField
      FieldName = 'CA_DESC'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerCASHDIV_RCV: TDateField
      FieldName = 'CASHDIV_RCV'
      ReadOnly = True
    end
    object cdsHanOverExerSTAT: TStringField
      FieldName = 'STAT'
      ReadOnly = True
      Size = 1
    end
    object cdsHanOverExerRI_EXERCISES: TStringField
      FieldName = 'RI_EXERCISES'
      ReadOnly = True
      Size = 1
    end
    object cdsHanOverExerRI_EXPIRED: TStringField
      FieldName = 'RI_EXPIRED'
      ReadOnly = True
      Size = 1
    end
    object cdsHanOverExerMODDA: TDateTimeField
      FieldName = 'MODDA'
      ReadOnly = True
    end
    object cdsHanOverExerMODUI: TStringField
      FieldName = 'MODUI'
      ReadOnly = True
      Size = 30
    end
    object cdsHanOverExerAPPDA: TDateTimeField
      FieldName = 'APPDA'
      ReadOnly = True
    end
    object cdsHanOverExerAPPUI: TStringField
      FieldName = 'APPUI'
      ReadOnly = True
      Size = 30
    end
    object cdsHanOverExerUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
      ReadOnly = True
    end
    object cdsHanOverExerUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
      ReadOnly = True
    end
    object cdsHanOverExerNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerISDEL: TIntegerField
      FieldName = 'ISDEL'
      ReadOnly = True
    end
    object cdsHanOverExerID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsHanOverExerRI_EXER_ADM_FEE: TFloatField
      FieldName = 'RI_EXER_ADM_FEE'
      ReadOnly = True
    end
    object cdsHanOverExerRI_ISINCODE: TStringField
      FieldName = 'RI_ISINCODE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_ISINCODE: TStringField
      FieldName = 'WR_ISINCODE'
      ReadOnly = True
    end
    object cdsHanOverExerWR_STR_TRDDATE: TDateField
      FieldName = 'WR_STR_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerBASE_RI_QTY: TFloatField
      FieldName = 'BASE_RI_QTY'
      ReadOnly = True
    end
    object cdsHanOverExerGET_RI_QTY: TFloatField
      FieldName = 'GET_RI_QTY'
      ReadOnly = True
    end
    object cdsHanOverExerRI_PRICE: TFloatField
      FieldName = 'RI_PRICE'
      ReadOnly = True
    end
    object cdsHanOverExerBASE_WR_QTY: TFloatField
      FieldName = 'BASE_WR_QTY'
      ReadOnly = True
    end
    object cdsHanOverExerGET_WR_QTY: TFloatField
      FieldName = 'GET_WR_QTY'
      ReadOnly = True
    end
    object cdsHanOverExerWR_PRICE: TFloatField
      FieldName = 'WR_PRICE'
      ReadOnly = True
    end
    object cdsHanOverExerNEW_STOCKID: TIntegerField
      FieldName = 'NEW_STOCKID'
      ReadOnly = True
    end
    object cdsHanOverExerNEW_STOCKCODE: TStringField
      FieldName = 'NEW_STOCKCODE'
      ReadOnly = True
    end
    object cdsHanOverExerNEW_STOCKNAME: TStringField
      FieldName = 'NEW_STOCKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerNEW_ISINCODE: TStringField
      FieldName = 'NEW_ISINCODE'
      ReadOnly = True
    end
    object cdsHanOverExerRIGTHNAME: TStringField
      FieldName = 'RIGTHNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerWARRANTNAME: TStringField
      FieldName = 'WARRANTNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsHanOverExerLASTCOUPON_DATE: TDateField
      FieldName = 'LASTCOUPON_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerNEXTCOUPON_DATE: TDateField
      FieldName = 'NEXTCOUPON_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerMATURITY_DATE: TDateField
      FieldName = 'MATURITY_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerCOUPONDAYS: TIntegerField
      FieldName = 'COUPONDAYS'
      ReadOnly = True
    end
    object cdsHanOverExerINTEREST_RATE: TFloatField
      FieldName = 'INTEREST_RATE'
      ReadOnly = True
    end
    object cdsHanOverExerVOUCHERDATE: TDateTimeField
      FieldName = 'VOUCHERDATE'
      ReadOnly = True
    end
    object cdsHanOverExerCCYCODE: TStringField
      FieldName = 'CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsHanOverExerSETTLE_CCYCODE: TStringField
      FieldName = 'SETTLE_CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsHanOverExerEXRATE: TFloatField
      FieldName = 'EXRATE'
      ReadOnly = True
    end
    object cdsHanOverExerBROKER_ACCBANKID: TLargeintField
      FieldName = 'BROKER_ACCBANKID'
      ReadOnly = True
    end
    object cdsHanOverExerWR_END_TRDDATE: TDateField
      FieldName = 'WR_END_TRDDATE'
      ReadOnly = True
    end
    object cdsHanOverExerFIRST_HANDOVER_DATE: TDateField
      FieldName = 'FIRST_HANDOVER_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSCND_HANDOVER_DATE: TDateField
      FieldName = 'SCND_HANDOVER_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerCLOSING_PRICE: TFloatField
      FieldName = 'CLOSING_PRICE'
      ReadOnly = True
    end
    object cdsHanOverExerCOMPLAIN_DATE: TDateField
      FieldName = 'COMPLAIN_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerEFFECTIVE_DATE: TDateField
      FieldName = 'EFFECTIVE_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerRUPSLB_DATE: TDateField
      FieldName = 'RUPSLB_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_IMPL_DATE: TDateField
      FieldName = 'STR_IMPL_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerEND_IMPL_DATE: TDateField
      FieldName = 'END_IMPL_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_TRADE_DATE: TDateField
      FieldName = 'STR_TRADE_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerEND_TRADE_DATE: TDateField
      FieldName = 'END_TRADE_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerMERGE_TRADE_DATE: TDateField
      FieldName = 'MERGE_TRADE_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_TRADE_MERGE: TDateField
      FieldName = 'STR_TRADE_MERGE'
      ReadOnly = True
    end
    object cdsHanOverExerRECMERGE: TDateField
      FieldName = 'RECMERGE'
      ReadOnly = True
    end
    object cdsHanOverExerSHAREHOLDER_DATE: TDateField
      FieldName = 'SHAREHOLDER_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerREPORT_DATE: TDateField
      FieldName = 'REPORT_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_NEW_TRADE: TDateField
      FieldName = 'STR_NEW_TRADE'
      ReadOnly = True
    end
    object cdsHanOverExerEND_OLD_TRADE: TDateField
      FieldName = 'END_OLD_TRADE'
      ReadOnly = True
    end
    object cdsHanOverExerANNO_DATE: TDateField
      FieldName = 'ANNO_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerSTR_RESCISSION_DATE: TDateField
      FieldName = 'STR_RESCISSION_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerEND_RESCISSION_DATE: TDateField
      FieldName = 'END_RESCISSION_DATE'
      ReadOnly = True
    end
    object cdsHanOverExerROUNDSTOCK: TIntegerField
      FieldName = 'ROUNDSTOCK'
      ReadOnly = True
    end
  end
  object cdsHandOverExerDetail: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmSettlement_qryHandOverExerDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 537
    Top = 225
    object cdsHandOverExerDetailCAID: TLargeintField
      FieldName = 'CAID'
      Required = True
    end
    object cdsHandOverExerDetailEXER_ID: TLargeintField
      FieldName = 'EXER_ID'
      Required = True
    end
    object cdsHandOverExerDetailACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsHandOverExerDetailEXERDATE: TDateField
      FieldName = 'EXERDATE'
      Required = True
    end
    object cdsHandOverExerDetailACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsHandOverExerDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsHandOverExerDetailCA_QTY: TFloatField
      FieldName = 'CA_QTY'
    end
    object cdsHandOverExerDetailCA_AMT: TFloatField
      FieldName = 'CA_AMT'
    end
    object cdsHandOverExerDetailEXERQTY: TFloatField
      FieldName = 'EXERQTY'
    end
    object cdsHandOverExerDetailEXER_AMT: TFloatField
      FieldName = 'EXER_AMT'
    end
    object cdsHandOverExerDetailEXER_WARRQTY: TFloatField
      FieldName = 'EXER_WARRQTY'
    end
    object cdsHandOverExerDetailEXER_PAYDATE: TDateField
      FieldName = 'EXER_PAYDATE'
    end
    object cdsHandOverExerDetailEXER_PAID: TStringField
      FieldName = 'EXER_PAID'
      Size = 1
    end
    object cdsHandOverExerDetailEXER_PAIDAMT: TFloatField
      FieldName = 'EXER_PAIDAMT'
    end
    object cdsHandOverExerDetailRCASH_VOUCHEID: TLargeintField
      FieldName = 'RCASH_VOUCHEID'
    end
    object cdsHandOverExerDetailRCASH_VOUCHERNO: TStringField
      FieldName = 'RCASH_VOUCHERNO'
    end
    object cdsHandOverExerDetailPCASH_VOUCHERID: TLargeintField
      FieldName = 'PCASH_VOUCHERID'
    end
    object cdsHandOverExerDetailPCASH_VOUCHERNO: TStringField
      FieldName = 'PCASH_VOUCHERNO'
    end
    object cdsHandOverExerDetailMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsHandOverExerDetailMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsHandOverExerDetailAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsHandOverExerDetailAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsHandOverExerDetailUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsHandOverExerDetailUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsHandOverExerDetailNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsHandOverExerDetailISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsHandOverExerDetailID: TLargeintField
      FieldName = 'ID'
    end
    object cdsHandOverExerDetailSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
  end
  object dsHandOverExerDetail: TDataSource
    DataSet = cdsHandOverExerDetail
    Left = 537
    Top = 279
  end
end
