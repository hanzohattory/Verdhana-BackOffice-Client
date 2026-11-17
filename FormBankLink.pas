unit FormBankLink;

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
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, cxDBLookupComboBox;

type
  TfrmBankLink = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    LayoutControlItem3: TdxLayoutItem;
    dsAccountBank: TDataSource;
    gvwBankLink: TcxGridDBBandedTableView;
    gvwBankLinkACCID: TcxGridDBBandedColumn;
    gvwBankLinkBNCODE: TcxGridDBBandedColumn;
    gvwBankLinkBANKACCNO: TcxGridDBBandedColumn;
    gvwBankLinkBANKACCNAME: TcxGridDBBandedColumn;
    gvwBankLinkBANKBRANCH: TcxGridDBBandedColumn;
    gvwBankLinkISRDN: TcxGridDBBandedColumn;
    gvwBankLinkBNCHGSTYPE: TcxGridDBBandedColumn;
    gvwBankLinkMODDA: TcxGridDBBandedColumn;
    gvwBankLinkMODUI: TcxGridDBBandedColumn;
    gvwBankLinkAPPDA: TcxGridDBBandedColumn;
    gvwBankLinkAPPUI: TcxGridDBBandedColumn;
    gvwBankLinkUNDER4Y: TcxGridDBBandedColumn;
    gvwBankLinkUNDER4YDA: TcxGridDBBandedColumn;
    gvwBankLinkNOTES4Y: TcxGridDBBandedColumn;
    gvwBankLinkISDEL: TcxGridDBBandedColumn;
    gvwBankLinkID: TcxGridDBBandedColumn;
    gvwBankLinkACTLED_SEQID: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankLink: TfrmBankLink;

implementation

{$R *.dfm}

uses FormCOBList, DataLookup, DataGlobal;

procedure TfrmBankLink.FormShow(Sender: TObject);
begin
  inherited;
  dmGlobal.intDataLookUp.cdsLuAccountLedger.Close;
  dmGlobal.intDataLookUp.cdsLuAccountLedger.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  dmGlobal.intDataLookUp.cdsLuAccountLedger.Open;
end;

end.
