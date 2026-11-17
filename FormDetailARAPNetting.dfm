object frmDetailARAPNetting: TfrmDetailARAPNetting
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Detail AR/AP Netting'
  ClientHeight = 434
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 384
    Width = 950
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 861
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Close'
      ModalResult = 2
      TabOrder = 0
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 950
    Height = 343
    Align = alClient
    TabOrder = 1
    ExplicitTop = 56
    ExplicitHeight = 328
    object gvwDetailARAPNetting: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDetailARAPNetting
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'AR'
          Column = gvwDetailARAPNettingAR
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'AP'
          Column = gvwDetailARAPNettingAP
        end
        item
          Format = '#,##0.00 ;(#,##0.00);0.00 '
          Kind = skSum
          FieldName = 'PROCESSAMT'
          Column = gvwDetailARAPNettingPROCESSAMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Styles.FilterBox = dmGlobal.GridFilterBox
      Bands = <
        item
          Width = 730
        end
        item
          Caption = 'Outstand Amount'
          Width = 189
        end
        item
        end>
      object gvwDetailARAPNettingSIID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSINO: TcxGridDBBandedColumn
        Caption = 'SI No.'
        DataBinding.FieldName = 'SINO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingTRDDATE: TcxGridDBBandedColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRDDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSITYPE: TcxGridDBBandedColumn
        Caption = 'SI Type'
        DataBinding.FieldName = 'SITYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSETTLE_SIDE: TcxGridDBBandedColumn
        Caption = 'Side'
        DataBinding.FieldName = 'SETTLE_SIDE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        RepositoryItem = dmGlobal.luReceivementPayment
        Visible = False
        VisibleForCustomization = False
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingBASE_CCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_CCYCODE'
        Visible = False
        VisibleForCustomization = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingBASE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BASE_NETAMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSETTLE_CCYCODE: TcxGridDBBandedColumn
        Caption = 'Ccy'
        DataBinding.FieldName = 'SETTLE_CCYCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 27
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSETTLE_EXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_EXRATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSETTLE_NETAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_NETAMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSETTLED_AMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLED_AMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingVOUCHERAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERAMT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSI_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'SI_DESC'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Focusing = False
        Width = 258
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingPROCESSAMT: TcxGridDBBandedColumn
        Caption = 'Process Amount'
        DataBinding.FieldName = 'PROCESSAMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Width = 89
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingOUTSTANDAMT: TcxGridDBBandedColumn
        Caption = 'Outstand Amount'
        DataBinding.FieldName = 'OUTSTANDAMT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        VisibleForCustomization = False
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingPROCESSAMT_X: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSAMT_X'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingOUTSTANDAMT_X: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OUTSTANDAMT_X'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingBOARDID: TcxGridDBBandedColumn
        Caption = 'Board'
        DataBinding.FieldName = 'BOARDID'
        RepositoryItem = dmGlobal.luBoard
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingAR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AR'
        HeaderAlignmentHorz = taRightJustify
        Width = 108
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwDetailARAPNettingAP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AP'
        HeaderAlignmentHorz = taRightJustify
        Width = 108
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwDetailARAPNetting
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 950
    Height = 41
    Align = alTop
    TabOrder = 2
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 81
      Top = 10
      DataBinding.DataField = 'ACC_TYPE'
      DataBinding.DataSource = dsDetailARAPNetting
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 280
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsDetailARAPNetting
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 420
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsDetailARAPNetting
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account Type'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Account Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = '--'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dsDetailARAPNetting: TDataSource
    DataSet = frmReportARAPNetting.cdsCashOutstanding
    Left = 264
    Top = 192
  end
end
