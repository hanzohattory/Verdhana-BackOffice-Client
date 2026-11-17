object frmUserGroupList: TfrmUserGroupList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Group List Editor'
  ClientHeight = 490
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 541
    Height = 209
    Align = alTop
    TabOrder = 0
    object gvwGroupList: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = gvwGroupListCustomDrawCell
      OnFocusedRecordChanged = gvwGroupListFocusedRecordChanged
      DataController.DataSource = dsGroupEditList
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
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwGroupListGROUPID: TcxGridDBBandedColumn
        Caption = 'Group ID'
        DataBinding.FieldName = 'GROUPID'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGroupListGROUPDESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'GROUPDESC'
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwGroupList
    end
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 470
    Width = 541
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 209
    Width = 541
    Height = 261
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 257
    ClientRectLeft = 4
    ClientRectRight = 537
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'User List'
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 222
        Height = 233
        Align = alLeft
        TabOrder = 0
        object gvwLeftUser: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = gvwLeftUserCustomDrawCell
          DataController.DataSource = dsUserUnGroup
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
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwLeftUserUSERID: TcxGridDBColumn
            Caption = 'User ID'
            DataBinding.FieldName = 'USERID'
            Options.Editing = False
            Width = 173
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwLeftUser
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 222
        Top = 0
        Width = 89
        Height = 233
        Align = alLeft
        BevelKind = bkTile
        TabOrder = 1
        object cxButton1: TcxButton
          Left = 10
          Top = 10
          Width = 63
          Height = 25
          Caption = '>'
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 10
          Top = 41
          Width = 63
          Height = 25
          Caption = '<'
          TabOrder = 1
          OnClick = cxButton2Click
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 63
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 61
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object cxGrid3: TcxGrid
        Left = 311
        Top = 0
        Width = 222
        Height = 233
        Align = alClient
        TabOrder = 2
        object gvwRightUser: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = gvwRightUserCustomDrawCell
          DataController.DataSource = dsUserList
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
          Styles.ContentOdd = dmGlobal.BlueToggle
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'User ID'
            DataBinding.FieldName = 'USERID'
            Options.Editing = False
            Width = 173
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwRightUser
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Permission List'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 209
        Height = 233
        Align = alLeft
        TabOrder = 0
        object gvwLeftPerm: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = gvwLeftUserCustomDrawCell
          DataController.DataSource = dsSourcePermission
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
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwLeftPermPERMISSIONS: TcxGridDBColumn
            Caption = 'Permissions'
            DataBinding.FieldName = 'PERMISSIONS'
            Options.Editing = False
            Width = 175
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwLeftPerm
        end
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 209
        Top = 0
        Width = 89
        Height = 233
        Align = alLeft
        BevelKind = bkTile
        TabOrder = 1
        object cxButton3: TcxButton
          Left = 10
          Top = 10
          Width = 63
          Height = 25
          Caption = '>'
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxButton4: TcxButton
          Left = 10
          Top = 41
          Width = 61
          Height = 25
          Caption = '<'
          TabOrder = 1
          OnClick = cxButton2Click
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton3
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 63
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButton4
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 61
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
      object cxGrid5: TcxGrid
        Left = 298
        Top = 0
        Width = 235
        Height = 233
        Align = alClient
        TabOrder = 2
        object gvwRightPerm: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = gvwRightUserCustomDrawCell
          DataController.DataSource = dsUserList
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
          Styles.ContentOdd = dmGlobal.BlueToggle
          object gvwRightPermPERMISSION: TcxGridDBColumn
            Caption = 'Permissions'
            DataBinding.FieldName = 'PERMISSION'
            Options.Editing = False
            Width = 199
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwRightPerm
        end
      end
    end
  end
  object cdsGroupEditList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryGroupEditList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 128
    Top = 88
    object cdsGroupEditListGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGroupEditListAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsGroupEditListGROUPDESC: TStringField
      FieldName = 'GROUPDESC'
      Size = 50
    end
    object cdsGroupEditListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGroupEditListMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsGroupEditListINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGroupEditListINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsGroupEditListqryUserGroupList: TDataSetField
      FieldName = 'qryUserGroupList'
    end
    object cdsGroupEditListqryGroupPermission: TDataSetField
      FieldName = 'qryGroupPermission'
    end
  end
  object cdsUserGroupList: TNClientDataset
    Aggregates = <>
    DataSetField = cdsGroupEditListqryUserGroupList
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 224
    Top = 88
    object cdsUserGroupListUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserGroupListAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserGroupListGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsUserGroupListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserGroupListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsUserGroupListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserGroupListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserGroupListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserGroupListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserGroupListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserGroupListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserGroupListID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsUserUnGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'GROUPID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryUserUnGroupList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 216
    Top = 152
    object cdsUserUnGroupUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserUnGroupAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserUnGroupUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
  end
  object dsGroupEditList: TDataSource
    DataSet = cdsGroupEditList
    Left = 128
    Top = 144
  end
  object dsUserList: TDataSource
    DataSet = cdsGroupPerm
    Left = 312
    Top = 96
  end
  object dsUserUnGroup: TDataSource
    DataSet = cdsUserUnGroup
    Left = 392
    Top = 104
  end
  object cdsGroupPerm: TNClientDataset
    Aggregates = <>
    DataSetField = cdsGroupEditListqryGroupPermission
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 112
    Top = 248
    object cdsGroupPermGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsGroupPermAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsGroupPermPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Size = 50
    end
    object cdsGroupPermMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGroupPermMODUI: TStringField
      FieldName = 'MODUI'
      Size = 10
    end
    object cdsGroupPermINSDA: TDateTimeField
      FieldName = 'INSDA'
    end
    object cdsGroupPermINSUI: TStringField
      FieldName = 'INSUI'
    end
  end
  object dsGroupPermGroup: TDataSource
    DataSet = cdsGroupPerm
    Left = 176
    Top = 248
  end
  object dsSourcePermission: TDataSource
    DataSet = cdsSourcePermission
    Left = 408
    Top = 288
  end
  object cdsSourcePermission: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 264
    object cdsSourcePermissionPERMISSIONS: TStringField
      FieldName = 'PERMISSIONS'
      Size = 50
    end
  end
end
