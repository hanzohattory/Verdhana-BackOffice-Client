unit FormApprovalHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar,
  cxCheckBox, cxDBLookupComboBox, Vcl.ImgList, dxBar, cxBarEditItem, cxClasses,
  Vcl.Menus, Datasnap.DBClient, NClientDataset, Vcl.ActnList, NDatasetAction,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, NActionPermission,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  System.ImageList, System.Actions, ClassClientConst;

type
  TfrmApprovalHistory = class(TfrmBasic)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclApprovalHistory: TActionList;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    cdsApprovalHistoryList: TNClientDataset;
    cdsApprovalHistoryListDEFAULTFORM: TStringField;
    popApproval: TPopupMenu;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    dsApprovalHistoryList: TDataSource;
    cdsApprovalHistoryListMODULE: TStringField;
    cdsApprovalHistoryListKEYID: TStringField;
    cdsApprovalHistoryListWRITEDATE: TDateTimeField;
    cdsApprovalHistoryListSTATE: TStringField;
    cdsApprovalHistoryListNOTES: TMemoField;
    cdsApprovalHistoryListREQDA: TDateTimeField;
    cdsApprovalHistoryListREQUI: TStringField;
    cdsApprovalHistoryListAPPDA: TDateTimeField;
    cdsApprovalHistoryListAPPUI: TStringField;
    cdsApprovalHistoryListAPPSTATE: TStringField;
    cdsApprovalHistoryListAPPNOTES: TMemoField;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuLoadData: TdxBarButton;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    imlBrowse: TImageList;
    gvwMasterMODULE: TcxGridDBBandedColumn;
    gvwMasterKEYID: TcxGridDBBandedColumn;
    gvwMasterWRITEDATE: TcxGridDBBandedColumn;
    gvwMasterSTATE: TcxGridDBBandedColumn;
    gvwMasterNOTES: TcxGridDBBandedColumn;
    gvwMasterREQDA: TcxGridDBBandedColumn;
    gvwMasterREQUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterAPPSTATE: TcxGridDBBandedColumn;
    gvwMasterAPPNOTES: TcxGridDBBandedColumn;
    cdsApprovalHistoryListFORM: TStringField;
    cdsApprovalHistoryListDESCRIPTION: TStringField;
    gvwMasterFORM: TcxGridDBBandedColumn;
    gvwMasterDEFAULTFORM: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    actViewData: TNAction;
    ViewData1: TMenuItem;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApprovalHistory: TfrmApprovalHistory;

implementation

{$R *.dfm}

uses DataGlobal, DateUtils;

procedure TfrmApprovalHistory.actLoadDataExecute(Sender: TObject);
var
  dtFrom, dtTo: TDate;
begin
  inherited;
  dtFrom := DateOf(VarToDateTime(dtStart.EditValue));
  dtTo := DateOf(IncDay(VarToDateTime(dtEnd.EditValue), 1));
  cdsApprovalHistoryList.Close;
  cdsApprovalHistoryList.Params[0].AsDate := dtFrom;
  cdsApprovalHistoryList.Params[1].AsDate := dtTo;
  cdsApprovalHistoryList.Open;
end;

procedure TfrmApprovalHistory.actViewDataExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsApprovalHistoryListFORM.IsNull)
    and (Trim(cdsApprovalHistoryListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalHistoryListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalHistoryListFORM.AsString, sKey, pkReadApproval);
  end;
end;

procedure TfrmApprovalHistory.FormCreate(Sender: TObject);
begin
  inherited;
  dtStart.EditValue := Now;
  dtEnd.EditValue := Now;
end;

Initialization
  RegisterClass(TfrmApprovalHistory);

end.
