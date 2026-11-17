unit FormREPOSettlement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, NDatasetAction, Vcl.ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  NActionPermission;

type
  TfrmRepoSettlement = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    txtTransDate: TcxTextEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    grdMaster: TcxGrid;
    gvwREPOMOnitor: TcxGridDBBandedTableView;
    gvwREPOMOnitorCONTRACT_NO: TcxGridDBBandedColumn;
    gvwREPOMOnitorTRXDATE: TcxGridDBBandedColumn;
    gvwREPOMOnitorMATURDATE: TcxGridDBBandedColumn;
    gvwREPOMOnitorRACCCODE: TcxGridDBBandedColumn;
    gvwREPOMOnitorREPO_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorACCNAME: TcxGridDBBandedColumn;
    gvwREPOMOnitorCOLLATERAL: TcxGridDBBandedColumn;
    gvwREPOMOnitorCOLL_CALL: TcxGridDBBandedColumn;
    gvwREPOMOnitorFORCESELL: TcxGridDBBandedColumn;
    gvwREPOMOnitorACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwREPOMOnitorRATIO: TcxGridDBBandedColumn;
    gvwREPOMOnitorRACCID: TcxGridDBBandedColumn;
    gvwREPOMOnitorAPR_COLL: TcxGridDBBandedColumn;
    gvwREPOMOnitorCONRID: TcxGridDBBandedColumn;
    gvwREPOMOnitorCCY: TcxGridDBBandedColumn;
    gvwREPOMOnitorCASH_QQ: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    aclLocal: TActionList;
    actViewDetail: TAction;
    actSaveGridToExcel: TNAction;
    actSettleContract: TNAction;
    cdsREPOMonitor: TClientDataSet;
    cdsREPOMonitorCONRID: TLargeintField;
    cdsREPOMonitorCONTRACT_NO: TStringField;
    cdsREPOMonitorTRXDATE: TDateTimeField;
    cdsREPOMonitorMATURDATE: TDateTimeField;
    cdsREPOMonitorRACCID: TIntegerField;
    cdsREPOMonitorRACCCODE: TStringField;
    cdsREPOMonitorREPO_AMT: TFloatField;
    cdsREPOMonitorACCNAME: TStringField;
    cdsREPOMonitorCOLLATERAL: TFloatField;
    cdsREPOMonitorCOLL_CALL: TFloatField;
    cdsREPOMonitorFORCESELL: TFloatField;
    cdsREPOMonitorACCRUED_INTEREST: TFloatField;
    cdsREPOMonitorRATIO: TFloatField;
    cdsREPOMonitorAPR_COLL: TFloatField;
    cdsREPOMonitorCCY: TStringField;
    cdsREPOMonitorCASH_QQ: TFloatField;
    dsREPOMonitor: TDataSource;
    popGrid: TPopupMenu;
    ViewDetail1: TMenuItem;
    CloseContract1: TMenuItem;
    N1: TMenuItem;
    SaveGridtoExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    cdsREPOMonitorORG_AMT: TFloatField;
    cdsREPOMonitorINTEREST_AMT: TFloatField;
    cdsREPOMonitorDUE_AMT: TFloatField;
    gvwREPOMOnitorORG_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorINTEREST_AMT: TcxGridDBBandedColumn;
    gvwREPOMOnitorDUE_AMT: TcxGridDBBandedColumn;
    procedure actViewDetailExecute(Sender: TObject);
    procedure actSaveGridToExcelExecute(Sender: TObject);
    procedure actSettleContractExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Reload;
  end;

var
  frmRepoSettlement: TfrmRepoSettlement;

implementation

{$R *.dfm}

uses DataGlobal, FormContractRepo, ClassClientConst, cxGridExportLink;

{ TfrmRepoSettlement }

procedure TfrmRepoSettlement.actSaveGridToExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmRepoSettlement.actSettleContractExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to settle this Repo Contract ' +
    QuotedStr(cdsREPOMonitorCONTRACT_NO.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.SettleContractRepo(cdsREPOMonitorCONRID.AsLargeInt, sMsg);
    Reload;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmRepoSettlement.actViewDetailExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsREPOMonitorCONRID.AsString;
  dmGlobal.ShowEditorForm(TfrmContractRepo, sKey, pkRead);
end;

procedure TfrmRepoSettlement.cxButton1Click(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmRepoSettlement.FormCreate(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmRepoSettlement.Reload;
begin
  txtTransDate.Text := FormatDateTime('dd-mmm-yyyy', dmGlobal.RemoteServer.GetTransDate);
  cdsREPOMonitor.Close;
  cdsREPOMonitor.Open;
end;

end.
