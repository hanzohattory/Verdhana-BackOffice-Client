object frmLuChargeTable: TfrmLuChargeTable
  Left = 0
  Top = 0
  Caption = 'Charge Table'
  ClientHeight = 462
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 434
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 447
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 48
      Top = 10
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsChargeTableH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 203
      Top = 10
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsChargeTableH
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 100
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 413
    Width = 434
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 401
    ExplicitWidth = 441
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
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdChargeTableD: TcxGrid
    Left = 0
    Top = 278
    Width = 434
    Height = 135
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 266
    ExplicitWidth = 441
    object gvwChargeTableD: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsChargeTableD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      object gvwChargeTableDSTART_VALUE: TcxGridDBColumn
        Caption = 'Start Value'
        DataBinding.FieldName = 'START_VALUE'
        Width = 100
      end
      object gvwChargeTableDEND_VALUE: TcxGridDBColumn
        Caption = 'End Value'
        DataBinding.FieldName = 'END_VALUE'
        Width = 100
      end
      object gvwChargeTableDBASIS: TcxGridDBColumn
        Caption = 'Basis'
        DataBinding.FieldName = 'BASIS'
        RepositoryItem = dmGlobal.luChargeTableBasis
        Width = 40
      end
      object gvwChargeTableDRATE: TcxGridDBColumn
        Caption = 'Rate'
        DataBinding.FieldName = 'RATE'
        Width = 80
      end
      object gvwChargeTableDAMOUNT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        Width = 80
      end
    end
    object grdChargeTableDLevel1: TcxGridLevel
      GridView = gvwChargeTableD
    end
  end
  object grdChargeTableH: TcxGrid
    Left = 0
    Top = 41
    Width = 434
    Height = 229
    Align = alClient
    TabOrder = 3
    ExplicitTop = 43
    ExplicitWidth = 447
    ExplicitHeight = 301
    object gvwChargeTableH: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsChargeTableH
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      object gvwChargeTableHCHARGE_TABLE_CODE: TcxGridDBColumn
        Caption = 'Code'
        DataBinding.FieldName = 'CHARGE_TABLE_CODE'
      end
      object gvwChargeTableHDESCRIPTION: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
      end
    end
    object grdChargeTableHLevel1: TcxGridLevel
      GridView = gvwChargeTableH
    end
  end
  object spMain: TcxSplitter
    Left = 0
    Top = 270
    Width = 434
    Height = 8
    HotZoneClassName = 'TcxSimpleStyle'
    AlignSplitter = salBottom
    Control = grdChargeTableD
    ExplicitTop = 258
    ExplicitWidth = 8
  end
  object dsChargeTableH: TDataSource
    DataSet = dmLookup.cdsLuChargeTableH
    Left = 336
    Top = 72
  end
  object dsChargeTableD: TDataSource
    DataSet = dmLookup.cdsLuChargeTableD
    Left = 336
    Top = 120
  end
end
