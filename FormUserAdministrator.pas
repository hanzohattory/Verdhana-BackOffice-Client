unit FormUserAdministrator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, Menus, StdCtrls, cxButtons, cxContainer, cxEdit, cxTreeView,
  ExtCtrls, cxPC, NMenuBar, DesignIntf, cxListView, DB, DBClient,
  cxPCdxBarPopupMenu, NLibraries, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  NClientDataset, cxClasses, cxGridLevel, cxGrid, dxBarBuiltInMenu, chash,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges;

type
  TfrmUserAdministrator = class(TForm)
    pcPermissions: TcxPageControl;
    tsUsers: TcxTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    tvUsersUsers: TcxTreeView;
    Panel10: TPanel;
    btnPermissionToUser: TcxButton;
    btnDelUserPermission: TcxButton;
    Panel3: TPanel;
    Label2: TLabel;
    tsGroups: TcxTabSheet;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Label4: TLabel;
    tvGroupsGroups: TcxTreeView;
    Panel11: TPanel;
    btnPermissionToGroup: TcxButton;
    btnDelGroupPermission: TcxButton;
    Panel6: TPanel;
    Label3: TLabel;
    lvGroupsPermissions: TcxListView;
    popGroups: TPopupMenu;
    mnuAddGroup: TMenuItem;
    mnuEditGroup: TMenuItem;
    mnuRemoveGroup: TMenuItem;
    lvUsersGroups: TcxListView;
    popUsers: TPopupMenu;
    popUser: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    grdPermissionLevel1: TcxGridLevel;
    grdPermission: TcxGrid;
    cdsMenuPermission: TNClientDataset;
    cdsReportPermission: TNClientDataset;
    grdPermissionLevel2: TcxGridLevel;
    gvwMenuPermission: TcxGridDBBandedTableView;
    gvwReportPermission: TcxGridDBBandedTableView;
    cdsMenuPermissionPermission: TStringField;
    cdsMenuPermissionDescription: TStringField;
    cdsReportPermissionPermission: TStringField;
    cdsReportPermissionDescription: TStringField;
    dsMenuPermission: TDataSource;
    dsReportPermission: TDataSource;
    gvwMenuPermissionPermission: TcxGridDBBandedColumn;
    gvwMenuPermissionDescription: TcxGridDBBandedColumn;
    gvwReportPermissionPermission: TcxGridDBBandedColumn;
    gvwReportPermissionDescription: TcxGridDBBandedColumn;
    cdsStaticPermission: TNClientDataset;
    cdsAdminPermission: TNClientDataset;
    dsAdminPermission: TDataSource;
    dsStaticPermission: TDataSource;
    cdsAdminPermissionPermission: TStringField;
    cdsAdminPermissionDescription: TStringField;
    cdsStaticPermissionPermission: TStringField;
    cdsStaticPermissionDescription: TStringField;
    grdPermissionLevel3: TcxGridLevel;
    grdPermissionLevel4: TcxGridLevel;
    gvwStaticPermission: TcxGridDBBandedTableView;
    gvwAdminPermission: TcxGridDBBandedTableView;
    gvwStaticPermissionPermission: TcxGridDBBandedColumn;
    gvwStaticPermissionDescription: TcxGridDBBandedColumn;
    gvwAdminPermissionPermission: TcxGridDBBandedColumn;
    gvwAdminPermissionDescription: TcxGridDBBandedColumn;
    ResetPassword1: TMenuItem;
    UnlockUser1: TMenuItem;
    procedure PermissionToGroup(Sender: TObject);
    procedure DeletePermissionFromGroup(Sender: TObject);
    procedure GroupToUser(Sender: TObject);
    procedure DeleteGroupFromUser(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsUsersShow(Sender: TObject);
    {Group Editor}
    procedure AddGroup(Sender: TObject);
    procedure EditGroup(Sender: TObject);
    procedure DeleteGroup(Sender: TObject);
    {User Editor}
    procedure AddUser(Sender: TObject);
    procedure EditUser(Sender: TObject);
    procedure DeleteUser(Sender: TObject);
    procedure ResetPassword1Click(Sender: TObject);
    procedure UnlockUser1Click(Sender: TObject);
  private
    { Private declarations }
    FMenuControl: TComponent;
    FDesigner: IDesigner;
    FMenuBar: TNMenuBar;
    FMenuBarReport: TNMenuBar;
    FMenuBarStatic: TNMenuBar;
    FMenuBarAdmin: TNMenuBar;
    procedure RefreshUsers;
    procedure RefreshGroups;
    procedure RefreshPermission;
    procedure AddChild(SenderTree: TcxTreeView; var Node: TTreeNode; AText: string; AImageNum: integer);
  public
    { Public declarations }
    function Edit : boolean;
    property MenuBar: TNMenuBar read FMenuBar write FMenuBar;
    property MenuBarReport: TNMenuBar read FMenuBarReport write FMenuBarReport;
    property MenuBarAdmin: TNMenuBar read FMenuBarAdmin write FMenuBarAdmin;
    property MenuBarStatic: TNMenuBar read FMenuBarStatic write FMenuBarStatic;

  end;

  function ShowUserAdministrator(AMenuControl: TComponent; ADesigner: IDesigner): Boolean;Overload;
  function ShowUserAdministrator(AMenuBar, AMenuBarReport, AMenuBarStatic, AMenuBarAdmin: TNMenuBar): Boolean;Overload;

var
  frmUserAdministrator: TfrmUserAdministrator;

implementation

uses FormGroup, FormUser, DataGlobal;
{$R *.dfm}
function ShowUserAdministrator(AMenuControl: TComponent; ADesigner: IDesigner): Boolean;
begin
  with TfrmUserAdministrator.Create(Application) do
  begin
    Caption := 'Group Permission ' + AMenuControl.Owner.Name + '.' + AMenuControl.Name;
    FMenuControl := AMenuControl;
    MenuBar := TNMenuBar(FMenuControl);
    FDesigner := ADesigner;
    ADesigner.Modified;
    Result := Edit;
  end;
end;

function ShowUserAdministrator(AMenuBar, AMenuBarReport, AMenuBarStatic, AMenuBarAdmin: TNMenuBar): Boolean;
begin
  with TfrmUserAdministrator.Create(Application) do
  begin
    Caption := 'User Configuration';
    FMenuControl := AMenuBar;
    MenuBar := AMenuBar;
    MenuBarReport := AMenuBarReport;
    MenuBarStatic := AMenuBarStatic;
    MenuBarAdmin  := AMenuBarAdmin;
    Result := Edit;
  end;
end;

procedure TfrmUserAdministrator.AddChild(SenderTree: TcxTreeView;
  var Node: TTreeNode; AText: string; AImageNum: integer);
var
  CheckNode: TTreeNode;
begin
  while (Node.Parent <> nil) do
    Node := Node.Parent;

  // Check to see if the item is already in the list
  CheckNode := Node.GetFirstChild;
  while Assigned(CheckNode) do
  begin
    if (CheckNode.Text = AText) then Exit;
    CheckNode := CheckNode.GetNextSibling;
  end; // while


  Node := SenderTree.Items.AddChild(Node, AText);
  if Assigned(Node) then
  begin
    Node.ImageIndex := AImageNum;
    Node.SelectedIndex := AImageNum;
  end;
end;

procedure TfrmUserAdministrator.AddGroup(Sender: TObject);
var
  oDataset: TDataset;
  AForm: TfrmGroup;
  oMenuBar: TNMenuBar;
begin
  oMenuBar := TNMenuBar(FMenuControl);
  AForm := TfrmGroup.Create(nil);
  try
    AForm.txtGroupId.DataBinding.DataField := oMenuBar.GroupIdField;
    AForm.txtGroupDescription.DataBinding.DataField := oMenuBar.GroupDescField;
    AForm.dsGroups.DataSet := oMenuBar.GroupDataSet;
    oDataset := AForm.dsGroups.DataSet;
    oDataset.Append;

    if AForm.ShowModal = mrOK then
    begin
      oDataset.FieldByName(oMenuBar.ApplicationIDField).AsString := oMenuBar.AppID;
      oDataset.Post;
      if oDataset is TClientDataSet then
        (oDataset as TClientDataSet).ApplyUpdates(-1);
    end
    else
      oDataset.Cancel;
    RefreshGroups;
  finally // wrap up
    AForm.Release;
  end; // try/finally
end;

procedure TfrmUserAdministrator.AddUser(Sender: TObject);
var
  oDataset: TDataset;
  AForm: TfrmUser;
  oMenuBar: TNMenuBar;
  o: TNEncription;
  sPasswd: string;
begin
  oMenuBar := TNMenuBar(FMenuControl);
  AForm := TfrmUser.Create(nil);
  o := TNEncription.Create;
  try
    AForm.txtUserID.DataBinding.DataField := oMenuBar.UserIDField;
    AForm.txtUserName.DataBinding.DataField := oMenuBar.UserNameField;
    AForm.txtPwd.Text := '';
    AForm.dsUser.DataSet := oMenuBar.UsersDataSet;
    oDataset := AForm.dsUser.DataSet;
    oDataset.Append;

    if AForm.ShowModal = mrOK then
    begin
      oDataset.FieldByName(oMenuBar.ApplicationIDField).AsString := oMenuBar.AppID;
      oDataset.FieldByName(oMenuBar.UserPasswordField).AsString  := MD5DigestToHex(CalcMD5(AForm.txtPwd.Text));
      oDataset.Post;
      if oDataset is TClientDataSet then
        (oDataset as TClientDataSet).ApplyUpdates(-1);
    end
    else
      oDataset.Cancel;
    RefreshUsers;
  finally // wrap up
    AForm.Release;
    FreeAndNil(o);
  end; // try/finally

end;

procedure TfrmUserAdministrator.DeleteGroup(Sender: TObject);
var
  oDataset: TDataSet;
  oMenuBar: TNMenuBar;
begin
  if (tvGroupsGroups.Selected = nil) then Exit;

  oMenuBar := TNMenuBar(FMenuControl);
  oDataset := oMenuBar.GroupDataSet;

  if tvGroupsGroups.Selected.Count > 0 then
  begin
    ShowMessage('Could not delete Group, please remove all child item first!!');
    Exit;
  end;

  if tvGroupsGroups.Selected.Parent = nil then
  begin
    if MessageDlg('Are you sure you want to delete ' + tvGroupsGroups.Selected.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = idYes then
    begin
      if oDataset.Locate(oMenuBar.GroupIDField,tvGroupsGroups.Selected.Text,[]) then
      begin
        oMenuBar.RemoveAccess(atPermissionGroup, oDataset, tvGroupsGroups.Selected.Text, tvGroupsGroups.Selected.Text);
      end;
      RefreshGroups;
    end;
  end
  else
  begin
    if oDataset.Locate(oMenuBar.GroupIDField,tvGroupsGroups.Selected.Parent.Text,[]) then
    begin
      oMenuBar.RemoveAccess(atPermissionGroup, oDataset, tvGroupsGroups.Selected.Parent.Text, tvGroupsGroups.Selected.Text);
      tvGroupsGroups.Selected.Delete;
    end;
  end;
end;

procedure TfrmUserAdministrator.DeleteGroupFromUser(Sender: TObject);
var
  oDataset: TDataSet;
begin
  if (tvUsersUsers.Selected = nil) then Exit;

  if tvUsersUsers.Selected.Parent = nil then
  begin
    if MessageDlg('Are you sure you want to delete ' + tvUsersUsers.Selected.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = idYes then
    begin
      if MenuBar.UsersDataSet.Locate(MenuBar.UserIDField,tvUsersUsers.Selected.Text,[]) then
      begin
        MenuBar.RemoveAccess(atUser, MenuBar.UsersDataSet, tvUsersUsers.Selected.Text, tvUsersUsers.Selected.Text);
      end;
      RefreshUsers;
    end;
  end
  else
  begin
    if MenuBar.UserGroupDataSet.Locate(MenuBar.UserIDField,tvUsersUsers.Selected.Parent.Text,[]) then
    begin
      MenuBar.RemoveAccess(atUserGroup, MenuBar.UserGroupDataSet, tvUsersUsers.Selected.Parent.Text, tvUsersUsers.Selected.Text);
      tvUsersUsers.Selected.Delete;
    end;
  end;

end;

procedure TfrmUserAdministrator.DeletePermissionFromGroup(Sender: TObject);
var
  oDataset: TDataSet;
//  oMenuBar: TNMenuBar;
begin
  if (tvGroupsGroups.Selected = nil) then Exit;

  if tvGroupsGroups.Selected.Parent = nil then
  begin
    if MessageDlg('Are you sure you want to delete ' + tvGroupsGroups.Selected.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = idYes then
    begin
      if MenuBar.GroupDataSet.Locate(MenuBar.GroupIDField,tvGroupsGroups.Selected.Text,[]) then
      begin
        MenuBar.RemoveAccess(atPermissionGroup,MenuBar.GroupDataSet, tvGroupsGroups.Selected.Text, tvGroupsGroups.Selected.Text);
      end;
      RefreshGroups;
    end;
  end
  else
  begin
    if MenuBar.GroupItemDataSet.Locate(MenuBar.GroupIDField,tvGroupsGroups.Selected.Parent.Text,[]) then
    begin
      MenuBar.RemoveAccess(atPermission, MenuBar.GroupItemDataSet,tvGroupsGroups.Selected.Parent.Text, tvGroupsGroups.Selected.Text);
      tvGroupsGroups.Selected.Delete;
    end;
  end;
end;

procedure TfrmUserAdministrator.DeleteUser(Sender: TObject);
var
  oDataset: TDataSet;
  oMenuBar: TNMenuBar;
begin
  if (tvUsersUsers.Selected = nil) then Exit;

  oMenuBar := TNMenuBar(FMenuControl);
  oDataset := oMenuBar.UsersDataSet;

  if tvUsersUsers.Selected.Count > 0 then
  begin
    ShowMessage('Could not delete User, please remove all child item first!!');
    Exit;
  end;

  if tvUsersUsers.Selected.Parent = nil then
  begin
    if MessageDlg('Are you sure you want to delete ' + tvUsersUsers.Selected.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = idYes then
    begin
      if oDataset.Locate(oMenuBar.UserIDField,tvUsersUsers.Selected.Text,[]) then
      begin
        oMenuBar.RemoveAccess(atUser,oMenuBar.UsersDataSet,tvUsersUsers.Selected.Text, tvUsersUsers.Selected.Text);
      end;
      RefreshUsers;
    end;
  end
  else
  begin
    if oDataset.Locate(oMenuBar.UserIDField,tvUsersUsers.Selected.Parent.Text,[]) then
    begin
      oMenuBar.RemoveAccess(atUser,oMenuBar.UsersDataSet,tvUsersUsers.Selected.Parent.Text, tvUsersUsers.Selected.Text);
      tvUsersUsers.Selected.Delete;
    end;
  end;
end;

function TfrmUserAdministrator.Edit: boolean;
begin
  Result := (ShowModal = mrOk);
end;

procedure TfrmUserAdministrator.EditGroup(Sender: TObject);
var
  oDataset: TDataset;
  AForm: TfrmGroup;
begin
  if tvGroupsGroups.Selected = nil then Exit;
  if tvGroupsGroups.Selected.Parent <> nil then Exit;

  if MenuBar.GroupDataSet.Locate(MenuBar.GroupIDField,tvGroupsGroups.Selected.Text,[]) then
  begin
    AForm := TfrmGroup.Create(nil);
    try
      AForm.txtGroupId.DataBinding.DataField := MenuBar.GroupIdField;
      AForm.txtGroupDescription.DataBinding.DataField := MenuBar.GroupDescField;
      AForm.dsGroups.DataSet := MenuBar.GroupDataSet;
      oDataset := AForm.dsGroups.DataSet;
      oDataset.Edit;

      if AForm.ShowModal = mrOK then
      begin
        oDataset.Post;
        if oDataset is TClientDataSet then
          (oDataset as TClientDataSet).ApplyUpdates(-1);
      end
      else
        oDataset.Cancel;
      RefreshGroups;
    finally // wrap up
      AForm.Release;
    end; // try/finally
  end;

end;

procedure TfrmUserAdministrator.EditUser(Sender: TObject);
var
  oDataset: TDataset;
  AForm: TfrmUser;
begin
  if tvUsersUsers.Selected = nil then Exit;
  if tvUsersUsers.Selected.Parent <> nil then Exit;

  if MenuBar.UsersDataSet.Locate(MenuBar.UserIDField,tvUsersUsers.Selected.Text,[]) then
  begin
    AForm := TfrmUser.Create(nil);
    try
      AForm.txtUserID.DataBinding.DataField   := MenuBar.UserIDField;
      AForm.txtUserName.DataBinding.DataField := MenuBar.UserNameField;
      AForm.dsUser.DataSet := MenuBar.UsersDataSet;
      oDataset := AForm.dsUser.DataSet;

      AForm.txtPwd.Visible := False;
      oDataset.Edit;

      if AForm.ShowModal = mrOK then
      begin
        oDataset.Post;
        if oDataset is TClientDataSet then
          (oDataset as TClientDataSet).ApplyUpdates(-1);
      end
      else
        oDataset.Cancel;
      RefreshGroups;
    finally // wrap up
      AForm.Release;
    end; // try/finally
  end;
end;

procedure TfrmUserAdministrator.FormShow(Sender: TObject);
begin
  RefreshGroups;
  RefreshPermission;
  RefreshUsers;

  ResetPassword1.Visible := LowerCase(dmGlobal.UserID) = 'admin';
  UnlockUser1.Visible    := LowerCase(dmGlobal.UserID) = 'admin';
end;

procedure TfrmUserAdministrator.GroupToUser(Sender: TObject);
var
  Node: TTreeNode;
  oMenuBar: TNMenuBar;
  i: Integer;
  sGroup: String;
begin
  if not Assigned(lvUsersGroups.Selected) then Exit;

  Node := tvUsersUsers.Selected;
  if not Assigned(Node) then Exit;

  while Assigned(Node.Parent) do
    Node := Node.Parent;

  oMenuBar := TNMenuBar(FMenuControl);

  sGroup := Node.Text;

  if oMenuBar.UsersDataSet.Locate(oMenuBar.UserIDField,sGroup,[]) then
  begin
//    if oMenuBar.AddUsersGroup(Node.Text, lvUsersGroups.Selected.Caption) then
//      AddChild(tvUsersUsers, Node, lvUsersGroups.Selected.Caption, 0);
    for i := 0 to lvUsersGroups.Items.Count -1 do
    begin
      if lvUsersGroups.Items[i].Selected then
        if oMenuBar.AddUsersGroup(sGroup, lvUsersGroups.Items[i].Caption) then
          AddChild(tvUsersUsers, Node, lvUsersGroups.Items[i].Caption, 0);
    end;
  end;

  Node.Selected := true;
end;

procedure TfrmUserAdministrator.PermissionToGroup(Sender: TObject);
var
  Node: TTreeNode;
  oMenuBar: TNMenuBar;
  i, iIndex: Integer;
  sGroup: String;
begin
//  if not Assigned(lvGroupsPermissions.Selected) then Exit;
  if grdPermission.ActiveView = gvwMenuPermission then
  begin
    if (not cdsMenuPermission.Active) or (cdsMenuPermission.IsEmpty) then
      Exit;
  end
  else if grdPermission.ActiveView = gvwReportPermission then
  begin
    if (not cdsReportPermission.Active) or (cdsReportPermission.IsEmpty) then
      Exit;
  end
  else if grdPermission.ActiveView = gvwStaticPermission then
  begin
    if (not cdsStaticPermission.Active) or (cdsStaticPermission.IsEmpty) then
      Exit;
  end
  else if grdPermission.ActiveView = gvwAdminPermission then
  begin
    if (not cdsAdminPermission.Active) or (cdsAdminPermission.IsEmpty) then
      Exit;
  end;


  Node := tvGroupsGroups.Selected;
  if not Assigned(Node) then Exit;

  while Assigned(Node.Parent) do
    Node := Node.Parent;

  oMenuBar := TNMenuBar(FMenuControl);

  sGroup := Node.Text;

  if oMenuBar.GroupDataSet.Locate(oMenuBar.GroupIDField,sGroup,[]) then
  begin
    if grdPermission.ActiveView = gvwMenuPermission then
    begin
      for i := 0 to gvwMenuPermission.Controller.SelectedRecordCount - 1 do
      begin
        iIndex := gvwMenuPermission.Controller.SelectedRecords[i].RecordIndex;
        gvwMenuPermission.DataController.FocusedRecordIndex := iIndex;

        if oMenuBar.AddPermission(sGroup, cdsMenuPermissionPermission.AsString) then
          AddChild(tvGroupsGroups, Node, cdsMenuPermissionPermission.AsString, 0);
      end;
    end
    else if grdPermission.ActiveView = gvwReportPermission then
    begin
      for i := 0 to gvwReportPermission.Controller.SelectedRecordCount - 1 do
      begin
        iIndex := gvwReportPermission.Controller.SelectedRecords[i].RecordIndex;
        gvwReportPermission.DataController.FocusedRecordIndex := iIndex;

        if oMenuBar.AddPermission(sGroup, cdsReportPermissionPermission.AsString) then
          AddChild(tvGroupsGroups, Node, cdsReportPermissionPermission.AsString, 0);
      end;
    end
    else if grdPermission.ActiveView = gvwStaticPermission then
    begin
      for i := 0 to gvwStaticPermission.Controller.SelectedRecordCount - 1 do
      begin
        iIndex := gvwStaticPermission.Controller.SelectedRecords[i].RecordIndex;
        gvwStaticPermission.DataController.FocusedRecordIndex := iIndex;

        if oMenuBar.AddPermission(sGroup, cdsStaticPermissionPermission.AsString) then
          AddChild(tvGroupsGroups, Node, cdsStaticPermissionPermission.AsString, 0);
      end;
    end
    else if grdPermission.ActiveView = gvwAdminPermission then
    begin
      for i := 0 to gvwAdminPermission.Controller.SelectedRecordCount - 1 do
      begin
        iIndex := gvwAdminPermission.Controller.SelectedRecords[i].RecordIndex;
        gvwAdminPermission.DataController.FocusedRecordIndex := iIndex;

        if oMenuBar.AddPermission(sGroup, cdsAdminPermissionPermission.AsString) then
          AddChild(tvGroupsGroups, Node, cdsAdminPermissionPermission.AsString, 0);
      end;
    end


  end;

  Node.Selected := true;
end;

procedure TfrmUserAdministrator.RefreshGroups;
var
  SubNode: TTreeNode;
  Node : TTreeNode;
  oMenuBar: TNMenubar;
  ListItem: TListItem;
begin
  tvGroupsGroups.Items.Clear;
  lvUsersGroups.Clear;
  with TNMenubar(FMenuControl).GroupDataSet do
  begin
    if not Active then Open;

    First;
    while not EOF do
    begin
      oMenuBar := TNMenubar(FMenuControl);
      Node := tvGroupsGroups.Items.Add(nil, FieldByName(oMenuBar.GroupIDField).AsString);
      Node.ImageIndex := 1;
      Node.SelectedIndex := 1;

      oMenuBar := TNMenubar(FMenuControl);
      ListItem := lvUsersGroups.Items.Add;
      ListItem.Caption := FieldByName(oMenuBar.GroupIDField).AsString;
      ListItem.SubItems.Add(FieldByName(oMenuBar.GroupDescField).AsString);

      // Add Item Permissions...
      with TNMenubar(FMenuControl).GroupItemDataSet do
      begin
        if not Active then Open;


        Filtered := False;
        Filter := TNMenubar(FMenuControl).GroupIDField + '=''' + Node.Text + '''';
        Filtered := True;
        First;

        while not EOF do
        begin
          SubNode := tvGroupsGroups.Items.AddChild(Node, FieldByName((TNMenubar(FMenuControl).PermissionField)).AsString);
          SubNode.ImageIndex := 2;
          SubNode.SelectedIndex := 2;
          Next;
        end;
        Filtered := False;
        Filter := '';
      end;
      Next;
    end; // while
  end; // with
  tvGroupsGroups.FullCollapse;
end;

procedure TfrmUserAdministrator.RefreshPermission;
var
//  oMenuBar: TNMenuBar;
  i: integer;
  oPermItem: TNPermissionItem;
//  ListItem: TListItem;
begin
//  lvGroupsPermissions.Items.Clear;
//  oMenuBar := TNMenubar(FMenuControl);
//  for i := 0 to oMenuBar.Permissions.Count - 1 do
//    begin
//      oPermItem := oMenuBar.Permissions.Items[i];
//      ListItem := lvGroupsPermissions.Items.Add;
//      ListItem.Caption := oPermItem.Permission;
//      ListItem.SubItems.Add(oPermItem.Description);
//
//      ListItem.Data := oPermItem;
//    end;

  cdsMenuPermission.Close;
  cdsMenuPermission.CreateDataSet;

  for i := 0 to MenuBar.Permissions.Count - 1 do
  begin
    oPermItem := MenuBar.Permissions.Items[i];

    cdsMenuPermission.Append;
    cdsMenuPermissionPermission.AsString := oPermItem.Permission;
    cdsMenuPermissionDescription.AsString := oPermItem.Description;
    cdsMenuPermission.Post;
  end;

  cdsReportPermission.Close;
  cdsReportPermission.CreateDataSet;

  for i := 0 to MenuBarReport.Permissions.Count - 1 do
  begin
    oPermItem := MenuBarReport.Permissions.Items[i];

    cdsReportPermission.Append;
    cdsReportPermissionPermission.AsString := oPermItem.Permission;
    cdsReportPermissionDescription.AsString := oPermItem.Description;
    cdsReportPermission.Post;
  end;

  cdsStaticPermission.Close;
  cdsStaticPermission.CreateDataSet;

  for i := 0 to MenuBarStatic.Permissions.Count - 1 do
  begin
    oPermItem := MenuBarStatic.Permissions.Items[i];

    cdsStaticPermission.Append;
    cdsStaticPermissionPermission.AsString := oPermItem.Permission;
    cdsStaticPermissionDescription.AsString := oPermItem.Description;
    cdsStaticPermission.Post;
  end;

  cdsAdminPermission.Close;
  cdsAdminPermission.CreateDataSet;

  for i := 0 to MenuBarAdmin.Permissions.Count - 1 do
  begin
    oPermItem := MenuBarAdmin.Permissions.Items[i];

    cdsAdminPermission.Append;
    cdsAdminPermissionPermission.AsString := oPermItem.Permission;
    cdsAdminPermissionDescription.AsString := oPermItem.Description;
    cdsAdminPermission.Post;
  end;
end;

procedure TfrmUserAdministrator.RefreshUsers;
var
  SubNode: TTreeNode;
  Node : TTreeNode;
  oMenuBar: TNMenubar;
begin
  tvUsersUsers.Items.Clear;
  with TNMenubar(FMenuControl).UsersDataSet do
  begin
    if not Active then Open;

    First;
    while not EOF do
    begin
      oMenuBar := TNMenubar(FMenuControl);
      Node := tvUsersUsers.Items.Add(nil, FieldByName(oMenuBar.UserIDField).AsString);
      Node.ImageIndex := 1;
      Node.SelectedIndex := 1;

      // Add Groups...
      with TNMenubar(FMenuControl).UserGroupDataSet do
      begin
        if not Active then Open;

        Filtered := False;
        Filter := TNMenubar(FMenuControl).UserIDField + '=''' + Node.Text + '''';
        Filtered := True;
        First;

        while not EOF do
        begin
          SubNode := tvUsersUsers.Items.AddChild(Node, FieldByName((TNMenubar(FMenuControl).GroupIDField)).AsString);
          SubNode.ImageIndex := 2;
          SubNode.SelectedIndex := 2;
          Next;
        end;
        Filtered := False;
        Filter := '';
      end;
      Next;
    end; // while
  end; // with
  tvUsersUsers.FullCollapse;
end;

procedure TfrmUserAdministrator.ResetPassword1Click(Sender: TObject);
var
  sMsg: string;
begin
  if MessageDlg('Reset Password ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.ResetPassword(tvUsersUsers.Selected.Text, sMsg);
    ShowMessage(sMsg);
  end;
end;

procedure TfrmUserAdministrator.tsUsersShow(Sender: TObject);
begin
  RefreshGroups;
end;

procedure TfrmUserAdministrator.UnlockUser1Click(Sender: TObject);
var
  sMsg: string;
begin
  if MessageDlg('Unlock User ID ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.UnLockUserID(tvUsersUsers.Selected.Text, sMsg);
    ShowMessage(sMsg);
  end;
end;

end.
