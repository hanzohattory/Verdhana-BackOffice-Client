inherited frmReportDailyInterestActivity: TfrmReportDailyInterestActivity
  Caption = 'Daily Interest Activity'
  ClientWidth = 965
  ExplicitWidth = 965
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 209
    Width = 965
    Height = 216
    ExplicitTop = 209
    ExplicitWidth = 965
    ExplicitHeight = 216
  end
  inherited lcParameter: TdxLayoutControl
    Top = 48
    Width = 965
    Height = 153
    ExplicitTop = 48
    ExplicitWidth = 965
    ExplicitHeight = 153
    object grdAccounts: TcxGrid [0]
      Left = 10
      Top = 10
      Width = 511
      Height = 127
      TabOrder = 0
      object gvwAccounts: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsAccounts
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle2
        Bands = <
          item
            Caption = 'Account'
          end>
        object gvwAccountsACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwAccountsACCCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCCODE'
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwAccountsACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCNAME'
          Width = 250
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwAccountsACCTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCTYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Institution'
              ImageIndex = 0
              Value = 'I'
            end
            item
              Description = 'Individu'
              Value = 'N'
            end>
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwAccountsPRDCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRDCODE'
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object glvAccounts: TcxGridLevel
        GridView = gvwAccounts
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdAccounts
      ControlOptions.OriginalHeight = 127
      ControlOptions.OriginalWidth = 511
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 201
    Width = 965
    ExplicitTop = 201
    ExplicitWidth = 965
  end
  inherited StatusBar: TdxStatusBar
    Width = 965
    ExplicitWidth = 965
  end
  inherited ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBarReport
    AssignedPermission = <
      item
        Name = 'Report Daily Interest Activity'
        Description = 'Report Daily Interest Activity'
      end>
    Left = 552
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      48
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'barExportToPdf'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'ZoomScale'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 52
          Visible = True
          ItemName = 'txtPages'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barOutline'
        end
        item
          Visible = True
          ItemName = 'barThumbnails'
        end
        item
          Visible = True
          ItemName = 'barPageSetting'
        end>
    end
    object barMReportBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'filterbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 977
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'startDate'
        end
        item
          Visible = True
          ItemName = 'endDate'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 116
          Visible = True
          ItemName = 'edAccountID'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barReloadData'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object startDate: TcxBarEditItem
      Caption = 'Interest Date'
      Category = 0
      Hint = 'Interest Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object endDate: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object edAccountID: TcxBarEditItem
      Caption = 'Choose Accounts'
      Category = 0
      Hint = 'Choose Accounts'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxBarEditItem1PropertiesButtonClick
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Cash Management\DailyInterestActivity.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
  end
  object cdsAccounts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 64
    object cdsAccountsACCID: TIntegerField
      DisplayLabel = 'AccountID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountsACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountsACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsAccountsACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      Size = 5
    end
    object cdsAccountsPRDCODE: TStringField
      DisplayLabel = 'Product Code'
      FieldName = 'PRDCODE'
      Size = 10
    end
  end
  object dsAccounts: TDataSource
    DataSet = cdsAccounts
    Left = 440
    Top = 112
  end
end
