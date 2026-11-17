object frmBankReconPostAll: TfrmBankReconPostAll
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Bank Recon - Post All'
  ClientHeight = 301
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 669
    Height = 255
    Align = alClient
    TabOrder = 0
    ExplicitTop = -30
    ExplicitWidth = 655
    ExplicitHeight = 331
    object gvwBankRecon: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankReconPostAll
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
      object gvwBankReconTRDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Visible = False
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankReconACCID: TcxGridDBBandedColumn
        Caption = 'Account ID'
        DataBinding.FieldName = 'ACCID'
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankReconALTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'ALTYPE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankReconLDGACC: TcxGridDBBandedColumn
        Caption = 'Ledger Account'
        DataBinding.FieldName = 'LDGACC'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankReconBNACC: TcxGridDBBandedColumn
        Caption = 'Bank Account'
        DataBinding.FieldName = 'BNACC'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankReconBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankReconCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankReconRDNAMT: TcxGridDBBandedColumn
        Caption = 'RDN Amount'
        DataBinding.FieldName = 'RDNAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0)'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankReconRDNBNK_AMT: TcxGridDBBandedColumn
        Caption = 'RDN Bank Amount'
        DataBinding.FieldName = 'RDNBNK_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0)'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankReconDIFFAMT: TcxGridDBBandedColumn
        Caption = 'Different Amount'
        DataBinding.FieldName = 'DIFFAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0)'
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankReconREF: TcxGridDBBandedColumn
        Caption = 'Refference'
        DataBinding.FieldName = 'REF'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBankReconATRNS: TcxGridDBBandedColumn
        Caption = 'Trans Status'
        DataBinding.FieldName = 'ATRNS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Not Recorded'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Recorded'
            Value = '1'
          end>
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBankReconCDID: TcxGridDBBandedColumn
        Caption = 'Cash Deposit ID'
        DataBinding.FieldName = 'CDID'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwBankReconV_TRNAMT: TcxGridDBBandedColumn
        Caption = 'Recorded Amount'
        DataBinding.FieldName = 'V_TRNAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0)'
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwBankReconACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankRecon
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 255
    Width = 669
    Height = 46
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
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = cxButton2Click
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
  object dsBankReconPostAll: TDataSource
    DataSet = cdsBankReconPostAll
    Left = 534
    Top = 123
  end
  object cdsBankReconPostAll: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TRDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryBankReconPostAll'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 534
    Top = 81
    object cdsBankReconPostAllTRDATE: TDateField
      FieldName = 'TRDATE'
      Required = True
    end
    object cdsBankReconPostAllACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsBankReconPostAllALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsBankReconPostAllLDGACC: TStringField
      FieldName = 'LDGACC'
      Size = 10
    end
    object cdsBankReconPostAllBNACC: TStringField
      FieldName = 'BNACC'
      Required = True
      Size = 10
    end
    object cdsBankReconPostAllBNACCNO: TStringField
      FieldName = 'BNACCNO'
    end
    object cdsBankReconPostAllCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankReconPostAllRDNAMT: TFloatField
      FieldName = 'RDNAMT'
    end
    object cdsBankReconPostAllRDNBNK_AMT: TFloatField
      FieldName = 'RDNBNK_AMT'
    end
    object cdsBankReconPostAllDIFFAMT: TFloatField
      FieldName = 'DIFFAMT'
    end
    object cdsBankReconPostAllREF: TStringField
      FieldName = 'REF'
      Size = 10
    end
    object cdsBankReconPostAllATRNS: TStringField
      FieldName = 'ATRNS'
      Size = 1
    end
    object cdsBankReconPostAllCDID: TLargeintField
      FieldName = 'CDID'
    end
    object cdsBankReconPostAllV_TRNAMT: TFloatField
      FieldName = 'V_TRNAMT'
    end
    object cdsBankReconPostAllACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
  end
end
