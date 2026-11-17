object frmTransLegView: TfrmTransLegView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Transaction Leg'
  ClientHeight = 418
  ClientWidth = 738
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 738
    Height = 369
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabCash
    Properties.CustomButtons.Buttons = <>
    ExplicitWidth = 586
    ExplicitHeight = 308
    ClientRectBottom = 365
    ClientRectLeft = 4
    ClientRectRight = 734
    ClientRectTop = 24
    object tabCash: TcxTabSheet
      Caption = 'Cash'
      ExplicitWidth = 578
      ExplicitHeight = 280
      object grdTransLegCash: TcxGrid
        Left = 0
        Top = 0
        Width = 730
        Height = 341
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 578
        ExplicitHeight = 280
        object gvwTransLegCash: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataSource = dsTradeLegCash
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXQTY'
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXVALUE'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = frmContracts.BlueToggle
          object gvwTransLegCashCONCODE: TcxGridDBColumn
            DataBinding.FieldName = 'CONCODE'
          end
          object gvwTransLegCashTRDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRDDATE'
          end
          object gvwTransLegCashBS: TcxGridDBColumn
            DataBinding.FieldName = 'BS'
          end
          object gvwTransLegCashLEG: TcxGridDBColumn
            DataBinding.FieldName = 'LEG'
          end
          object gvwTransLegCashACCID: TcxGridDBColumn
            DataBinding.FieldName = 'ACCID'
          end
          object gvwTransLegCashACCCODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACCCODE'
          end
          object gvwTransLegCashALTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'ALTYPE'
          end
          object gvwTransLegCashCSLACCCODE: TcxGridDBColumn
            DataBinding.FieldName = 'CSLACCCODE'
          end
          object gvwTransLegCashCDUE: TcxGridDBColumn
            DataBinding.FieldName = 'CDUE'
          end
          object gvwTransLegCashDC: TcxGridDBColumn
            DataBinding.FieldName = 'DC'
          end
          object gvwTransLegCashCCYCODE: TcxGridDBColumn
            DataBinding.FieldName = 'CCYCODE'
          end
          object gvwTransLegCashEXRATE: TcxGridDBColumn
            DataBinding.FieldName = 'EXRATE'
          end
          object gvwTransLegCashAMT: TcxGridDBColumn
            DataBinding.FieldName = 'AMT'
          end
          object gvwTransLegCashISCLOSE: TcxGridDBColumn
            DataBinding.FieldName = 'ISCLOSE'
          end
          object gvwTransLegCashRVSD: TcxGridDBColumn
            DataBinding.FieldName = 'RVSD'
          end
          object gvwTransLegCashRSVDTLID: TcxGridDBColumn
            DataBinding.FieldName = 'RSVDTLID'
          end
          object gvwTransLegCashRVSDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'RVSDDATE'
          end
          object gvwTransLegCashSTLKEY: TcxGridDBColumn
            DataBinding.FieldName = 'STLKEY'
          end
          object gvwTransLegCashSPLIT: TcxGridDBColumn
            DataBinding.FieldName = 'SPLIT'
          end
          object gvwTransLegCashSPLITLINK: TcxGridDBColumn
            DataBinding.FieldName = 'SPLITLINK'
          end
          object gvwTransLegCashC2SLINK: TcxGridDBColumn
            DataBinding.FieldName = 'C2SLINK'
          end
          object gvwTransLegCashCUSTBANK: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTBANK'
          end
          object gvwTransLegCashRDNCODE: TcxGridDBColumn
            DataBinding.FieldName = 'RDNCODE'
          end
          object gvwTransLegCashRDNACC: TcxGridDBColumn
            DataBinding.FieldName = 'RDNACC'
          end
          object gvwTransLegCashCBEST01: TcxGridDBColumn
            DataBinding.FieldName = 'CBEST01'
          end
          object gvwTransLegCashCBEST04: TcxGridDBColumn
            DataBinding.FieldName = 'CBEST04'
          end
          object gvwTransLegCashSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'STLD'
          end
          object gvwTransLegCashAMTSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'AMTSTLD'
          end
          object gvwTransLegCashTAMTSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'TAMTSTLD'
          end
          object gvwTransLegCashORIGINALAMT: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGINALAMT'
          end
        end
        object grdTransLegCashLevel1: TcxGridLevel
          GridView = gvwTransLegCash
        end
      end
    end
    object tabStock: TcxTabSheet
      Caption = 'Stock'
      ImageIndex = 1
      object grdTradeLegStock: TcxGrid
        Left = 0
        Top = 0
        Width = 730
        Height = 341
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object gvwTradeLegStock: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataSource = dsTradeLegStock
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXQTY'
            end
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'EXVALUE'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = frmContracts.BlueToggle
          object gvwTradeLegStockCONCODE: TcxGridDBColumn
            DataBinding.FieldName = 'CONCODE'
          end
          object gvwTradeLegStockTRDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRDDATE'
          end
          object gvwTradeLegStockBS: TcxGridDBColumn
            DataBinding.FieldName = 'BS'
          end
          object gvwTradeLegStockLEG: TcxGridDBColumn
            DataBinding.FieldName = 'LEG'
          end
          object gvwTradeLegStockACCID: TcxGridDBColumn
            DataBinding.FieldName = 'ACCID'
          end
          object gvwTradeLegStockACCCODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACCCODE'
          end
          object gvwTradeLegStockALTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'ALTYPE'
          end
          object gvwTradeLegStockSSLACCCODE: TcxGridDBColumn
            DataBinding.FieldName = 'SSLACCCODE'
          end
          object gvwTradeLegStockSDUE: TcxGridDBColumn
            DataBinding.FieldName = 'SDUE'
          end
          object gvwTradeLegStockDR: TcxGridDBColumn
            DataBinding.FieldName = 'DR'
          end
          object gvwTradeLegStockBOARD: TcxGridDBColumn
            DataBinding.FieldName = 'BOARD'
          end
          object gvwTradeLegStockSTOCKID: TcxGridDBColumn
            DataBinding.FieldName = 'STOCKID'
          end
          object gvwTradeLegStockSTOCKCODE: TcxGridDBColumn
            DataBinding.FieldName = 'STOCKCODE'
          end
          object gvwTradeLegStockQTY: TcxGridDBColumn
            DataBinding.FieldName = 'QTY'
          end
          object gvwTradeLegStockAVGPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'AVGPRICE'
          end
          object gvwTradeLegStockISCLOSE: TcxGridDBColumn
            DataBinding.FieldName = 'ISCLOSE'
          end
          object gvwTradeLegStockRVSD: TcxGridDBColumn
            DataBinding.FieldName = 'RVSD'
          end
          object gvwTradeLegStockRSVDTLID: TcxGridDBColumn
            DataBinding.FieldName = 'RSVDTLID'
          end
          object gvwTradeLegStockRVSDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'RVSDDATE'
          end
          object gvwTradeLegStockSTLKEY: TcxGridDBColumn
            DataBinding.FieldName = 'STLKEY'
          end
          object gvwTradeLegStockSPLIT: TcxGridDBColumn
            DataBinding.FieldName = 'SPLIT'
          end
          object gvwTradeLegStockSPLITLINK: TcxGridDBColumn
            DataBinding.FieldName = 'SPLITLINK'
          end
          object gvwTradeLegStockS2CLINK: TcxGridDBColumn
            DataBinding.FieldName = 'S2CLINK'
          end
          object gvwTradeLegStockCUSTBANK: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTBANK'
          end
          object gvwTradeLegStockCBEST01: TcxGridDBColumn
            DataBinding.FieldName = 'CBEST01'
          end
          object gvwTradeLegStockCBEST04: TcxGridDBColumn
            DataBinding.FieldName = 'CBEST04'
          end
          object gvwTradeLegStockSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'STLD'
          end
          object gvwTradeLegStockAMTSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'AMTSTLD'
          end
          object gvwTradeLegStockTAMTSTLD: TcxGridDBColumn
            DataBinding.FieldName = 'TAMTSTLD'
          end
          object gvwTradeLegStockORIGINALAMT: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGINALAMT'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwTradeLegStock
        end
      end
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 369
    Width = 738
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 308
    ExplicitWidth = 586
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsTradeLegCash: TDataSource
    DataSet = frmContracts.cdsTransLegCash
    Left = 232
    Top = 280
  end
  object dsTradeLegStock: TDataSource
    DataSet = frmContracts.cdsTransLegStock
    Left = 328
    Top = 280
  end
end
