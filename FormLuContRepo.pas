unit FormLuContRepo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  dxLayoutControlAdapters, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutControl, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmLuContRepo = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    gvwLuCOntractREPO: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnOK: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dsSubject: TDataSource;
    gvwLuCOntractREPOCONTRACT_NO: TcxGridDBColumn;
    gvwLuCOntractREPORACCCODE: TcxGridDBColumn;
    gvwLuCOntractREPORACCNAME: TcxGridDBColumn;
    gvwLuCOntractREPOTRXDATE: TcxGridDBColumn;
    gvwLuCOntractREPOSETTDATE: TcxGridDBColumn;
    gvwLuCOntractREPOMATURDATE: TcxGridDBColumn;
    gvwLuCOntractREPOORG_AMT: TcxGridDBColumn;
    gvwLuCOntractREPOINTEREST_AMT: TcxGridDBColumn;
    gvwLuCOntractREPOREPO_AMT: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run: TModalResult;
  end;

var
  frmLuContRepo: TfrmLuContRepo;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TForm1 }

function TfrmLuContRepo.Run: TModalResult;
var
  oForm: TfrmLuContRepo;
begin
  Result := mrCancel;

  oForm := TfrmLuContRepo.Create(nil);
  try
    with dmGlobal.IntDataLookup do
    begin
      if oForm.ShowModal = mrOk then
      begin
        if (cdsLuContRepo.Active) and (not cdsLuContRepo.IsEmpty) then
          Result := mrOk;
      end;
    end;
  finally
    FreeAndNil(oForm);
  end;
end;

end.
