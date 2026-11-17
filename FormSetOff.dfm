inherited frmSetOff: TfrmSetOff
  Caption = 'Data Set Off'
  ClientHeight = 507
  ClientWidth = 833
  ExplicitWidth = 833
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 833
    Height = 46
    Align = alTop
    TabOrder = 0
    object dtDueDate: TcxDateEdit
      Left = 60
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 187
      Top = 10
      Width = 114
      Height = 25
      Action = actViewData
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 307
      Top = 10
      Width = 141
      Height = 25
      Action = actGenerateSetOff
      TabOrder = 2
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
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group1
      Control = dtDueDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton1
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
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 46
    Width = 833
    Height = 461
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwSetOff: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDataSetoffList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwSetOffPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSetOffACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSetOffACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 104
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSetOffACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSetOffDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSetOffCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSetOffAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSetOffSETTOFF_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTOFF_AMT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwSetOffVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwSetOffSETOFF_STAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETOFF_STAT'
        RepositoryItem = dmGlobal.chkStandard
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwSetOff
    end
  end
  object pnlKeterangan: TPanel [2]
    Left = 14
    Top = 67
    Width = 265
    Height = 36
    Anchors = []
    BevelOuter = bvNone
    Caption = 'Generating data set off, please wait...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  inherited popDocking: TPopupMenu
    Left = 231
    Top = 253
    object ViewDetails1: TMenuItem
      Action = actViewDetails
    end
    object ReverseDataSetOFf1: TMenuItem
      Caption = 'Reverse Data Set Off'
      OnClick = ReverseDataSetOFf1Click
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = actList
    AssignedPermission = <
      item
        Name = 'DataSetOff'
        Description = 'DataSetOff'
      end>
    Left = 230
    Top = 205
  end
  object actList: TActionList
    Left = 231
    Top = 300
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actGenerateSetOff: TNAction
      Category = 'NActions'
      Caption = 'Generate Data Set Off'
      OnExecute = actGenerateSetOffExecute
      CheckPermission = False
    end
    object actViewDetails: TNAction
      Category = 'NActions'
      Caption = 'View Details'
      OnExecute = actViewDetailsExecute
      CheckPermission = False
    end
  end
  object cdsDataSetoffList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySelectDataSetOff'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 309
    Top = 204
    object cdsDataSetoffListPROCESSDATE: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetoffListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDataSetoffListACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDataSetoffListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDataSetoffListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetoffListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDataSetoffListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetoffListSETTOFF_AMT: TFloatField
      DisplayLabel = 'Set Off Amount'
      FieldName = 'SETTOFF_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetoffListVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
    end
    object cdsDataSetoffListSETOFF_STAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'SETOFF_STAT'
      Size = 1
    end
  end
  object dsDataSetoffList: TDataSource
    DataSet = cdsDataSetoffList
    Left = 309
    Top = 252
  end
  object cdsDataSetOffByAccID: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'DUEDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySelectDataSetOffByAccID'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsDataSetOffByAccIDCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 309
    Top = 300
    object cdsDataSetOffByAccIDACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDataSetOffByAccIDACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDataSetOffByAccIDACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDataSetOffByAccIDTRXTYPE: TStringField
      DisplayLabel = 'Transaction Type'
      FieldName = 'TRXTYPE'
      Size = 15
    end
    object cdsDataSetOffByAccIDTRDDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffByAccIDDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffByAccIDCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDataSetOffByAccIDEXRATE: TFloatField
      DisplayLabel = 'Ex Rate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffByAccIDAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffByAccIDPROCESSDATE: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffByAccIDLEDGERACC: TStringField
      DisplayLabel = 'Ledger Amount'
      FieldName = 'LEDGERACC'
      Size = 10
    end
    object cdsDataSetOffByAccIDLEDGERNAME: TStringField
      DisplayLabel = 'Ledger Name'
      FieldName = 'LEDGERNAME'
      Size = 150
    end
    object cdsDataSetOffByAccIDSETOFF_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'SETOFF_DESC'
      Size = 150
    end
    object cdsDataSetOffByAccIDDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Size = 1
    end
    object cdsDataSetOffByAccIDSETTOFF_AMT: TFloatField
      DisplayLabel = 'Set Off Amount'
      FieldName = 'SETTOFF_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffByAccIDREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 10
    end
    object cdsDataSetOffByAccIDX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
    object cdsDataSetOffByAccIDY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Y'
      Calculated = True
    end
  end
end
