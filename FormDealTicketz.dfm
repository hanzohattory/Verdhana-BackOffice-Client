object frmDealTicketz: TfrmDealTicketz
  Left = 0
  Top = 0
  Caption = 'Deal Ticket Allocation View'
  ClientHeight = 448
  ClientWidth = 1149
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 397
    Width = 1149
    Height = 51
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    OnKeyPress = dxLayoutControl2KeyPress
    ExplicitLeft = -165
    ExplicitTop = 389
    ExplicitWidth = 1151
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnKeyPress = cxButton1KeyPress
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl2Group_Root
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1149
    Height = 397
    Align = alClient
    TabOrder = 1
    ExplicitTop = 67
    ExplicitWidth = 701
    ExplicitHeight = 284
    object gvwDealTicketz: TcxGridDBTableView
      OnKeyPress = gvwDealTicketzKeyPress
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDealTicketz
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      object gvwDealTicketzDEALTICKETID: TcxGridDBColumn
        DataBinding.FieldName = 'DEALTICKETID'
        Visible = False
      end
      object gvwDealTicketzSTAT: TcxGridDBColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Close'
            Value = 'S'
          end>
        Width = 49
      end
      object gvwDealTicketzALLOC_STAT: TcxGridDBColumn
        DataBinding.FieldName = 'ALLOC_STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Full'
            ImageIndex = 0
            Value = 'F'
          end
          item
            Description = 'Partial'
            Value = 'P'
          end
          item
            Description = 'None'
            Value = 'N'
          end>
        Width = 62
      end
      object gvwDealTicketzSTOCKCODE: TcxGridDBColumn
        DataBinding.FieldName = 'STOCKCODE'
        Width = 66
      end
      object gvwDealTicketzALLOC_INIT: TcxGridDBColumn
        DataBinding.FieldName = 'ALLOC_INIT'
        Width = 57
      end
      object gvwDealTicketzALLOC_CODE: TcxGridDBColumn
        Caption = 'Alloc. Code'
        DataBinding.FieldName = 'ALLOC_CODE'
        Width = 60
      end
      object gvwDealTicketzALLOC_NAME: TcxGridDBColumn
        Caption = 'Allocation Name'
        DataBinding.FieldName = 'ALLOC_NAME'
        Width = 209
      end
      object gvwDealTicketzAPRICE: TcxGridDBColumn
        Caption = 'Avg. Price'
        DataBinding.FieldName = 'APRICE'
        HeaderAlignmentHorz = taRightJustify
        Width = 62
      end
      object gvwDealTicketzAQTY: TcxGridDBColumn
        Caption = 'Alloc. Quantity'
        DataBinding.FieldName = 'AQTY'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
      end
      object gvwDealTicketzDEALTICKETCODE: TcxGridDBColumn
        Caption = 'Dealticket No.'
        DataBinding.FieldName = 'DEALTICKETCODE'
        Width = 109
      end
      object gvwDealTicketzDEALPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'DEALPRICE'
        HeaderAlignmentHorz = taRightJustify
        Width = 53
      end
      object gvwDealTicketzDEALQTY: TcxGridDBColumn
        DataBinding.FieldName = 'DEALQTY'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
      end
      object gvwDealTicketzACCINIT: TcxGridDBColumn
        Caption = 'Parent Initial'
        DataBinding.FieldName = 'ACCINIT'
        Width = 70
      end
      object gvwDealTicketzACCNAME: TcxGridDBColumn
        Caption = 'Parent Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwDealTicketz
    end
  end
  object dsDealTicketz: TDataSource
    DataSet = frmDealTickets.cdsDealTicketz
    Left = 399
    Top = 267
  end
end
