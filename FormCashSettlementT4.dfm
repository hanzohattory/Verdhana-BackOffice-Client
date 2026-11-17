inherited frmCashSettlementT4: TfrmCashSettlementT4
  Caption = 'Customer Aging'
  ClientHeight = 466
  ExplicitHeight = 466
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Height = 440
    ExplicitHeight = 440
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
        end
        item
          Caption = 'Overdue'
        end
        item
          Caption = 'Due'
        end
        item
        end>
      object gvwMasterVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCODE'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 249
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterACCTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Institution'
            ImageIndex = 0
            Value = 'I'
          end
          item
            Description = 'Reguler'
            Value = 'N'
          end
          item
            Description = 'Broker'
            Value = 'B'
          end>
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterAR_TMIN2MORE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_TMIN2MORE'
        OnCustomDrawCell = gvwMasterAR_TMIN2MORECustomDrawCell
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAR_TMIN2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_TMIN2'
        OnCustomDrawCell = gvwMasterAR_TMIN2CustomDrawCell
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAR_TMIN1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_TMIN1'
        OnCustomDrawCell = gvwMasterAR_TMIN1CustomDrawCell
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterAR_OVERDUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_OVERDUE'
        Visible = False
        OnCustomDrawCell = gvwMasterAR_OVERDUECustomDrawCell
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterAP_OVERDUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP_OVERDUE'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterAR_T0: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_T0'
        OnCustomDrawCell = gvwMasterAR_T0CustomDrawCell
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAP_T0: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP_T0'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAR_T1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_T1'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterAP_T1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP_T1'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterAR_T2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_T2'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterAP_T2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP_T2'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAR_T2MORE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR_T2MORE'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterAP_T2MORE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP_T2MORE'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BRANCH'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCASH_ONHAND: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CASH_ONHAND'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BALANCE'
        Width = 106
        Position.BandIndex = 3
        Position.ColIndex = 0
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
    object GenerateToExcel1: TMenuItem
      Action = actGenerateToExcel
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsCashSettlementT4
  end
  inherited aclEditor: TActionList
    object actGenerateToExcel: TNAction
      Category = 'NActions'
      Caption = 'Generate To Excel'
      OnExecute = actGenerateToExcelExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
  end
  object cdsCashSettlementT4: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmReport_qryCashSettlementT4'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCashSettlementT4CalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsCashSettlementT4VALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsCashSettlementT4ACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsCashSettlementT4ACCCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsCashSettlementT4ACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsCashSettlementT4ACCTYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACCTYPE'
      ReadOnly = True
      Size = 1
    end
    object cdsCashSettlementT4CCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 10
    end
    object cdsCashSettlementT4AR_TMIN2MORE: TFloatField
      DisplayLabel = '< AR  T-2'
      FieldName = 'AR_TMIN2MORE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_TMIN2: TFloatField
      DisplayLabel = 'AR T-2'
      FieldName = 'AR_TMIN2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_TMIN1: TFloatField
      DisplayLabel = 'AR T-1'
      FieldName = 'AR_TMIN1'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_OVERDUE: TFloatField
      DisplayLabel = 'AR T-1'
      FieldName = 'AR_OVERDUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AP_OVERDUE: TFloatField
      DisplayLabel = 'AP Overdue'
      FieldName = 'AP_OVERDUE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_T0: TFloatField
      DisplayLabel = 'AR T0'
      FieldName = 'AR_T0'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AP_T0: TFloatField
      DisplayLabel = 'AP T0'
      FieldName = 'AP_T0'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_T1: TFloatField
      DisplayLabel = 'AR T1'
      FieldName = 'AR_T1'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AP_T1: TFloatField
      DisplayLabel = 'AP T1'
      FieldName = 'AP_T1'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_T2: TFloatField
      DisplayLabel = 'AR T2'
      FieldName = 'AR_T2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AP_T2: TFloatField
      DisplayLabel = 'AP T2'
      FieldName = 'AP_T2'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AR_T2MORE: TFloatField
      DisplayLabel = 'AR > T2'
      FieldName = 'AR_T2MORE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4AP_T2MORE: TFloatField
      DisplayLabel = 'AP > T2'
      FieldName = 'AP_T2MORE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4BRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 100
    end
    object cdsCashSettlementT4CASH_ONHAND: TFloatField
      DisplayLabel = 'Cash Position'
      FieldName = 'CASH_ONHAND'
      ReadOnly = True
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashSettlementT4BALANCE: TFloatField
      DisplayLabel = 'Balance'
      FieldKind = fkCalculated
      FieldName = 'BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
  end
end
