object frmMTITransRecord: TfrmMTITransRecord
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'MTI Transaction Record'
  ClientHeight = 363
  ClientWidth = 627
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
    Top = 0
    Width = 627
    Height = 314
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 529
    ExplicitHeight = 290
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 68
      Top = 10
      DataBinding.DataField = 'TRANSCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 293
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 396
      Top = 10
      RepositoryItem = dmGlobal.luMTITransType
      DataBinding.DataField = 'TRANSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBRichEdit1: TcxDBRichEdit
      Left = 68
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Height = 89
      Width = 449
    end
    object grdRecord: TcxGrid
      Left = 10
      Top = 132
      Width = 627
      Height = 314
      Align = alClient
      TabOrder = 3
      object gvwRecord: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsRecord
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwRecordTRANS_RECORD_ID: TcxGridDBColumn
          DataBinding.FieldName = 'TRANS_RECORD_ID'
          Visible = False
        end
        object gvwRecordTRANSID: TcxGridDBColumn
          DataBinding.FieldName = 'TRANSID'
          Visible = False
        end
        object gvwRecordRECORDID: TcxGridDBColumn
          Caption = 'Record Name'
          DataBinding.FieldName = 'RECORDID'
          RepositoryItem = dmGlobal.luMTIRecord
          Width = 259
        end
        object gvwRecordSEQID: TcxGridDBColumn
          DataBinding.FieldName = 'SEQID'
          Visible = False
        end
        object gvwRecordMINREC: TcxGridDBColumn
          Caption = 'Min Record'
          DataBinding.FieldName = 'MINREC'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
        end
        object gvwRecordMAXREC: TcxGridDBColumn
          Caption = 'Max Record'
          DataBinding.FieldName = 'MAXREC'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
        end
        object gvwRecordNUM_FIELDS: TcxGridDBColumn
          Caption = 'Num Fields'
          DataBinding.FieldName = 'NUM_FIELDS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
          Width = 68
        end
        object gvwRecordREQ_FIELDS: TcxGridDBColumn
          Caption = 'Req Fields'
          DataBinding.FieldName = 'REQ_FIELDS'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
          Width = 67
        end
        object gvwRecordMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwRecordMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwRecordAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwRecordAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwRecordUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwRecordUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwRecordNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwRecordISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwRecordID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
      end
      object grdRecordLevel1: TcxGridLevel
        GridView = gvwRecord
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
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Type'
      Parent = dxLayoutGroup2
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBRichEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grdField'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = grdRecord
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 314
    Width = 627
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitTop = 311
    ExplicitWidth = 529
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup4
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl2Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsSubject: TDataSource
    AutoEdit = False
    DataSet = frmMTITransList.cdsMTITrans
    Left = 288
    Top = 160
  end
  object dsRecord: TDataSource
    DataSet = frmMTITransList.cdsMTITransRecord
    Left = 288
    Top = 208
  end
end
