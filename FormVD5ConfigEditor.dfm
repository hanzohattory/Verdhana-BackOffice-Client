object frmVD5ConfigEditor: TfrmVD5ConfigEditor
  Left = 0
  Top = 0
  Caption = 'VD5 Config'
  ClientHeight = 335
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 277
    Width = 452
    Height = 58
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 288
    ExplicitWidth = 464
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 90
      Height = 25
      Caption = '&Ok'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 106
      Top = 10
      Width = 90
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = dmGlobal.ilIcons
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
      ControlOptions.OriginalWidth = 90
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
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 452
    Height = 277
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 464
    ExplicitHeight = 288
    object lbVD5: TcxDBLabel
      Left = 71
      Top = 10
      DataBinding.DataField = 'VD5'
      DataBinding.DataSource = dsHeader
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 75
    end
    object lbBaris: TcxDBLabel
      Left = 180
      Top = 10
      DataBinding.DataField = 'Baris'
      DataBinding.DataSource = dsHeader
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 50
    end
    object lbKeterangan: TcxDBLabel
      Left = 71
      Top = 37
      DataBinding.DataField = 'Keterangan'
      DataBinding.DataSource = dsHeader
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Height = 21
      Width = 371
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 64
      Width = 432
      Height = 200
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object gvwVD5Config: TcxGridDBBandedTableView
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
        DataController.DataSource = dsVD5
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterRowInfoText = dmGlobal.GridFilterBox
        Bands = <
          item
          end>
        object gvwVD5ConfigID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwVD5ConfigVD5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VD5'
          Options.Editing = False
          Options.Focusing = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwVD5ConfigBARIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BARIS'
          Options.Editing = False
          Options.Focusing = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwVD5ConfigCOACODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COACODE'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwVD5Config
      end
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lbxVD5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'VD5'
      Control = lbVD5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Baris'
      Control = lbBaris
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Keterangan'
      Control = lbKeterangan
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 371
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object cdsVD5: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VD5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BARIS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMKBD_qryVD5Config'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsVD5NewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'ID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 184
    object cdsVD5ID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
    object cdsVD5VD5: TStringField
      FieldName = 'VD5'
      Size = 5
    end
    object cdsVD5BARIS: TIntegerField
      DisplayLabel = 'Baris'
      FieldName = 'BARIS'
      Required = True
    end
    object cdsVD5COACODE: TStringField
      DisplayLabel = 'COA Code'
      FieldName = 'COACODE'
      Required = True
    end
  end
  object cdsHeader: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 16
    object cdsHeaderVD5: TStringField
      FieldName = 'VD5'
      Size = 10
    end
    object cdsHeaderBaris: TIntegerField
      FieldName = 'Baris'
    end
    object cdsHeaderKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 500
    end
  end
  object dsHeader: TDataSource
    DataSet = cdsHeader
    Left = 376
    Top = 64
  end
  object dsVD5: TDataSource
    DataSet = cdsVD5
    Left = 368
    Top = 240
  end
end
