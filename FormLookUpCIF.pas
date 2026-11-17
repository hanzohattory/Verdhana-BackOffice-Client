unit FormLookUpCIF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, NClientDataset, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmLookupCIF = class(TForm)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterCREATEDATE: TcxGridDBBandedColumn;
    gvwMasterENTSTATUS: TcxGridDBBandedColumn;
    gvwMasterENTTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterSOURCEFUND: TcxGridDBBandedColumn;
    gvwMasterINVESTOBJECTIVE: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterTAXID: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsCIF: TDataSource;
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function RunByEntity(AEntityID: Integer): TModalResult;
  end;

var
  frmLookupCIF: TfrmLookupCIF;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmLookupCIF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel
  else if Key = #13 then
    ModalResult := mrOk;
end;

procedure TfrmLookupCIF.gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
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

function TfrmLookupCIF.RunByEntity(AEntityID: Integer): TModalResult;
var
  oForm: TfrmLookupCIF;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLookupCIF.Create(nil);
  Try

    with dmGlobal.IntDataLookup do
    begin
      if not cdsLuBranch.Active then
      begin
        cdsLuBranch.Close;
        cdsLuBranch.Open;
      end;

      if not cdsLuSales.Active then
      begin
        cdsLuSales.Close;
        cdsLuSales.Open;
      end;


      if not dsCIF.DataSet.Active then
      begin
        cdsLuCIF.Close;
        cdsLuCIF.Open;
      end;



      cdsLuCIF.Locate('ENTTID', AEntityID, []);

      if oForm.ShowModal = mrOK then
      begin
        if (dsCIF.DataSet.Active) and (not dsCIF.DataSet.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;
end;

end.
