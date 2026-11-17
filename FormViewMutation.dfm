object frmViewMutation: TfrmViewMutation
  Left = 0
  Top = 0
  Caption = 'View Bank Mutation'
  ClientHeight = 399
  ClientWidth = 824
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
    Width = 824
    Height = 399
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExplicitHeight = 400
    object gvwViewMutation: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsViewMutation
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwViewMutationTRANSTYPE: TcxGridDBBandedColumn
        Caption = 'Transaction Type'
        DataBinding.FieldName = 'TRANSTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Deposit'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Withdraw'
            Value = 'W'
          end>
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwViewMutationACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwViewMutationACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 114
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwViewMutationACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwViewMutationVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwViewMutationREFID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwViewMutationREFNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwViewMutationREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwViewMutationBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwViewMutationBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Width = 162
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwViewMutationBANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwViewMutationCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwViewMutationDC: TcxGridDBBandedColumn
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
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwViewMutationAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwViewMutation
    end
  end
  object cdsViewMutation: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryViewMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 75
    Top = 87
    object cdsViewMutationTRANSTYPE: TStringField
      DisplayLabel = 'Trans Type'
      FieldName = 'TRANSTYPE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsViewMutationACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
      Required = True
    end
    object cdsViewMutationACCNO: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCNO'
      Required = True
      Size = 30
    end
    object cdsViewMutationACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsViewMutationVALUEDATE: TDateField
      DisplayLabel = 'Value Date'
      FieldName = 'VALUEDATE'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsViewMutationREFID: TLargeintField
      FieldName = 'REFID'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object cdsViewMutationREFNO: TStringField
      DisplayLabel = 'Reff No'
      FieldName = 'REFNO'
      ReadOnly = True
      Required = True
    end
    object cdsViewMutationREMARKS: TStringField
      DisplayLabel = 'Remarks'
      FieldName = 'REMARKS'
      ReadOnly = True
      Size = 100
    end
    object cdsViewMutationBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsViewMutationBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsViewMutationBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      FieldName = 'BANKACCNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsViewMutationCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object cdsViewMutationDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsViewMutationAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsViewMutation: TDataSource
    DataSet = cdsViewMutation
    Left = 75
    Top = 132
  end
  object PopupMenu1: TPopupMenu
    Left = 75
    Top = 180
    object CancelMutation1: TMenuItem
      Caption = 'Cancel Mutation'
      OnClick = CancelMutation1Click
    end
  end
end
