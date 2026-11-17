unit FormRepoContractList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
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
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient,
  NClientDataset;

type
  TfrmRepoContractList = class(TfrmEditor)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    LayoutControlItem1: TdxLayoutItem;
    cxGrid1DBTableView1CONTRACT_NO: TcxGridDBColumn;
    cxGrid1DBTableView1TRXDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACCNAME: TcxGridDBColumn;
    cxGrid1DBTableView1SETTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1SETTDAY: TcxGridDBColumn;
    cxGrid1DBTableView1MATURDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CCY: TcxGridDBColumn;
    cxGrid1DBTableView1INTEREST_AMT: TcxGridDBColumn;
    cxGrid1DBTableView1REPO_AMT: TcxGridDBColumn;
    cxGrid1DBTableView1DUE_AMT: TcxGridDBColumn;
    cxGrid1DBTableView1INTERESTRATE: TcxGridDBColumn;
    cxGrid1DBTableView1COLL_AMT: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepoContractList: TfrmRepoContractList;

implementation

{$R *.dfm}
uses DataGlobal; //, FormClosingRepoContractEditor

procedure TfrmRepoContractList.btnCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRepoContractList.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmRepoContractList.FormCreate(Sender: TObject);
begin
  inherited;
//  cdsRepoContractList.Close;
//  cdsRepoContractList.Open;

end;


procedure TfrmRepoContractList.FormShow(Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.Refresh;
end;

Initialization
  RegisterClass(TfrmRepoContractList);
end.
