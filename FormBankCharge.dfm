inherited frmBankCharges: TfrmBankCharges
  Caption = 'frmBankCharges'
  ClientWidth = 665
  ExplicitWidth = 671
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 665
    Height = 34
    Align = alTop
    Visible = False
    ExplicitHeight = 34
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Width = 665
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 34
    Width = 665
    Height = 281
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 45
    ExplicitTop = 102
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwMaster: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwMasterBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBNCHGTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCHGTYPE'
        RepositoryItem = dmGlobal.luBankChargeTypes
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCHARGE_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGE_AMT'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCHARGE_MINTRANS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGE_MINTRANS'
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCHARGE_MAXTRANS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGE_MAXTRANS'
        Width = 108
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterFTSERVICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FTSERVICE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFER_MODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwMaster
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmBanks.cdsBankCharges
    Left = 391
    Top = 114
  end
end
