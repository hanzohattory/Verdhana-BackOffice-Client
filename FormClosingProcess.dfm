inherited frmClosingProcess: TfrmClosingProcess
  Caption = 'Closing Account Process'
  ClientHeight = 473
  ClientWidth = 720
  ExplicitWidth = 726
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 720
    Height = 383
    ExplicitWidth = 720
    ExplicitHeight = 383
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 75
      Top = 37
      DataBinding.DataField = 'CLSDATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo [1]
      Left = 75
      Top = 64
      DataBinding.DataField = 'CLSNOTE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 89
      Width = 185
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 576
      Top = 28
      DataBinding.DataField = 'CashOnHand'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 576
      Top = 55
      DataBinding.DataField = 'CashOnHold'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [4]
      Left = 576
      Top = 82
      DataBinding.DataField = 'ARAmt'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [5]
      Left = 576
      Top = 109
      DataBinding.DataField = 'ApAmt'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBCurrencyEdit5: TcxDBCurrencyEdit [6]
      Left = 576
      Top = 136
      DataBinding.DataField = 'NetARAP'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCurrencyEdit6: TcxDBCurrencyEdit [7]
      Left = 576
      Top = 163
      DataBinding.DataField = 'CashPosition'
      DataBinding.DataSource = dsCashPos
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxGrid1: TcxGrid [8]
      Left = 22
      Top = 220
      Width = 250
      Height = 138
      TabOrder = 10
      object gvwStockPosition: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsStockPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
          end>
        object gvwStockPositionBranchID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwStockPositionBranchCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchCode'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwStockPositionBranchName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BranchName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwStockPositionSalesID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwStockPositionSalesCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesCode'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwStockPositionSalesName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwStockPositionAccID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AccID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwStockPositionAccNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AccNo'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwStockPositionAccName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AccName'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwStockPositionStockID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockID'
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwStockPositionStockCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockCode'
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwStockPositionStockName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockName'
          Width = 369
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwStockPositionAvgPrice: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AvgPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwStockPositionClosePrice: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ClosePrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwStockPositionStockOnHand: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockOnHand'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwStockPositionStockOnHold: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockOnHold'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwStockPositionStockOuts: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockOuts'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwStockPositionStockBalance: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBalance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwStockPositionStockBal_Value: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBal_Value'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwStockPositionStockBal_MktValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'StockBal_MktValue'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwStockPositionUnReal_LossProfit: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UnReal_LossProfit'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.0000;(#,##0.0000)'
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwStockPositionLastCP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LastCP'
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwStockPositionInvType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'InvType'
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwStockPosition
      end
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
      Left = 75
      Top = 10
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnExit = cxDBLookupComboBox1Exit
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [10]
      Left = 202
      Top = 10
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cxDBLookupComboBox2Exit
      Width = 282
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Closing Date'
      Parent = dxLayoutControl1Group6
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Note'
      Parent = dxLayoutControl1Group3
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Cash Position'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Stock Position'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash On Hand'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash On Hold'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'AR Amount'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'AP Amount'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Net AR/AP'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash Position'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit6
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'A/C Number'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLookupComboBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 404
    Width = 720
    ExplicitTop = 404
    ExplicitWidth = 720
    inherited dbNavLog: TDBNavigator
      Left = 606
      Hints.Strings = ()
      ExplicitLeft = 606
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 453
    Width = 720
    ExplicitTop = 453
    ExplicitWidth = 720
  end
  inherited tabEditorData: TTabSet
    Top = 383
    Width = 720
    ExplicitTop = 383
    ExplicitWidth = 720
  end
  inherited dsSubject: TDataSource
    DataSet = frmClosingProcessList.cdsClosingProcess
    Left = 435
    Top = 271
  end
  object cdsCashPos: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashPosByParamACCID'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 309
    Top = 219
    object cdsCashPosACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashPosACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashPosACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 100
    end
    object cdsCashPosCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashPosCashOnHand: TFloatField
      FieldName = 'CashOnHand'
    end
    object cdsCashPosCashOnHold: TFloatField
      FieldName = 'CashOnHold'
    end
    object cdsCashPosARAmt: TFloatField
      FieldName = 'ARAmt'
    end
    object cdsCashPosApAmt: TFloatField
      FieldName = 'ApAmt'
    end
    object cdsCashPosNetARAP: TFloatField
      FieldName = 'NetARAP'
    end
    object cdsCashPosCashPosition: TFloatField
      FieldName = 'CashPosition'
    end
  end
  object dsCashPos: TDataSource
    DataSet = cdsCashPos
    Left = 357
    Top = 219
  end
  object dsStockPos: TDataSource
    DataSet = cdsStockPos
    Left = 357
    Top = 264
  end
  object cdsStockPos: TNClientDataset
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
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 309
    Top = 264
    object cdsStockPosBranchID: TIntegerField
      FieldName = 'BranchID'
    end
    object cdsStockPosBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 10
    end
    object cdsStockPosBranchName: TStringField
      FieldName = 'BranchName'
      Size = 50
    end
    object cdsStockPosSalesID: TIntegerField
      FieldName = 'SalesID'
    end
    object cdsStockPosSalesCode: TStringField
      FieldName = 'SalesCode'
      Size = 10
    end
    object cdsStockPosSalesName: TStringField
      FieldName = 'SalesName'
      Size = 50
    end
    object cdsStockPosAccID: TLargeintField
      FieldName = 'AccID'
    end
    object cdsStockPosAccNo: TStringField
      FieldName = 'AccNo'
      Size = 30
    end
    object cdsStockPosAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object cdsStockPosStockID: TIntegerField
      FieldName = 'StockID'
    end
    object cdsStockPosStockCode: TStringField
      FieldName = 'StockCode'
    end
    object cdsStockPosStockName: TStringField
      FieldName = 'StockName'
      Size = 100
    end
    object cdsStockPosAvgPrice: TFloatField
      FieldName = 'AvgPrice'
    end
    object cdsStockPosClosePrice: TFloatField
      FieldName = 'ClosePrice'
    end
    object cdsStockPosStockOnHand: TFloatField
      FieldName = 'StockOnHand'
    end
    object cdsStockPosStockOnHold: TFloatField
      FieldName = 'StockOnHold'
    end
    object cdsStockPosStockOuts: TFloatField
      FieldName = 'StockOuts'
    end
    object cdsStockPosStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object cdsStockPosStockBal_Value: TFloatField
      FieldName = 'StockBal_Value'
    end
    object cdsStockPosStockBal_MktValue: TFloatField
      FieldName = 'StockBal_MktValue'
    end
    object cdsStockPosUnReal_LossProfit: TFloatField
      FieldName = 'UnReal_LossProfit'
    end
    object cdsStockPosLastCP: TDateField
      FieldName = 'LastCP'
    end
    object cdsStockPosInvType: TStringField
      FieldName = 'InvType'
      Size = 1
    end
  end
  object cdsAccountByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccount'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 420
    Top = 219
    object cdsAccountByParamACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccountByParamACCCODE: TStringField
      FieldName = 'ACCCODE'
      Required = True
      Size = 30
    end
    object cdsAccountByParamACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
  end
end
