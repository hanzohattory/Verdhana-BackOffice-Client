inherited frmDataSetOffByAccount: TfrmDataSetOffByAccount
  Caption = 'Data Set Off'
  ClientHeight = 467
  ClientWidth = 838
  ExplicitWidth = 838
  ExplicitHeight = 467
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 52
    Width = 838
    Height = 415
    PopupMenu = PopupMenu
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.DataSource = dsDataSetOffList
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTRXTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRXTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERACC'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterLEDGERNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterSETOFF_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETOFF_DESC'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Debet'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Credit'
            Value = 'C'
          end>
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterSETTOFF_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTOFF_AMT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterLINKNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKNO'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 838
    Height = 52
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 691
    object txtAccountCode: TcxButtonEdit
      Left = 82
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccountCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 121
    end
    object txtAccountName: TcxTextEdit
      Left = 209
      Top = 10
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 294
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
      CaptionOptions.Text = 'Account Code'
      Parent = dxLayoutControl1Group1
      Control = txtAccountCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = txtAccountName
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
  inherited popDocking: TPopupMenu
    Left = 432
    Top = 139
  end
  inherited ActionPermission: TNActionPermission
    Left = 344
    Top = 127
  end
  inherited saBrowse: TcxStyleRepository
    Left = 125
    PixelsPerInch = 96
  end
  object cdsDataSetOffList: TNClientDataset [6]
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qrySelectDataSetOffByAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 192
    Top = 198
    object cdsDataSetOffListACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsDataSetOffListACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsDataSetOffListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsDataSetOffListTRXTYPE: TStringField
      DisplayLabel = 'Trx Type'
      FieldName = 'TRXTYPE'
      Size = 15
    end
    object cdsDataSetOffListTRDDATE: TDateField
      DisplayLabel = 'Trada Date'
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffListCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsDataSetOffListEXRATE: TFloatField
      DisplayLabel = 'Exrate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffListPROCESSDATE: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsDataSetOffListLEDGERACC: TStringField
      DisplayLabel = 'Ledger Account'
      FieldName = 'LEDGERACC'
      Size = 10
    end
    object cdsDataSetOffListLEDGERNAME: TStringField
      DisplayLabel = 'Ledger Name'
      FieldName = 'LEDGERNAME'
      Size = 150
    end
    object cdsDataSetOffListSETOFF_DESC: TStringField
      DisplayLabel = 'Set Off Desc'
      FieldName = 'SETOFF_DESC'
      Size = 150
    end
    object cdsDataSetOffListDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Size = 1
    end
    object cdsDataSetOffListSETTOFF_AMT: TFloatField
      DisplayLabel = 'SetOff Amount'
      FieldName = 'SETTOFF_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsDataSetOffListREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      Size = 10
    end
    object cdsDataSetOffListLINKID: TLargeintField
      DisplayLabel = 'Link ID'
      FieldName = 'LINKID'
    end
    object cdsDataSetOffListLINKTYPE: TStringField
      DisplayLabel = 'Link Type'
      FieldName = 'LINKTYPE'
    end
    object cdsDataSetOffListLINKNO: TStringField
      DisplayLabel = 'Link No.'
      FieldName = 'LINKNO'
    end
    object cdsDataSetOffListVOUCHERID: TLargeintField
      DisplayLabel = 'Voucher ID'
      FieldName = 'VOUCHERID'
    end
  end
  object dsDataSetOffList: TDataSource [7]
    DataSet = cdsDataSetOffList
    Left = 192
    Top = 243
  end
  inherited ActionList: TActionList
    object actSetOff: TNAction
      Category = 'NActions'
      Caption = 'Set Off'
      CheckPermission = False
    end
  end
  object PopupMenu: TPopupMenu
    Left = 300
    Top = 195
    object SetOff1: TMenuItem
      Action = actSetOff
    end
  end
end
