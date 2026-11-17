object frmGenContractFile: TfrmGenContractFile
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Contract File'
  ClientHeight = 404
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 355
    Width = 732
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitLeft = -64
    ExplicitTop = 353
    ExplicitWidth = 794
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
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
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object grdContractFile: TcxGrid
    Left = 0
    Top = 121
    Width = 732
    Height = 234
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -64
    ExplicitTop = 0
    ExplicitWidth = 794
    ExplicitHeight = 402
    object gvwContractFile: TcxGridDBTableView
      PopupMenu = popContractFile
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = dsGenContractFile
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = frmMonthlyStatementProcess.BlueToggle
      object gvwContractFileACCID: TcxGridDBColumn
        Caption = 'Account ID'
        DataBinding.FieldName = 'ACCID'
      end
      object gvwContractFileACCCODE: TcxGridDBColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 73
      end
      object gvwContractFilePROCESS_NAME: TcxGridDBColumn
        Caption = 'Process Name'
        DataBinding.FieldName = 'PROCESS_NAME'
        Width = 73
      end
      object gvwContractFileMAIL_SUBJECT: TcxGridDBColumn
        Caption = 'Mail Subject'
        DataBinding.FieldName = 'MAIL_SUBJECT'
        Width = 63
      end
      object gvwContractFileMAIL_TO: TcxGridDBColumn
        Caption = 'Mail To'
        DataBinding.FieldName = 'MAIL_TO'
        Width = 124
      end
      object gvwContractFileMAIL_MESSAGE: TcxGridDBColumn
        Caption = 'Mail Message'
        DataBinding.FieldName = 'MAIL_MESSAGE'
        Width = 138
      end
      object gvwContractFileMAIL_OBJECT_FILENAME: TcxGridDBColumn
        Caption = 'File Name'
        DataBinding.FieldName = 'MAIL_OBJECT_FILENAME'
        Width = 119
      end
      object gvwContractFileMAIL_STATUS: TcxGridDBColumn
        Caption = 'Mail Status'
        DataBinding.FieldName = 'MAIL_STATUS'
        Width = 58
      end
      object gvwContractFileNOTES: TcxGridDBColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'NOTES'
      end
    end
    object grdContractFileLevel1: TcxGridLevel
      GridView = gvwContractFile
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 732
    Height = 121
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 529
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 43
      Top = 10
      DataBinding.DataField = 'PROCESS_CODE'
      DataBinding.DataSource = dsGenContract
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 43
      Top = 37
      DataBinding.DataField = 'NOTES'
      DataBinding.DataSource = dsGenContract
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 68
      Width = 470
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Notes'
      Parent = dxLayoutGroup1
      Control = cxDBMemo1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsGenContract: TDataSource
    DataSet = frmContracts.cdsGenContract
    Left = 248
    Top = 16
  end
  object dsGenContractFile: TDataSource
    DataSet = frmContracts.cdsgenContractFile
    Left = 336
    Top = 16
  end
  object popContractFile: TPopupMenu
    Left = 256
    Top = 232
    object ViewClientStatementDocument1: TMenuItem
      Action = actViewDoc
    end
  end
  object aclContractFile: TActionList
    Left = 376
    Top = 224
    object actViewDoc: TNAction
      Category = 'NActions'
      Caption = 'View Contract Document'
      OnExecute = actViewDocExecute
      CheckPermission = False
    end
  end
end
