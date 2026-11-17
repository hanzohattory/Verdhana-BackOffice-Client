inherited frmSplitDealticketByQty: TfrmSplitDealticketByQty
  Caption = 'Split Dealticket By Quantity'
  ClientHeight = 275
  ClientWidth = 745
  ExplicitWidth = 761
  ExplicitHeight = 314
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 745
    Height = 226
    ExplicitTop = 6
    ExplicitWidth = 979
    ExplicitHeight = 529
    object edAccCode: TcxTextEdit [0]
      Left = 97
      Top = 64
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'edAccCode'
      Width = 112
    end
    object edAccName: TcxTextEdit [1]
      Left = 224
      Top = 64
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
      Height = 21
      Width = 273
    end
    object edStockCode: TcxTextEdit [2]
      Left = 97
      Top = 91
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
      Width = 112
    end
    object edStockName: TcxTextEdit [3]
      Left = 224
      Top = 91
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
      Height = 21
      Width = 273
    end
    object edDealCode: TcxTextEdit [4]
      Left = 97
      Top = 37
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'edDealCode'
      Width = 200
    end
    object edBS: TcxTextEdit [5]
      Left = 97
      Top = 118
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
    object edPrice: TcxCurrencyEdit [6]
      Left = 97
      Top = 145
      TabStop = False
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 96
    end
    object edQty: TcxCurrencyEdit [7]
      Left = 246
      Top = 145
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 8
      Height = 21
      Width = 155
    end
    object grdQty: TcxGrid [8]
      Left = 503
      Top = 10
      Width = 226
      Height = 200
      TabOrder = 9
      object gvwQty: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsSubject
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'Qty'
            Column = gvwQtyQty
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gvwQtyQty: TcxGridDBColumn
          Caption = 'Quantity'
          DataBinding.FieldName = 'Qty'
          Width = 153
        end
      end
      object glvQty: TcxGridLevel
        GridView = gvwQty
      end
    end
    object edTransDate: TcxTextEdit [9]
      Left = 97
      Top = 10
      TabStop = False
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 0
      Text = 'edTransDate'
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldHorizontal
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = edAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 273
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = edStockCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = edStockName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 273
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Dealticket Code'
      Control = edDealCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Buy / Sell'
      Control = edBS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Price'
      Control = edPrice
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Quantity'
      Control = edQty
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdQty
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = LayoutControlGroup_Root
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transaction Date'
      Control = edTransDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 226
    Width = 745
  end
  inherited dsSubject: TDataSource
    DataSet = frmOmgeoMonitor.cdsQtySplit
    Left = 464
    Top = 140
  end
end
