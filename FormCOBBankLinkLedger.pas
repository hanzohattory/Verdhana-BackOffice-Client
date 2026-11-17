unit FormCOBBankLinkLedger;

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
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ExtCtrls, Datasnap.DBClient,
  NClientDataset;

type
  TfrmCOBBankLinkLedger = class(TForm)
    Panel1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    LayoutControl: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    LayoutControlItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGrid6: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    gvwCustodyACCCUSTODYID: TcxGridDBColumn;
    gvwCustodyACCID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyACTLED_SEQID: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    gvwBankBNCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankISRDN: TcxGridDBColumn;
    gvwBankBNCHGSTYPE: TcxGridDBColumn;
    gvwBankACTLED_SEQID: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsSubject: TDataSource;
    cdsCOBAccountBank: TNClientDataset;
    cdsCOBAccountBankACCBANKID: TIntegerField;
    cdsCOBAccountBankACCID: TIntegerField;
    cdsCOBAccountBankBNCODE: TStringField;
    cdsCOBAccountBankBANKACCNO: TStringField;
    cdsCOBAccountBankBANKACCNAME: TStringField;
    cdsCOBAccountBankBANKBRANCH: TStringField;
    cdsCOBAccountBankISRDN: TStringField;
    cdsCOBAccountBankBNCHGSTYPE: TStringField;
    cdsCOBAccountBankACTLED_SEQID: TIntegerField;
    cdsCOBAccountBankMODDA: TDateTimeField;
    cdsCOBAccountBankMODUI: TStringField;
    cdsCOBAccountBankAPPDA: TDateTimeField;
    cdsCOBAccountBankAPPUI: TStringField;
    cdsCOBAccountBankUNDER4Y: TIntegerField;
    cdsCOBAccountBankUNDER4YDA: TDateTimeField;
    cdsCOBAccountBankNOTES4Y: TStringField;
    cdsCOBAccountBankISDEL: TIntegerField;
    cdsCOBAccountBankID: TLargeintField;
    dsCOBAccountBank: TDataSource;
    dsCOBAccountCustody: TDataSource;
    cdsCOBAccountCustody: TNClientDataset;
    cdsCOBAccountCustodyACCCUSTODYID: TIntegerField;
    cdsCOBAccountCustodyACCID: TIntegerField;
    cdsCOBAccountCustodyCUSTODYCODE: TStringField;
    cdsCOBAccountCustodyCUSTODYACCNO: TStringField;
    cdsCOBAccountCustodyCUSTODYACCNAME: TStringField;
    cdsCOBAccountCustodyCUSTODYBRANCH: TStringField;
    cdsCOBAccountCustodyCUSTODYTYPE: TStringField;
    cdsCOBAccountCustodyACTLED_SEQID: TIntegerField;
    cdsCOBAccountCustodyMODDA: TDateTimeField;
    cdsCOBAccountCustodyMODUI: TStringField;
    cdsCOBAccountCustodyAPPDA: TDateTimeField;
    cdsCOBAccountCustodyAPPUI: TStringField;
    cdsCOBAccountCustodyUNDER4Y: TIntegerField;
    cdsCOBAccountCustodyUNDER4YDA: TDateTimeField;
    cdsCOBAccountCustodyNOTES4Y: TStringField;
    cdsCOBAccountCustodyISDEL: TIntegerField;
    cdsCOBAccountCustodyID: TLargeintField;
    cdsCOBAccLedgerLookup: TNClientDataset;
    cdsCOBAccLedgerLookupSEQID: TIntegerField;
    cdsCOBAccLedgerLookupACCID: TIntegerField;
    cdsCOBAccLedgerLookupALCODE: TStringField;
    cdsCOBAccLedgerLookupALDESCRIPTION: TStringField;
    cdsCOBAccLedgerLookupALTYPE: TStringField;
    dsCOBAccLedgerLookup: TDataSource;
    cdsCOBAccountBankCCYCODE: TStringField;
    gvwBankCCYCODE: TcxGridDBColumn;
    cdsCOBAccountBankACCBANKCODE: TStringField;
    gvwBankACCBANKID: TcxGridDBColumn;
    gvwBankACCID: TcxGridDBColumn;
    gvwBankMODDA: TcxGridDBColumn;
    gvwBankMODUI: TcxGridDBColumn;
    gvwBankAPPDA: TcxGridDBColumn;
    gvwBankAPPUI: TcxGridDBColumn;
    gvwBankUNDER4Y: TcxGridDBColumn;
    gvwBankUNDER4YDA: TcxGridDBColumn;
    gvwBankNOTES4Y: TcxGridDBColumn;
    gvwBankISDEL: TcxGridDBColumn;
    gvwBankID: TcxGridDBColumn;
    gvwBankACCBANKCODE: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareData(AAccID: Integer);
  end;

var
  frmCOBBankLinkLedger: TfrmCOBBankLinkLedger;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal, DataLookup;

{ TfrmCOBBankLinkLedger }

procedure TfrmCOBBankLinkLedger.btnOKClick(Sender: TObject);
begin

  cdsCOBAccountBank.First;
  while not cdsCOBAccountBank.Eof do
  begin
    if cdsCOBAccountBankCCYCODE.IsNull then
    begin
      MessageDlg('Currency Code Must be filled...', mtWarning, [mbOk], 0);
      ModalResult := mrNone;

      Exit;
    end
    else
      ModalResult := mrOk;

    cdsCOBAccountBank.Next;
  end;
end;

procedure TfrmCOBBankLinkLedger.PrepareData(AAccID: Integer);
begin
  cdsCOBAccLedgerLookup.Close;
  cdsCOBAccLedgerLookup.Params[0].AsInteger := AAccID;
  cdsCOBAccLedgerLookup.Open;

  cdsCOBAccountBank.Close;
  cdsCOBAccountBank.Params[0].AsInteger := AAccID;
  cdsCOBAccountBank.Open;

  cdsCOBAccountCustody.Close;
  cdsCOBAccountCustody.Params[0].AsInteger := AAccID;
  cdsCOBAccountCustody.Open;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCustody.Active then
    begin
      cdsLuCustody.Close;
      cdsLuCustody.Open;
    end;
  end;

end;

end.
