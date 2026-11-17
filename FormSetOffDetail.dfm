object frmSetOffDetail: TfrmSetOffDetail
  Left = 0
  Top = 0
  Caption = 'Data Set Off Details'
  ClientHeight = 466
  ClientWidth = 922
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 922
    Height = 70
    Align = alTop
    TabOrder = 0
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsDataSetOffByAccID
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 84
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsDataSetOffByAccID
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 324
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 70
    Width = 922
    Height = 396
    Align = alClient
    TabOrder = 1
    object gvSetOffDetail: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDataSetOffByAccID
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'X'
          Column = gvSetOffDetailAMOUNT
        end
        item
          Format = '#,##0;(#,##0);0'
          FieldName = 'Y'
          Column = gvSetOffDetailSETTOFF_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvSetOffDetailACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvSetOffDetailACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvSetOffDetailACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvSetOffDetailTRXTYPE: TcxGridDBBandedColumn
        Caption = 'Trx Type'
        DataBinding.FieldName = 'TRXTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvSetOffDetailTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvSetOffDetailDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvSetOffDetailCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvSetOffDetailEXRATE: TcxGridDBBandedColumn
        Caption = 'ExRate'
        DataBinding.FieldName = 'EXRATE'
        HeaderAlignmentHorz = taRightJustify
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvSetOffDetailAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvSetOffDetailPROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvSetOffDetailLEDGERACC: TcxGridDBBandedColumn
        Caption = 'Ledger Account'
        DataBinding.FieldName = 'LEDGERACC'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvSetOffDetailLEDGERNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEDGERNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvSetOffDetailSETOFF_DESC: TcxGridDBBandedColumn
        Caption = 'Set Off Description'
        DataBinding.FieldName = 'SETOFF_DESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvSetOffDetailDC: TcxGridDBBandedColumn
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
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvSetOffDetailSETTOFF_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTOFF_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvSetOffDetailREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvSetOffDetail
    end
  end
  object dsDataSetOffByAccID: TDataSource
    DataSet = frmSetOffList.cdsDataSetOffByAccID
    Left = 210
    Top = 225
  end
end
