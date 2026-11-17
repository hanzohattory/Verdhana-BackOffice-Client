unit FormPermissions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, NDataMemNonVisual, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses, cxGridLevel, cxGrid, cxTextEdit,
  Vcl.ActnList,
  NDatasetAction, dxLayoutContainer, dxLayoutControl, Vcl.StdCtrls, Data.DB, cxDBData, cxGridDBBandedTableView, Datasnap.DBClient,
  cxNavigator;

type
  TfrmPermissions = class(TfrmBasic)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grdSubjectLevel1: TcxGridLevel;
    grdSubject: TcxGrid;
    aclPermissions: TActionList;
    actLoadPermissions: TNAction;
    Load1: TMenuItem;
    gvwPermission: TcxGridDBBandedTableView;
    grdSubjectLevel2: TcxGridLevel;
    grdSubjectLevel3: TcxGridLevel;
    gvwPermissionForm: TcxGridDBBandedTableView;
    gvwPermissionFormAction: TcxGridDBBandedTableView;
    dsPermission: TDataSource;
    dsPermissionFormAction: TDataSource;
    dsPermissionForm: TDataSource;
    gvwPermissionPERMISSIONNAME: TcxGridDBBandedColumn;
    gvwPermissionPERMISSIONDESC: TcxGridDBBandedColumn;
    gvwPermissionFormFORMNAME: TcxGridDBBandedColumn;
    gvwPermissionFormActionACTIONNAME: TcxGridDBBandedColumn;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwUser: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    dsUserGroup: TDataSource;
    dsUserGroupPermission: TDataSource;
    cdsUserGroup: TClientDataSet;
    cdsUserGroupPermission: TClientDataSet;
    cdsUserPermissionFormAction: TClientDataSet;
    gvwUserGroup: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    gvwUserGroupPermission: TcxGridDBBandedTableView;
    cdsUser: TClientDataSet;
    dsUser: TDataSource;
    cdsUserUSERID: TStringField;
    cdsUserUSERNAME: TStringField;
    cdsUserGroupUSERID: TStringField;
    cdsUserGroupGROUPID: TStringField;
    cdsUserGroupPermissionGROUPID: TStringField;
    cdsUserGroupPermissionPERMISSION: TStringField;
    gvwUserUSERID: TcxGridDBBandedColumn;
    gvwUserUSERNAME: TcxGridDBBandedColumn;
    gvwUserGroupGROUPID: TcxGridDBBandedColumn;
    gvwUserGroupPermissionPERMISSION: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    gvwFormUser: TcxGridDBBandedTableView;
    gvwForms: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    gvwFormAction: TcxGridDBBandedTableView;
    cdsForms: TClientDataSet;
    cdsFormsFORMNAME: TStringField;
    cdsFormAction: TClientDataSet;
    cdsFormActionFORMNAME: TStringField;
    cdsFormActionACTIONNAME: TStringField;
    cdsFormsPERMISSIONNAME: TStringField;
    cdsFormActionPERMISSIONNAME: TStringField;
    dsForms: TDataSource;
    dsFormAction: TDataSource;
    cdsFormsUSERID: TStringField;
    cdsFormActionUSERID: TStringField;
    gvwFormUserUSERID: TcxGridDBBandedColumn;
    gvwFormUserUSERNAME: TcxGridDBBandedColumn;
    gvwFormsFORMNAME: TcxGridDBBandedColumn;
    gvwFormsPERMISSIONNAME: TcxGridDBBandedColumn;
    gvwFormActionACTIONNAME: TcxGridDBBandedColumn;
    gvwFormActionPERMISSIONNAME: TcxGridDBBandedColumn;
    cdsUserPermissionFormActionUSERID: TStringField;
    cdsUserPermissionFormActionAPPID: TStringField;
    cdsUserPermissionFormActionUSERNAME: TStringField;
    cdsUserPermissionFormActionCRETEDATE: TDateTimeField;
    cdsUserPermissionFormActionUSERSTATE: TStringField;
    cdsUserPermissionFormActionUSERPWD: TStringField;
    cdsUserPermissionFormActionLASTCHANGEPWD: TDateTimeField;
    cdsUserPermissionFormActionLOCKED: TStringField;
    cdsUserPermissionFormActionWRONGPWDCOUNT: TIntegerField;
    cdsUserPermissionFormActionMODDA: TDateTimeField;
    cdsUserPermissionFormActionMODUI: TStringField;
    cdsUserPermissionFormActionHARDLIMIT: TFloatField;
    cdsUserPermissionFormActionSOFTLIMIT: TFloatField;
    cdsUserPermissionFormActionTEMPLIMIT: TFloatField;
    cdsUserPermissionFormActionUSERID_1: TStringField;
    cdsUserPermissionFormActionAPPID_1: TStringField;
    cdsUserPermissionFormActionGROUPID: TStringField;
    cdsUserPermissionFormActionMODDA_1: TDateTimeField;
    cdsUserPermissionFormActionMODUI_1: TStringField;
    cdsUserPermissionFormActionINSDA_1: TDateTimeField;
    cdsUserPermissionFormActionINSUI_1: TStringField;
    cdsUserPermissionFormActionGROUPID_1: TStringField;
    cdsUserPermissionFormActionAPPID_2: TStringField;
    cdsUserPermissionFormActionPERMISSION: TStringField;
    cdsUserPermissionFormActionMODDA_2: TDateTimeField;
    cdsUserPermissionFormActionMODUI_2: TStringField;
    cdsUserPermissionFormActionID: TLargeintField;
    cdsUserPermissionFormActionPERMISSIONNAME: TStringField;
    cdsUserPermissionFormActionFORMNAME: TStringField;
    cdsUserPermissionFormActionACTIONNAME: TStringField;
    cdsUserPermissionFormActionMODDA_3: TDateTimeField;
    cdsUserPermissionFormActionMODUI_3: TStringField;
    cdsUserPerm: TClientDataSet;
    cdsUserForm: TClientDataSet;
    cdsUserPermissionForm: TClientDataSet;
    cdsUserPermUSERID: TStringField;
    cdsUserPermAPPID: TStringField;
    cdsUserPermUSERNAME: TStringField;
    cdsUserPermCRETEDATE: TDateTimeField;
    cdsUserPermUSERSTATE: TStringField;
    cdsUserPermUSERPWD: TStringField;
    cdsUserPermLASTCHANGEPWD: TDateTimeField;
    cdsUserPermLOCKED: TStringField;
    cdsUserPermWRONGPWDCOUNT: TIntegerField;
    cdsUserPermMODDA: TDateTimeField;
    cdsUserPermMODUI: TStringField;
    cdsUserPermHARDLIMIT: TFloatField;
    cdsUserPermSOFTLIMIT: TFloatField;
    cdsUserPermTEMPLIMIT: TFloatField;
    cdsUserFormUSRUSERID: TStringField;
    cdsUserFormFORMNAME: TStringField;
    cdsUserPermissionFormUSRUSERID: TStringField;
    cdsUserPermissionFormFORMNAME: TStringField;
    cdsUserPermissionFormPERMISSIONNAME: TStringField;
    cdsUserFormActionByPermission: TClientDataSet;
    cdsUserFormActionByPermissionUSERID: TStringField;
    cdsUserFormActionByPermissionAPPID: TStringField;
    cdsUserFormActionByPermissionUSERNAME: TStringField;
    cdsUserFormActionByPermissionCRETEDATE: TDateTimeField;
    cdsUserFormActionByPermissionUSERSTATE: TStringField;
    cdsUserFormActionByPermissionUSERPWD: TStringField;
    cdsUserFormActionByPermissionLASTCHANGEPWD: TDateTimeField;
    cdsUserFormActionByPermissionLOCKED: TStringField;
    cdsUserFormActionByPermissionWRONGPWDCOUNT: TIntegerField;
    cdsUserFormActionByPermissionMODDA: TDateTimeField;
    cdsUserFormActionByPermissionMODUI: TStringField;
    cdsUserFormActionByPermissionHARDLIMIT: TFloatField;
    cdsUserFormActionByPermissionSOFTLIMIT: TFloatField;
    cdsUserFormActionByPermissionTEMPLIMIT: TFloatField;
    cdsUserFormActionByPermissionUSERID_1: TStringField;
    cdsUserFormActionByPermissionAPPID_1: TStringField;
    cdsUserFormActionByPermissionGROUPID: TStringField;
    cdsUserFormActionByPermissionMODDA_1: TDateTimeField;
    cdsUserFormActionByPermissionMODUI_1: TStringField;
    cdsUserFormActionByPermissionGROUPID_1: TStringField;
    cdsUserFormActionByPermissionAPPID_2: TStringField;
    cdsUserFormActionByPermissionPERMISSION: TStringField;
    cdsUserFormActionByPermissionMODDA_2: TDateTimeField;
    cdsUserFormActionByPermissionMODUI_2: TStringField;
    cdsUserFormActionByPermissionID: TLargeintField;
    cdsUserFormActionByPermissionPERMISSIONNAME: TStringField;
    cdsUserFormActionByPermissionFORMNAME: TStringField;
    cdsUserFormActionByPermissionACTIONNAME: TStringField;
    cdsUserFormActionByPermissionMODDA_3: TDateTimeField;
    cdsUserFormActionByPermissionMODUI_3: TStringField;
    cdsUserPermAPPDA: TDateTimeField;
    cdsUserPermAPPUI: TStringField;
    cdsUserPermUNDER4Y: TIntegerField;
    cdsUserPermUNDER4YDA: TDateTimeField;
    cdsUserPermNOTES4Y: TStringField;
    cdsUserPermISDEL: TIntegerField;
    cdsUserPermID: TLargeintField;
    cdsUserPermissionFormActionAPPDA: TDateTimeField;
    cdsUserPermissionFormActionAPPUI: TStringField;
    cdsUserPermissionFormActionUNDER4Y: TIntegerField;
    cdsUserPermissionFormActionUNDER4YDA: TDateTimeField;
    cdsUserPermissionFormActionNOTES4Y: TStringField;
    cdsUserPermissionFormActionISDEL: TIntegerField;
    cdsUserPermissionFormActionAPPDA_1: TDateTimeField;
    cdsUserPermissionFormActionAPPUI_1: TStringField;
    cdsUserPermissionFormActionUNDER4Y_1: TIntegerField;
    cdsUserPermissionFormActionUNDER4YDA_1: TDateTimeField;
    cdsUserPermissionFormActionNOTES4Y_1: TStringField;
    cdsUserPermissionFormActionISDEL_1: TIntegerField;
    cdsUserPermissionFormActionID_1: TLargeintField;
    cdsUserPermissionFormActionINSDA: TDateTimeField;
    cdsUserPermissionFormActionINSUI: TStringField;
    cdsUserPermissionFormActionID_2: TLargeintField;
    cdsUserFormActionByPermissionAPPDA: TDateTimeField;
    cdsUserFormActionByPermissionAPPUI: TStringField;
    cdsUserFormActionByPermissionUNDER4Y: TIntegerField;
    cdsUserFormActionByPermissionUNDER4YDA: TDateTimeField;
    cdsUserFormActionByPermissionNOTES4Y: TStringField;
    cdsUserFormActionByPermissionISDEL: TIntegerField;
    cdsUserFormActionByPermissionAPPDA_1: TDateTimeField;
    cdsUserFormActionByPermissionAPPUI_1: TStringField;
    cdsUserFormActionByPermissionUNDER4Y_1: TIntegerField;
    cdsUserFormActionByPermissionUNDER4YDA_1: TDateTimeField;
    cdsUserFormActionByPermissionNOTES4Y_1: TStringField;
    cdsUserFormActionByPermissionISDEL_1: TIntegerField;
    cdsUserFormActionByPermissionID_1: TLargeintField;
    cdsUserFormActionByPermissionID_2: TLargeintField;
    cdsUserFormActionByPermissionINSDA: TDateTimeField;
    cdsUserFormActionByPermissionINSUI: TStringField;
    procedure actLoadPermissionsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetAllUserPermissions;
  public
    { Public declarations }
  end;

var
  frmPermissions: TfrmPermissions;

implementation

{$R *.dfm}

uses FormMain, DataGlobal;

{ TfrmPermissions }
procedure TfrmPermissions.actLoadPermissionsExecute(Sender: TObject);
begin
  inherited;
  ShowMessage('');
end;

procedure TfrmPermissions.FormCreate(Sender: TObject);
begin
  inherited;
  cdsUserPerm.Close;
  cdsUserPerm.Open;

  cdsUser.Close;
  cdsUser.Open;

  cdsUserGroup.Close;
  cdsUserGroup.Open;

  cdsUserGroupPermission.Close;
  cdsUserGroupPermission.Open;

  cdsUserPermissionFormAction.Close;
  cdsUserPermissionFormAction.Open;

  GetAllUserPermissions;
end;

procedure TfrmPermissions.GetAllUserPermissions;
var
  slPermForm, slPermAct: string;
  iRes : integer;
begin
  if not cdsForms.Active then cdsForms.CreateDataSet;
  if not cdsFormAction.Active then cdsFormAction.CreateDataSet;

  cdsUserPerm.First;
  while not cdsUserPerm.Eof do
  begin
    cdsUserForm.Close;
    cdsUserForm.Params[0].AsString := cdsUserPermUSERID.AsString;
    cdsUserForm.Open;

    cdsUserForm.First;
    while not cdsUserForm.Eof do
    begin
      slPermForm := '';
      cdsForms.Append;
      cdsFormsUSERID.AsString := cdsUserFormUSRUSERID.AsString;
      cdsFormsFORMNAME.AsString := cdsUserFormFORMNAME.AsString;
      cdsForms.Post;

      cdsUserPermissionForm.Close;
      cdsUserPermissionForm.Params[0].AsString := cdsUserFormUSRUSERID.AsString;
      cdsUserPermissionForm.Params[1].AsString := cdsUserFormFORMNAME.AsString;
      cdsUserPermissionForm.Open;

      cdsUserPermissionForm.First;
      while not cdsUserPermissionForm.Eof do
      begin
        if slPermForm = '' then slPermForm :=  cdsUserPermissionFormPERMISSIONNAME.AsString
        else slPermForm := slPermForm + ';' + cdsUserPermissionFormPERMISSIONNAME.AsString;

        cdsUserPermissionFormAction.Close;
        cdsUserPermissionFormAction.Params[0].AsString := cdsUserPermissionFormUSRUSERID.AsString;
        cdsUserPermissionFormAction.Params[1].AsString := cdsUserPermissionFormFORMNAME.AsString;
        cdsUserPermissionFormAction.Params[2].AsString := cdsUserPermissionFormPERMISSIONNAME.AsString;
        cdsUserPermissionFormAction.Open;

        slPermAct := '';
        cdsUserPermissionFormAction.First;
        while not cdsUserPermissionFormAction.Eof do
        begin
          if not cdsFormAction.Locate('USERID;FORMNAME;ACTIONNAME',VarArrayOf([cdsUserFormUSRUSERID.AsString,cdsUserFormFORMNAME.AsString,cdsUserPermissionFormActionACTIONNAME.AsString]),[]) then
          begin
            slPermAct := '';

            cdsUserFormActionByPermission.Close;
            cdsUserFormActionByPermission.Params[0].AsString := cdsUserFormUSRUSERID.AsString;
            cdsUserFormActionByPermission.Params[1].AsString := cdsUserFormFORMNAME.AsString;
            cdsUserFormActionByPermission.Params[2].AsString := cdsUserPermissionFormActionACTIONNAME.AsString;
            cdsUserFormActionByPermission.Open;

            cdsUserFormActionByPermission.First;
            while not cdsUserFormActionByPermission.Eof do
            begin
              if slPermAct = '' then slPermAct :=  cdsUserFormActionByPermissionPERMISSIONNAME.AsString
              else slPermAct := slPermAct + ';' + cdsUserFormActionByPermissionPERMISSIONNAME.AsString;

              cdsUserFormActionByPermission.Next;
            end;

            cdsFormAction.Append;
            cdsFormActionUSERID.AsString := cdsUserFormUSRUSERID.AsString;
            cdsFormActionFORMNAME.AsString := cdsUserFormFORMNAME.AsString;
            cdsFormActionACTIONNAME.AsString := cdsUserPermissionFormActionACTIONNAME.AsString;
            cdsFormActionPERMISSIONNAME.AsString := slPermAct;
            cdsFormAction.Post;
          end;

          cdsUserPermissionFormAction.Next;
        end;

        cdsUserPermissionForm.Next;
      end;

      if cdsForms.Locate('USERID;FORMNAME',VarArrayOf([cdsUserFormUSRUSERID.AsString,cdsUserFormFORMNAME.AsString]),[]) then
      begin
        cdsForms.Edit;
        cdsFormsPERMISSIONNAME.AsString := slPermForm;
        cdsForms.Post;
      end;


      cdsUserForm.Next;
    end;


    cdsUserPerm.Next;
  end;
end;

initialization
  RegisterClass(TfrmPermissions);

end.
