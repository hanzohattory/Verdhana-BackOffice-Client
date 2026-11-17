unit FormWHTList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, NDatasetAction, DateUtils;

type
  TfrmWHTList = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtStartDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclWHT: TActionList;
    cdsWHTList: TNClientDataset;
    dsWHTList: TDataSource;
    cdsWHTListACCID: TIntegerField;
    cdsWHTListACCCODE: TStringField;
    cdsWHTListACCNAME: TStringField;
    cdsWHTListACCINIT: TStringField;
    cdsWHTListCONDATE: TDateField;
    cdsWHTListWHT: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    actViewData: TNAction;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWHTList: TfrmWHTList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmWHTList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsWHTList.Close;
  cdsWHTList.Params[0].AsDate := DateOf(dtStartDate.Date);
  cdsWHTList.Params[1].AsDate := DateOf(dtEndDate.Date);
  cdsWHTList.Open;

  gvwMaster.ApplyBestFit();
end;

procedure TfrmWHTList.FormCreate(Sender: TObject);
var
  dtTrans: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTrans := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTrans, iYear, iMonth, iDay);

  dtStartDate.Date := EncodeDate(iYear, iMonth, 1);
  dtEndDate.Date := EndOfAMonth(iYear, iMonth);

  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmWHTList);

end.
