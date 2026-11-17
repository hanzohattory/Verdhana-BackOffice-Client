unit FormCOBDataOwner;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, Datasnap.DBClient, NClientDataset;

type
  TfrmCOBDataOwner = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cdsAccDataOwnUnSelect: TNClientDataset;
    dsAccDataOwnUnSelect: TDataSource;
    cdsAccDataOwnSelect: TNClientDataset;
    dsAccDataOwnSelect: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwAccDataOwnUnSelect: TcxGridDBTableView;
    gvwAccDataOwnUnSelectDATADESC: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsAccDataOwnUnSelectDATAID: TIntegerField;
    cdsAccDataOwnUnSelectDATACODE: TStringField;
    cdsAccDataOwnUnSelectDATADESC: TStringField;
    cdsAccDataOwnSelectDATAID: TIntegerField;
    cdsAccDataOwnSelectACCID: TIntegerField;
    cdsAccDataOwnSelectMODDA: TDateTimeField;
    cdsAccDataOwnSelectMODUI: TStringField;
    cdsAccDataOwnSelectDATACODE: TStringField;
    cdsAccDataOwnSelectDATADESC: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
    FUpdate: Boolean;
  public
    { Public declarations }
    procedure PrepareData(AAccID: Integer; AUpdate: Boolean);
  end;

var
  frmCOBDataOwner: TfrmCOBDataOwner;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal;

{ TfrmCOBDataOwner }

procedure TfrmCOBDataOwner.cxButton1Click(Sender: TObject);
begin
  inherited;

  if FUpdate then
  begin
    if not cdsAccDataOwnUnSelect.IsEmpty then
    begin
      cdsAccDataOwnUnSelect.DisableControls;
      cdsAccDataOwnSelect.DisableControls;

      cdsAccDataOwnSelect.Append;
      cdsAccDataOwnSelectDATAID.AsInteger := cdsAccDataOwnUnSelectDATAID.AsInteger;
      cdsAccDataOwnSelectDATACODE.AsString := cdsAccDataOwnUnSelectDATACODE.AsString;
      cdsAccDataOwnSelectDATADESC.AsString := cdsAccDataOwnUnSelectDATADESC.AsString;
      cdsAccDataOwnSelectACCID.AsInteger := FAccID;
      cdsAccDataOwnSelect.Post;

      cdsAccDataOwnUnSelect.Delete;

      cdsAccDataOwnUnSelect.EnableControls;
      cdsAccDataOwnSelect.EnableControls;
    end;
  end;


end;

procedure TfrmCOBDataOwner.cxButton2Click(Sender: TObject);
begin
  inherited;
  if FUpdate then
  begin
    if not cdsAccDataOwnSelect.IsEmpty then
    begin
      cdsAccDataOwnUnSelect.DisableControls;
      cdsAccDataOwnSelect.DisableControls;

      cdsAccDataOwnUnSelect.Append;
      cdsAccDataOwnUnSelectDATAID.AsInteger := cdsAccDataOwnSelectDATAID.AsInteger;
      cdsAccDataOwnUnSelectDATACODE.AsString := cdsAccDataOwnSelectDATACODE.AsString;
      cdsAccDataOwnUnSelectDATADESC.AsString := cdsAccDataOwnSelectDATADESC.AsString;
      cdsAccDataOwnUnSelect.Post;

      cdsAccDataOwnSelect.Delete;

      cdsAccDataOwnUnSelect.EnableControls;
      cdsAccDataOwnSelect.EnableControls;
    end;
  end;

end;

procedure TfrmCOBDataOwner.PrepareData(AAccID: Integer; AUpdate: Boolean);
begin
  FAccID := AAccID;
  FUpdate := AUpdate;

  cdsAccDataOwnUnSelect.Close;
  cdsAccDataOwnUnSelect.Params[0].AsInteger := FAccID;
  cdsAccDataOwnUnSelect.Open;

  cdsAccDataOwnSelect.close;
  cdsAccDataOwnSelect.Params[0].AsInteger := FAccID;
  cdsAccDataOwnSelect.Open;

end;

end.
