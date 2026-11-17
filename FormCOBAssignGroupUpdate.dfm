object frmCOBAssignGroupUpdate: TfrmCOBAssignGroupUpdate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Assign Client On Board Activity Group'
  ClientHeight = 520
  ClientWidth = 755
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
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 755
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 321
      Height = 410
      Align = alLeft
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 319
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Group List'
        TabOrder = 0
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 33
        Width = 319
        Height = 376
        Align = alClient
        TabOrder = 1
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
      Left = 321
      Top = 0
      Width = 88
      Height = 410
      Align = alLeft
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 24
        Top = 17
        Width = 43
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
      Left = 409
      Top = 0
      Width = 346
      Height = 410
      Align = alClient
      TabOrder = 2
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 344
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Asigned Group'
        TabOrder = 0
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 33
        Width = 344
        Height = 376
        Align = alClient
        TabOrder = 1
        object gvwAssignedGroupList: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAssignedGroupList
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
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 451
    Width = 755
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 1
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
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 500
    Width = 755
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 130
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cdsGroupList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryGroupList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 160
    Top = 104
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
    Left = 160
    Top = 152
  end
  object cdsAssignedGroupList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACTIVITY_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACTIVITY_SUBID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryCOBActGroupUpdate'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Left = 536
    Top = 64
    object cdsAssignedGroupListGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsAssignedGroupListACTIVITY_ID: TIntegerField
      FieldName = 'ACTIVITY_ID'
      Required = True
    end
    object cdsAssignedGroupListACTIVITY_SUBID: TIntegerField
      FieldName = 'ACTIVITY_SUBID'
      Required = True
    end
    object cdsAssignedGroupListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsAssignedGroupListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsAssignedGroupListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsAssignedGroupListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsAssignedGroupListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsAssignedGroupListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsAssignedGroupList: TDataSource
    DataSet = cdsAssignedGroupList
    Left = 536
    Top = 112
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
