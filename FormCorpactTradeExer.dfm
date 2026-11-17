object frmCorpactTradeExercise: TfrmCorpactTradeExercise
  Left = 0
  Top = 0
  Caption = 'Trade Exercise'
  ClientHeight = 449
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 391
    Width = 857
    Height = 58
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 261
    ExplicitWidth = 727
    object cxButton1: TcxButton
      Left = 12
      Top = 15
      Width = 94
      Height = 31
      Caption = 'Ok'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 112
      Top = 15
      Width = 96
      Height = 31
      Caption = 'Cancel'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 857
    Height = 391
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 42
    ExplicitTop = 8
    ExplicitWidth = 809
    ExplicitHeight = 281
    object gvwTradeExercise: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCorpactTradeExercise
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
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwTradeExerciseAcqDate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AcqDate'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwTradeExerciseBranchID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwTradeExerciseBranchCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchCode'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwTradeExerciseBranchName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BranchName'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwTradeExerciseSalesID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwTradeExerciseSalesCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesCode'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwTradeExerciseSalesName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SalesName'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAccID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAccNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccNo'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAccName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AccName'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockCode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockCode'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockName'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAvgPrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AvgPrice'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwTradeExerciseClosePrice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ClosePrice'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockOnHand: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOnHand'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockOnHold: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOnHold'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockOuts: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockOuts'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockReceive: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockReceive'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockDeliver: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockDeliver'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockBalance: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBalance'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockBal_Value: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBal_Value'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwTradeExerciseStockBal_MktValue: TcxGridDBBandedColumn
        DataBinding.FieldName = 'StockBal_MktValue'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwTradeExerciseUnReal_LossProfit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UnReal_LossProfit'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwTradeExerciseLastCP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LastCP'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwTradeExerciseInvType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'InvType'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwTradeExerciseSELLQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SELLQTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAV_QTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AV_QTY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwTradeExerciseQTY_CORPACT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY_CORPACT'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwTradeExerciseENTTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwTradeExerciseEXERQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXERQTY'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwTradeExerciseAVAILQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVAILQTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwTradeExercise
    end
  end
  object dsCorpactTradeExercise: TDataSource
    DataSet = frmCorpActExercise.cdsTradeExercise
    Left = 357
    Top = 153
  end
end
