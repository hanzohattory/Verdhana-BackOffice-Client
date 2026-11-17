inherited frmMKBDVD55Monthly: TfrmMKBDVD55Monthly
  Caption = 'Monthly XE13 Report'
  ClientWidth = 946
  ExplicitWidth = 946
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 946
    ExplicitWidth = 946
    inherited gvwMaster: TcxGridDBBandedTableView
      OnEditing = gvwMasterEditing
      OptionsData.Editing = True
      object gvwMasterPERIOD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERIOD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterLNUM: TcxGridDBBandedColumn
        Caption = 'No'
        DataBinding.FieldName = 'LNUM'
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCOL1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL1'
        Width = 434
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCOL2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL2'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCOL3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL3'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCOL4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL4'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterCOL5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL5'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterCOL6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL6'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
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
  inherited popMaster: TPopupMenu
    inherited Edit1: TMenuItem [0]
    end
    inherited N2: TMenuItem [1]
    end
    inherited View1: TMenuItem [2]
    end
    inherited actPrint1: TMenuItem [3]
    end
    inherited ViewAuditLog1: TMenuItem [4]
    end
    inherited ViewAuditLogForm1: TMenuItem [5]
    end
    inherited N3: TMenuItem [6]
    end
    inherited Insert2: TMenuItem [7]
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsVD55Monthly
  end
  inherited aclEditor: TActionList
    inherited actEdit: TNAction
      OnUpdate = actEditUpdate
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actGenerateData: TNAction
      Category = 'NActions'
      Caption = 'Generate Data'
      OnExecute = actGenerateDataExecute
      CheckPermission = False
    end
    object actEditValue: TNAction
      Category = 'NActions'
      Caption = 'Edit Value'
      CheckPermission = False
    end
    object actGenerateExcel: TNAction
      Category = 'NActions'
      Caption = 'Generate Excel File'
      OnExecute = actGenerateExcelExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      Font.Charset = ANSI_CHARSET
      Font.Height = -11
      Font.Name = 'Tahoma'
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
          UserDefine = [udWidth]
          UserWidth = 123
          Visible = True
          ItemName = 'edMonth'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 64
          Visible = True
          ItemName = 'edYear'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
      UseOwnFont = True
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'View Data'
    end
    object edMonth: TcxBarEditItem
      Caption = 'Month'
      Category = 0
      Hint = 'Month'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <
        item
          Description = 'January'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'February'
          Value = '2'
        end
        item
          Description = 'March'
          Value = '3'
        end
        item
          Description = 'April'
          Value = '4'
        end
        item
          Description = 'May'
          Value = '5'
        end
        item
          Description = 'June'
          Value = '6'
        end
        item
          Description = 'July'
          Value = '7'
        end
        item
          Description = 'August'
          Value = '8'
        end
        item
          Description = 'September'
          Value = '9'
        end
        item
          Description = 'October'
          Value = '10'
        end
        item
          Description = 'November'
          Value = '11'
        end
        item
          Description = 'December'
          Value = '12'
        end>
    end
    object edYear: TcxBarEditItem
      Caption = 'Year'
      Category = 0
      Hint = 'Year'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object dxBarButton1: TdxBarButton
      Action = actGenerateData
      Category = 0
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Apply Update'
      Category = 0
      Hint = 'Apply Update'
      Visible = ivAlways
      ImageIndex = 10
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Action = actGenerateExcel
      Category = 0
      ImageIndex = 11
      PaintStyle = psCaptionGlyph
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Report MKBD\XE13.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'PERIOD'
        ParamType = ptInput
      end>
  end
  object cdsVD55Monthly: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PERIOD'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryVD55Monthly'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsVD55MonthlyPERIOD: TStringField
      FieldName = 'PERIOD'
      Size = 10
    end
    object cdsVD55MonthlyNO: TIntegerField
      FieldName = 'NO'
    end
    object cdsVD55MonthlyLNUM: TStringField
      FieldName = 'LNUM'
      Size = 10
    end
    object cdsVD55MonthlyCOL1: TStringField
      FieldName = 'COL1'
      Size = 1000
    end
    object cdsVD55MonthlyCOL2: TStringField
      FieldName = 'COL2'
      Size = 1000
    end
    object cdsVD55MonthlyCOL3: TStringField
      FieldName = 'COL3'
      Size = 1000
    end
    object cdsVD55MonthlyCOL4: TStringField
      FieldName = 'COL4'
      OnChange = cdsVD55MonthlyCOL4Change
      Size = 1000
    end
    object cdsVD55MonthlyCOL5: TStringField
      FieldName = 'COL5'
      Size = 1000
    end
    object cdsVD55MonthlyCOL6: TStringField
      FieldName = 'COL6'
      OnChange = cdsVD55MonthlyCOL6Change
      Size = 1000
    end
    object cdsVD55MonthlyID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
  end
end
