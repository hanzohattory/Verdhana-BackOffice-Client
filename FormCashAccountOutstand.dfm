inherited frmCashAccountOutstanding: TfrmCashAccountOutstanding
  Caption = 'Cash Account Oustanding'
  ClientHeight = 489
  ClientWidth = 876
  ExplicitWidth = 876
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 876
    Height = 62
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 607
    object rbVoucherType: TcxRadioGroup
      Left = 10
      Top = 10
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Payment'
          Value = 'P'
        end
        item
          Caption = 'Receive'
          Value = 'R'
        end
        item
          Caption = 'All'
          Value = 'A'
        end>
      Properties.OnChange = rbVoucherTypePropertiesChange
      ItemIndex = 2
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Height = 42
      Width = 306
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = rbVoucherType
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 62
    Width = 876
    Height = 427
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 607
    ExplicitHeight = 312
    object gvwCashAccountOuts: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubject
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
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      object gvwCashAccountOutsVoucherNo: TcxGridDBColumn
        DataBinding.FieldName = 'VoucherNo'
      end
      object gvwCashAccountOutsVoucherType: TcxGridDBColumn
        DataBinding.FieldName = 'VoucherType'
        Width = 72
      end
      object gvwCashAccountOutsEntryDate: TcxGridDBColumn
        DataBinding.FieldName = 'EntryDate'
      end
      object gvwCashAccountOutsProcessDate: TcxGridDBColumn
        DataBinding.FieldName = 'ProcessDate'
        Width = 69
      end
      object gvwCashAccountOutsAccountCode: TcxGridDBColumn
        DataBinding.FieldName = 'AccountCode'
      end
      object gvwCashAccountOutsAccountName: TcxGridDBColumn
        DataBinding.FieldName = 'AccountName'
        Width = 250
      end
      object gvwCashAccountOutsMSOP_Name: TcxGridDBColumn
        DataBinding.FieldName = 'MSOP_Name'
        Width = 250
      end
      object gvwCashAccountOutsSettlementType: TcxGridDBColumn
        DataBinding.FieldName = 'SettlementType'
      end
      object gvwCashAccountOutsBussinesType: TcxGridDBColumn
        DataBinding.FieldName = 'BussinesType'
        Width = 150
      end
      object gvwCashAccountOutsBankAccountCode: TcxGridDBColumn
        DataBinding.FieldName = 'BankAccountCode'
      end
      object gvwCashAccountOutsBankCode: TcxGridDBColumn
        DataBinding.FieldName = 'BankCode'
      end
      object gvwCashAccountOutsBankAccountNo: TcxGridDBColumn
        DataBinding.FieldName = 'BankAccountNo'
      end
      object gvwCashAccountOutsCurrency: TcxGridDBColumn
        DataBinding.FieldName = 'Currency'
        Width = 50
      end
      object gvwCashAccountOutsExchRate: TcxGridDBColumn
        DataBinding.FieldName = 'ExchRate'
      end
      object gvwCashAccountOutsAmount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCashAccountOuts
    end
  end
  inherited popDocking: TPopupMenu
    Left = 456
    Top = 223
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCashAccountOut
    AssignedPermission = <
      item
        Name = 'Cash Account Outstanding'
        Description = 'Cash Account Outstanding'
      end>
    Left = 347
    Top = 223
  end
  object cdsCashAccountOuts: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashAccountOutstand'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 405
    Top = 78
    object cdsCashAccountOutsVoucherNo: TStringField
      DisplayLabel = 'Voucher No'
      FieldName = 'VoucherNo'
    end
    object cdsCashAccountOutsVoucherType: TStringField
      DisplayLabel = 'Voucher Type'
      FieldName = 'VoucherType'
      Size = 10
    end
    object cdsCashAccountOutsEntryDate: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'EntryDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashAccountOutsProcessDate: TDateField
      DisplayLabel = 'Process Date'
      FieldName = 'ProcessDate'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashAccountOutsAccountCode: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'AccountCode'
      Size = 30
    end
    object cdsCashAccountOutsAccountName: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'AccountName'
      Size = 150
    end
    object cdsCashAccountOutsMSOP_Name: TStringField
      DisplayLabel = 'MSOP Name'
      FieldName = 'MSOP_Name'
      Size = 150
    end
    object cdsCashAccountOutsSettlementType: TStringField
      DisplayLabel = 'Settlement Type'
      FieldName = 'SettlementType'
      Size = 10
    end
    object cdsCashAccountOutsBussinesType: TStringField
      DisplayLabel = 'Bussines Type'
      FieldName = 'BussinesType'
      Size = 150
    end
    object cdsCashAccountOutsBankAccountCode: TStringField
      DisplayLabel = 'Bank Account Code'
      FieldName = 'BankAccountCode'
    end
    object cdsCashAccountOutsBankCode: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BankCode'
      Size = 10
    end
    object cdsCashAccountOutsBankAccountNo: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BankAccountNo'
    end
    object cdsCashAccountOutsCurrency: TStringField
      FieldName = 'Currency'
      Size = 5
    end
    object cdsCashAccountOutsExchRate: TFloatField
      FieldName = 'ExchRate'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsCashAccountOutsAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
  end
  object dsSubject: TDataSource
    DataSet = cdsCashAccountOuts
    Left = 405
    Top = 123
  end
  object aclCashAccountOut: TActionList
    Left = 243
    Top = 156
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
  end
end
