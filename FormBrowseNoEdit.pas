unit FormBrowseNoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxPropertiesStore, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, NActionPermission, Vcl.Menus,
  Vcl.ActnList, Vcl.ImgList, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmBrowseNoEdit = class(TfrmBasic)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    PropStore: TcxPropertiesStore;
    imlBrowse: TImageList;
    actEditor: TActionList;
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMasterEnter(Sender: TObject);
  private
    FActiveGridTableView: TcxCustomGridTableView;
    { Private declarations }
  public
    { Public declarations }
    property ActiveGridTableView: TcxCustomGridTableView read FActiveGridTableView write FActiveGridTableView;
  end;

var
  frmBrowseNoEdit: TfrmBrowseNoEdit;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBrowseNoEdit.grdMasterEnter(Sender: TObject);
begin
  inherited;
  ActiveGridTableView := gvwMaster;
end;

procedure TfrmBrowseNoEdit.gvwMasterCustomDrawCell(
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

procedure TfrmBrowseNoEdit.gvwMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 27) then
  begin
    if gvwMaster.DataController.Filter.Root.Count > 0
      then gvwMaster.DataController.Filter.Root[gvwMaster.DataController.Filter.Root.Count-1].Destroy;
  end
  else if (key = 187) and (Shift = [ssCtrl]) then
  begin
    if grdMaster.Font.Size < 14 then
    begin
      grdMaster.Font.Size := grdMaster.Font.Size + 1;
      gvwMaster.OptionsView.DataRowHeight := gvwMaster.OptionsView.DataRowHeight + 2;
    end;
  end
  else if (key = 189) and (Shift = [ssCtrl]) then
  begin
    if grdMaster.Font.Size > 8 then
    begin
      grdMaster.Font.Size := grdMaster.Font.Size - 1;
      gvwMaster.OptionsView.DataRowHeight := gvwMaster.OptionsView.DataRowHeight - 2;
    end;
  end;
end;

end.
