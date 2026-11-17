object frmSendEmail: TfrmSendEmail
  Left = 0
  Top = 0
  Caption = 'Email'
  ClientHeight = 569
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 992
    Height = 520
    Align = alClient
    TabOrder = 0
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 78
      Top = 10
      RepositoryItem = dmGlobal.luEmailType
      DataBinding.DataField = 'EMAILTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 331
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 470
      Top = 10
      DataBinding.DataField = 'EMAILDATE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 214
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 363
    end
    object cxDBTextEdit3: TcxDBTextEdit
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
    object cxDBTextEdit4: TcxDBTextEdit
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
    object cxDBTextEdit5: TcxDBTextEdit
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
    object cxDBTextEdit6: TcxDBTextEdit
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
    object cxPageControl2: TcxPageControl
      Left = 583
      Top = 10
      Width = 399
      Height = 156
      TabOrder = 8
      Properties.ActivePage = tabAttachment
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 152
      ClientRectLeft = 4
      ClientRectRight = 395
      ClientRectTop = 24
      object tabAttachment: TcxTabSheet
        Caption = 'Attachment File'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 391
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
            OptionsView.ColumnAutoWidth = True
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
          Width = 391
        end
      end
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 78
      Top = 37
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object cxDBMemo2: TcxDBMemo
      Left = 10
      Top = 190
      DataBinding.DataField = 'EMAILMESSAGE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 320
      Width = 972
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 331
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Email Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account'
      Control = cxDBButtonEdit1
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
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
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
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxPageControl2'
      CaptionOptions.Visible = False
      Control = cxPageControl2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 156
      ControlOptions.OriginalWidth = 399
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Email Message'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo2
      ControlOptions.OriginalHeight = 277
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 520
    Width = 992
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'OK'
      LookAndFeel.SkinName = 'LiquidSky'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000FFFFFFFF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000800000FF800000FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FFFFFFFFFF0080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000800000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000800000FF008000FF008000FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FF008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000800000FF008000FF008000FF008000FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000800000FF0080
        00FF008000FF008000FF00FF00FF008000FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        80000080800000808000008000FF008000FF008000FF00FF00FF0080800000FF
        00FF008000FF008000FF008000FF800000FF0080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FF00808000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF00FF00FF00808000008080000080800000FF00FF008000FF008000FF0080
        00FF800000FF0080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF808080FF008080000080800000808000808080FFFFFF
        FFFF0080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000080800000FF00FF0080800000808000008080000080
        80000080800000FF00FF008000FF008000FF008000FF800000FF008080000080
        80000080800000808000008080000080800000808000808080FF008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000008080000080800000FF00FF0080
        00FF008000FF008000FF800000FF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000FF00FF008000FF008000FF008000FF8000
        00FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000FF00FF008000FF008000FF008000FF800000FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000FF00FF008000FF0080
        00FF008000FF800000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FFFFFFFFFF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000FF00FF008000FF008000FF800000FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FFFFFFFFFF008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000080800000FF
        00FF008000FF008000FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000FF00FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D560A00000000000036000000280000002400000012000000010020000000
        000000000000C40E0000C40E0000000000000000000000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000FFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000000FFFF808080FF008080000080800000808000008080000080
        8000008080000080800000808000808080FF808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000FFFFFFFF00808000008080000080
        8000008080000080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF8080
        80FF008080000080800000808000008080000080800000808000808080FFFFFF
        FFFF00808000808080FFFFFFFFFF008080000080800000808000FFFFFFFF8080
        80FF808080FFFFFFFFFF00808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF000080FF808080FF00808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF00808000FFFFFFFF808080FF0080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000808080FFFFFF
        FFFF008080000080800000808000808080FFFFFFFFFF808080FF008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080000080
        800000808000008080000000FFFF000080FF000080FF000080FF000080FF0000
        80FF000080FF000080FF000080FF808080FF0080800000808000008080000080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        8000808080FF00808000008080000080800000808000FFFFFFFF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000000
        FFFF000080FF000080FF000080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000808080FFFFFFFFFF00808000008080000080800000808000008080000080
        8000FFFFFFFF808080FF00808000008080000080800000808000008080000080
        800000808000008080000080800000808000000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000808080FFFFFFFFFF0080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000000FFFF000080FF000080FF000080FF000080FF808080FF008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000808080FFFFFFFFFF0080800000808000008080008080
        80FF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000000FFFF000080FF000080FF000080FF0000
        80FF000080FF808080FF00808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000808080FF0080
        8000008080000080800000808000808080FFFFFFFFFF00808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF000080FF000080FF808080FF000080FF000080FF000080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000008080000080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF808080FF008080000000
        FFFF000080FF000080FF000080FF808080FF0080800000808000008080000080
        800000808000008080000080800000808000808080FF00808000008080000080
        8000808080FFFFFFFFFF0080800000808000808080FFFFFFFFFF008080000080
        800000808000008080000080800000808000008080000000FFFF000080FF0000
        80FF808080FF0080800000808000008080000000FFFF000080FF000080FF0000
        80FF808080FF0080800000808000008080000080800000808000008080008080
        80FFFFFFFFFF0080800000808000808080FF00808000808080FFFFFFFFFF0080
        800000808000808080FFFFFFFFFF008080000080800000808000008080000080
        800000808000008080000000FFFF000080FF0080800000808000008080000080
        8000008080000000FFFF000080FF000080FF000080FF00808000008080000080
        8000008080000080800000808000808080FFFFFFFFFFFFFFFFFF808080FF0080
        80000080800000808000808080FFFFFFFFFF0080800000808000808080FFFFFF
        FFFF008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000008080000000FFFF0000
        80FF0000FFFF0080800000808000008080000080800000808000008080000080
        8000808080FF808080FF00808000008080000080800000808000008080008080
        80FFFFFFFFFFFFFFFFFFFFFFFFFF808080FF0080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000808080FF808080FF808080FF0080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        80000080800000808000008080000080800000808000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsAttachment: TDataSource
    DataSet = cdsEmailAttachment
    Left = 256
    Top = 336
  end
  object popAttachment: TPopupMenu
    Left = 256
    Top = 288
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
    Left = 256
    Top = 240
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
  object dsSubject: TDataSource
    DataSet = cdsEmail
    Left = 336
    Top = 240
  end
  object odDocs: TOpenDialog
    Left = 336
    Top = 285
  end
  object cdsEmail: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'EMAILID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryEmailView'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsEmailNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 240
    object cdsEmailEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsEmailEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      OnChange = cdsEmailACCIDChange
      Size = 10
    end
    object cdsEmailEMAILDATE: TDateField
      FieldName = 'EMAILDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEmailLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsEmailACCID: TIntegerField
      FieldName = 'ACCID'
      OnChange = cdsEmailACCIDChange
    end
    object cdsEmailACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsEmailACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsEmailEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      Size = 1
    end
    object cdsEmailNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsEmailMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEmailqryEmailAttachmentView: TDataSetField
      FieldName = 'qryEmailAttachmentView'
    end
  end
  object cdsEmailAttachment: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEmailqryEmailAttachmentView
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 288
    object cdsEmailAttachmentEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsEmailAttachmentSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsEmailAttachmentEMAIL_OBJECT_FILENAME: TStringField
      FieldName = 'EMAIL_OBJECT_FILENAME'
      Required = True
      Size = 100
    end
    object cdsEmailAttachmentEMAIL_OBJECT_FILE: TBlobField
      FieldName = 'EMAIL_OBJECT_FILE'
      Required = True
    end
    object cdsEmailAttachmentMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailAttachmentMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailAttachmentAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailAttachmentAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailAttachmentUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailAttachmentUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailAttachmentNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailAttachmentISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailAttachmentID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsEmailDraft: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMAILTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryEmailDraft'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 504
    Top = 240
    object cdsEmailDraftEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Required = True
      Size = 10
    end
    object cdsEmailDraftSMTPHOST: TStringField
      FieldName = 'SMTPHOST'
      Size = 100
    end
    object cdsEmailDraftSMTPPORT: TIntegerField
      FieldName = 'SMTPPORT'
    end
    object cdsEmailDraftSMTPUSERNAME: TStringField
      FieldName = 'SMTPUSERNAME'
      Size = 100
    end
    object cdsEmailDraftSMTPPASSWORD: TStringField
      FieldName = 'SMTPPASSWORD'
      Size = 100
    end
    object cdsEmailDraftEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailDraftEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailDraftEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailDraftEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailDraftEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailDraftMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailDraftMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailDraftAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailDraftAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailDraftUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailDraftUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailDraftNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailDraftISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailDraftID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEmailDraftCUSGID: TIntegerField
      FieldName = 'CUSGID'
    end
  end
  object cdsAccContactUsage: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUSGID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryAccContactUsage'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 416
    Top = 336
    object cdsAccContactUsageACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsAccContactUsageCUSGID: TIntegerField
      FieldName = 'CUSGID'
      Required = True
    end
    object cdsAccContactUsageCOUNTCODE: TStringField
      FieldName = 'COUNTCODE'
      Size = 10
    end
    object cdsAccContactUsageCONTNAME: TStringField
      FieldName = 'CONTNAME'
      Size = 30
    end
    object cdsAccContactUsageCONTPHONE: TStringField
      FieldName = 'CONTPHONE'
      Size = 30
    end
    object cdsAccContactUsageCONTMOBILE: TStringField
      FieldName = 'CONTMOBILE'
      Size = 30
    end
    object cdsAccContactUsageCONTADDRESS: TStringField
      FieldName = 'CONTADDRESS'
      Size = 150
    end
    object cdsAccContactUsageCONTEMAIL: TStringField
      FieldName = 'CONTEMAIL'
      Size = 150
    end
    object cdsAccContactUsageCONTFAX: TStringField
      FieldName = 'CONTFAX'
      Size = 30
    end
    object cdsAccContactUsageIDCARDTYPE: TStringField
      FieldName = 'IDCARDTYPE'
      Size = 10
    end
    object cdsAccContactUsageIDCARDNO: TStringField
      FieldName = 'IDCARDNO'
      Size = 30
    end
    object cdsAccContactUsageIDCARDEXPIRE: TDateField
      FieldName = 'IDCARDEXPIRE'
    end
    object cdsAccContactUsageSENDBYEMAIL: TStringField
      FieldName = 'SENDBYEMAIL'
      Size = 1
    end
    object cdsAccContactUsageSENDBYFAX: TStringField
      FieldName = 'SENDBYFAX'
      Size = 1
    end
    object cdsAccContactUsageSENDBYSMS: TStringField
      FieldName = 'SENDBYSMS'
      Size = 1
    end
    object cdsAccContactUsageSENDBYPOSTMAIL: TStringField
      FieldName = 'SENDBYPOSTMAIL'
      Size = 1
    end
    object cdsAccContactUsageMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAccContactUsageMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAccContactUsageAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAccContactUsageAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAccContactUsageUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsAccContactUsageUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsAccContactUsageNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsAccContactUsageISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAccContactUsageID: TLargeintField
      FieldName = 'ID'
    end
    object cdsAccContactUsageACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsAccContactUsageACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsAccContactUsageACCINIT: TStringField
      FieldName = 'ACCINIT'
      ReadOnly = True
      Size = 15
    end
    object cdsAccContactUsageACC_STS: TStringField
      FieldName = 'ACC_STS'
      ReadOnly = True
      Size = 1
    end
  end
end
