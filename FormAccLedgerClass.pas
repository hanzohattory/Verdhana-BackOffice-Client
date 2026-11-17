unit FormAccLedgerClass;

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
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, cxDBLookupComboBox, Datasnap.DBClient, NClientDataset,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmAccLedgerClass = class(TfrmEditorData)
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwAccLegClassD: TcxGridDBBandedTableView;
    dsAccLegClass_D: TDataSource;
    gvwAccLegClassDALCID: TcxGridDBBandedColumn;
    gvwAccLegClassDALTYPE: TcxGridDBBandedColumn;
    gvwAccLegClassDMODDA: TcxGridDBBandedColumn;
    gvwAccLegClassDMODUI: TcxGridDBBandedColumn;
    gvwAccLegClassDAPPDA: TcxGridDBBandedColumn;
    gvwAccLegClassDAPPUI: TcxGridDBBandedColumn;
    gvwAccLegClassDUNDER4Y: TcxGridDBBandedColumn;
    gvwAccLegClassDUNDER4YDA: TcxGridDBBandedColumn;
    gvwAccLegClassDNOTES4Y: TcxGridDBBandedColumn;
    gvwAccLegClassDISDEL: TcxGridDBBandedColumn;
    gvwAccLegClassDID: TcxGridDBBandedColumn;
    cdsAccLegClass_H: TNClientDataset;
    cdsAccLegClass_HALCID: TIntegerField;
    cdsAccLegClass_HALCNAME: TStringField;
    cdsAccLegClass_HMODDA: TDateTimeField;
    cdsAccLegClass_HMODUI: TStringField;
    cdsAccLegClass_HAPPDA: TDateTimeField;
    cdsAccLegClass_HAPPUI: TStringField;
    cdsAccLegClass_HUNDER4Y: TIntegerField;
    cdsAccLegClass_HUNDER4YDA: TDateTimeField;
    cdsAccLegClass_HNOTES4Y: TStringField;
    cdsAccLegClass_HISDEL: TIntegerField;
    cdsAccLegClass_HID: TLargeintField;
    cdsAccLegClass_HqryAccLegClass_D: TDataSetField;
    cdsAccLegClass_D: TNClientDataset;
    cdsAccLegClass_DALCID: TIntegerField;
    cdsAccLegClass_DALTYPE: TStringField;
    cdsAccLegClass_DMODDA: TDateTimeField;
    cdsAccLegClass_DMODUI: TStringField;
    cdsAccLegClass_DAPPDA: TDateTimeField;
    cdsAccLegClass_DAPPUI: TStringField;
    cdsAccLegClass_DUNDER4Y: TIntegerField;
    cdsAccLegClass_DUNDER4YDA: TDateTimeField;
    cdsAccLegClass_DNOTES4Y: TStringField;
    cdsAccLegClass_DISDEL: TIntegerField;
    cdsAccLegClass_DID: TLargeintField;
    procedure cdsAccLegClass_HBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccLedgerClass: TfrmAccLedgerClass;

implementation

{$R *.dfm}

uses FormAccLedgerClassList, DataGlobal;

procedure TfrmAccLedgerClass.cdsAccLegClass_HBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    if cdsAccLegClass_HALCID.IsNull then
      cdsAccLegClass_HALCID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCLEGCLASS_H');
  end;
end;

Initialization
  RegisterClass(TfrmAccLedgerClass);

end.
