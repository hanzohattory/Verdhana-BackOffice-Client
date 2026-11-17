inherited frmReportGridList: TfrmReportGridList
  Caption = 'Grid Report'
  ClientHeight = 425
  ClientWidth = 719
  ExplicitWidth = 719
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  object grdMaster: TcxGrid [0]
    Left = 0
    Top = 26
    Width = 719
    Height = 399
    Align = alClient
    PopupMenu = popReport
    TabOrder = 4
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReportCategory
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwMasterCATEGORY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CATEGORY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCATEGORY_CODE: TcxGridDBBandedColumn
        Caption = 'Category Code'
        DataBinding.FieldName = 'CATEGORY_CODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterPARENT_CATEGORY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARENT_CATEGORY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object gvwDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsReportGrid
      DataController.DetailKeyFieldNames = 'CATEGORY_ID'
      DataController.KeyFieldNames = 'REPORT_ID'
      DataController.MasterKeyFieldNames = 'CATEGORY_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwDetailREPORT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPORT_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailREPORT_CODE: TcxGridDBBandedColumn
        Caption = 'Report Code'
        DataBinding.FieldName = 'REPORT_CODE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailCATEGORY_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CATEGORY_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailREPORT_CONFIG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REPORT_CONFIG'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailFILTER_CONFIG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FILTER_CONFIG'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDetailMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDetailMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDetailAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDetailAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDetailUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDetailUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDetailNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDetailISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDetailID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwMaster
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwDetail
      end
    end
  end
  inherited popDocking: TPopupMenu
    Left = 392
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclReportList
  end
  object saBrowse: TcxStyleRepository
    Left = 392
    Top = 112
    PixelsPerInch = 96
    object BlueToggle: TcxStyle
      AssignedValues = [svColor]
      Color = 16777190
    end
  end
  object imlBrowse: TImageList
    Left = 488
    Top = 64
    Bitmap = {
      494C010103002700AC0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000387D99FF347A
      98FF317896FF2E7694FF2C7492FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E809CFF6BBFDEFF68BF
      DCFF67BFDBFF6BC1DDFF2D7593FF286681FF286882FF2E7694FF2D7694FF2D76
      93FF2C7593FF2C7593FF0000000000000000000000000F2A36FFA8FFFFFF2475
      ABFF2475ABFF9CFFFFFF9CFFFFFF9CFFFFFF9CFEFEFF9CE6E9FF9CBFC7FF9CE6
      E9FF9CFFFFFF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      0000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040819DFF7DCEE5FF79CC
      E4FF78CAE3FF73C7E1FF2E7694FF3C8199FF4B98B1FF67C0DFFF67C0DFFF67C0
      DFFF66BEDEFF62B5D8FF357B98FF00000000000000000F2A36FFB1FFFFFFABFF
      FFFFA5FFFFFFA1FFFFFF9DFFFFFF9CFEFEFF9CEFF1FF9CA9B4FF9C9DA9FF9CC5
      CCFF9CF3F4FF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFFFFFFFFFFFFFFFFFFFFFFFFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041829EFF81D1E6FF7DCE
      E6FF7BCDE4FF77C9E2FF2F7694FF41829AFF4B97B0FF6FBFDFFF72BFDFFF67C0
      DFFFED9F6AFF63B6D8FF357B98FF00000000000000000F2A36FFBBFFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF9CDDE1FF9CA0ACFF9CCED4FF9C9E
      AAFF9CADB7FF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFFFFFFFFFFFFFFFFFFFFFFFFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042839EFF85D3E8FF80CE
      E7FF7DCEE6FF79CAE3FF307795FF43839AFF4F99B1FF6FBFDFFF73BFDFFF67C0
      DFFFED9F6AFF63B6D8FF357B98FF00000000000000000F2A36FFC5FFFFFFBEFF
      FFFFB7FFFFFFB0FFFFFFA9FFFFFFA4FFFFFFA0F5F6FF9CC7CEFF9C99A6FF9CC1
      C9FF9BF3F5FF9CFDFDFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000044849FFF8BD9EBFF87D7
      EAFF84D4E8FF7DCDE6FF317896FF46849BFF539BB2FF71C0DFFF74BFDFFF68C0
      DFFFFFFFFFFF64B6D9FF357B98FF00000000000000000F2A36FFD0FFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF9CF2
      F4FF9CFAFBFF9CFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004585A0FF91E0F3FF8BDB
      EEFF86D4EAFF81D1E8FF337996FF49859CFF599DB3FF72C1E0FF74C1E1FF71C0
      DFFFFFFFFFFF65B7D9FF357B98FF00000000000000000F2A36FFDAFFFFFFD3FF
      FFFFCBFFFFFFC4FFFFFFBCFFFFFFB6FFFFFFAFFFFFFFA8FFFFFFA3FFFFFF9FFF
      FFFF9CFFFFFF9CFFFFFF0F2A36FF0000000000000000000000000000000084AC
      4AFF84AC4AFFFCFAF808FFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004686A0FF98E5F3FF94E8
      F9FF8DDEF2FF8AD7EAFF347997FF4C879DFF5EA0B5FF76C5E5FF76C6E6FF6FC4
      E1FF65B6D8FF65B7D9FF357B98FF00000000000000000F2A36FFE4FFFFFFDDFF
      FFFFD6FFFFFFCFFFFFFFC7FFFFFFBFFFFFFFB8FFFFFFB1FFFFFFABFFFFFFA5FF
      FFFFA0FFFFFF9DFFFFFF0F2A36FF000000000000000000000000000000000000
      000085AD4BFF85AD4BFFFCFAF808B3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004786A0FF98E7FAFF98EC
      FCFF93E5F8FF8EDCF0FF347A98FF5492A9FF68ABC3FF80CEEBFF83CEEBFF87CF
      EBFF7CC7E7FF337996FF0000000000000000000000000F2A36FFEBFFFFFF2475
      ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475ABFF2475
      ABFF2475ABFFA3FFFFFF0F2A36FF0000000084AC4AFF84AC4AFF84AC4AFF85AD
      4BFF85AD4BFF85AD4BFF83AA4AFFFFFFFF5DB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004887A1FF99EDFDFF93E6
      FBFF92E6FBFF93E4F6FF367B98FF5492A9FF68ABC3FF80CEEBFF83CEEBFF88D4
      F0FF357B98FF000000000000000000000000000000000F2A36FFF3FFFFFFEDFF
      FFFFE8FFFFFFE2FFFFFFDCFFFFFFD4FFFFFFCDFFFFFFC6FFFFFFBFFFFFFFB7FF
      FFFFB0FFFFFFA9FFFFFF0F2A36FF000000000000000000000000000000000000
      000085AD4BFF85AD4BFFFFFFFF0AFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004987A2FF9CF2FEFF9DF1
      FDFF97EDFEFF95E6FBFF387C99FF5792AAFF6EAEC3FF85D6F5FF88D7F2FF88D8
      F4FF3B7D99FF000000000000000000000000000000000F2A36FFF5FFFFFFF4FF
      FFFFF0FFFFFFEAFFFFFFE5FFFFFFDEFFFFFFD7FFFFFFD0FFFFFFC8FFFFFFC1FF
      FFFFBAFFFFFFB3FFFFFF0F2A36FF0000000000000000000000000000000085AD
      4BFF85AD4BFFFCFAF809B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF9DF3FDFF9AF2
      FEFF99F1FEFF9DF1FCFF397D9AFF5893AAFF72B0C3FF92E2FAFF93E0F8FF8EE0
      F9FF357B98FF000000000000000000000000000000000F2A36FFF5FFFFFF1A8C
      FFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8CFFFF1A8C
      FFFF1A8CFFFFBDFFFFFF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF9AF3FEFF9BF2
      FEFF9DF2FDFF9EF2FCFF3B7E9BFF5994AAFF78B5C6FF96E3FBFF98E3FAFF92E2
      FAFF377C99FF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFFF3FFFFFFEFFFFFFFE9FFFFFFE4FFFFFF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF99F3FEFFA0F3
      FDFFA3EFF9FF4E8DA2FF3C7F9BFF629DB2FF99E0F6FF9FE6FBFF97E4FBFF8CDC
      FBFF387D99FF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFF1A8CFFFF1A8CFFFF1A8CFFFFECFFFFFF0F2A36FF98FA
      FEFFE5FBFFFF0F2A36FF00000000000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF98EEFBFF4B89
      A2FF4A88A1FF95E2FAFF94E1F9FF98E4FBFF99E5FCFF99E5FCFF95E4FCFF92E2
      FBFF397E9AFF000000000000000000000000000000000F2A36FFF5FFFFFFF5FF
      FFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF2FFFFFF0F2A36FFF4FE
      FEFF0F2A36FF0000000000000000000000000000000000000000000000000000
      000000000000B3783EFFFFFFFFFFFFFFFFFFB47A41FFFFFFFFFFFFFFFFFFB378
      3EFFFFFFFFFFFFFFFFFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A88A2FF357B98FF4887
      A1FF4786A0FF4585A0FF44849FFF43839EFF41829EFF40819DFF3E809CFF3C7F
      9BFF3B7E9BFF000000000000000000000000000000000F2A36FF0F2A36FF0F2A
      36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A36FF0F2A
      36FF000000000000000000000000000000000000000000000000000000000000
      000000000000B3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
      3EFFB3783EFFB3783EFFB3783EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00C1FF8001FFFF000080038001F0000000
      80018001F801000080018001F801000080018001F801000080018001F8010000
      80018001E001000080018001F0010000800380010001000080078001F0010000
      80078001E001000080078001F801000080078001F801000080078003F8010000
      80078007F80100008007800FF801000000000000000000000000000000000000
      000000000000}
  end
  object BarMBrowse: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = imlBrowse
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 568
    Top = 64
    DockControlHeights = (
      0
      0
      26
      0)
    object BarMBrowseBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Browser'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 364
      FloatTop = 288
      FloatClientWidth = 92
      FloatClientHeight = 78
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuLoadData'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Browser'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object mnuLoadData: TdxBarButton
      Action = actLoadData
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object aclReportList: TActionList
    Images = imlBrowse
    Left = 296
    Top = 112
    object actLoadData: TNAction
      Category = 'NActions'
      Caption = 'Load Data'
      ImageIndex = 2
      OnExecute = actLoadDataExecute
      CheckPermission = False
    end
    object actFullExpand: TNAction
      Category = 'NActions'
      Caption = 'Full Expand'
      OnExecute = actFullExpandExecute
      CheckPermission = False
    end
    object actFullCollapse: TNAction
      Category = 'NActions'
      Caption = 'Full Collapse'
      OnExecute = actFullCollapseExecute
      CheckPermission = False
    end
    object actCreateCategory: TNAction
      Category = 'NActions'
      Caption = 'Create Category'
      OnExecute = actCreateCategoryExecute
      CheckPermission = False
    end
    object actEditCategory: TNAction
      Category = 'NActions'
      Caption = 'Edit Category'
      OnExecute = actEditCategoryExecute
      CheckPermission = False
    end
    object actCreateReport: TNAction
      Category = 'NActions'
      Caption = 'Create Report'
      OnExecute = actCreateReportExecute
      CheckPermission = False
    end
    object actEditReport: TNAction
      Category = 'NActions'
      Caption = 'Edit Report'
      OnExecute = actEditReportExecute
      CheckPermission = False
    end
    object actViewReport: TNAction
      Category = 'NActions'
      Caption = 'View Report'
      OnExecute = actViewReportExecute
      CheckPermission = False
    end
  end
  object cdsReportCategory: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryReportCategoryList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 160
    object cdsReportCategoryCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Required = True
    end
    object cdsReportCategoryCATEGORY_CODE: TStringField
      FieldName = 'CATEGORY_CODE'
      Required = True
      Size = 10
    end
    object cdsReportCategoryDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsReportCategoryPARENT_CATEGORY_ID: TIntegerField
      FieldName = 'PARENT_CATEGORY_ID'
    end
    object cdsReportCategoryMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReportCategoryMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsReportCategoryAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReportCategoryAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsReportCategoryUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReportCategoryUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReportCategoryNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReportCategoryISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReportCategoryID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsReportGrid: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryReportGridList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 296
    Top = 208
    object cdsReportGridREPORT_ID: TIntegerField
      FieldName = 'REPORT_ID'
      Required = True
    end
    object cdsReportGridREPORT_CODE: TStringField
      FieldName = 'REPORT_CODE'
      Required = True
      Size = 10
    end
    object cdsReportGridDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsReportGridCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
      Required = True
    end
    object cdsReportGridREPORT_CONFIG: TWideMemoField
      FieldName = 'REPORT_CONFIG'
      Required = True
      BlobType = ftWideMemo
    end
    object cdsReportGridFILTER_CONFIG: TWideMemoField
      FieldName = 'FILTER_CONFIG'
      BlobType = ftWideMemo
    end
    object cdsReportGridMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReportGridMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsReportGridAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReportGridAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsReportGridUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReportGridUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReportGridNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReportGridISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReportGridID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsReportCategory: TDataSource
    DataSet = cdsReportCategory
    Left = 392
    Top = 160
  end
  object dsReportGrid: TDataSource
    DataSet = cdsReportGrid
    Left = 392
    Top = 208
  end
  object popReport: TPopupMenu
    Images = imlBrowse
    Left = 488
    Top = 112
    object ViewData1: TMenuItem
      Action = actLoadData
    end
    object EditReport2: TMenuItem
      Action = actViewReport
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object FullExpand1: TMenuItem
      Action = actFullExpand
    end
    object FullCollapse1: TMenuItem
      Action = actFullCollapse
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CreateCategory1: TMenuItem
      Action = actCreateCategory
    end
    object EditCategory1: TMenuItem
      Action = actEditCategory
    end
    object CreateReport1: TMenuItem
      Action = actCreateReport
    end
    object EditReport1: TMenuItem
      Action = actEditReport
    end
  end
end
