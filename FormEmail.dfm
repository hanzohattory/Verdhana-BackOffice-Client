inherited frmEmail: TfrmEmail
  Caption = 'Email'
  ClientHeight = 567
  ClientWidth = 898
  OnDestroy = FormDestroy
  ExplicitWidth = 904
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 898
    Height = 477
    ExplicitWidth = 898
    ExplicitHeight = 477
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 78
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 214
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 363
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 78
      Top = 64
      DataBinding.DataField = 'EMAILTO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 499
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 78
      Top = 91
      DataBinding.DataField = 'EMAILCC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 499
    end
    object cxDBTextEdit5: TcxDBTextEdit [4]
      Left = 78
      Top = 118
      DataBinding.DataField = 'EMAILBCC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 499
    end
    object cxDBTextEdit6: TcxDBTextEdit [5]
      Left = 78
      Top = 145
      DataBinding.DataField = 'EMAILSUBJECT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 499
    end
    object cxPageControl2: TcxPageControl [6]
      Left = 583
      Top = 10
      Width = 305
      Height = 156
      TabOrder = 8
      Properties.ActivePage = tabAttachment
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 152
      ClientRectLeft = 4
      ClientRectRight = 301
      ClientRectTop = 24
      object tabAttachment: TcxTabSheet
        Caption = 'Attachment File'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 297
          Height = 128
          Align = alClient
          TabOrder = 0
          object gvwAttachment: TcxGridDBBandedTableView
            PopupMenu = popAttachment
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAttachment
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
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
            Styles.ContentOdd = frmEmailMonitoring.BlueToggle
            Bands = <
              item
                Caption = 'Attachment File'
                Width = 259
              end>
            object gvwAttachmentEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn
              Caption = 'File Name'
              DataBinding.FieldName = 'EMAIL_OBJECT_FILENAME'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwAttachment
          end
        end
      end
      object tabNotes: TcxTabSheet
        Caption = 'Notes'
        ImageIndex = 1
        object cxDBRichEdit2: TcxDBRichEdit
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'NOTES'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Height = 128
          Width = 297
        end
      end
    end
    object cxDBMemo1: TcxDBMemo [7]
      Left = 10
      Top = 190
      DataBinding.DataField = 'EMAILMESSAGE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 277
      Width = 878
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [8]
      Left = 78
      Top = 10
      RepositoryItem = dmGlobal.luEmailTypes
      DataBinding.DataField = 'EMAILTYPE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 317
    end
    object cxDBDateEdit1: TcxDBDateEdit [9]
      Left = 456
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'EMAILDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 363
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email To'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 499
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email CC'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 499
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email BCC'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 499
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Subject'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 499
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxPageControl2'
      CaptionOptions.Visible = False
      Control = cxPageControl2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 156
      ControlOptions.OriginalWidth = 303
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Message'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 275
      ControlOptions.OriginalWidth = 876
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Type'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group5
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 498
    Width = 898
    ExplicitTop = 498
    ExplicitWidth = 898
    inherited btnOK: TcxButton
      Caption = 'OK'
    end
    inherited btnCancel: TcxButton
      Caption = 'Cancel'
    end
    inherited dbNavLog: TDBNavigator
      Left = 784
      Hints.Strings = ()
      ExplicitLeft = 784
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 547
    Width = 898
    ExplicitTop = 547
    ExplicitWidth = 898
  end
  inherited tabEditorData: TTabSet
    Top = 477
    Width = 898
    ExplicitTop = 477
    ExplicitWidth = 898
  end
  inherited dsSubject: TDataSource
    DataSet = frmEmailMonitoring.cdsEmailView
    Left = 88
    Top = 216
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 88
    Top = 264
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsAttachment: TDataSource
    DataSet = frmEmailMonitoring.cdsEmailAttachmentView
    Left = 264
    Top = 488
  end
  object popAttachment: TPopupMenu
    Left = 272
    Top = 408
    object AddAttachmentFile1: TMenuItem
      Action = actAdd
    end
    object ChangeAttachmentFile1: TMenuItem
      Action = actChange
    end
    object DeleteAttachmentFile1: TMenuItem
      Action = actDelete
    end
    object ViewAttachmentFile1: TMenuItem
      Action = actView
    end
  end
  object aclEmail: TActionList
    Left = 272
    Top = 360
    object actAdd: TNAction
      Category = 'NActions'
      Caption = 'Add Attachment File'
      OnExecute = actAddExecute
      CheckPermission = False
    end
    object actChange: TNAction
      Category = 'NActions'
      Caption = 'Change Attachment File'
      OnExecute = actChangeExecute
      OnUpdate = actChangeUpdate
      CheckPermission = False
    end
    object actDelete: TNAction
      Category = 'NActions'
      Caption = 'Delete Attachment File'
      OnExecute = actDeleteExecute
      OnUpdate = actChangeUpdate
      CheckPermission = False
    end
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View Attachment File'
      OnExecute = actViewExecute
      OnUpdate = actChangeUpdate
      CheckPermission = False
    end
  end
  object odDocs: TOpenDialog
    Left = 320
    Top = 93
  end
end
