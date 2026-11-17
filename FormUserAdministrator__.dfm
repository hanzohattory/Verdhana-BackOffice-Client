object frmUserAdministrator: TfrmUserAdministrator
  Left = 0
  Top = 0
  Caption = 'User Administrator'
  ClientHeight = 569
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClick = PermissionToGroup
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPermissions: TcxPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 569
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsUsers
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 565
    ClientRectLeft = 4
    ClientRectRight = 788
    ClientRectTop = 24
    object tsUsers: TcxTabSheet
      Caption = 'Users'
      ImageIndex = 0
      OnShow = tsUsersShow
      object Splitter1: TSplitter
        Left = 250
        Top = 0
        Width = 5
        Height = 541
        ExplicitLeft = 145
        ExplicitHeight = 213
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 244
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Users:'
          ExplicitWidth = 139
        end
        object tvUsersUsers: TcxTreeView
          Left = 3
          Top = 18
          Width = 244
          Height = 520
          Align = alClient
          PopupMenu = popUsers
          TabOrder = 0
          HideSelection = False
          ReadOnly = True
        end
      end
      object Panel10: TPanel
        Left = 255
        Top = 0
        Width = 51
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnPermissionToUser: TcxButton
          Left = 8
          Top = 80
          Width = 33
          Height = 25
          TabOrder = 0
          OnClick = GroupToUser
        end
        object btnDelUserPermission: TcxButton
          Left = 8
          Top = 112
          Width = 33
          Height = 25
          TabOrder = 1
          OnClick = DeleteGroupFromUser
        end
      end
      object Panel3: TPanel
        Left = 306
        Top = 0
        Width = 478
        Height = 541
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 2
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 472
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Groups:'
          ExplicitWidth = 163
        end
        object lvUsersGroups: TcxListView
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          Columns = <
            item
              Caption = 'Group'
              Width = 150
            end
            item
              Caption = 'Description'
              Width = 250
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
    object tsGroups: TcxTabSheet
      Caption = 'Groups'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 250
        Top = 0
        Width = 5
        Height = 541
        ExplicitLeft = 145
        ExplicitHeight = 213
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 0
        object Label4: TLabel
          Left = 3
          Top = 3
          Width = 244
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Groups:'
          ExplicitWidth = 139
        end
        object tvGroupsGroups: TcxTreeView
          Left = 3
          Top = 18
          Width = 244
          Height = 520
          Align = alClient
          PopupMenu = popGroups
          TabOrder = 0
          HideSelection = False
          ReadOnly = True
        end
      end
      object Panel11: TPanel
        Left = 255
        Top = 0
        Width = 51
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnPermissionToGroup: TcxButton
          Left = 6
          Top = 81
          Width = 33
          Height = 25
          TabOrder = 0
          OnClick = PermissionToGroup
        end
        object btnDelGroupPermission: TcxButton
          Left = 6
          Top = 112
          Width = 33
          Height = 25
          TabOrder = 1
          OnClick = DeletePermissionFromGroup
        end
      end
      object Panel6: TPanel
        Left = 306
        Top = 0
        Width = 478
        Height = 541
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 2
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 472
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = 'P&ermissions:'
          ExplicitLeft = 6
          ExplicitTop = 0
          ExplicitWidth = 232
        end
        object lvGroupsPermissions: TcxListView
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          Columns = <
            item
              Caption = 'Permission'
              Width = 150
            end
            item
              Caption = 'Description'
              Width = 250
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object grdPermission: TcxGrid
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object gvwMenuPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsMenuPermission
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
            object gvwMenuPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwMenuPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwReportPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsReportPermission
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
            object gvwReportPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwReportPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwStaticPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsStaticPermission
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
            object gvwStaticPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwStaticPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwAdminPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAdminPermission
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
            object gvwAdminPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwAdminPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object grdPermissionLevel1: TcxGridLevel
            Caption = 'Menu Permission'
            GridView = gvwMenuPermission
          end
          object grdPermissionLevel2: TcxGridLevel
            Caption = 'Report Permission'
            GridView = gvwReportPermission
          end
          object grdPermissionLevel3: TcxGridLevel
            Caption = 'Static Permission'
            GridView = gvwStaticPermission
          end
          object grdPermissionLevel4: TcxGridLevel
            Caption = 'Admin Permission'
            GridView = gvwAdminPermission
          end
        end
      end
    end
  end
  object popGroups: TPopupMenu
    Left = 24
    Top = 88
    object mnuAddGroup: TMenuItem
      Caption = 'Add'
      OnClick = AddGroup
    end
    object mnuEditGroup: TMenuItem
      Caption = 'Edit'
      Default = True
      OnClick = EditGroup
    end
    object mnuRemoveGroup: TMenuItem
      Caption = 'Delete'
      OnClick = DeleteGroup
    end
  end
  object popUsers: TPopupMenu
    Left = 24
    Top = 136
    object popUser: TMenuItem
      Caption = 'Add'
      OnClick = AddUser
    end
    object MenuItem2: TMenuItem
      Caption = 'Edit'
      Default = True
      OnClick = EditUser
    end
    object MenuItem3: TMenuItem
      Caption = 'Delete'
      OnClick = DeleteUser
    end
  end
  object cdsMenuPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 240
    object cdsMenuPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsMenuPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object cdsReportPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 288
    object cdsReportPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsReportPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object dsMenuPermission: TDataSource
    DataSet = cdsMenuPermission
    Left = 536
    Top = 240
  end
  object dsReportPermission: TDataSource
    DataSet = cdsReportPermission
    Left = 536
    Top = 288
  end
  object cdsStaticPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 384
    object cdsStaticPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsStaticPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object cdsAdminPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 336
    object cdsAdminPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsAdminPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object dsAdminPermission: TDataSource
    DataSet = cdsAdminPermission
    Left = 536
    Top = 336
  end
  object dsStaticPermission: TDataSource
    DataSet = cdsStaticPermission
    Left = 536
    Top = 384
  end
end
