inherited frmWorkflow: TfrmWorkflow
  Caption = 'frmWorkflow'
  ClientHeight = 585
  ClientWidth = 942
  DoubleBuffered = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 942
  ExplicitHeight = 585
  TextHeight = 13
  object pgWorkflow: TcxPageControl [0]
    Left = 0
    Top = 45
    Width = 942
    Height = 540
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabEditor
    Properties.CustomButtons.Buttons = <>
    OnPageChanging = pgWorkflowPageChanging
    ClientRectBottom = 536
    ClientRectLeft = 4
    ClientRectRight = 938
    ClientRectTop = 24
    object tabBrowse: TcxTabSheet
      Caption = 'Browse'
      ImageIndex = 0
      object grdBrowse: TcxGrid
        Left = 0
        Top = 45
        Width = 934
        Height = 467
        Align = alClient
        TabOrder = 0
        object gvwBrowse: TcxGridDBBandedTableView
          PopupMenu = popBrowse
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsBrowse
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
        end
        object grdBrowseLevel1: TcxGridLevel
          GridView = gvwBrowse
        end
      end
      object lcBrowseTop: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 934
        Height = 45
        Align = alTop
        TabOrder = 1
        object cbWorkflowActivity: TcxImageComboBox
          Left = 99
          Top = 10
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 300
        end
        object btnViewData: TcxButton
          Left = 405
          Top = 10
          Width = 75
          Height = 25
          Action = actViewListData
          TabOrder = 1
        end
        object lcBrowseTopGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lcBrowseTopItem1: TdxLayoutItem
          Parent = lcBrowseTopGroup1
          CaptionOptions.Text = 'Workflow Activity'
          Control = cbWorkflowActivity
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcBrowseTopItem2: TdxLayoutItem
          Parent = lcBrowseTopGroup1
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnViewData
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcBrowseTopGroup1: TdxLayoutGroup
          Parent = lcBrowseTopGroup_Root
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tabEditor: TcxTabSheet
      Caption = 'Editor'
      ImageIndex = 1
      object lcEditorTop: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 934
        Height = 45
        Align = alTop
        TabOrder = 0
        Visible = False
        object lcEditorTopGroup_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object lcEditor: TdxLayoutControl
        Left = 0
        Top = 45
        Width = 934
        Height = 467
        Align = alClient
        BevelKind = bkTile
        TabOrder = 1
        object grdDataActivityStatus: TcxGrid
          Left = 308
          Top = 68
          Width = 600
          Height = 318
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object gvwDataActivityStatus: TcxGridDBBandedTableView
            PopupMenu = popStatus
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsDataActivityStatus
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwDataActivityStatusDATAID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DATAID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusACTIVITYID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ACTIVITYID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusSTATUS: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'STATUS'
              RepositoryItem = dmGlobal.luWorkflowStatus
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusDONE_BY: TcxGridDBBandedColumn
              Caption = 'User'
              DataBinding.FieldName = 'DONE_BY'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusDONE_DATE: TcxGridDBBandedColumn
              Caption = 'Done Date'
              DataBinding.FieldName = 'DONE_DATE'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusNOTES: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOTES'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusDESCRIPTION: TcxGridDBBandedColumn
              Caption = 'Activity'
              DataBinding.FieldName = 'DESCRIPTION'
              Width = 170
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwDataActivityStatusACK_DATE: TcxGridDBBandedColumn
              Caption = 'Acknowledge Date'
              DataBinding.FieldName = 'ACK_DATE'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object grdDataActivityStatusLevel1: TcxGridLevel
            GridView = gvwDataActivityStatus
          end
        end
        object grdWorkflowDataNotes: TcxGrid
          Left = 22
          Top = 68
          Width = 272
          Height = 318
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object gvwWorkflowDataNotes: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsWorkflowDataNotes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwWorkflowDataNotesFLOWID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FLOWID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwWorkflowDataNotesDATAID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DATAID'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwWorkflowDataNotesNOTES_DATE: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'NOTES_DATE'
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwWorkflowDataNotesNOTES: TcxGridDBBandedColumn
              Caption = 'Notes'
              DataBinding.FieldName = 'NOTES'
              Width = 231
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwWorkflowDataNotesNOTES_USER: TcxGridDBBandedColumn
              Caption = 'User'
              DataBinding.FieldName = 'NOTES_USER'
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object glvWorkflowDataNotes: TcxGridDBLayoutView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsWorkflowDataNotes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.SingleRecordStretch = srsClient
            object glvWorkflowDataNotesFLOWID: TcxGridDBLayoutViewItem
              DataBinding.FieldName = 'FLOWID'
              Visible = False
              LayoutItem = glvWorkflowDataNotesLayoutItem1
            end
            object glvWorkflowDataNotesDATAID: TcxGridDBLayoutViewItem
              DataBinding.FieldName = 'DATAID'
              Visible = False
              LayoutItem = glvWorkflowDataNotesLayoutItem2
            end
            object glvWorkflowDataNotesNOTES_DATE: TcxGridDBLayoutViewItem
              Caption = 'Date'
              DataBinding.FieldName = 'NOTES_DATE'
              LayoutItem = glvWorkflowDataNotesLayoutItem3
            end
            object glvWorkflowDataNotesNOTES: TcxGridDBLayoutViewItem
              Caption = 'Notes'
              DataBinding.FieldName = 'NOTES'
              PropertiesClassName = 'TcxMemoProperties'
              Properties.Alignment = taLeftJustify
              Properties.MaxLength = 0
              Properties.ReadOnly = True
              LayoutItem = glvWorkflowDataNotesLayoutItem4
            end
            object glvWorkflowDataNotesNOTES_USER: TcxGridDBLayoutViewItem
              Caption = 'User'
              DataBinding.FieldName = 'NOTES_USER'
              LayoutItem = glvWorkflowDataNotesLayoutItem5
            end
            object glvWorkflowDataNotesGroup_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Template Card'
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object glvWorkflowDataNotesLayoutItem1: TcxGridLayoutItem
              Index = -1
            end
            object glvWorkflowDataNotesLayoutItem2: TcxGridLayoutItem
              Index = -1
            end
            object glvWorkflowDataNotesLayoutItem3: TcxGridLayoutItem
              Parent = glvWorkflowDataNotesGroup1
              AlignHorz = ahRight
              SizeOptions.Width = 200
              Index = 1
            end
            object glvWorkflowDataNotesLayoutItem4: TcxGridLayoutItem
              Parent = glvWorkflowDataNotesGroup_Root
              AlignHorz = ahClient
              AlignVert = avClient
              SizeOptions.Height = 63
              SizeOptions.Width = 581
              CaptionOptions.Layout = clTop
              Index = 0
            end
            object glvWorkflowDataNotesLayoutItem5: TcxGridLayoutItem
              Parent = glvWorkflowDataNotesGroup1
              AlignHorz = ahClient
              SizeOptions.Width = 295
              Index = 0
            end
            object glvWorkflowDataNotesGroup1: TdxLayoutGroup
              Parent = glvWorkflowDataNotesGroup_Root
              AlignVert = avBottom
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
          end
          object grdWorkflowDataNotesLevel1: TcxGridLevel
            GridView = glvWorkflowDataNotes
          end
        end
        object lcEditorMain: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avParentManaged
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lcEditorItem1: TdxLayoutItem
          Parent = lcEditorGroup1
          AlignVert = avClient
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = False
          SizeOptions.Width = 600
          Control = grdDataActivityStatus
          ControlOptions.OriginalHeight = 300
          ControlOptions.OriginalWidth = 600
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lcEditorForm: TdxLayoutGroup
          Parent = lcEditorMain
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object lcEditorItem2: TdxLayoutItem
          Parent = lcEditorGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = False
          SizeOptions.Width = 316
          Control = grdWorkflowDataNotes
          ControlOptions.OriginalHeight = 297
          ControlOptions.OriginalWidth = 339
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcEditorGroup1: TdxLayoutGroup
          Parent = lcEditorMain
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Height = 350
          ButtonOptions.Buttons = <>
          ButtonOptions.ShowExpandButton = True
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object lcEditorSplitterItem1: TdxLayoutSplitterItem
          Parent = lcEditorGroup1
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          CaptionOptions.Text = 'Splitter'
          Index = 1
        end
      end
    end
  end
  object lcTopMenu: TdxLayoutControl [1]
    Left = 0
    Top = 0
    Width = 942
    Height = 45
    Align = alTop
    TabOrder = 1
    object lblRecordInfo: TcxLabel
      Left = 772
      Top = 14
      Caption = '1 / 1.000'
      Style.HotTrack = False
    end
    object dbNavBrowse: TDBNavigator
      Left = 826
      Top = 10
      Width = 50
      Height = 25
      DataSource = dsBrowse
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 3
      OnClick = dbNavBrowseClick
    end
    object pnlView: TPanel
      Left = 882
      Top = 10
      Width = 50
      Height = 25
      BevelOuter = bvNone
      TabOrder = 4
      object btnList: TcxButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Align = alLeft
        Action = actList
        OptionsImage.Images = imlWorkflow
        PaintStyle = bpsGlyph
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object btnSingle: TcxButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Align = alClient
        Action = actSingle
        PaintStyle = bpsGlyph
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
    object pnlCentre: TPanel
      Left = 411
      Top = 10
      Width = 120
      Height = 25
      BevelOuter = bvNone
      TabOrder = 1
      object btnMore: TcxButton
        Left = 60
        Top = 0
        Width = 60
        Height = 25
        Align = alLeft
        Caption = 'More'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = imlWorkflow
        OptionsImage.Layout = blGlyphRight
        TabOrder = 0
        OnClick = btnMoreClick
      end
      object btnPrint: TcxButton
        Left = 0
        Top = 0
        Width = 60
        Height = 25
        Align = alLeft
        Caption = 'Print'
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = imlWorkflow
        OptionsImage.Layout = blGlyphRight
        PopupMenu = popPrint
        TabOrder = 1
        Visible = False
        OnClick = btnPrintClick
      end
    end
    object pnlLeft: TPanel
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      BevelOuter = bvNone
      TabOrder = 0
      object btnCreate: TcxButton
        Left = 0
        Top = 0
        Width = 50
        Height = 25
        Align = alLeft
        Action = actCreate
        TabOrder = 0
      end
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcTopMenuGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcTopMenuItem9: TdxLayoutItem
      Parent = lcTopMenuGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblRecordInfo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcNavBrowse: TdxLayoutItem
      Parent = lcTopMenuGroup2
      Control = dbNavBrowse
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcTopMenuGroup2: TdxLayoutGroup
      Parent = lcTopMenuGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lcTopMenuItem10: TdxLayoutItem
      Parent = lcTopMenuGroup2
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlView
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcTopMenuItem1: TdxLayoutItem
      Parent = lcTopMenuGroup1
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlCentre
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcTopMenuItem4: TdxLayoutItem
      Parent = lcTopMenuGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlLeft
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited popDocking: TPopupMenu
    Left = 376
    Top = 160
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclWorkflow
    Top = 160
  end
  object aclWorkflow: TActionList
    Images = imlWorkflow
    Left = 296
    Top = 208
    object actCreate: TNAction
      Category = 'NActions'
      Caption = 'Create'
      OnExecute = actCreateExecute
      CheckPermission = False
    end
    object actCreateFromSelectedData: TNAction
      Category = 'NActions'
      Caption = 'Copy From Selected Data'
      OnExecute = actCreateFromSelectedDataExecute
      OnUpdate = actCreateFromSelectedDataUpdate
      CheckPermission = False
    end
    object actEdit: TNAction
      Category = 'NActions'
      Caption = 'Edit'
      OnExecute = actEditExecute
      CheckPermission = False
    end
    object actPrint: TNAction
      Category = 'NActions'
      Caption = 'Print'
      CheckPermission = False
    end
    object actMore: TNAction
      Category = 'NActions'
      Caption = 'More'
      CheckPermission = False
    end
    object actList: TNAction
      Category = 'NActions'
      Caption = 'List'
      Hint = 'List View'
      ImageIndex = 1
      OnExecute = actListExecute
      CheckPermission = False
    end
    object actSingle: TNAction
      Category = 'NActions'
      Caption = 'Single'
      Hint = 'Form View'
      ImageIndex = 2
      OnExecute = actSingleExecute
      CheckPermission = False
    end
    object actDelete: TNAction
      Category = 'NActions'
      Caption = 'Delete'
      Visible = False
      OnExecute = actDeleteExecute
      CheckPermission = False
    end
    object actDuplicate: TNAction
      Category = 'NActions'
      Caption = 'Duplicate'
      OnExecute = actDuplicateExecute
      CheckPermission = False
    end
    object actComplete: TNAction
      Category = 'NActions'
      Caption = 'Complete'
      OnExecute = actCompleteExecute
      CheckPermission = False
    end
    object actBackToPreviousProcess: TNAction
      Category = 'NActions'
      Caption = 'Back To Previous Process'
      OnExecute = actBackToPreviousProcessExecute
      CheckPermission = False
    end
    object actRefreshList: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshListExecute
      CheckPermission = False
    end
    object actRefreshSingle: TNAction
      Category = 'NActions'
      Caption = 'Refresh'
      OnExecute = actRefreshSingleExecute
      CheckPermission = False
    end
    object actViewListData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewListDataExecute
      CheckPermission = False
    end
    object actAckActivity: TNAction
      Category = 'NActions'
      Caption = 'Acknowledge'
      OnExecute = actAckActivityExecute
      CheckPermission = False
    end
    object actOpenAckActivity: TNAction
      Category = 'NActions'
      Caption = 'Open Acknowledge'
      OnExecute = actOpenAckActivityExecute
      CheckPermission = False
    end
  end
  object dsBrowse: TDataSource
    Left = 112
    Top = 344
  end
  object popPrint: TPopupMenu
    Left = 376
    Top = 208
  end
  object popMore: TPopupMenu
    Left = 376
    Top = 256
    object Duplicate1: TMenuItem
      Action = actDuplicate
    end
    object Refresh1: TMenuItem
      Action = actRefreshSingle
    end
  end
  object imlWorkflow: TImageList
    Left = 296
    Top = 256
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151513662121
      1DA021211DA021211DA021211DA021211DA021211DA021211DA021211DA02121
      1DA021211DA01514126400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000390000
      00A8000000A800000037000000A8000000A8000000A8000000A8000000A80000
      00A8000000A8000000A80000000000000000000000000000000021211EA13534
      2FFF2F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E
      28E035342FFF21211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0A0FFA0A0A0FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A0FFC4C4C4FFC4C4C4FFA0A0A0FF000000000000
      00000000000000000000000000000000000000000000000000000000001C0000
      0054000000540000001B00000054000000540000005400000054000000540000
      005400000054000000540000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A0A0FFD9D9D9FFD0D0D0FFD0D0D0FFD9D9D9FFA0A0A0FF0000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A0A0FFE5E5E5FFE5E5E5FFE3E3E3FFE3E3E3FFE5E5E5FFE5E5E5FFA0A0
      A0FF000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFA0A0A0FF00000000000000000000000000000000000000000000001E0000
      0058000000580000001C00000058000000580000005800000058000000580000
      005800000058000000580000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70B3A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FF707070B30000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00FF000000FF00000054000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000000000000021211DA02F2E
      28E0000000000000000000000000000000000000000000000000000000000000
      00002F2E28E021211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000003B0000
      00AC000000AC00000038000000AC000000AC000000AC000000AC000000AC0000
      00AC000000AC000000AC0000000000000000000000000000000021211DA03534
      2FFF2F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E28E02F2E
      28E035342FFF21211DA000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151513662121
      1EA121211DA021211DA021211DA021211DA021211DA021211DA021211DA02121
      1DA021211DA01514126400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object cdsDataActivityStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryDataActivityStatus'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsDataActivityStatusAfterOpen
    BeforeClose = cdsDataActivityStatusBeforeClose
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 648
    Top = 320
    object cdsDataActivityStatusDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataActivityStatusACTIVITYID: TIntegerField
      FieldName = 'ACTIVITYID'
      Required = True
    end
    object cdsDataActivityStatusSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsDataActivityStatusDONE_BY: TStringField
      FieldName = 'DONE_BY'
    end
    object cdsDataActivityStatusDONE_DATE: TDateTimeField
      FieldName = 'DONE_DATE'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsDataActivityStatusNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsDataActivityStatusDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Size = 60
    end
    object cdsDataActivityStatusACK_DATE: TDateTimeField
      FieldName = 'ACK_DATE'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
  end
  object dsDataActivityStatus: TDataSource
    DataSet = cdsDataActivityStatus
    Left = 648
    Top = 368
  end
  object cdsWorkflowDataNotes: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryWorkflowDataNotes'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 520
    Top = 320
    object cdsWorkflowDataNotesFLOWID: TIntegerField
      FieldName = 'FLOWID'
      Required = True
    end
    object cdsWorkflowDataNotesDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsWorkflowDataNotesNOTES_DATE: TDateTimeField
      FieldName = 'NOTES_DATE'
      Required = True
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsWorkflowDataNotesNOTES: TMemoField
      FieldName = 'NOTES'
      Required = True
      BlobType = ftMemo
    end
    object cdsWorkflowDataNotesNOTES_USER: TStringField
      FieldName = 'NOTES_USER'
      Required = True
    end
  end
  object dsWorkflowDataNotes: TDataSource
    DataSet = cdsWorkflowDataNotes
    Left = 520
    Top = 368
  end
  object popStatus: TPopupMenu
    Left = 376
    Top = 304
    object Acknowledge1: TMenuItem
      Action = actAckActivity
    end
    object OpenAcknowledge1: TMenuItem
      Action = actOpenAckActivity
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Complete1: TMenuItem
      Action = actComplete
    end
    object BackToPreviousProcess1: TMenuItem
      Action = actBackToPreviousProcess
    end
  end
  object popBrowse: TPopupMenu
    Left = 376
    Top = 352
    object Refresh2: TMenuItem
      Action = actRefreshList
    end
  end
  object cdsWorkflowActivity: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryWorkflowActivity'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 520
    Top = 272
    object cdsWorkflowActivityACTIVITYID: TIntegerField
      FieldName = 'ACTIVITYID'
      Required = True
    end
    object cdsWorkflowActivityDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 60
    end
    object cdsWorkflowActivityFLOWID: TIntegerField
      FieldName = 'FLOWID'
      Required = True
    end
  end
  object cdsDataActivivtyLastStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryDataActivityLastStatus'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 648
    Top = 272
    object cdsDataActivivtyLastStatusFLOWID: TIntegerField
      FieldName = 'FLOWID'
      Required = True
    end
    object cdsDataActivivtyLastStatusDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
    object cdsDataActivivtyLastStatusLAST_ACTIVITYID: TIntegerField
      FieldName = 'LAST_ACTIVITYID'
    end
    object cdsDataActivivtyLastStatusLAST_ACTIVITY_USER: TStringField
      FieldName = 'LAST_ACTIVITY_USER'
    end
    object cdsDataActivivtyLastStatusLAST_ACTIVITY_DATE: TDateTimeField
      FieldName = 'LAST_ACTIVITY_DATE'
    end
    object cdsDataActivivtyLastStatusNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsDataActivivtyLastStatusDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
      Size = 60
    end
  end
  object cdsDataActivityFinishStatus: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLOWID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'DATAID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryDataActivityFinishStatus'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsDataActivityFinishStatusAfterOpen
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 648
    Top = 224
    object cdsDataActivityFinishStatusFLOWID: TIntegerField
      FieldName = 'FLOWID'
      Required = True
    end
    object cdsDataActivityFinishStatusDATAID: TLargeintField
      FieldName = 'DATAID'
      Required = True
    end
  end
  object ReportContainer: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    Params = <>
    Left = 296
    Top = 304
  end
end
