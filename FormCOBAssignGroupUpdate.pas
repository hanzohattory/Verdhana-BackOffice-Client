unit FormCOBAssignGroupUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, Vcl.ActnList;

type
  TfrmCOBAssignGroupUpdate = class(TForm)
    Panel1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    pnlLeft: TPanel;
    pnlCenter: TPanel;
    pnlRight: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    gvwGroupList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cdsGroupList: TNClientDataset;
    gvwAssignedGroupList: TcxGridDBTableView;
    cdsGroupListGROUPID: TStringField;
    cdsGroupListAPPID: TStringField;
    cdsGroupListGROUPDESC: TStringField;
    dsGroupList: TDataSource;
    gvwGroupListGROUPID: TcxGridDBColumn;
    cdsAssignedGroupList: TNClientDataset;
    dsAssignedGroupList: TDataSource;
    cdsAssignedGroupListGROUPID: TStringField;
    cdsAssignedGroupListACTIVITY_ID: TIntegerField;
    cdsAssignedGroupListACTIVITY_SUBID: TIntegerField;
    gvwAssignedGroupListGROUPID: TcxGridDBColumn;
    pnlTop: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    actAdd: TAction;
    actRemove: TAction;
    cdsAssignedGroupListMODDA: TDateTimeField;
    cdsAssignedGroupListMODUI: TStringField;
    cdsAssignedGroupListAPPDA: TDateTimeField;
    cdsAssignedGroupListAPPUI: TStringField;
    cdsAssignedGroupListISDEL: TIntegerField;
    cdsAssignedGroupListID: TLargeintField;
    procedure actAddExecute(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
    procedure actAddUpdate(Sender: TObject);
    procedure actRemoveUpdate(Sender: TObject);
  private
    { Private declarations }
    FActivityID: Integer;
    FActivitySubID: Integer;
    FActivityName: string;
  public
    { Public declarations }
    procedure PrepareData(AACtivityID, AActivitySubID: Integer; AActivityName: string);
  end;

var
  frmCOBAssignGroupUpdate: TfrmCOBAssignGroupUpdate;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmCOBAssignGroupUpdate }

procedure TfrmCOBAssignGroupUpdate.actAddExecute(Sender: TObject);
var
  sGroupID: string;
  bPos: TBookmark;
begin
  sGroupID := cdsGroupListGROUPID.AsString;
  cdsAssignedGroupList.DisableControls;

  bPos := cdsAssignedGroupList.GetBookmark;

  if cdsAssignedGroupList.Locate('GROUPID', VarArrayOf([sGroupID]), []) then
  begin
    cdsAssignedGroupList.GotoBookmark(bPos);

  end
  else
  begin
    cdsAssignedGroupList.Append;
    cdsAssignedGroupListGROUPID.AsString := sGroupID;
    cdsAssignedGroupListACTIVITY_ID.AsInteger := FActivityID;
    cdsAssignedGroupListACTIVITY_SUBID.AsInteger := FActivitySubID;
    cdsAssignedGroupList.Post;
  end;

  cdsAssignedGroupList.EnableControls;

end;

procedure TfrmCOBAssignGroupUpdate.actAddUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (not cdsGroupList.IsEmpty);
end;

procedure TfrmCOBAssignGroupUpdate.actRemoveExecute(Sender: TObject);
var
  sGroup: string;
begin
  sGroup := cdsAssignedGroupListGROUPID.AsString;

  if MessageDlg('Are you sure want to remove group ' + sGroup + ' from Activity ' + FActivityName, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsAssignedGroupList.Delete;
  end;
end;

procedure TfrmCOBAssignGroupUpdate.actRemoveUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (not cdsAssignedGroupList.IsEmpty);

end;

procedure TfrmCOBAssignGroupUpdate.PrepareData(AACtivityID,
  AActivitySubID: Integer; AActivityName: string);
begin
  FActivityID := AACtivityID;
  FActivitySubID := AActivitySubID;
  FActivityName := AActivityName;

  pnlTop.Caption := '  Activity : ' + FActivityName;

  cdsGroupList.Close;
  cdsGroupList.Open;

  cdsAssignedGroupList.Close;
  cdsAssignedGroupList.Params[0].Value := FActivityID;
  cdsAssignedGroupList.Params[1].Value := FActivitySubID;
  cdsAssignedGroupList.Open;

end;

end.
