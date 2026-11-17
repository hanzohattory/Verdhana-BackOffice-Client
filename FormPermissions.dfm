inherited frmPermissions: TfrmPermissions
  Caption = 'Permissions'
  ClientHeight = 533
  ClientWidth = 1517
  ExplicitWidth = 1517
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 1517
    Height = 533
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 6
    ClientRectBottom = 533
    ClientRectRight = 1517
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'List of Permissions'
      ImageIndex = 0
      object grdSubject: TcxGrid
        Left = 0
        Top = 0
        Width = 1517
        Height = 509
        Align = alClient
        PopupMenu = popDocking
        TabOrder = 0
        object gvwPermission: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPermission
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwPermissionPERMISSIONNAME: TcxGridDBBandedColumn
            Caption = 'Permission Name'
            DataBinding.FieldName = 'PERMISSIONNAME'
            Width = 173
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwPermissionPERMISSIONDESC: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'PERMISSIONDESC'
            Width = 321
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object gvwPermissionForm: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPermissionForm
          DataController.DetailKeyFieldNames = 'PERMISSIONNAME'
          DataController.KeyFieldNames = 'PERMISSIONNAME;FORMNAME'
          DataController.MasterKeyFieldNames = 'PERMISSIONNAME'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwPermissionFormFORMNAME: TcxGridDBBandedColumn
            Caption = 'Form Name'
            DataBinding.FieldName = 'FORMNAME'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object gvwPermissionFormAction: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPermissionFormAction
          DataController.DetailKeyFieldNames = 'FORMNAME'
          DataController.KeyFieldNames = 'PERMISSIONNAME;FORMNAME;ACTIONNAME'
          DataController.MasterKeyFieldNames = 'FORMNAME'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
              Caption = 'Actions'
            end>
          object gvwPermissionFormActionACTIONNAME: TcxGridDBBandedColumn
            Caption = 'Action Name'
            DataBinding.FieldName = 'ACTIONNAME'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object grdSubjectLevel1: TcxGridLevel
          GridView = gvwPermission
          object grdSubjectLevel2: TcxGridLevel
            GridView = gvwPermissionForm
            object grdSubjectLevel3: TcxGridLevel
              GridView = gvwPermissionFormAction
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'User Permissions'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 409
        Height = 509
        Align = alLeft
        PopupMenu = popDocking
        TabOrder = 0
        object gvwUser: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
              Caption = 'User Permission by Group'
            end>
          object gvwUserUSERID: TcxGridDBBandedColumn
            Caption = 'User ID.'
            DataBinding.FieldName = 'USERID'
            Width = 134
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwUserUSERNAME: TcxGridDBBandedColumn
            Caption = 'User Name'
            DataBinding.FieldName = 'USERNAME'
            Width = 242
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object gvwUserGroup: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUserGroup
          DataController.DetailKeyFieldNames = 'USERID'
          DataController.KeyFieldNames = 'USERID;GROUPID'
          DataController.MasterKeyFieldNames = 'USERID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwUserGroupGROUPID: TcxGridDBBandedColumn
            Caption = 'Group ID'
            DataBinding.FieldName = 'GROUPID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object gvwUserGroupPermission: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUserGroupPermission
          DataController.DetailKeyFieldNames = 'GROUPID'
          DataController.KeyFieldNames = 'GROUPID;PERMISSION'
          DataController.MasterKeyFieldNames = 'GROUPID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwUserGroupPermissionPERMISSION: TcxGridDBBandedColumn
            Caption = 'Permission'
            DataBinding.FieldName = 'PERMISSION'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwUser
          object cxGridLevel2: TcxGridLevel
            GridView = gvwUserGroup
            object cxGrid1Level1: TcxGridLevel
              GridView = gvwUserGroupPermission
            end
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 409
        Top = 0
        Width = 1108
        Height = 509
        Align = alClient
        PopupMenu = popDocking
        TabOrder = 1
        object gvwFormUser: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsUser
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
              Caption = 'User Permission by Form'
            end>
          object gvwFormUserUSERID: TcxGridDBBandedColumn
            Caption = 'User ID.'
            DataBinding.FieldName = 'USERID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwFormUserUSERNAME: TcxGridDBBandedColumn
            Caption = 'User Name'
            DataBinding.FieldName = 'USERNAME'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object gvwForms: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsForms
          DataController.DetailKeyFieldNames = 'USERID'
          DataController.KeyFieldNames = 'USERID;FORMNAME'
          DataController.MasterKeyFieldNames = 'USERID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwFormsFORMNAME: TcxGridDBBandedColumn
            Caption = 'Form Name'
            DataBinding.FieldName = 'FORMNAME'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwFormsPERMISSIONNAME: TcxGridDBBandedColumn
            Caption = 'Permission(s)'
            DataBinding.FieldName = 'PERMISSIONNAME'
            Width = 600
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object gvwFormAction: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFormAction
          DataController.DetailKeyFieldNames = 'FORMNAME'
          DataController.KeyFieldNames = 'USERID;FORMNAME;ACTIONNAME'
          DataController.MasterKeyFieldNames = 'FORMNAME'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle
          Styles.Selection = dmGlobal.rowSelected
          Bands = <
            item
            end>
          object gvwFormActionACTIONNAME: TcxGridDBBandedColumn
            Caption = 'Action Name'
            DataBinding.FieldName = 'ACTIONNAME'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwFormActionPERMISSIONNAME: TcxGridDBBandedColumn
            Caption = 'Permission(s)'
            DataBinding.FieldName = 'PERMISSIONNAME'
            Width = 600
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwFormUser
          object cxGridLevel4: TcxGridLevel
            GridView = gvwForms
            object cxGrid2Level1: TcxGridLevel
              GridView = gvwFormAction
            end
          end
        end
      end
    end
  end
  inherited popDocking: TPopupMenu
    object Load1: TMenuItem
      Action = actLoadPermissions
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclPermissions
    Actions = <
      item
        ActionName = 'actLoadPermissions'
        Permission = 'Admin'
      end
      item
        ActionName = 'actLoadPermissions'
        Permission = 'Static Data'
      end
      item
        ActionName = 'actLoadPermissions'
        Permission = 'App Manager'
      end>
    AssignedPermission = <
      item
        Name = 'Admin'
        Description = 'User Administratiion'
      end
      item
        Name = 'App Manager'
        Description = 'Application Manager Permission'
      end
      item
        Name = 'Static Data'
      end>
    Top = 56
  end
  object aclPermissions: TActionList
    Images = frmMain.ilSmall
    Left = 296
    Top = 112
    object actLoadPermissions: TNAction
      Category = 'NActions'
      Caption = 'Load Permissions'
      OnExecute = actLoadPermissionsExecute
      CheckPermission = True
    end
  end
  object dsPermission: TDataSource
    DataSet = dmGlobal.cdsPermission
    Left = 296
    Top = 168
  end
  object dsPermissionForm: TDataSource
    DataSet = dmGlobal.cdsPermissionForm
    Left = 296
    Top = 216
  end
  object dsPermissionFormAction: TDataSource
    DataSet = dmGlobal.cdsPermissionFormAction
    Left = 296
    Top = 264
  end
  object dsUserGroup: TDataSource
    DataSet = cdsUserGroup
    Left = 424
    Top = 200
  end
  object dsUserGroupPermission: TDataSource
    DataSet = cdsUserGroupPermission
    Left = 424
    Top = 248
  end
  object cdsUserGroup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryUserGroup'
    RemoteServer = dmGlobal.dspConnection
    Left = 576
    Top = 200
    object cdsUserGroupUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserGroupGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
  end
  object cdsUserGroupPermission: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryUserGroupPermission'
    RemoteServer = dmGlobal.dspConnection
    Left = 576
    Top = 248
    object cdsUserGroupPermissionGROUPID: TStringField
      FieldName = 'GROUPID'
      Required = True
    end
    object cdsUserGroupPermissionPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Size = 50
    end
  end
  object cdsUserPermissionFormAction: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FORMNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PERMISSION'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAdministrator_qryUserPermissionFormAction'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 296
    object cdsUserPermissionFormActionUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserPermissionFormActionAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserPermissionFormActionUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object cdsUserPermissionFormActionCRETEDATE: TDateTimeField
      FieldName = 'CRETEDATE'
    end
    object cdsUserPermissionFormActionUSERSTATE: TStringField
      FieldName = 'USERSTATE'
      Size = 10
    end
    object cdsUserPermissionFormActionUSERPWD: TStringField
      FieldName = 'USERPWD'
      Size = 30
    end
    object cdsUserPermissionFormActionLASTCHANGEPWD: TDateTimeField
      FieldName = 'LASTCHANGEPWD'
    end
    object cdsUserPermissionFormActionLOCKED: TStringField
      FieldName = 'LOCKED'
      Size = 1
    end
    object cdsUserPermissionFormActionWRONGPWDCOUNT: TIntegerField
      FieldName = 'WRONGPWDCOUNT'
    end
    object cdsUserPermissionFormActionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserPermissionFormActionMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsUserPermissionFormActionHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUserPermissionFormActionSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUserPermissionFormActionTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsUserPermissionFormActionUSERID_1: TStringField
      FieldName = 'USERID_1'
      ReadOnly = True
      Required = True
    end
    object cdsUserPermissionFormActionAPPID_1: TStringField
      FieldName = 'APPID_1'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsUserPermissionFormActionGROUPID: TStringField
      FieldName = 'GROUPID'
      ReadOnly = True
      Required = True
    end
    object cdsUserPermissionFormActionMODDA_1: TDateTimeField
      FieldName = 'MODDA_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionMODUI_1: TStringField
      FieldName = 'MODUI_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionINSDA_1: TDateTimeField
      FieldName = 'INSDA_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionINSUI_1: TStringField
      FieldName = 'INSUI_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionGROUPID_1: TStringField
      FieldName = 'GROUPID_1'
      ReadOnly = True
      Required = True
    end
    object cdsUserPermissionFormActionAPPID_2: TStringField
      FieldName = 'APPID_2'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsUserPermissionFormActionPERMISSION: TStringField
      FieldName = 'PERMISSION'
      ReadOnly = True
      Size = 50
    end
    object cdsUserPermissionFormActionMODDA_2: TDateTimeField
      FieldName = 'MODDA_2'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionMODUI_2: TStringField
      FieldName = 'MODUI_2'
      ReadOnly = True
      Size = 10
    end
    object cdsUserPermissionFormActionID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsUserPermissionFormActionPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserPermissionFormActionFORMNAME: TStringField
      FieldName = 'FORMNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserPermissionFormActionACTIONNAME: TStringField
      FieldName = 'ACTIONNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserPermissionFormActionMODDA_3: TDateTimeField
      FieldName = 'MODDA_3'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionMODUI_3: TStringField
      FieldName = 'MODUI_3'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserPermissionFormActionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserPermissionFormActionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserPermissionFormActionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserPermissionFormActionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserPermissionFormActionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserPermissionFormActionAPPDA_1: TDateTimeField
      FieldName = 'APPDA_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionAPPUI_1: TStringField
      FieldName = 'APPUI_1'
      ReadOnly = True
      Size = 30
    end
    object cdsUserPermissionFormActionUNDER4Y_1: TIntegerField
      FieldName = 'UNDER4Y_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionUNDER4YDA_1: TDateTimeField
      FieldName = 'UNDER4YDA_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionNOTES4Y_1: TStringField
      FieldName = 'NOTES4Y_1'
      ReadOnly = True
      Size = 100
    end
    object cdsUserPermissionFormActionISDEL_1: TIntegerField
      FieldName = 'ISDEL_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionID_1: TLargeintField
      FieldName = 'ID_1'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionINSDA: TDateTimeField
      FieldName = 'INSDA'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionINSUI: TStringField
      FieldName = 'INSUI'
      ReadOnly = True
    end
    object cdsUserPermissionFormActionID_2: TLargeintField
      FieldName = 'ID_2'
      ReadOnly = True
      Required = True
    end
  end
  object cdsUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryUser'
    RemoteServer = dmGlobal.dspConnection
    Left = 576
    Top = 152
    object cdsUserUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
  end
  object dsUser: TDataSource
    DataSet = cdsUser
    Left = 424
    Top = 152
  end
  object cdsForms: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 152
    object cdsFormsUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsFormsFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 50
    end
    object cdsFormsPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      Size = 250
    end
  end
  object cdsFormAction: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 736
    Top = 200
    object cdsFormActionUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsFormActionFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 50
    end
    object cdsFormActionACTIONNAME: TStringField
      FieldName = 'ACTIONNAME'
      Required = True
      Size = 50
    end
    object cdsFormActionPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      Size = 250
    end
  end
  object dsForms: TDataSource
    DataSet = cdsForms
    Left = 824
    Top = 152
  end
  object dsFormAction: TDataSource
    DataSet = cdsFormAction
    Left = 824
    Top = 200
  end
  object cdsUserPerm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAdministrator_qryUserPerm'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 152
    object cdsUserPermUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserPermAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserPermUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object cdsUserPermCRETEDATE: TDateTimeField
      FieldName = 'CRETEDATE'
    end
    object cdsUserPermUSERSTATE: TStringField
      FieldName = 'USERSTATE'
      Size = 10
    end
    object cdsUserPermUSERPWD: TStringField
      FieldName = 'USERPWD'
      Size = 30
    end
    object cdsUserPermLASTCHANGEPWD: TDateTimeField
      FieldName = 'LASTCHANGEPWD'
    end
    object cdsUserPermLOCKED: TStringField
      FieldName = 'LOCKED'
      Size = 1
    end
    object cdsUserPermWRONGPWDCOUNT: TIntegerField
      FieldName = 'WRONGPWDCOUNT'
    end
    object cdsUserPermMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserPermMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsUserPermHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUserPermSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUserPermTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsUserPermAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserPermAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserPermUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserPermUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserPermNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserPermISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserPermID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsUserForm: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAdministrator_qryUserForm'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 200
    object cdsUserFormUSRUSERID: TStringField
      FieldName = 'USR.USERID'
      Required = True
    end
    object cdsUserFormFORMNAME: TStringField
      FieldName = 'FORMNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
  end
  object cdsUserPermissionForm: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FORMNAME'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryUserPermission'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 248
    object cdsUserPermissionFormUSRUSERID: TStringField
      FieldName = 'USR.USERID'
      Required = True
    end
    object cdsUserPermissionFormFORMNAME: TStringField
      FieldName = 'FORMNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserPermissionFormPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsUserFormActionByPermission: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FORMNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ACTIONNAME'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAdministrator_qryUserFormActionByPermission'
    RemoteServer = dmGlobal.dspConnection
    Left = 976
    Top = 344
    object cdsUserFormActionByPermissionUSERID: TStringField
      FieldName = 'USERID'
      Required = True
    end
    object cdsUserFormActionByPermissionAPPID: TStringField
      FieldName = 'APPID'
      Required = True
      Size = 30
    end
    object cdsUserFormActionByPermissionUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object cdsUserFormActionByPermissionCRETEDATE: TDateTimeField
      FieldName = 'CRETEDATE'
    end
    object cdsUserFormActionByPermissionUSERSTATE: TStringField
      FieldName = 'USERSTATE'
      Size = 10
    end
    object cdsUserFormActionByPermissionUSERPWD: TStringField
      FieldName = 'USERPWD'
      Size = 30
    end
    object cdsUserFormActionByPermissionLASTCHANGEPWD: TDateTimeField
      FieldName = 'LASTCHANGEPWD'
    end
    object cdsUserFormActionByPermissionLOCKED: TStringField
      FieldName = 'LOCKED'
      Size = 1
    end
    object cdsUserFormActionByPermissionWRONGPWDCOUNT: TIntegerField
      FieldName = 'WRONGPWDCOUNT'
    end
    object cdsUserFormActionByPermissionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsUserFormActionByPermissionMODUI: TStringField
      FieldName = 'MODUI'
    end
    object cdsUserFormActionByPermissionHARDLIMIT: TFloatField
      FieldName = 'HARDLIMIT'
    end
    object cdsUserFormActionByPermissionSOFTLIMIT: TFloatField
      FieldName = 'SOFTLIMIT'
    end
    object cdsUserFormActionByPermissionTEMPLIMIT: TFloatField
      FieldName = 'TEMPLIMIT'
    end
    object cdsUserFormActionByPermissionUSERID_1: TStringField
      FieldName = 'USERID_1'
      ReadOnly = True
      Required = True
    end
    object cdsUserFormActionByPermissionAPPID_1: TStringField
      FieldName = 'APPID_1'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsUserFormActionByPermissionGROUPID: TStringField
      FieldName = 'GROUPID'
      ReadOnly = True
      Required = True
    end
    object cdsUserFormActionByPermissionMODDA_1: TDateTimeField
      FieldName = 'MODDA_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionMODUI_1: TStringField
      FieldName = 'MODUI_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionGROUPID_1: TStringField
      FieldName = 'GROUPID_1'
      ReadOnly = True
      Required = True
    end
    object cdsUserFormActionByPermissionAPPID_2: TStringField
      FieldName = 'APPID_2'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsUserFormActionByPermissionPERMISSION: TStringField
      FieldName = 'PERMISSION'
      ReadOnly = True
      Size = 50
    end
    object cdsUserFormActionByPermissionMODDA_2: TDateTimeField
      FieldName = 'MODDA_2'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionMODUI_2: TStringField
      FieldName = 'MODUI_2'
      ReadOnly = True
      Size = 10
    end
    object cdsUserFormActionByPermissionID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object cdsUserFormActionByPermissionPERMISSIONNAME: TStringField
      FieldName = 'PERMISSIONNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserFormActionByPermissionFORMNAME: TStringField
      FieldName = 'FORMNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserFormActionByPermissionACTIONNAME: TStringField
      FieldName = 'ACTIONNAME'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object cdsUserFormActionByPermissionMODDA_3: TDateTimeField
      FieldName = 'MODDA_3'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionMODUI_3: TStringField
      FieldName = 'MODUI_3'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsUserFormActionByPermissionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsUserFormActionByPermissionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsUserFormActionByPermissionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsUserFormActionByPermissionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsUserFormActionByPermissionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsUserFormActionByPermissionAPPDA_1: TDateTimeField
      FieldName = 'APPDA_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionAPPUI_1: TStringField
      FieldName = 'APPUI_1'
      ReadOnly = True
      Size = 30
    end
    object cdsUserFormActionByPermissionUNDER4Y_1: TIntegerField
      FieldName = 'UNDER4Y_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionUNDER4YDA_1: TDateTimeField
      FieldName = 'UNDER4YDA_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionNOTES4Y_1: TStringField
      FieldName = 'NOTES4Y_1'
      ReadOnly = True
      Size = 100
    end
    object cdsUserFormActionByPermissionISDEL_1: TIntegerField
      FieldName = 'ISDEL_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionID_1: TLargeintField
      FieldName = 'ID_1'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionID_2: TLargeintField
      FieldName = 'ID_2'
      ReadOnly = True
      Required = True
    end
    object cdsUserFormActionByPermissionINSDA: TDateTimeField
      FieldName = 'INSDA'
      ReadOnly = True
    end
    object cdsUserFormActionByPermissionINSUI: TStringField
      FieldName = 'INSUI'
      ReadOnly = True
    end
  end
end
