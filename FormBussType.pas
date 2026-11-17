unit FormBussType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  Datasnap.DBClient, NClientDataset;

type
  TfrmBussType = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsBussCat: TNClientDataset;
    cdsBussCatBUS_CAT_ID: TLargeintField;
    cdsBussCatBUS_CAT_CODE: TStringField;
    cdsBussCatBUS_CAT_DESC: TStringField;
    cdsBussCatMODDA: TDateTimeField;
    cdsBussCatMODUI: TStringField;
    cdsBussCatAPPDA: TDateTimeField;
    cdsBussCatAPPUI: TStringField;
    cdsBussCatUNDER4Y: TIntegerField;
    cdsBussCatUNDER4YDA: TDateTimeField;
    cdsBussCatNOTES4Y: TStringField;
    cdsBussCatISDEL: TIntegerField;
    cdsBussCatID: TLargeintField;
    procedure cdsBussCatNewRecord(DataSet: TDataSet);
    procedure cdsBussCatBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBussType: TfrmBussType;

implementation

{$R *.dfm}

uses FormBussTypes, DataGlobal;

procedure TfrmBussType.cdsBussCatBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsBussCat.State in [dsInsert] then
  begin
    if (cdsBussCatBUS_CAT_ID.AsLargeInt = -1) or (cdsBussCatBUS_CAT_ID.IsNull) then
      cdsBussCatBUS_CAT_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BUS_CAT');
  end;
end;

procedure TfrmBussType.cdsBussCatNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBussCatBUS_CAT_ID.AsLargeInt := -1;
end;

Initialization
  RegisterClass(TfrmBussType);

end.
