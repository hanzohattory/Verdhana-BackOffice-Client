inherited frmSelectDataInterest: TfrmSelectDataInterest
  Caption = 'Data Track Interest'
  ClientHeight = 419
  ClientWidth = 826
  OnShow = FormShow
  ExplicitWidth = 826
  ExplicitHeight = 419
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 826
    Height = 46
    Align = alTop
    TabOrder = 0
    object cmbGLPeriod: TcxLookupComboBox
      Left = 45
      Top = 10
      RepositoryItem = dmGlobal.luGLPeriod
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Properties.OnCloseUp = cmbGLPeriodPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxButton1: TcxButton
      Left = 196
      Top = 10
      Width = 81
      Height = 25
      Caption = 'View Data'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object cmbPeriod: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Period'
      Control = cmbGLPeriod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object grdMaster: TcxGrid [1]
    Left = 0
    Top = 46
    Width = 826
    Height = 373
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwSelectDataInterest: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsSelectDataInterest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'INTEREST_AMT'
          Column = gvwSelectDataInterestINTEREST_AMT
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'TAX_AMT'
          Column = gvwSelectDataInterestTAX_AMT
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'NET_INTEREST'
          Column = gvwSelectDataInterestNET_INTEREST
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwSelectDataInterestACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestOUTSTANDING: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTSTANDING'
        HeaderAlignmentHorz = taRightJustify
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestINTEREST_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestTAX_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAX_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSelectDataInterestNET_INTEREST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NET_INTEREST'
        HeaderAlignmentHorz = taRightJustify
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object grdMasterLevel1: TcxGridLevel
      GridView = gvwSelectDataInterest
    end
  end
  inherited popDocking: TPopupMenu
    Left = 303
    Top = 265
    object ViewDetail1: TMenuItem
      Action = actViewDetail
    end
    object Posting1: TMenuItem
      Action = actPosting
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaveGridtoExcel1: TMenuItem
      Action = actSaveToExcel
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Left = 302
    Top = 214
  end
  object ActionList1: TActionList
    Left = 303
    Top = 312
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actViewDetail: TNAction
      Category = 'NActions'
      Caption = 'View Detail'
      OnExecute = actViewDetailExecute
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Principlized'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actSaveToExcel: TNAction
      Category = 'NActions'
      Caption = 'Save Grid to Excel'
      OnExecute = actSaveToExcelExecute
      CheckPermission = False
    end
  end
  object cdsSelectDataInterest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'PERIODID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySelectDataInterest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 393
    Top = 210
    object cdsSelectDataInterestACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSelectDataInterestACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsSelectDataInterestACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsSelectDataInterestCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsSelectDataInterestOUTSTANDING: TFloatField
      DisplayLabel = 'Outstanding'
      FieldName = 'OUTSTANDING'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSelectDataInterestINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0.#####;(#,##0.####);0'
    end
    object cdsSelectDataInterestTAX_AMT: TFloatField
      DisplayLabel = 'Tax Amount'
      FieldName = 'TAX_AMT'
      DisplayFormat = '#,##0.#####;(#,##0.####);0'
    end
    object cdsSelectDataInterestNET_INTEREST: TFloatField
      DisplayLabel = 'Net Interest'
      FieldName = 'NET_INTEREST'
      DisplayFormat = '#,##0.#####;(#,##0.####);0'
    end
  end
  object dsSelectDataInterest: TDataSource
    DataSet = cdsSelectDataInterest
    Left = 396
    Top = 165
  end
  object cdsSelectDataInterestDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PERIODID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySelectDataInterestDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 393
    Top = 258
    object cdsSelectDataInterestDetailACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsSelectDataInterestDetailINTEREST_NO: TStringField
      DisplayLabel = 'Interest No'
      FieldName = 'INTEREST_NO'
      Size = 30
    end
    object cdsSelectDataInterestDetailINTERESTDATE: TDateField
      DisplayLabel = 'Interest Date'
      FieldName = 'INTERESTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailPRINCIPLE_METHOD: TStringField
      DisplayLabel = 'Principle Method'
      FieldName = 'PRINCIPLE_METHOD'
      Size = 50
    end
    object cdsSelectDataInterestDetailCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsSelectDataInterestDetailBASE_INTEREST_AMT: TFloatField
      DisplayLabel = 'Base Interest Amount'
      FieldName = 'BASE_INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSelectDataInterestDetailRATE: TIntegerField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
    end
    object cdsSelectDataInterestDetailYEAROFDAYS: TIntegerField
      DisplayLabel = 'Year Of Days'
      FieldName = 'YEAROFDAYS'
    end
    object cdsSelectDataInterestDetailINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSelectDataInterestDetailPAID: TStringField
      DisplayLabel = 'Paid'
      FieldName = 'PAID'
      Size = 1
    end
    object cdsSelectDataInterestDetailPAYMENT_DATE: TDateField
      DisplayLabel = 'Payment Date'
      FieldName = 'PAYMENT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailPAYMENTBY: TStringField
      DisplayLabel = 'Payment By'
      FieldName = 'PAYMENTBY'
      Size = 30
    end
    object cdsSelectDataInterestDetailPAYMENT_NO: TStringField
      DisplayLabel = 'Payment No'
      FieldName = 'PAYMENT_NO'
    end
    object cdsSelectDataInterestDetailPAYMENT_POSTED: TStringField
      DisplayLabel = 'Payment Posted'
      FieldName = 'PAYMENT_POSTED'
      Size = 1
    end
    object cdsSelectDataInterestDetailPAID_JOURNAL_NO: TStringField
      DisplayLabel = 'Paid Jounal No'
      FieldName = 'PAID_JOURNAL_NO'
      Size = 30
    end
    object cdsSelectDataInterestDetailRESERVED: TStringField
      DisplayLabel = 'Reserved'
      FieldName = 'RESERVED'
      Size = 1
    end
    object cdsSelectDataInterestDetailRESERVED_DATE: TDateField
      DisplayLabel = 'Reserved Date'
      FieldName = 'RESERVED_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailRESERVED_POSTED: TStringField
      DisplayLabel = 'Reserved Posted'
      FieldName = 'RESERVED_POSTED'
      Size = 1
    end
    object cdsSelectDataInterestDetailRESERVED_JOURNAL_NO: TStringField
      DisplayLabel = 'Reserved Journal No'
      FieldName = 'RESERVED_JOURNAL_NO'
      Size = 30
    end
  end
  object dsSelectDataInterestDetail: TDataSource
    DataSet = cdsSelectDataInterestDetail
    Left = 392
    Top = 304
  end
  object SaveDialog: TSaveDialog
    Filter = 'Excel File|*.xlsx'
    Left = 303
    Top = 160
  end
end
