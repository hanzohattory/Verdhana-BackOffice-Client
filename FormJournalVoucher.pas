unit FormJournalVoucher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, NClientDataset, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmJournalVoucher = class(TForm)
    cdsJRNH: TNClientDataset;
    cdsJRNHJRNID: TLargeintField;
    cdsJRNHJRNCD: TStringField;
    cdsJRNHVDATE: TDateTimeField;
    cdsJRNHEDATE: TDateTimeField;
    cdsJRNHREFFID: TLargeintField;
    cdsJRNHACCID: TLargeintField;
    cdsJRNHACCCODE: TStringField;
    cdsJRNHACCNAME: TStringField;
    cdsJRNHVPERIODID: TLargeintField;
    cdsJRNHVPERIODCODE: TStringField;
    cdsJRNHEPERIODID: TLargeintField;
    cdsJRNHEPERIODCODE: TStringField;
    cdsJRNHJRNTYPE: TStringField;
    cdsJRNHHDESC: TStringField;
    cdsJRNHTOTALDB: TFloatField;
    cdsJRNHTOTALCR: TFloatField;
    cdsJRNHCCYCODE: TStringField;
    cdsJRNHEXRATE: TFloatField;
    cdsJRNHMODDA: TDateTimeField;
    cdsJRNHMODUI: TStringField;
    cdsJRNHAPPDA: TDateTimeField;
    cdsJRNHAPPUI: TStringField;
    cdsJRNHUNDER4Y: TIntegerField;
    cdsJRNHUNDER4YDA: TDateTimeField;
    cdsJRNHNOTES4Y: TStringField;
    cdsJRNHISDEL: TIntegerField;
    cdsJRNHID: TLargeintField;
    cdsJRNHPOSTED: TStringField;
    cdsJRNHqryJRNExRate: TDataSetField;
    cdsJRNHqryJRND: TDataSetField;
    cdsJRND: TNClientDataset;
    cdsJRNDJRNID: TLargeintField;
    cdsJRNDJRNCD: TStringField;
    cdsJRNDSEQNUM: TFloatField;
    cdsJRNDGLACCOUNTID: TIntegerField;
    cdsJRNDGLACCOUNTCODE: TStringField;
    cdsJRNDCCYCODE: TStringField;
    cdsJRNDJRNDDESC: TStringField;
    cdsJRNDCPID: TLargeintField;
    cdsJRNDCPCODE: TStringField;
    cdsJRNDDC: TStringField;
    cdsJRNDAMOUNT: TFloatField;
    cdsJRNDPOSTED: TStringField;
    cdsJRNDMODDA: TDateTimeField;
    cdsJRNDMODUI: TStringField;
    cdsJRNDAPPDA: TDateTimeField;
    cdsJRNDAPPUI: TStringField;
    cdsJRNDUNDER4Y: TIntegerField;
    cdsJRNDUNDER4YDA: TDateTimeField;
    cdsJRNDNOTES4Y: TStringField;
    cdsJRNDISDEL: TIntegerField;
    cdsJRNDID: TLargeintField;
    cdsJRNDSPOTTYPE: TStringField;
    cdsJRNDSPOTCCY: TStringField;
    cxGrid2: TcxGrid;
    gvwJRNDetail: TcxGridDBBandedTableView;
    gvwJRNDetailCCYCODE: TcxGridDBBandedColumn;
    gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dsJRND: TDataSource;
    cdsJRNDDEBET: TFloatField;
    cdsJRNDCREDIT: TFloatField;
    gvwJRNDetailDEBET: TcxGridDBBandedColumn;
    gvwJRNDetailCREDIT: TcxGridDBBandedColumn;
    gvwJRNDetailGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwJRNDetailCPCODE: TcxGridDBBandedColumn;
    procedure cdsJRNDCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(AJournalID: Integer);
  end;

var
  frmJournalVoucher: TfrmJournalVoucher;

implementation

{$R *.dfm}

uses DataGlobal, FormJournalList;

procedure TfrmJournalVoucher.cdsJRNDCalcFields(DataSet: TDataSet);
begin
  if cdsJRNDDC.AsString = 'D' then
  begin
    cdsJRNDDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
    cdsJRNDCREDIT.AsFloat := 0;
  end
  else
  begin
    cdsJRNDDEBET.AsFloat := 0;
    cdsJRNDCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
  end;
end;

procedure TfrmJournalVoucher.Run(AJournalID: Integer);
begin
  with TfrmJournalVoucher.Create(nil) do
  Try
    cdsJRNH.Close;
    cdsJRNH.Params[0].AsInteger := AJournalID;
    cdsJRNH.Open;

    ShowModal;
  Finally
    Free;
  End;
end;

end.
