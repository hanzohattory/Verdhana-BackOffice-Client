inherited frmDailyMarketTransaction: TfrmDailyMarketTransaction
  Caption = 'Daily Market Transaction'
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 73
    Height = 395
    ExplicitTop = 73
    ExplicitHeight = 395
    inherited gvwMaster: TcxGridDBBandedTableView
      Tag = -1
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'BUY_QTY'
          Column = gvwMasterBUY_QTY
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'BUY_VALUE'
          Column = gvwMasterBUY_VALUE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'BUY_AVALUE'
          Column = gvwMasterBUY_AVALUE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'SELL_QTY'
          Column = gvwMasterSELL_QTY
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'SELL_VALUE'
          Column = gvwMasterSELL_VALUE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'SELL_AVALUE'
          Column = gvwMasterSELL_AVALUE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'BROKERFEE'
          Column = gvwMasterBROKERFEE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG1_CHARGE_VAL1'
          Column = gvwMasterCHG1_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG2_CHARGE_VAL1'
          Column = gvwMasterCHG2_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG3_CHARGE_VAL1'
          Column = gvwMasterCHG3_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG4_CHARGE_VAL1'
          Column = gvwMasterCHG4_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG5_CHARGE_VAL1'
          Column = gvwMasterCHG5_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG6_CHARGE_VAL1'
          Column = gvwMasterCHG6_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG7_CHARGE_VAL1'
          Column = gvwMasterCHG7_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG8_CHARGE_VAL1'
          Column = gvwMasterCHG8_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'CHG9_CHARGE_VAL1'
          Column = gvwMasterCHG9_CHARGE_VAL1
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'NETAMOUNT'
          Column = gvwMasterNETAMOUNT
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          Position = spFooter
          FieldName = 'GAINLOSS_AVGPRICE'
          Column = gvwMasterGAINLOSS_AVGPRICE
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          FieldName = 'BUY_QTY'
          Column = gvwMasterBUY_QTY
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'BUY_VALUE'
          Column = gvwMasterBUY_VALUE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'BUY_AVALUE'
          Column = gvwMasterBUY_AVALUE
        end
        item
          Format = '#,##0 ;(#,##0);0 '
          Kind = skSum
          FieldName = 'SELL_QTY'
          Column = gvwMasterSELL_QTY
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'SELL_VALUE'
          Column = gvwMasterSELL_VALUE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'SELL_AVALUE'
          Column = gvwMasterSELL_AVALUE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'BROKERFEE'
          Column = gvwMasterBROKERFEE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG1_CHARGE_VAL1'
          Column = gvwMasterCHG1_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG2_CHARGE_VAL1'
          Column = gvwMasterCHG2_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG3_CHARGE_VAL1'
          Column = gvwMasterCHG3_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG4_CHARGE_VAL1'
          Column = gvwMasterCHG4_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG5_CHARGE_VAL1'
          Column = gvwMasterCHG5_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG6_CHARGE_VAL1'
          Column = gvwMasterCHG6_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG7_CHARGE_VAL1'
          Column = gvwMasterCHG7_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG8_CHARGE_VAL1'
          Column = gvwMasterCHG8_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG9_CHARGE_VAL1'
          Column = gvwMasterCHG9_CHARGE_VAL1
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NETAMOUNT'
          Column = gvwMasterNETAMOUNT
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'GAINLOSS_AVGPRICE'
          Column = gvwMasterGAINLOSS_AVGPRICE
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'SETTLE_NETAMOUNT'
          Column = gvwMasterSETTLE_NETAMOUNT
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'BROKERFEE_LEG2'
          Column = gvwMasterBROKERFEE_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG1_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG1_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG2_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG2_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG3_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG3_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG4_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG4_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG5_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG5_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG6_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG6_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG7_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG7_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG8_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG8_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'CHG9_CHARGE_VAL2_LEG2'
          Column = gvwMasterCHG9_CHARGE_VAL2_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'NETAMOUNT_LEG2'
          Column = gvwMasterNETAMOUNT_LEG2
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'FOREIGN_NETAMT_LEG2'
          Column = gvwMasterFOREIGN_NETAMT_LEG2
        end>
      OptionsView.GroupByBox = True
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Contract Information'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Client Side Value (Leg 1)'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Broker Side Value (Leg 2)'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterCONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCONCODE: TcxGridDBBandedColumn
        Caption = 'Contract Code'
        DataBinding.FieldName = 'CONCODE'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCONDATE: TcxGridDBBandedColumn
        Caption = 'Contract Date'
        DataBinding.FieldName = 'CONDATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCASHSETTLEDATE: TcxGridDBBandedColumn
        Caption = 'Cash Settle Date'
        DataBinding.FieldName = 'CASHSETTLEDATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKSETTLEDATE: TcxGridDBBandedColumn
        Caption = 'Stock Settle Date'
        DataBinding.FieldName = 'STOCKSETTLEDATE'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMARKETCODE: TcxGridDBBandedColumn
        Caption = 'Market'
        DataBinding.FieldName = 'MARKETCODE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'CCYCODE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterNETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NETAMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Settle Ccy'
        DataBinding.FieldName = 'FOREIGN_CCYCODE'
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_EXRATE: TcxGridDBBandedColumn
        Caption = 'Settle ExRate'
        DataBinding.FieldName = 'FOREIGN_EXRATE'
        Visible = False
        VisibleForCustomization = False
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FOREIGN_NETAMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCINIT: TcxGridDBBandedColumn
        Caption = 'Account Init'
        DataBinding.FieldName = 'ACCINIT'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        Caption = 'Account Type'
        DataBinding.FieldName = 'ACCTYPE'
        RepositoryItem = dmGlobal.luAccType
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterPRDCODE: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'PRDCODE'
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterENTTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterENTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTNAME'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterENTACCTYPE: TcxGridDBBandedColumn
        Caption = 'Inv. Type'
        DataBinding.FieldName = 'ENTACCTYPE'
        RepositoryItem = dmGlobal.luLocalForeign
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterSALESID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSALESCODE: TcxGridDBBandedColumn
        Caption = 'Sales Code'
        DataBinding.FieldName = 'SALESCODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSALESNAME: TcxGridDBBandedColumn
        Caption = 'Sales Name'
        DataBinding.FieldName = 'SALESNAME'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterBOARDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOARDID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterBOARDCODE: TcxGridDBBandedColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDCODE'
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCPACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CPACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 2
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterCPACCCODE: TcxGridDBBandedColumn
        Caption = 'CP Account Code'
        DataBinding.FieldName = 'CPACCCODE'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCPACCNAME: TcxGridDBBandedColumn
        Caption = 'CP Account Name'
        DataBinding.FieldName = 'CPACCNAME'
        Width = 200
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCPACCINIT: TcxGridDBBandedColumn
        Caption = 'CP Account Init'
        DataBinding.FieldName = 'CPACCINIT'
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterBS: TcxGridDBBandedColumn
        AlternateCaption = '25'
        Caption = 'B / S'
        DataBinding.FieldName = 'BS'
        RepositoryItem = dmGlobal.luBuySell
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterAPRICE: TcxGridDBBandedColumn
        Caption = 'Client Price'
        DataBinding.FieldName = 'APRICE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterEXPRICE: TcxGridDBBandedColumn
        Caption = 'Market Price'
        DataBinding.FieldName = 'EXPRICE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterVALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterBUY_QTY: TcxGridDBBandedColumn
        Caption = 'Buy Qty'
        DataBinding.FieldName = 'BUY_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterBUY_VALUE: TcxGridDBBandedColumn
        Caption = 'Buy Market Value'
        DataBinding.FieldName = 'BUY_VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterBUY_AVALUE: TcxGridDBBandedColumn
        Caption = 'Buy Client Value'
        DataBinding.FieldName = 'BUY_AVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterSELL_QTY: TcxGridDBBandedColumn
        Caption = 'Sell Qty'
        DataBinding.FieldName = 'SELL_QTY'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterSELL_VALUE: TcxGridDBBandedColumn
        Caption = 'Sell Market Value'
        DataBinding.FieldName = 'SELL_VALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterSELL_AVALUE: TcxGridDBBandedColumn
        Caption = 'Sell Client Value'
        DataBinding.FieldName = 'SELL_AVALUE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterBROKERFEE: TcxGridDBBandedColumn
        Caption = 'Broker Commission'
        DataBinding.FieldName = 'BROKERFEE'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_VAL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_VAL1'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_VAL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_VAL2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_DIFF'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterNETAMOUNT: TcxGridDBBandedColumn
        Caption = 'Net Amount'
        DataBinding.FieldName = 'NETAMOUNT'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterSETTLE_NETAMOUNT: TcxGridDBBandedColumn
        Caption = 'Settle Net Amount'
        DataBinding.FieldName = 'SETTLE_NETAMOUNT'
        Width = 120
        Position.BandIndex = 1
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterGAINLOSS_AVGPRICE: TcxGridDBBandedColumn
        Caption = 'Gain Loss Avg. Price'
        DataBinding.FieldName = 'GAINLOSS_AVGPRICE'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterCASHKEEP: TcxGridDBBandedColumn
        Caption = 'Cash Keep'
        DataBinding.FieldName = 'CASHKEEP'
        RepositoryItem = dmGlobal.chkStandard
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKKEEP: TcxGridDBBandedColumn
        Caption = 'Stock Keep'
        DataBinding.FieldName = 'STOCKKEEP'
        RepositoryItem = dmGlobal.chkStandard
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAFFIL: TcxGridDBBandedColumn
        Caption = 'Affiliation'
        DataBinding.FieldName = 'AFFIL'
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBROKERFEE_LEG2: TcxGridDBBandedColumn
        Caption = 'Broker Commission'
        DataBinding.FieldName = 'BROKERFEE_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterNETAMOUNT_LEG2: TcxGridDBBandedColumn
        Caption = 'Net Amount'
        DataBinding.FieldName = 'NETAMOUNT_LEG2'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_CCYCODE_LEG2: TcxGridDBBandedColumn
        Caption = 'Settle Ccy'
        DataBinding.FieldName = 'FOREIGN_CCYCODE_LEG2'
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterFOREIGN_NETAMT_LEG2: TcxGridDBBandedColumn
        Caption = 'Settle Net Amount'
        DataBinding.FieldName = 'FOREIGN_NETAMT_LEG2'
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCHG1_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG1_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCHG2_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG2_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCHG3_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG3_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterCHG4_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG4_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterCHG5_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG5_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterCHG6_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG6_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterCHG7_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG7_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterCHG8_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG8_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_VAL1_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_VAL2_LEG2'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterCHG9_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHG9_CHARGE_DIFF_LEG2'
        Visible = False
        VisibleForCustomization = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterOCCUPATION: TcxGridDBBandedColumn
        Caption = 'Occupation'
        DataBinding.FieldName = 'OCCUPATION'
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCITYNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CITYNAME'
        Width = 93
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterADDITIONAL_FEE: TcxGridDBBandedColumn
        Caption = 'Additional Fee'
        DataBinding.FieldName = 'ADDITIONAL_FEE'
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
    object gvwMasterChart: TcxGridDBChartView [1]
      DataController.DataSource = dsBrowseMaster
      DiagramPie.Active = True
      ToolBox.CustomizeButton = True
      object gvwMasterChartDataGroup3: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'MARKETCODE'
      end
      object gvwMasterChartDataGroup1: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'ACCCODE'
      end
      object gvwMasterChartDataGroup2: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'BS'
      end
      object gvwMasterChartDataGroup6: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'CCYCODE'
      end
      object gvwMasterChartDataGroup4: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'SALESCODE'
      end
      object gvwMasterChartDataGroup5: TcxGridDBChartDataGroup
        DataBinding.FieldName = 'STOCKCODE'
      end
      object gvwMasterChartSeries1: TcxGridDBChartSeries
        DataBinding.FieldName = 'BUY_VALUE'
        DisplayText = 'Buy Market Value'
      end
      object gvwMasterChartSeries2: TcxGridDBChartSeries
        DataBinding.FieldName = 'SELL_VALUE'
        DisplayText = 'Sell Market Value'
      end
      object gvwMasterChartSeries3: TcxGridDBChartSeries
        DataBinding.FieldName = 'NETAMOUNT'
        DisplayText = 'Net Amount'
      end
      object gvwMasterChartSeries4: TcxGridDBChartSeries
        DataBinding.FieldName = 'SETTLE_NETAMOUNT'
        DisplayText = 'Settle Net Amount'
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'Grid'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'Chart'
      GridView = gvwMasterChart
    end
  end
  object lcFilter: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 921
    Height = 47
    Align = alTop
    TabOrder = 5
    object cbMarket: TcxLookupComboBox
      Left = 48
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object dtStart: TcxDateEdit
      Left = 261
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object btnView: TcxButton
      Left = 482
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 3
    end
    object dtEnd: TcxDateEdit
      Left = 376
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object lcFilterGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcFilterItem1: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = 'Market'
      Control = cbMarket
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcFilterItem2: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = 'Transaction Date'
      Control = dtStart
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcFilterGroup1: TdxLayoutGroup
      Parent = lcFilterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcFilterItem3: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnView
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcFilterItem4: TdxLayoutItem
      Parent = lcFilterGroup1
      CaptionOptions.Text = '-'
      Control = dtEnd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010E002700780310001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsDailyMarketTransaction
  end
  inherited aclEditor: TActionList
    object actViewData: TNAction [17]
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsDailyMarketTransaction: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
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
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDailyMarketTransaction'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsDailyMarketTransactionCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsDailyMarketTransactionCONID: TLargeintField
      FieldName = 'CONID'
      Required = True
    end
    object cdsDailyMarketTransactionCONCODE: TStringField
      FieldName = 'CONCODE'
      Required = True
      Size = 25
    end
    object cdsDailyMarketTransactionCONDATE: TDateField
      FieldName = 'CONDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDailyMarketTransactionCASHSETTLEDATE: TDateField
      FieldName = 'CASHSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDailyMarketTransactionSTOCKSETTLEDATE: TDateField
      FieldName = 'STOCKSETTLEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsDailyMarketTransactionMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsDailyMarketTransactionCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDailyMarketTransactionNETAMT: TFloatField
      FieldName = 'NETAMT'
    end
    object cdsDailyMarketTransactionFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsDailyMarketTransactionFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      DisplayFormat = '#,##0.00'
    end
    object cdsDailyMarketTransactionFOREIGN_NETAMT: TFloatField
      FieldName = 'FOREIGN_NETAMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsDailyMarketTransactionACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMarketTransactionACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsDailyMarketTransactionACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMarketTransactionACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDailyMarketTransactionACCTYPE: TStringField
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 5
    end
    object cdsDailyMarketTransactionPRDCODE: TStringField
      FieldName = 'PRDCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsDailyMarketTransactionENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMarketTransactionENTNAME: TStringField
      FieldName = 'ENTNAME'
      ReadOnly = True
      Size = 200
    end
    object cdsDailyMarketTransactionENTACCTYPE: TStringField
      FieldName = 'ENTACCTYPE'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMarketTransactionSALESID: TLargeintField
      FieldName = 'SALESID'
    end
    object cdsDailyMarketTransactionSALESCODE: TStringField
      FieldName = 'SALESCODE'
      ReadOnly = True
    end
    object cdsDailyMarketTransactionSALESNAME: TStringField
      FieldName = 'SALESNAME'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMarketTransactionSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMarketTransactionSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMarketTransactionBOARDID: TLargeintField
      FieldName = 'BOARDID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMarketTransactionBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object cdsDailyMarketTransactionCPACCID: TIntegerField
      FieldName = 'CPACCID'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMarketTransactionCPACCCODE: TStringField
      FieldName = 'CPACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsDailyMarketTransactionCPACCNAME: TStringField
      FieldName = 'CPACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsDailyMarketTransactionCPACCINIT: TStringField
      FieldName = 'CPACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsDailyMarketTransactionBS: TStringField
      FieldName = 'BS'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMarketTransactionAPRICE: TFloatField
      FieldName = 'APRICE'
      ReadOnly = True
      DisplayFormat = '#,##0.##########'
    end
    object cdsDailyMarketTransactionEXPRICE: TFloatField
      FieldName = 'EXPRICE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsDailyMarketTransactionQTY: TFloatField
      FieldName = 'QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsDailyMarketTransactionVALUE: TFloatField
      FieldName = 'VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionBUY_QTY: TFloatField
      FieldName = 'BUY_QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsDailyMarketTransactionBUY_VALUE: TFloatField
      FieldName = 'BUY_VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionBUY_AVALUE: TFloatField
      FieldName = 'BUY_AVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionSELL_QTY: TFloatField
      FieldName = 'SELL_QTY'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0 ;(#,##0);0 '
    end
    object cdsDailyMarketTransactionSELL_VALUE: TFloatField
      FieldName = 'SELL_VALUE'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionSELL_AVALUE: TFloatField
      FieldName = 'SELL_AVALUE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionBROKERFEE: TFloatField
      FieldName = 'BROKERFEE'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_VAL1: TFloatField
      FieldName = 'CHG1_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_VAL2: TFloatField
      FieldName = 'CHG1_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_DIFF: TFloatField
      FieldName = 'CHG1_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_VAL1: TFloatField
      FieldName = 'CHG2_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_VAL2: TFloatField
      FieldName = 'CHG2_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_DIFF: TFloatField
      FieldName = 'CHG2_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_VAL1: TFloatField
      FieldName = 'CHG3_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_VAL2: TFloatField
      FieldName = 'CHG3_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_DIFF: TFloatField
      FieldName = 'CHG3_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_VAL1: TFloatField
      FieldName = 'CHG4_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_VAL2: TFloatField
      FieldName = 'CHG4_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_DIFF: TFloatField
      FieldName = 'CHG4_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_VAL1: TFloatField
      FieldName = 'CHG5_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_VAL2: TFloatField
      FieldName = 'CHG5_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_DIFF: TFloatField
      FieldName = 'CHG5_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_VAL1: TFloatField
      FieldName = 'CHG6_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_VAL2: TFloatField
      FieldName = 'CHG6_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_DIFF: TFloatField
      FieldName = 'CHG6_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_VAL1: TFloatField
      FieldName = 'CHG7_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_VAL2: TFloatField
      FieldName = 'CHG7_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_DIFF: TFloatField
      FieldName = 'CHG7_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_VAL1: TFloatField
      FieldName = 'CHG8_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_VAL2: TFloatField
      FieldName = 'CHG8_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_DIFF: TFloatField
      FieldName = 'CHG8_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_VAL1: TFloatField
      FieldName = 'CHG9_CHARGE_VAL1'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_VAL2: TFloatField
      FieldName = 'CHG9_CHARGE_VAL2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_DIFF: TFloatField
      FieldName = 'CHG9_CHARGE_DIFF'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionNETAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETAMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsDailyMarketTransactionSETTLE_NETAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SETTLE_NETAMOUNT'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsDailyMarketTransactionGAINLOSS_AVGPRICE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GAINLOSS_AVGPRICE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
      Calculated = True
    end
    object cdsDailyMarketTransactionCASHKEEP: TStringField
      FieldName = 'CASHKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMarketTransactionSTOCKKEEP: TStringField
      FieldName = 'STOCKKEEP'
      ReadOnly = True
      Size = 1
    end
    object cdsDailyMarketTransactionAFFIL: TBooleanField
      FieldName = 'AFFIL'
      ReadOnly = True
      Required = True
    end
    object cdsDailyMarketTransactionBROKERFEE_LEG2: TFloatField
      FieldName = 'BROKERFEE_LEG2'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionNETAMOUNT_LEG2: TFloatField
      FieldName = 'NETAMOUNT_LEG2'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionFOREIGN_CCYCODE_LEG2: TStringField
      FieldName = 'FOREIGN_CCYCODE_LEG2'
      ReadOnly = True
      Size = 5
    end
    object cdsDailyMarketTransactionFOREIGN_NETAMT_LEG2: TFloatField
      FieldName = 'FOREIGN_NETAMT_LEG2'
      ReadOnly = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG1_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG1_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG1_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG1_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG2_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG2_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG2_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG2_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG3_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG3_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG3_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG3_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG4_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG4_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG4_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG4_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG5_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG5_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG5_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG5_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG6_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG6_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG6_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG6_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG7_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG7_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG7_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG7_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG8_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG8_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG8_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG8_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_VAL1_LEG2: TFloatField
      FieldName = 'CHG9_CHARGE_VAL1_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_VAL2_LEG2: TFloatField
      FieldName = 'CHG9_CHARGE_VAL2_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCHG9_CHARGE_DIFF_LEG2: TFloatField
      FieldName = 'CHG9_CHARGE_DIFF_LEG2'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
    object cdsDailyMarketTransactionCITYNAME: TStringField
      DisplayLabel = 'City'
      FieldName = 'CITYNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsDailyMarketTransactionOCCUPATION: TStringField
      FieldName = 'OCCUPATION'
      ReadOnly = True
      Size = 50
    end
    object cdsDailyMarketTransactionADDITIONAL_FEE: TFloatField
      FieldName = 'ADDITIONAL_FEE'
      DisplayFormat = '#,##0.00 ;(#,##0.00);0.00 '
    end
  end
  object cdsChargeList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MARKETCODE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryChargeList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 520
    Top = 280
    object cdsChargeListCHARGE_ID: TLargeintField
      FieldName = 'CHARGE_ID'
      Required = True
    end
    object cdsChargeListCHARGE_CODE: TStringField
      FieldName = 'CHARGE_CODE'
      Required = True
    end
    object cdsChargeListMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsChargeListCHARGE_TYPE: TStringField
      FieldName = 'CHARGE_TYPE'
    end
    object cdsChargeListCHARGE_DESC: TStringField
      FieldName = 'CHARGE_DESC'
      Size = 50
    end
  end
end
