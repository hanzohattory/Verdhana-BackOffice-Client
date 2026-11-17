object frmBatchAssignGroup: TfrmBatchAssignGroup
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Assign Batch Process To Group'
  ClientHeight = 495
  ClientWidth = 730
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitWidth = 700
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 446
    Width = 730
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
    ExplicitLeft = -55
    ExplicitTop = 444
    ExplicitWidth = 755
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
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = btnCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 730
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = -55
    ExplicitWidth = 755
    ExplicitHeight = 410
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 320
      Height = 405
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 403
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 318
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Group List'
        TabOrder = 0
        ExplicitWidth = 319
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 33
        Width = 318
        Height = 371
        Align = alClient
        TabOrder = 1
        ExplicitLeft = -4
        ExplicitTop = 39
        object gvwGroupList: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsGroupList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwGroupListGROUPID: TcxGridDBColumn
            Caption = 'Group'
            DataBinding.FieldName = 'GROUPID'
            Width = 239
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwGroupList
        end
      end
    end
    object pnlCenter: TPanel
      Left = 320
      Top = 0
      Width = 88
      Height = 405
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 325
      ExplicitTop = 6
      object cxButton1: TcxButton
        Left = 24
        Top = 17
        Width = 41
        Height = 25
        Action = actAdd
        TabOrder = 0
      end
      object cxButton2: TcxButton
        Left = 24
        Top = 48
        Width = 41
        Height = 25
        Action = actRemove
        TabOrder = 1
      end
    end
    object pnlRight: TPanel
      Left = 408
      Top = 0
      Width = 322
      Height = 405
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 409
      ExplicitWidth = 346
      ExplicitHeight = 410
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 320
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Asigned Group'
        TabOrder = 0
        ExplicitWidth = 344
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 33
        Width = 320
        Height = 371
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 344
        ExplicitHeight = 376
        object gvwAssignedGroupList: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBatchGroup
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwAssignedGroupListGROUPID: TcxGridDBColumn
            Caption = 'Group'
            DataBinding.FieldName = 'GROUPID'
            Width = 305
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwAssignedGroupList
        end
      end
    end
  end
  object cdsBatchGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'BATCHID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryBatchGroup'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 488
    Top = 192
    object cdsBatchGroupBATCHID: TIntegerField
      FieldName = 'BATCHID'
      Required = True
    end
    object cdsBatchGroupGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsBatchGroupMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBatchGroupMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBatchGroupAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBatchGroupAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBatchGroupUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsBatchGroupUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsBatchGroupNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsBatchGroupISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBatchGroupID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsBatchGroup: TDataSource
    DataSet = cdsBatchGroup
    Left = 592
    Top = 192
  end
  object cdsGroupList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryGroupList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 104
    Top = 200
    object cdsGroupListGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGroupListAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsGroupListGROUPDESC: TStringField
      FieldName = 'GROUPDESC'
      Size = 50
    end
  end
  object dsGroupList: TDataSource
    DataSet = cdsGroupList
    Left = 216
    Top = 208
  end
  object ActionList1: TActionList
    Left = 272
    Top = 168
    object actAdd: TAction
      Caption = '>'
      OnExecute = actAddExecute
      OnUpdate = actAddUpdate
    end
    object actRemove: TAction
      Caption = '<'
      OnExecute = actRemoveExecute
      OnUpdate = actRemoveUpdate
    end
  end
end
