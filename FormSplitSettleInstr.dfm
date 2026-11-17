object frmSplitSettleInstr: TfrmSplitSettleInstr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Split Settlement Instruction'
  ClientHeight = 574
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 505
    Width = 771
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
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
      OnClick = btnOKClick
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 771
    Height = 505
    Align = alClient
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 67
      Top = 10
      DataBinding.DataField = 'SINO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 67
      Top = 37
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 67
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 150
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 232
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 521
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 122
      Top = 109
      DataBinding.DataField = 'SOURCE_ACCBANKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 245
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 122
      Top = 136
      DataBinding.DataField = 'SOURCE_ACCBANKNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 245
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 122
      Top = 163
      DataBinding.DataField = 'SOURCE_ACCBANKNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 245
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 497
      Top = 109
      DataBinding.DataField = 'TARGET_ACCBANKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 245
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 497
      Top = 136
      DataBinding.DataField = 'TARGET_ACCBANKNO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 245
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 497
      Top = 163
      DataBinding.DataField = 'TARGET_ACCBANKNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 245
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 252
      Top = 10
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 252
      Top = 37
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 120
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 428
      Top = 37
      DataBinding.DataField = 'DUEDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 120
    end
    object cxDBDateEdit4: TcxDBDateEdit
      Left = 613
      Top = 37
      DataBinding.DataField = 'SETTLEDDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 120
    end
    object grdSplitSettleInstr: TcxGrid
      Left = 10
      Top = 340
      Width = 135
      Height = 148
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 23
      object gvwSplitDetail: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsSetteInstrSplit
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'SETTLE_NETAMT'
            Column = gvwSplitDetailSETTLE_NETAMT
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'QTY'
            Column = gvwSplitDetailQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = frmSettleInstrList.BlueToggle
        Bands = <
          item
            Caption = 'Split Detail'
          end>
        object gvwSplitDetailSIID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SIID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwSplitDetailSINO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SINO'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwSplitDetailVALUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VALUEDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwSplitDetailSITYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SITYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwSplitDetailCASH_STOCK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CASH_STOCK'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLE_SIDE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLE_SIDE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwSplitDetailINSTRUCTION_TYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INSTRUCTION_TYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwSplitDetailNETTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NETTYPE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwSplitDetailACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwSplitDetailACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNO'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwSplitDetailACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNAME'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwSplitDetailTRANSFER_MODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRANSFER_MODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwSplitDetailBASE_CCYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BASE_CCYCODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwSplitDetailBASE_NETAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BASE_NETAMT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwSplitDetailBANK_CHARGES: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANK_CHARGES'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLE_CCYCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLE_CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLE_EXRATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLE_EXRATE'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLE_NETAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLE_NETAMT'
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLED_AMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLED_AMT'
          Visible = False
          VisibleForCustomization = False
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwSplitDetailSTOCKID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwSplitDetailSTOCKCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STOCKCODE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwSplitDetailQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QTY'
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwSplitDetailTRDDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TRDDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwSplitDetailDUEDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DUEDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwSplitDetailSETTLEDDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SETTLEDDATE'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwSplitDetailSTAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'STAT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object gvwSplitDetailOLD_SIID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OLD_SIID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object gvwSplitDetailMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object gvwSplitDetailMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object gvwSplitDetailAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object gvwSplitDetailAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object gvwSplitDetailUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object gvwSplitDetailUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object gvwSplitDetailNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object gvwSplitDetailISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object gvwSplitDetailID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object gvwSplitDetailVOUCHERAMT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOUCHERAMT'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object gvwSplitDetailVOUCHERQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOUCHERQTY'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object gvwSplitDetailSOURCE_ACCBANKID: TcxGridDBBandedColumn
          Caption = 'Source Bank Code'
          DataBinding.FieldName = 'SOURCE_ACCBANKID'
          RepositoryItem = dmGlobal.luBankByAccount
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object gvwSplitDetailSOURCE_ACCBANKCODE: TcxGridDBBandedColumn
          Caption = 'Source Bank Code'
          DataBinding.FieldName = 'SOURCE_ACCBANKCODE'
          RepositoryItem = dmGlobal.luBank
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object gvwSplitDetailSOURCE_ACCBANKNO: TcxGridDBBandedColumn
          Caption = 'Source Acc Bank No'
          DataBinding.FieldName = 'SOURCE_ACCBANKNO'
          Width = 101
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object gvwSplitDetailSOURCE_ACCBANKNAME: TcxGridDBBandedColumn
          Caption = 'Source Acc Bank Name'
          DataBinding.FieldName = 'SOURCE_ACCBANKNAME'
          Width = 115
          Position.BandIndex = 0
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object gvwSplitDetailTARGET_ACCBANKID: TcxGridDBBandedColumn
          Caption = 'Target Bank Code'
          DataBinding.FieldName = 'TARGET_ACCBANKID'
          RepositoryItem = dmGlobal.luBankAccount
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
        object gvwSplitDetailTARGET_ACCBANKCODE: TcxGridDBBandedColumn
          Caption = 'Target Bank Code'
          DataBinding.FieldName = 'TARGET_ACCBANKCODE'
          RepositoryItem = dmGlobal.luBank
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 43
          Position.RowIndex = 0
        end
        object gvwSplitDetailTARGET_ACCBANKNO: TcxGridDBBandedColumn
          Caption = 'Target Acc Bank No.'
          DataBinding.FieldName = 'TARGET_ACCBANKNO'
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 44
          Position.RowIndex = 0
        end
        object gvwSplitDetailTARGET_ACCBANKNAME: TcxGridDBBandedColumn
          Caption = 'Target Acc Bank Name'
          DataBinding.FieldName = 'TARGET_ACCBANKNAME'
          Width = 114
          Position.BandIndex = 0
          Position.ColIndex = 45
          Position.RowIndex = 0
        end
      end
      object grdSplitSettleInstrLevel1: TcxGridLevel
        GridView = gvwSplitDetail
      end
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 93
      Top = 220
      DataBinding.DataField = 'BASE_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 120
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 93
      Top = 247
      DataBinding.DataField = 'BASE_NETAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 120
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 93
      Top = 274
      DataBinding.DataField = 'BANK_CHARGES'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 120
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 336
      Top = 220
      DataBinding.DataField = 'SETTLE_CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 120
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 336
      Top = 247
      DataBinding.DataField = 'SETTLE_EXRATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 120
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 336
      Top = 274
      DataBinding.DataField = 'SETTLE_NETAMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 120
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 336
      Top = 301
      DataBinding.DataField = 'SETTLED_AMT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 120
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 426
      Top = 10
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 610
      Top = 10
      DataBinding.DataField = 'INSTRUCTION_TYPE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SI No'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Value Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account No.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account Name'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account No.'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Account Name'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Stock'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Trade Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Date'
      Parent = dxLayoutControl1Group1
      Control = cxDBDateEdit4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Source Bank'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Target Bank'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = grdSplitSettleInstr
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit11
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Net Amount'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit12
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Charges'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit13
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Currency'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit14
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Ex. Rate'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit15
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Net Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit16
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = 'Settle Amount'
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit17
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Base Value'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Settle Value'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.Text = 'Quantity'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit18
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'Instruction'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit19
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 554
    Width = 771
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmConSI.cdsSettlementInstruction
    Left = 448
    Top = 280
  end
  object dsSetteInstrSplit: TDataSource
    DataSet = frmConSI.cdsSettleInstrSplit
    Left = 656
    Top = 304
  end
end
