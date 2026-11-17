inherited frmContractRepo: TfrmContractRepo
  Caption = 'Contract REPO'
  ClientHeight = 621
  ClientWidth = 794
  ExplicitWidth = 800
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 794
    Height = 531
    ExplicitWidth = 794
    ExplicitHeight = 531
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 150
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'RACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 120
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 94
      Top = 64
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 220
      Top = 37
      DataBinding.DataField = 'RACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 400
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 220
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 400
    end
    object cxDBDateEdit1: TcxDBDateEdit [5]
      Left = 94
      Top = 91
      DataBinding.DataField = 'SETTDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [6]
      Left = 300
      Top = 91
      DataBinding.DataField = 'SETTDAY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [7]
      Left = 498
      Top = 91
      DataBinding.DataField = 'MATURDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [8]
      Left = 71
      Top = 163
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 80
    end
    object grdBrowse: TcxGrid [9]
      Left = 10
      Top = 340
      Width = 774
      Height = 181
      TabOrder = 23
      RootLevelOptions.DetailTabsPosition = dtpTop
      object gvwBrowse: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsDetail
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skSum
            OnGetText = gvwBrowseTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            FieldName = 'COLLATERAL'
            Column = gvwBrowseCOLLATERAL
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterBox = dmGlobal.GridFilterBox
        Bands = <
          item
            Caption = 'List Of Collateral'
          end>
        object gvwBrowseCONRID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONRID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwBrowseSEQNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwBrowseSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwBrowseSTOCKCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwBrowseSTOCKNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKNAME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwBrowseSHARES: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SHARES'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwBrowseTODAY_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TODAY_VAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwBrowseINSERT_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INSERT_DATE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwBrowseMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwBrowseMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwBrowseAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwBrowseAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwBrowseUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwBrowseUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwBrowseNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwBrowseISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwBrowseID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwBrowseQTY: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'QTY'
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwBrowseCLS_PRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CLS_PRICE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwBrowseCOLL_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COLL_AMT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwBrowseACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwBrowseACCCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCCODE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwBrowseMARKETCODE: TcxGridDBBandedColumn
          Caption = 'Market'
          DataBinding.FieldName = 'MARKETCODE'
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwBrowseLOCALCODE: TcxGridDBBandedColumn
          Caption = 'Stock Code'
          DataBinding.FieldName = 'LOCALCODE'
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwBrowseHCUT_REPO: TcxGridDBBandedColumn
          Caption = 'Valuation (%)'
          DataBinding.FieldName = 'HCUT_REPO'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwBrowseLASTCLSPRICE: TcxGridDBBandedColumn
          Caption = 'Closing Price'
          DataBinding.FieldName = 'LASTCLSPRICE'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwBrowseCOLLATERAL: TcxGridDBBandedColumn
          Caption = 'Collateral'
          DataBinding.FieldName = 'COLLATERAL'
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
      end
      object gvwInterest: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsContractInterest
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'INTEREST_AMT'
            Column = gvwInterestINTEREST_AMT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterBox = dmGlobal.GridFilterBox
        Bands = <
          item
            Caption = 'List of Interest'
          end>
        object gvwInterestCONRID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONRID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwInterestSEQID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwInterestINTEREST_DATE: TcxGridDBBandedColumn
          Caption = 'Date'
          DataBinding.FieldName = 'INTEREST_DATE'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwInterestREPO_AMOUNT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REPO_AMOUNT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwInterestRATE: TcxGridDBBandedColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'RATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwInterestINTEREST_AMT: TcxGridDBBandedColumn
          Caption = 'Interest Amount'
          DataBinding.FieldName = 'INTEREST_AMT'
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwInterestACCRUED: TcxGridDBBandedColumn
          Caption = 'Accrued'
          DataBinding.FieldName = 'ACCRUED'
          RepositoryItem = dmGlobal.chkStandard
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwInterestACCRUED_DATE: TcxGridDBBandedColumn
          Caption = 'Accrued Date'
          DataBinding.FieldName = 'ACCRUED_DATE'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwInterestINTRS_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INTRS_ID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwInterestPAID: TcxGridDBBandedColumn
          Caption = 'Paid'
          DataBinding.FieldName = 'PAID'
          RepositoryItem = dmGlobal.chkStandard
          Width = 26
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwInterestPAID_DATE: TcxGridDBBandedColumn
          Caption = 'Paid Date'
          DataBinding.FieldName = 'PAID_DATE'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwInterestSIID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SIID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
      end
      object grdBrowseLevel1: TcxGridLevel
        Caption = 'Collateral'
        GridView = gvwBrowse
      end
      object grdBrowseLevel2: TcxGridLevel
        Caption = 'Interest'
        GridView = gvwInterest
      end
    end
    object cxDBTextEdit8: TcxDBTextEdit [10]
      Left = 238
      Top = 163
      DataBinding.DataField = 'ORG_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit [11]
      Left = 118
      Top = 235
      DataBinding.DataField = 'REPO_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit [12]
      Left = 118
      Top = 262
      DataBinding.DataField = 'INTEREST_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit11: TcxDBTextEdit [13]
      Left = 118
      Top = 289
      DataBinding.DataField = 'DUE_AMT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 121
    end
    object cxDBDateEdit3: TcxDBDateEdit [14]
      Left = 308
      Top = 10
      DataBinding.DataField = 'TRXDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit [15]
      Left = 71
      Top = 190
      DataBinding.DataField = 'INTERESTCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 80
    end
    object cxDBTextEdit13: TcxDBTextEdit [16]
      Left = 157
      Top = 190
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit14: TcxDBTextEdit [17]
      Left = 353
      Top = 235
      DataBinding.DataField = 'APR_COLL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 80
    end
    object cxdbtext: TcxDBTextEdit [18]
      Left = 353
      Top = 262
      DataBinding.DataField = 'COLL_CALL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 80
    end
    object cxDBTextEdit15: TcxDBTextEdit [19]
      Left = 353
      Top = 289
      DataBinding.DataField = 'FORCESELL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 80
    end
    object lblCollateral: TcxLabel [20]
      Left = 451
      Top = 235
      AutoSize = False
      Caption = 'lblCollateral'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clBtnShadow
      Properties.Alignment.Horz = taRightJustify
      Height = 29
      Width = 222
      AnchorX = 673
    end
    object lblRatio: TcxLabel [21]
      Left = 451
      Top = 288
      AutoSize = False
      Caption = 'lblRatio'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 29
      Width = 222
      AnchorX = 673
    end
    object cxDBCheckBox1: TcxDBCheckBox [22]
      Left = 10
      Top = 118
      Caption = 'True Discount'
      DataBinding.DataField = 'DISCOUNT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment = taLeftJustify
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
    end
    object cxDBCheckBox2: TcxDBCheckBox [23]
      Left = 106
      Top = 118
      Caption = 'Repo Client has Corpact Right'
      DataBinding.DataField = 'CORPACT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment = taLeftJustify
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Contract No.'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Repo Account'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Regular Account'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Settlement Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Settlement Day'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Maturity Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Currency'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = grdBrowse
      ControlOptions.OriginalHeight = 181
      ControlOptions.OriginalWidth = 774
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Original Amount'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Repo Amount'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Interest Amount'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Due Amount'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Trans Date'
      Control = cxDBDateEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      CaptionOptions.Text = 'Interest'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutControl1Group11
      Control = cxDBTextEdit13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Initial %'
      Control = cxDBTextEdit14
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Collateral Call %'
      Control = cxdbtext
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Force Sell %'
      Control = cxDBTextEdit15
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Collateral :'
      CaptionOptions.Layout = clTop
      Control = lblCollateral
      ControlOptions.AlignHorz = ahRight
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 222
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Ratio :'
      CaptionOptions.Layout = clTop
      Control = lblRatio
      ControlOptions.AlignHorz = ahRight
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 222
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item25: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 552
    Width = 794
    ExplicitTop = 552
    ExplicitWidth = 794
    inherited dbNavLog: TDBNavigator
      Left = 680
      Hints.Strings = ()
      ExplicitLeft = 680
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 601
    Width = 794
    ExplicitTop = 601
    ExplicitWidth = 794
  end
  inherited tabEditorData: TTabSet
    Top = 531
    Width = 794
    ExplicitTop = 531
    ExplicitWidth = 794
  end
  inherited dsSubject: TDataSource
    DataSet = cdsContractRepo
    Left = 224
    Top = 360
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsContractRepo: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CONRID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmREPO_qryCONTRACT_REPO'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 360
    object cdsContractRepoCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsContractRepoCONTRACT_NO: TStringField
      FieldName = 'CONTRACT_NO'
      Size = 30
    end
    object cdsContractRepoENTTID: TIntegerField
      FieldName = 'ENTTID'
    end
    object cdsContractRepoENTTCODE: TStringField
      FieldName = 'ENTTCODE'
      Size = 30
    end
    object cdsContractRepoENTTNAME: TStringField
      FieldName = 'ENTTNAME'
      Size = 150
    end
    object cdsContractRepoTRXDATE: TDateTimeField
      FieldName = 'TRXDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractRepoTRXTYPE: TStringField
      FieldName = 'TRXTYPE'
      Size = 5
    end
    object cdsContractRepoACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsContractRepoACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsContractRepoACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsContractRepoRACCID: TIntegerField
      FieldName = 'RACCID'
    end
    object cdsContractRepoRACCCODE: TStringField
      FieldName = 'RACCCODE'
      Size = 30
    end
    object cdsContractRepoRACCNAME: TStringField
      FieldName = 'RACCNAME'
      Size = 150
    end
    object cdsContractRepoSETTDATE: TDateTimeField
      FieldName = 'SETTDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractRepoSETTDAY: TIntegerField
      FieldName = 'SETTDAY'
    end
    object cdsContractRepoMATURDATE: TDateTimeField
      FieldName = 'MATURDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractRepoCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsContractRepoLOAN_AMT: TFloatField
      FieldName = 'LOAN_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoDUE_AMT: TFloatField
      FieldName = 'DUE_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoDISCOUNT: TSmallintField
      FieldName = 'DISCOUNT'
    end
    object cdsContractRepoINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Size = 10
    end
    object cdsContractRepoINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsContractRepoINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
      DisplayFormat = '#,##0 %'
    end
    object cdsContractRepoINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsContractRepoINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsContractRepoCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsContractRepoCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsContractRepoAPR_COLL: TFloatField
      FieldName = 'APR_COLL'
      Required = True
      DisplayFormat = '#,##0 %'
    end
    object cdsContractRepoFORCESELL: TFloatField
      FieldName = 'FORCESELL'
      DisplayFormat = '#,##0 %'
    end
    object cdsContractRepoCOLL_CALL: TFloatField
      FieldName = 'COLL_CALL'
      DisplayFormat = '#,##0 %'
    end
    object cdsContractRepoINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoORG_AMT: TFloatField
      FieldName = 'ORG_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoREPO_AMT: TFloatField
      FieldName = 'REPO_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
      DisplayFormat = '#,##0.00'
    end
    object cdsContractRepoCORPACT: TSmallintField
      FieldName = 'CORPACT'
    end
    object cdsContractRepoISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
      Required = True
    end
    object cdsContractRepoISMONTHBASIS: TSmallintField
      FieldName = 'ISMONTHBASIS'
    end
    object cdsContractRepoMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractRepoMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractRepoAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractRepoAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractRepoUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractRepoUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractRepoNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractRepoISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractRepoID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractRepoCON_DATE: TDateTimeField
      FieldName = 'CON_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractRepoTOPUP: TFloatField
      FieldName = 'TOPUP'
    end
    object cdsContractRepoDUE_DATE: TDateTimeField
      FieldName = 'DUE_DATE'
    end
    object cdsContractRepoREPO_STATUS: TStringField
      FieldName = 'REPO_STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsContractRepoqryCONTRACT_REPO_D: TDataSetField
      FieldName = 'qryCONTRACT_REPO_D'
    end
    object cdsContractRepoqryContractInterest: TDataSetField
      FieldName = 'qryContractInterest'
    end
  end
  object cdsContractRepoD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsContractRepoqryCONTRACT_REPO_D
    Params = <>
    OnCalcFields = cdsContractRepoDCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 408
    object cdsContractRepoDCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsContractRepoDSEQNO: TIntegerField
      FieldName = 'SEQNO'
      Required = True
    end
    object cdsContractRepoDSTOCKID: TIntegerField
      FieldName = 'STOCKID'
    end
    object cdsContractRepoDSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsContractRepoDSTOCKNAME: TStringField
      FieldName = 'STOCKNAME'
      Size = 100
    end
    object cdsContractRepoDSHARES: TFloatField
      FieldName = 'SHARES'
    end
    object cdsContractRepoDTODAY_VAL: TFloatField
      FieldName = 'TODAY_VAL'
    end
    object cdsContractRepoDINSERT_DATE: TDateField
      FieldName = 'INSERT_DATE'
    end
    object cdsContractRepoDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsContractRepoDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsContractRepoDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsContractRepoDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsContractRepoDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsContractRepoDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsContractRepoDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsContractRepoDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsContractRepoDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsContractRepoDQTY: TLargeintField
      FieldName = 'QTY'
      DisplayFormat = '#,##0'
    end
    object cdsContractRepoDCLS_PRICE: TFloatField
      FieldName = 'CLS_PRICE'
      DisplayFormat = '#,##0'
    end
    object cdsContractRepoDCOLL_AMT: TFloatField
      FieldName = 'COLL_AMT'
    end
    object cdsContractRepoDACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsContractRepoDACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsContractRepoDMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Size = 10
    end
    object cdsContractRepoDLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
    end
    object cdsContractRepoDHCUT_REPO: TFloatField
      FieldName = 'HCUT_REPO'
      DisplayFormat = '#,##0 %'
    end
    object cdsContractRepoDLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
      DisplayFormat = '#,##0'
    end
    object cdsContractRepoDCOLLATERAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COLLATERAL'
      DisplayFormat = '#,##0'
      Calculated = True
    end
  end
  object dsDetail: TDataSource
    DataSet = cdsContractRepoD
    Left = 224
    Top = 408
  end
  object cdsContractInterest: TNClientDataset
    Aggregates = <>
    DataSetField = cdsContractRepoqryContractInterest
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 328
    Top = 456
    object cdsContractInterestCONRID: TLargeintField
      FieldName = 'CONRID'
      Required = True
    end
    object cdsContractInterestSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsContractInterestINTEREST_DATE: TDateField
      FieldName = 'INTEREST_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractInterestREPO_AMOUNT: TFloatField
      FieldName = 'REPO_AMOUNT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsContractInterestRATE: TFloatField
      FieldName = 'RATE'
      Required = True
    end
    object cdsContractInterestINTEREST_AMT: TFloatField
      FieldName = 'INTEREST_AMT'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsContractInterestACCRUED: TStringField
      FieldName = 'ACCRUED'
      Required = True
      Size = 1
    end
    object cdsContractInterestACCRUED_DATE: TDateField
      FieldName = 'ACCRUED_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractInterestINTRS_ID: TLargeintField
      FieldName = 'INTRS_ID'
    end
    object cdsContractInterestPAID: TStringField
      FieldName = 'PAID'
      Size = 1
    end
    object cdsContractInterestPAID_DATE: TDateField
      FieldName = 'PAID_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsContractInterestSIID: TLargeintField
      FieldName = 'SIID'
    end
  end
  object dsContractInterest: TDataSource
    DataSet = cdsContractInterest
    Left = 224
    Top = 456
  end
end
