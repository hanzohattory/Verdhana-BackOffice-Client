object frmClientStockPos: TfrmClientStockPos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Stock Position'
  ClientHeight = 274
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 235
    Width = 768
    Height = 39
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Ok: TcxButton
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = OkClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 768
    Height = 235
    Align = alClient
    TabOrder = 1
    object gvwStockPos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsStockPosition
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      object gvwStockPosCheckBox: TcxGridDBColumn
        DataBinding.FieldName = 'CheckBox'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        IsCaptionAssigned = True
      end
      object gvwStockPosLocalCode: TcxGridDBColumn
        DataBinding.FieldName = 'LocalCode'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
      end
      object gvwStockPosOnHand: TcxGridDBColumn
        Caption = 'On Hand'
        DataBinding.FieldName = 'OnHand'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 100
      end
      object gvwStockPosOutstands: TcxGridDBColumn
        DataBinding.FieldName = 'Outstands'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 100
      end
      object gvwStockPosBalance: TcxGridDBColumn
        Caption = 'Avail Qty'
        DataBinding.FieldName = 'Balance'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 100
      end
      object gvwStockPosAcqPrice: TcxGridDBColumn
        Caption = 'Source Price'
        DataBinding.FieldName = 'AcqPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Width = 100
      end
      object gvwStockPosTargetPrice: TcxGridDBColumn
        Caption = 'Target Price'
        DataBinding.FieldName = 'TargetPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
      object gvwStockPosTargetQty: TcxGridDBColumn
        Caption = 'Trans Qty'
        DataBinding.FieldName = 'TargetQty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwStockPos
    end
  end
  object cdsStockPosition: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'TRDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 309
    Top = 177
    object cdsStockPositionLOCALCODE: TStringField
      FieldName = 'LocalCode'
    end
    object cdsStockPositionOnHand: TFloatField
      FieldName = 'OnHand'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionAcqPrice: TFloatField
      FieldName = 'AcqPrice'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionTargetPrice: TFloatField
      FieldName = 'TargetPrice'
      OnChange = cdsStockPositionTargetPriceChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionTargetQty: TFloatField
      FieldName = 'TargetQty'
      OnChange = cdsStockPositionTargetQtyChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockPositionCheckBox: TStringField
      FieldName = 'CheckBox'
      Size = 1
    end
    object cdsStockPositionStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockPositionOutstands: TFloatField
      FieldName = 'Outstands'
    end
    object cdsStockPositionBalance: TFloatField
      FieldName = 'Balance'
    end
  end
  object dsStockPosition: TDataSource
    DataSet = cdsStockPosition
    Left = 309
    Top = 129
  end
  object cdsClientStockPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftFMTBcd
        Name = 'TRDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockPosByParamACCID'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 309
    Top = 81
    object cdsClientStockPosBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsClientStockPosBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsClientStockPosBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsClientStockPosSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsClientStockPosSalesCode: TStringField
      FieldName = 'SalesCode'
    end
    object cdsClientStockPosSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsClientStockPosAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsClientStockPosAccNo: TStringField
      FieldName = 'AccNo'
      Size = 30
    end
    object cdsClientStockPosAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object cdsClientStockPosStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsClientStockPosStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsClientStockPosStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsClientStockPosAvgPrice: TFloatField
      FieldName = 'AvgPrice'
    end
    object cdsClientStockPosClosePrice: TFloatField
      FieldName = 'ClosePrice'
    end
    object cdsClientStockPosStockOnHand: TFloatField
      FieldName = 'StockOnHand'
    end
    object cdsClientStockPosStockOnHold: TFloatField
      FieldName = 'StockOnHold'
    end
    object cdsClientStockPosStockOuts: TFloatField
      FieldName = 'StockOuts'
    end
    object cdsClientStockPosStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object cdsClientStockPosStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
    end
    object cdsClientStockPosStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
    end
    object cdsClientStockPosUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
    end
    object cdsClientStockPosLastCP: TDateField
      FieldName = 'LastCP'
    end
    object cdsClientStockPosInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
  end
end
