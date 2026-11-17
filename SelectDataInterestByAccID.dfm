object frmSelectDataInterestByAccID: TfrmSelectDataInterestByAccID
  Left = 0
  Top = 0
  Caption = 'Select Data Interest By Account ID'
  ClientHeight = 378
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 742
    Height = 70
    Align = alTop
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsInterestDetail
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 84
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsInterestDetail
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 322
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
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account No'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Account Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 322
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 70
    Width = 742
    Height = 308
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object gvwInterestDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsInterestDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'BASE_INTRS_AMT'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'INTEREST_AMT'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'TAX_AMT'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'NET_INTEREST'
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DISCOUNT_AMT'
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwInterestDetailACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwInterestDetailINTEREST_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_NO'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwInterestDetailINTERESTDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERESTDATE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwInterestDetailPRINCIPLE_METHOD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRINCIPLE_METHOD'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwInterestDetailCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwInterestDetailBASE_INTRS_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_INTRS_AMT'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwInterestDetailRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwInterestDetailYEAROFDAY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'YEAROFDAY'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwInterestDetailINTEREST_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTEREST_AMT'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwInterestDetailREVERSED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwInterestDetailREVERSE_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_DATE'
        Visible = False
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwInterestDetailREVERSE_POSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSE_POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwInterestDetailREVERSED_JRNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REVERSED_JRNCODE'
        Visible = False
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwInterestDetailPAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwInterestDetailPAID_DATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_DATE'
        Visible = False
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwInterestDetailPAID_UI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAID_UI'
        Visible = False
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwInterestDetailCSNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CSNO'
        Visible = False
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwInterestDetailACC_POSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACC_POSTED'
        RepositoryItem = dmGlobal.chkStandard
        Visible = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwInterestDetailPAY_JRNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PAY_JRNCODE'
        Visible = False
        Width = 123
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwInterestDetailACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwInterestDetailACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwInterestDetailEXECUTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXECUTED'
        RepositoryItem = dmGlobal.chkStandard
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwInterestDetail
    end
  end
  object cdsInterestDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'PERIODID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryInterestDetail'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 264
    Top = 250
    object cdsInterestDetailPERIODID: TLargeintField
      FieldName = 'PERIODID'
      Required = True
    end
    object cdsInterestDetailINTRS_ID: TLargeintField
      FieldName = 'INTRS_ID'
      Required = True
    end
    object cdsInterestDetailINTEREST_NO: TStringField
      DisplayLabel = 'Interest No'
      FieldName = 'INTEREST_NO'
    end
    object cdsInterestDetailINTERESTDATE: TDateField
      DisplayLabel = 'Interest Date'
      FieldName = 'INTERESTDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestDetailACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsInterestDetailACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
    end
    object cdsInterestDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsInterestDetailCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsInterestDetailINTEREST_TYPE: TStringField
      DisplayLabel = 'Interest Type'
      FieldName = 'INTEREST_TYPE'
      Size = 2
    end
    object cdsInterestDetailBASE_INTRS_AMT: TFloatField
      DisplayLabel = 'Base Interest Amount'
      FieldName = 'BASE_INTRS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailINTEREST_DAY: TIntegerField
      DisplayLabel = 'Interest Day'
      FieldName = 'INTEREST_DAY'
    end
    object cdsInterestDetailYEAROFDAY: TIntegerField
      DisplayLabel = 'Year Of Days'
      FieldName = 'YEAROFDAY'
    end
    object cdsInterestDetailINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailTAX_PERCENT: TFloatField
      DisplayLabel = 'Tax Percent'
      FieldName = 'TAX_PERCENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailTAX_AMT: TFloatField
      DisplayLabel = 'Tax Amount'
      FieldName = 'TAX_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailNET_INTEREST: TFloatField
      DisplayLabel = 'Net Interest'
      FieldName = 'NET_INTEREST'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsInterestDetailACCRUED: TStringField
      DisplayLabel = 'Accrued'
      FieldName = 'ACCRUED'
      Size = 1
    end
    object cdsInterestDetailACCRUE_DATE: TDateField
      DisplayLabel = 'Accrued Date'
      FieldName = 'ACCRUE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestDetailACCRUE_JRNID: TLargeintField
      DisplayLabel = 'Accrue JRN ID'
      FieldName = 'ACCRUE_JRNID'
    end
    object cdsInterestDetailEXECUTED: TStringField
      DisplayLabel = 'Executed'
      FieldName = 'EXECUTED'
      Size = 1
    end
    object cdsInterestDetailEXEC_DATE: TDateField
      DisplayLabel = 'Exec Date'
      FieldName = 'EXEC_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestDetailEXEC_JRNHID: TLargeintField
      DisplayLabel = 'Exec JRN ID'
      FieldName = 'EXEC_JRNHID'
    end
    object cdsInterestDetailREVERSED: TStringField
      DisplayLabel = 'Reserved'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsInterestDetailREVERSE_DATE: TDateField
      DisplayLabel = 'Reversed Date'
      FieldName = 'REVERSE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestDetailREVERSE_JRNHID: TLargeintField
      DisplayLabel = 'Reverse JRN ID'
      FieldName = 'REVERSE_JRNHID'
    end
    object cdsInterestDetailREVERSE_POSTED: TStringField
      DisplayLabel = 'Reverse Posted'
      FieldName = 'REVERSE_POSTED'
      Size = 1
    end
    object cdsInterestDetailDISCOUNT: TStringField
      DisplayLabel = 'Discount'
      FieldName = 'DISCOUNT'
      Size = 1
    end
    object cdsInterestDetailDISCOUNT_DATE: TDateField
      DisplayLabel = 'Discount Date'
      FieldName = 'DISCOUNT_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsInterestDetailDISCOUNT_AMT: TFloatField
      DisplayLabel = 'Discount Amount'
      FieldName = 'DISCOUNT_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsInterestDetailDISCOUNT_JRNHID: TLargeintField
      DisplayLabel = 'Discount JRN ID'
      FieldName = 'DISCOUNT_JRNHID'
    end
    object cdsInterestDetailDISCOUNT_POSTED: TStringField
      DisplayLabel = 'Discount Posted'
      FieldName = 'DISCOUNT_POSTED'
      Size = 1
    end
  end
  object dsInterestDetail: TDataSource
    DataSet = cdsSelectDataInterestDetail
    Left = 360
    Top = 306
  end
  object PopupMenu1: TPopupMenu
    Left = 174
    Top = 246
    object InterestCancel: TMenuItem
      Caption = 'Interest Cancel'
      OnClick = InterestCancelClick
    end
  end
  object cdsSelectDataInterestDetail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PERIODID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
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
    object cdsSelectDataInterestDetailACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsSelectDataInterestDetailINTEREST_NO: TStringField
      DisplayLabel = 'Interest No'
      FieldName = 'INTEREST_NO'
    end
    object cdsSelectDataInterestDetailINTERESTDATE: TDateField
      DisplayLabel = 'Interest Date'
      FieldName = 'INTERESTDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailPRINCIPLE_METHOD: TStringField
      DisplayLabel = 'Principle Method'
      FieldName = 'PRINCIPLE_METHOD'
      ReadOnly = True
      Size = 21
    end
    object cdsSelectDataInterestDetailCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsSelectDataInterestDetailBASE_INTRS_AMT: TFloatField
      DisplayLabel = 'Base Interest Amount'
      FieldName = 'BASE_INTRS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSelectDataInterestDetailRATE: TFloatField
      DisplayLabel = 'Rate'
      FieldName = 'RATE'
    end
    object cdsSelectDataInterestDetailYEAROFDAY: TIntegerField
      DisplayLabel = 'Year Of Days'
      FieldName = 'YEAROFDAY'
    end
    object cdsSelectDataInterestDetailINTEREST_AMT: TFloatField
      DisplayLabel = 'Interest Amount'
      FieldName = 'INTEREST_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSelectDataInterestDetailREVERSED: TStringField
      DisplayLabel = 'Reserved'
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsSelectDataInterestDetailREVERSE_DATE: TDateField
      DisplayLabel = 'Reserved Date'
      FieldName = 'REVERSE_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailREVERSE_POSTED: TStringField
      DisplayLabel = 'Reserved Posted'
      FieldName = 'REVERSE_POSTED'
      Size = 1
    end
    object cdsSelectDataInterestDetailREVERSED_JRNCODE: TStringField
      DisplayLabel = 'Reserved Journal No'
      FieldName = 'REVERSED_JRNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsSelectDataInterestDetailPAID: TStringField
      DisplayLabel = 'Paid'
      FieldName = 'PAID'
      Size = 1
    end
    object cdsSelectDataInterestDetailPAID_DATE: TDateField
      DisplayLabel = 'Payment Date'
      FieldName = 'PAID_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsSelectDataInterestDetailPAID_UI: TStringField
      DisplayLabel = 'Payment By'
      FieldName = 'PAID_UI'
      Size = 30
    end
    object cdsSelectDataInterestDetailCSNO: TStringField
      DisplayLabel = 'Payment No'
      FieldName = 'CSNO'
      ReadOnly = True
    end
    object cdsSelectDataInterestDetailACC_POSTED: TStringField
      DisplayLabel = 'Posted By'
      FieldName = 'ACC_POSTED'
      ReadOnly = True
      Size = 1
    end
    object cdsSelectDataInterestDetailPAY_JRNCODE: TStringField
      DisplayLabel = 'Paid Journal No'
      FieldName = 'PAY_JRNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsSelectDataInterestDetailACCNO: TStringField
      FieldName = 'ACCNO'
      Required = True
    end
    object cdsSelectDataInterestDetailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsSelectDataInterestDetailEXECUTED: TStringField
      DisplayLabel = 'Principalized'
      FieldName = 'EXECUTED'
      Size = 1
    end
  end
end
