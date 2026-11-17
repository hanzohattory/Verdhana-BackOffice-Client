object frmEditAmountOmgeoContract: TfrmEditAmountOmgeoContract
  Left = 0
  Top = 0
  Caption = 'Edit Amount Omgeo Contract'
  ClientHeight = 479
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 420
    Width = 573
    Height = 59
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 12
      Top = 12
      Width = 100
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 119
      Top = 12
      Width = 100
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 573
    Height = 420
    Align = alClient
    TabOrder = 1
    object edDate: TcxTextEdit
      Left = 106
      Top = 12
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 0
      Text = 'edDate'
      Width = 121
    end
    object edDealID: TcxTextEdit
      Left = 106
      Top = 42
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'edDealID'
      Width = 283
    end
    object edAccNo: TcxTextEdit
      Left = 106
      Top = 72
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'edAccNo'
      Width = 121
    end
    object edAccName: TcxTextEdit
      Left = 245
      Top = 72
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 3
      Text = 'edAccName'
      Height = 23
      Width = 316
    end
    object edStockCode: TcxTextEdit
      Left = 106
      Top = 102
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 4
      Text = 'edStockCode'
      Width = 121
    end
    object edStockName: TcxTextEdit
      Left = 245
      Top = 102
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 5
      Text = 'edStockName'
      Height = 23
      Width = 316
    end
    object edBS: TcxTextEdit
      Left = 106
      Top = 132
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 6
      Text = 'edBS'
      Width = 121
    end
    object edPrice: TcxCurrencyEdit
      Left = 106
      Top = 162
      TabStop = False
      ParentColor = True
      Properties.DisplayFormat = '#,##0.000000'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 103
    end
    object edQty: TcxCurrencyEdit
      Left = 268
      Top = 162
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.DisplayFormat = '#,##0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 8
      Height = 23
      Width = 121
    end
    object cxGrid1: TcxGrid
      Left = 12
      Top = 192
      Width = 549
      Height = 211
      TabOrder = 9
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = frmOmgeoMonitor.dsTradeConfirmDataTmp
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Styles.ContentOdd = frmOmgeoMonitor.BlueToggle
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1Description: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Description'
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 240
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1LastValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LastValue'
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1NewValue: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NewValue'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Moving = False
          Options.Sorting = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 6
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction Date'
      Control = edDate
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Dealticket Code'
      Control = edDealID
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 283
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Control = edAccNo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = edAccName
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 316
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = edStockCode
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = edStockName
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 316
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Buy / Sell'
      Control = edBS
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Price'
      Control = edPrice
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Quantity'
      Control = edQty
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 211
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
end
