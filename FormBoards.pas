unit FormBoards;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmBoards = class(TfrmBrowseData)
    cdsBoardList: TNClientDataset;
    cdsBoardListBOARDID: TLargeintField;
    cdsBoardListBOARDCODE: TStringField;
    cdsBoardListMARKETCODE: TStringField;
    cdsBoardListBOARDDESC: TStringField;
    cdsBoardListGLCD: TStringField;
    cdsBoardListMARKET: TStringField;
    cdsBoardListDUEBUYSTOCK: TIntegerField;
    cdsBoardListDUESELLSTOCK: TIntegerField;
    cdsBoardListDUEBUYCASH: TIntegerField;
    cdsBoardListDUESELLCASH: TIntegerField;
    cdsBoardListMODDA: TDateTimeField;
    cdsBoardListMODUI: TStringField;
    cdsBoardListAPPDA: TDateTimeField;
    cdsBoardListAPPUI: TStringField;
    cdsBoardListISDEL: TIntegerField;
    cdsBoardListID: TLargeintField;
    gvwMasterBOARDCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterBOARDDESC: TcxGridDBBandedColumn;
    gvwMasterGLCD: TcxGridDBBandedColumn;
    cdsBoardListCPTYPE: TStringField;
    cdsBoardListCPVALUE: TIntegerField;
    gvwMasterCPTYPE: TcxGridDBBandedColumn;
    gvwMasterCPVALUE: TcxGridDBBandedColumn;
    gvwMasterMARKET: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBoards: TfrmBoards;

implementation

{$R *.dfm}

uses DataGlobal, FormBoard;

procedure TfrmBoards.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBoard;
end;

procedure TfrmBoards.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBoardListBOARDID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;

  cdsBoardList.Close;
  cdsBoardList.Open;
end;

Initialization
  RegisterClass(TfrmBoards);

end.
