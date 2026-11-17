inherited frmGLJournalMaps: TfrmGLJournalMaps
  Caption = 'GL Journal Map'
  ClientWidth = 868
  ExplicitWidth = 874
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 868
    Height = 100
    Align = alTop
    ExplicitWidth = 868
    ExplicitHeight = 100
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 101
      Top = 64
      DataBinding.DataField = 'JOUMAPDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 392
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 101
      Top = 37
      DataBinding.DataField = 'CASH_STOCK'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'Cash'
          ImageIndex = 0
          Value = 'C'
        end
        item
          Description = 'Stock'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 98
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 101
      Top = 10
      DataBinding.DataField = 'JOUMAPCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cash / Stock'
      Parent = LayoutControlGroup_Root
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Journal Map Code'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Width = 868
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 100
    Width = 868
    Height = 215
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 165
    ExplicitTop = 123
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwGLJournalMap: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsGLJournalMap
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwGLJournalMapJOUMAPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JOUMAPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGLJournalMapJMSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JMSEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGLJournalMapCCYCODE: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCYCODE'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwGLJournalMapGLACCOUNTID: TcxGridDBBandedColumn
        Caption = 'GL Account ID'
        DataBinding.FieldName = 'GLACCOUNTID'
        Width = 420
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwGLJournalMapMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwGLJournalMapMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwGLJournalMapAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwGLJournalMapAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwGLJournalMapUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwGLJournalMapUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwGLJournalMapNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwGLJournalMapISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwGLJournalMapID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwGLJournalMap
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmGLJournalMap.GLJournalMap_H
    Left = 796
    Top = 33
  end
  object dsGLJournalMap: TDataSource
    DataSet = frmGLJournalMap.GLJournalMap_D
    Left = 798
    Top = 75
  end
end
