object frmCheckDTERecon: TfrmCheckDTERecon
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Check Difference DTE Reconcile'
  ClientHeight = 434
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 384
    Width = 1284
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 1165
      Top = 10
      Width = 105
      Height = 25
      Caption = '&Close'
      ModalResult = 2
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 105
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1284
    Height = 384
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object gvwDTERecon: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsDTERecon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DT_QTY'
          Column = gvwDTEReconDT_QTY
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DTE_QTY'
          Column = gvwDTEReconDTE_QTY
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DIFFERENT'
          Column = gvwDTEReconDIFFERENT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
          Caption = 'Deal Ticket'
        end
        item
          Caption = 'Deal Ticket Exchange'
        end
        item
        end>
      object gvwDTEReconDT_STOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDTEReconDT_BOARDCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_BOARDCODE'
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDTEReconDT_BS: TcxGridDBBandedColumn
        Caption = 'B/S'
        DataBinding.FieldName = 'DT_BS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Buy'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'Sell'
            Value = 'S'
          end>
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDTEReconDT_PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_PRICE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDTEReconDT_QTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'DT_QTY'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_STOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'DTE_STOCKCODE'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_BOARDCODE: TcxGridDBBandedColumn
        Caption = 'Board'
        DataBinding.FieldName = 'DTE_BOARDCODE'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_BS: TcxGridDBBandedColumn
        Caption = 'B/S'
        DataBinding.FieldName = 'DTE_BS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Buy'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'Sell'
            Value = 'S'
          end>
        Width = 35
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_PRICE: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'DTE_PRICE'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_QTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'DTE_QTY'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDTEReconDIFFERENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFFERENT'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDTEReconACCNO: TcxGridDBBandedColumn
        Caption = 'Client Code'
        DataBinding.FieldName = 'DT_ACCCODE'
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDTEReconACCNAME: TcxGridDBBandedColumn
        Caption = 'Client Name'
        DataBinding.FieldName = 'DT_ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDTEReconDT_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DT_VALUE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDTEReconDTE_VALUE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DTE_VALUE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDTEReconACCNO_DTE: TcxGridDBBandedColumn
        Caption = 'Client Code'
        DataBinding.FieldName = 'DTE_ACCCODE'
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDTEReconACCNAME_DTE: TcxGridDBBandedColumn
        Caption = 'Client Name'
        DataBinding.FieldName = 'DTE_ACCNAME'
        Width = 200
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwDTERecon
    end
  end
  object dsDTERecon: TDataSource
    DataSet = frmReconcileDTE.cdsCheckDTERecon
    Left = 216
    Top = 186
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 192
    object SaveGridAsExcel1: TMenuItem
      Caption = 'Save Grid As Excel'
      OnClick = SaveGridAsExcel1Click
    end
  end
  object SaveDlg: TSaveDialog
    DefaultExt = '.xlsx'
    Filter = 'Excel File|*.xlsx'
    Left = 440
    Top = 280
  end
end
