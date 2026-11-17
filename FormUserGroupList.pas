unit FormUserGroupList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, Datasnap.DBClient,
  NClientDataset, dxSkinsdxStatusBarPainter, cxPCdxBarPopupMenu,
  cxGridDBTableView, cxPC, dxStatusBar, dxLayoutContainer, dxLayoutControl,
  Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBarBuiltInMenu;

type
  TfrmUserGroupList = class(TForm)
    cdsGroupEditList: TNClientDataset;
    cdsGroupEditListGROUPID: TStringField;
    cdsGroupEditListAPPID: TStringField;
    cdsGroupEditListGROUPDESC: TStringField;
    cdsGroupEditListMODDA: TDateTimeField;
    cdsGroupEditListMODUI: TStringField;
    cdsGroupEditListINSDA: TDateTimeField;
    cdsGroupEditListINSUI: TStringField;
    cdsGroupEditListqryUserGroupList: TDataSetField;
    cdsUserGroupList: TNClientDataset;
    cdsUserGroupListUSERID: TStringField;
    cdsUserGroupListAPPID: TStringField;
    cdsUserGroupListGROUPID: TStringField;
    cdsUserGroupListMODDA: TDateTimeField;
    cdsUserGroupListMODUI: TStringField;
    cdsUserGroupListAPPDA: TDateTimeField;
    cdsUserGroupListAPPUI: TStringField;
    cdsUserGroupListUNDER4Y: TIntegerField;
    cdsUserGroupListUNDER4YDA: TDateTimeField;
    cdsUserGroupListNOTES4Y: TStringField;
    cdsUserGroupListISDEL: TIntegerField;
    cdsUserGroupListID: TLargeintField;
    cdsUserUnGroup: TNClientDataset;
    cdsUserUnGroupUSERID: TStringField;
    cdsUserUnGroupAPPID: TStringField;
    cdsUserUnGroupUSERNAME: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwGroupList: TcxGridDBBandedTableView;
    dsGroupEditList: TDataSource;
    gvwGroupListGROUPID: TcxGridDBBandedColumn;
    gvwGroupListGROUPDESC: TcxGridDBBandedColumn;
    StatusBar: TdxStatusBar;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dsUserList: TDataSource;
    dsUserUnGroup: TDataSource;
    gvwLeftUser: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwLeftUserUSERID: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid3: TcxGrid;
    gvwRightUser: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsGroupEditListqryGroupPermission: TDataSetField;
    cdsGroupPerm: TNClientDataset;
    cdsGroupPermGROUPID: TStringField;
    cdsGroupPermAPPID: TStringField;
    cdsGroupPermPERMISSION: TStringField;
    cdsGroupPermMODDA: TDateTimeField;
    cdsGroupPermMODUI: TStringField;
    cdsGroupPermINSDA: TDateTimeField;
    cdsGroupPermINSUI: TStringField;
    cxGrid4: TcxGrid;
    gvwLeftPerm: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dxLayoutControl2: TdxLayoutControl;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid5: TcxGrid;
    gvwRightPerm: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    dsGroupPermGroup: TDataSource;
    dsSourcePermission: TDataSource;
    gvwRightPermPERMISSION: TcxGridDBColumn;
    cdsSourcePermission: TClientDataSet;
    cdsSourcePermissionPERMISSIONS: TStringField;
    gvwLeftPermPERMISSIONS: TcxGridDBColumn;
    procedure gvwGroupListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwRightUserCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwLeftUserCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwGroupListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CopyPermissionSource;
  public
    { Public declarations }
  end;

var
  frmUserGroupList: TfrmUserGroupList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, DataReport;

procedure TfrmUserGroupList.CopyPermissionSource;
var
  i: Integer;
  sPerm: string;
begin
  cdsSourcePermission.DisableControls;
  cdsGroupPerm.DisableControls;

  cdsSourcePermission.Close;
  cdsSourcePermission.CreateDataSet;

  for i := 0 to dmGlobal.menuBar.Permissions.Count-1 do
  begin
    sPerm := dmGlobal.menuBar.Permissions.Items[i].Permission;

    if not cdsGroupPerm.Locate('PERMISSION', VarArrayOf([sPerm]), []) then
    begin
      cdsSourcePermission.Append;
      cdsSourcePermissionPERMISSIONS.AsString := sPerm;
      cdsSourcePermission.Post;
    end;

  end;

  cdsSourcePermission.EnableControls;
  cdsGroupPerm.EnableControls;

end;

procedure TfrmUserGroupList.cxButton1Click(Sender: TObject);
begin
  cdsUserGroupList.Append;
  cdsUserGroupListUSERID.AsString := cdsUserUnGroupUSERID.AsString;
  cdsUserGroupListAPPID.AsString := cdsUserUnGroupAPPID.AsString;
  cdsUserGroupListGROUPID.AsString := cdsGroupEditListGROUPID.AsString;
  cdsUserGroupList.Post;

  cdsGroupEditList.ApplyUpdates(-1);

  cdsUserUnGroup.DisableControls;
  cdsUserUnGroup.Close;
  cdsUserUnGroup.Open;
  cdsUserUnGroup.EnableControls;
end;

procedure TfrmUserGroupList.cxButton2Click(Sender: TObject);
begin
  cdsUserGroupList.Delete;
  cdsGroupEditList.ApplyUpdates(-1);

  cdsUserUnGroup.DisableControls;
  cdsUserUnGroup.Close;
  cdsUserUnGroup.Open;
  cdsUserUnGroup.EnableControls;

end;

procedure TfrmUserGroupList.FormShow(Sender: TObject);
begin
  cdsGroupEditList.Close;
  cdsGroupEditList.Open;
end;

procedure TfrmUserGroupList.gvwGroupListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmUserGroupList.gvwGroupListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  cdsUserUnGroup.Close;
  cdsUserUnGroup.Params[0].AsString := cdsGroupEditListGROUPID.AsString;
  cdsUserUnGroup.Open;

  CopyPermissionSource;
end;

procedure TfrmUserGroupList.gvwLeftUserCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmUserGroupList.gvwRightUserCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

end.
