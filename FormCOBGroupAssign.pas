unit FormCOBGroupAssign;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  NActionPermission, Vcl.ActnList, NDatasetAction;

type
  TfrmCOBGroupAssign = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    luCOBType: TcxImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCOBActivity: TcxGridDBBandedTableView;
    cdsListCOBActGroup: TNClientDataset;
    cdsListCOBActGroupACTIVITY_ID: TIntegerField;
    cdsListCOBActGroupACTIVITY_SUBID: TIntegerField;
    cdsListCOBActGroupACTIVITY_DESC: TStringField;
    cdsListCOBActGroupACTIVITY_EMAIL_CLIENT: TIntegerField;
    cdsListCOBActGroupACTIVITY_EMAIL_USERS: TIntegerField;
    cdsListCOBActGroupACTIVITY_COLOR: TStringField;
    cdsListCOBActGroupACTIVITY_NEXT: TStringField;
    cdsListCOBActGroupCOB_TYPE: TStringField;
    cdsListCOBActGroupACTTYPE: TStringField;
    cdsListCOBActGroupACLEVEL: TStringField;
    cdsListCOBActGroupACPROCESS: TStringField;
    cdsListCOBActGroupACTIVITY_NAME: TStringField;
    dsListCOBActGroup: TDataSource;
    gvwCOBActivityACTIVITY_ID: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_SUBID: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_NAME: TcxGridDBBandedColumn;
    actCOBGroup: TActionList;
    actSelectGroup: TNAction;
    PopupMenu1: TPopupMenu;
    AssignGrouptoSelectedActivity1: TMenuItem;
    procedure gvwCOBActivityCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSelectGroupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBGroupAssign: TfrmCOBGroupAssign;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCOBAssignGroupUpdate;

procedure TfrmCOBGroupAssign.actSelectGroupExecute(Sender: TObject);
var
  oForm: TfrmCOBAssignGroupUpdate;
begin
  inherited;
  oForm := TfrmCOBAssignGroupUpdate.Create(nil);
  oform.PrepareData(cdsListCOBActGroupACTIVITY_ID.AsInteger, cdsListCOBActGroupACTIVITY_SUBID.AsInteger,
    cdsListCOBActGroupACTIVITY_NAME.AsString);
  oForm.ShowModal;

  FreeAndNil(oForm);
end;

procedure TfrmCOBGroupAssign.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsListCOBActGroup.Close;
  cdsListCOBActGroup.Params[0].Value := luCOBType.EditValue;
  cdsListCOBActGroup.Open;
end;

procedure TfrmCOBGroupAssign.FormCreate(Sender: TObject);
begin
  inherited;
  luCOBType.EditValue := '1';
end;

procedure TfrmCOBGroupAssign.gvwCOBActivityCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

Initialization
  RegisterClass(TfrmCOBGroupAssign);


end.
