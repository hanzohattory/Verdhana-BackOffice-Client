object frmFixedAssetDepreciation: TfrmFixedAssetDepreciation
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Fixed Asset Depreciation'
  ClientHeight = 397
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 328
    Width = 574
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitLeft = -74
    ExplicitTop = 160
    ExplicitWidth = 529
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
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 377
    Width = 574
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
    ExplicitLeft = -74
    ExplicitTop = 189
    ExplicitWidth = 529
  end
  object grdMaster: TcxGrid
    Left = 0
    Top = 0
    Width = 574
    Height = 328
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -46
    ExplicitTop = 26
    ExplicitWidth = 622
    ExplicitHeight = 324
    object gvwMaster: TcxGridDBBandedTableView
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
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwMasterBYMONTH: TcxGridDBBandedColumn
        Caption = 'By Month'
        DataBinding.FieldName = 'BYMONTH'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCALC_DATE: TcxGridDBBandedColumn
        Caption = 'Calculation Date'
        DataBinding.FieldName = 'CALC_DATE'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterASSET_GLACC: TcxGridDBBandedColumn
        Caption = 'Asset GL A/C'
        DataBinding.FieldName = 'ASSET_GLACC'
        RepositoryItem = dmGlobal.luGLAccountNo
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCUM_DEPREC_GLACC: TcxGridDBBandedColumn
        Caption = 'Accum Depreciation GL A/C'
        DataBinding.FieldName = 'ACCUM_DEPREC_GLACC'
        RepositoryItem = dmGlobal.luGLAccountNo
        Width = 136
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterDEPREC_GLACC: TcxGridDBBandedColumn
        Caption = 'Depreciation GL A/C'
        DataBinding.FieldName = 'DEPREC_GLACC'
        RepositoryItem = dmGlobal.luGLAccountNo
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterBUY_PRICE: TcxGridDBBandedColumn
        Caption = 'Buying Price'
        DataBinding.FieldName = 'BUY_PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterSALVAGE: TcxGridDBBandedColumn
        Caption = 'Salvage'
        DataBinding.FieldName = 'SALVAGE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterECONOMIC_LIFE: TcxGridDBBandedColumn
        Caption = 'Economic Life'
        DataBinding.FieldName = 'ECONOMIC_LIFE'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMONTHLY_DEPREC: TcxGridDBBandedColumn
        Caption = 'Monthly Depreciation'
        DataBinding.FieldName = 'MONTHLY_DEPREC'
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterACCUM_DEPREC_YTD: TcxGridDBBandedColumn
        Caption = 'Accum Depreciation YTD'
        DataBinding.FieldName = 'ACCUM_DEPREC_YTD'
        Width = 122
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterACCUM_DEPREC: TcxGridDBBandedColumn
        Caption = 'Accum Depreciation'
        DataBinding.FieldName = 'ACCUM_DEPREC'
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterBOOK_VALUE: TcxGridDBBandedColumn
        Caption = 'Book Value'
        DataBinding.FieldName = 'BOOK_VALUE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  object dsSubject: TDataSource
    DataSet = frmFixedAssetList.cdsAssetHist
    Left = 24
    Top = 16
  end
end
