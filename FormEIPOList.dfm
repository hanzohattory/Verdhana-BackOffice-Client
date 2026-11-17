inherited frmEIPOList: TfrmEIPOList
  Caption = 'Elektronic Indonesia Public Offering'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Caption = 'Data e-IPO'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Book Building'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Offering'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Allotment'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Distribution'
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Listing'
          Options.HoldOwnColumnsOnly = True
        end>
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterTICKER_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TICKER_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterTICKER_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TICKER_CODE'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCOMPANY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COMPANY'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterSECTOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECTOR'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSUBSECTOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBSECTOR'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterLINE_OF_BUSINESS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINE_OF_BUSINESS'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterBOOKBUILDING_SDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOOKBUILDING_SDATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterBOOKBUILDING_EDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BOOKBUILDING_EDATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterOFFERING_SDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OFFERING_SDATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterOFFERING_EDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OFFERING_EDATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterALLOTMENT_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTMENT_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDISTRIBUTION_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTRIBUTION_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterLISTING_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LISTING_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSHARED_OFFERED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHARED_OFFERED'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        RepositoryItem = dmGlobal.luEIPOStatus
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'E-IPO Data'
      end
      item
        ActionName = 'actEdit'
        Permission = 'E-IPO Data'
      end
      item
        ActionName = 'actOpen'
        Permission = 'E-IPO Data'
      end>
    Left = 304
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
    DataSet = cdsEIPOList
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkBookBuild'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOffering'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllotment'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkDistribution'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkClosed'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end>
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object chkBookBuild: TcxBarEditItem
      Caption = 'Book Building'
      Category = 0
      Hint = 'Book Building'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
    end
    object chkOffering: TcxBarEditItem
      Caption = 'Offering'
      Category = 0
      Hint = 'Offering'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '0'
    end
    object chkAllotment: TcxBarEditItem
      Caption = 'Allotment'
      Category = 0
      Hint = 'Allotment'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '4'
      Properties.ValueUnchecked = '0'
    end
    object chkDistribution: TcxBarEditItem
      Caption = 'Distribution'
      Category = 0
      Hint = 'Distribution'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '5'
      Properties.ValueUnchecked = '0'
    end
    object chkClosed: TcxBarEditItem
      Caption = 'Closed'
      Category = 0
      Hint = 'Closed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '6'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsEIPOList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'OPENED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BOOKBUILD'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OFFERED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALLOTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'LISTRIBUTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CLOSED'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryEIPOList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsEIPOListID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsEIPOListTICKER_ID: TLargeintField
      FieldName = 'TICKER_ID'
      Required = True
    end
    object cdsEIPOListTICKER_CODE: TStringField
      DisplayLabel = 'Ticker Code'
      FieldName = 'TICKER_CODE'
      Required = True
      Size = 10
    end
    object cdsEIPOListCOMPANY: TStringField
      DisplayLabel = 'Company'
      FieldName = 'COMPANY'
      Size = 250
    end
    object cdsEIPOListSECTOR: TStringField
      DisplayLabel = 'Sector'
      FieldName = 'SECTOR'
      Size = 150
    end
    object cdsEIPOListSUBSECTOR: TStringField
      DisplayLabel = 'Sub Sector'
      FieldName = 'SUBSECTOR'
      Size = 250
    end
    object cdsEIPOListLINE_OF_BUSINESS: TStringField
      DisplayLabel = 'Line Of Business'
      FieldName = 'LINE_OF_BUSINESS'
      Size = 500
    end
    object cdsEIPOListBOOKBUILDING_SDATE: TDateField
      DisplayLabel = 'Start Date'
      FieldName = 'BOOKBUILDING_SDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListBOOKBUILDING_EDATE: TDateField
      DisplayLabel = 'End Date'
      FieldName = 'BOOKBUILDING_EDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListOFFERING_SDATE: TDateField
      DisplayLabel = 'Start Date'
      FieldName = 'OFFERING_SDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListOFFERING_EDATE: TDateField
      DisplayLabel = 'End Date'
      FieldName = 'OFFERING_EDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListALLOTMENT_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ALLOTMENT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListDISTRIBUTION_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'DISTRIBUTION_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListLISTING_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'LISTING_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListSHARED_OFFERED: TFloatField
      DisplayLabel = 'Shared Offered'
      FieldName = 'SHARED_OFFERED'
      DisplayFormat = '#,##0'
    end
    object cdsEIPOListSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsEIPOListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEIPOListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEIPOListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEIPOListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
  end
end
