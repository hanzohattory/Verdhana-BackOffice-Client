object frmDataGroup: TfrmDataGroup
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Group'
  ClientHeight = 451
  ClientWidth = 594
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 402
    Width = 594
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 594
    Height = 70
    Align = alTop
    TabOrder = 1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 68
      Top = 10
      DataBinding.DataField = 'DATACODE'
      DataBinding.DataSource = dsData
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 68
      Top = 37
      DataBinding.DataField = 'DATADESC'
      DataBinding.DataSource = dsData
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 509
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
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 265
    Top = 70
    Width = 64
    Height = 332
    Align = alLeft
    BevelKind = bkTile
    TabOrder = 2
    object btnAdd: TcxButton
      Left = 10
      Top = 72
      Width = 39
      Height = 25
      Hint = 'Add'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnAddClick
    end
    object btnRemove: TcxButton
      Left = 10
      Top = 103
      Width = 15
      Height = 25
      Hint = 'Remove'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnRemoveClick
    end
    object btnRemoveAll: TcxButton
      Left = 10
      Top = 41
      Width = 39
      Height = 25
      Hint = 'Remove All'
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnRemoveAllClick
    end
    object btnAddAll: TcxButton
      Left = 10
      Top = 10
      Width = 39
      Height = 25
      Hint = 'Add All'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAddAllClick
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnAdd
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnRemove
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnRemoveAll
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnAddAll
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object grdSource: TcxGrid
    Left = 0
    Top = 70
    Width = 265
    Height = 332
    Align = alLeft
    TabOrder = 3
    object gvwSourceData: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAvailableAccount
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Available Data Account'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwSourceDataACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSourceDataACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSourceDataACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object grdSourceLevel1: TcxGridLevel
      GridView = gvwSourceData
    end
  end
  object grdTarget: TcxGrid
    Left = 329
    Top = 70
    Width = 265
    Height = 332
    Align = alClient
    TabOrder = 4
    object gvwTargetData: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDataAccount
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Selected Data Account'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwTargetDataDATAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DATAID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwTargetDataACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwTargetDataMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwTargetDataMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwTargetDataACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwTargetDataACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object grdTargetLevel1: TcxGridLevel
      GridView = gvwTargetData
    end
  end
  object cdsData: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryData'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 168
    object cdsDataDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataDATACODE: TStringField
      FieldName = 'DATACODE'
    end
    object cdsDataDATADESC: TStringField
      FieldName = 'DATADESC'
      Size = 100
    end
    object cdsDataqryDataAccount: TDataSetField
      FieldName = 'qryDataAccount'
    end
  end
  object cdsDataAccount: TNClientDataset
    Aggregates = <>
    DataSetField = cdsDataqryDataAccount
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 216
    object cdsDataAccountDATAID: TIntegerField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsDataAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsDataAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
  end
  object dsData: TDataSource
    DataSet = cdsData
    Left = 128
    Top = 168
  end
  object dsDataAccount: TDataSource
    DataSet = cdsDataAccount
    Left = 128
    Top = 216
  end
  object cdsAvailableAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryAvailableAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 264
    object cdsAvailableAccountACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAvailableAccountACCCODE: TStringField
      DisplayLabel = 'Account Code'
      DisplayWidth = 15
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAvailableAccountACCNAME: TStringField
      DisplayLabel = 'Account Name'
      DisplayWidth = 60
      FieldName = 'ACCNAME'
      Size = 150
    end
  end
  object dsAvailableAccount: TDataSource
    DataSet = cdsAvailableAccount
    Left = 160
    Top = 264
  end
end
