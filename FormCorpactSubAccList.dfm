object frmCorpactSubAccList: TfrmCorpactSubAccList
  Left = 0
  Top = 0
  Caption = 'Corpact Sub Account'
  ClientHeight = 291
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 834
    Height = 246
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    object gvwCorpactSubList: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwCorpactSubListNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCAID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CAID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCorpactSubListACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCorpactSubListSUB_ACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUB_ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCorpactSubListAV_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AV_QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCA_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCA_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCorpactSubListTAXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCorpactSubListTAXAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TAXAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCA_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CA_NETAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCorpactSubListEXCH_CA_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXCH_CA_NETAMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwCorpactSubListCDIV_PAYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDIV_PAYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCorpactSubList
    end
  end
  object a: TdxLayoutControl
    Left = 0
    Top = 246
    Width = 834
    Height = 45
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object aGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object aItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = aGroup1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object aGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = aGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsSubject
    Left = 243
    Top = 90
  end
  object cdsSubject: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qrySubAccList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 243
    Top = 141
    object cdsSubjectNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Size = 150
    end
    object cdsSubjectCAID: TLargeintField
      FieldName = 'CAID'
      ReadOnly = True
      Required = True
    end
    object cdsSubjectACCID: TLargeintField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsSubjectSUB_ACCID: TLargeintField
      DisplayLabel = 'Account ID'
      FieldName = 'SUB_ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsSubjectAV_QTY: TFloatField
      DisplayLabel = 'Av Qty'
      FieldName = 'AV_QTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectCA_QTY: TFloatField
      DisplayLabel = 'CA Qty'
      FieldName = 'CA_QTY'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      ReadOnly = True
      Size = 5
    end
    object cdsSubjectCA_AMT: TFloatField
      DisplayLabel = 'CA Amount'
      FieldName = 'CA_AMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectTAXRATE: TFloatField
      DisplayLabel = 'Tax Rate'
      FieldName = 'TAXRATE'
      ReadOnly = True
      DisplayFormat = '#,##0.####;(#,##0.####);0'
    end
    object cdsSubjectTAXAMT: TFloatField
      DisplayLabel = 'Tax Amount'
      FieldName = 'TAXAMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectCA_NETAMT: TFloatField
      DisplayLabel = 'CA Net Amt'
      FieldName = 'CA_NETAMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectEXCH_CA_NETAMT: TFloatField
      DisplayLabel = 'Exch CA Net Amt'
      FieldName = 'EXCH_CA_NETAMT'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsSubjectCDIV_PAYDATE: TDateField
      DisplayLabel = 'C Div Pay Date'
      FieldName = 'CDIV_PAYDATE'
      ReadOnly = True
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 483
    Top = 138
    object EditTax1: TMenuItem
      Caption = 'Edit Tax'
      OnClick = EditTax1Click
    end
    object EditTaxAmount1: TMenuItem
      Caption = 'Edit Tax Amount'
      OnClick = EditTaxAmount1Click
    end
  end
  object cdsSubAcc: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUB_ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qrySubAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 354
    Top = 51
    object cdsSubAccCA_AMT: TFloatField
      FieldName = 'CA_AMT'
    end
    object cdsSubAccTAXRATE: TFloatField
      FieldName = 'TAXRATE'
    end
    object cdsSubAccTAXAMT: TFloatField
      FieldName = 'TAXAMT'
    end
    object cdsSubAccCA_NETAMT: TFloatField
      FieldName = 'CA_NETAMT'
    end
  end
end
