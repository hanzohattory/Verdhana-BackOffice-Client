object frmAccountByStockList: TfrmAccountByStockList
  Left = 0
  Top = 0
  Caption = 'Account By Stock'
  ClientHeight = 492
  ClientWidth = 649
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 441
    Width = 649
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 649
    Height = 441
    Align = alClient
    TabOrder = 1
    object gvwTOTradeTmp: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTenderOfferTradeTmp
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwTOTradeTmpTRANSDATE: TcxGridDBBandedColumn
        Caption = 'Date'
        DataBinding.FieldName = 'TRANSDATE'
        MinWidth = 64
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Options.VertSizing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpIS_EXTEND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IS_EXTEND'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        MinWidth = 95
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Options.VertSizing = False
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpQTY: TcxGridDBBandedColumn
        Caption = 'Available Quantity'
        DataBinding.FieldName = 'QTY'
        MinWidth = 93
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Options.VertSizing = False
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpVALUE: TcxGridDBBandedColumn
        Caption = 'Order Quantity'
        DataBinding.FieldName = 'VALUE'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwTOTradeTmpSelected: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Selected'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object gvwTOTradeTmpACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        MinWidth = 250
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Options.VertSizing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwTOTradeTmp
    end
  end
  object dsTenderOfferTradeTmp: TDataSource
    DataSet = frmTenderOfferTrade.cdsTenderOfferTradeTmp
    Left = 396
    Top = 210
  end
end
