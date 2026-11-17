unit FormAccLedgerBalPosition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList, NDatasetAction,
  NActionPermission, System.DateUtils, System.Actions;

type
  TfrmAccLedgerBalPosition = class(TfrmBasic)
    aclLedBal: TActionList;
    actViewList: TNAction;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsAccLedgerBalPosition: TNClientDataset;
    cdsAccLedgerBalPositionACCID: TLargeintField;
    cdsAccLedgerBalPositionACCNO: TStringField;
    cdsAccLedgerBalPositionACCNAME: TStringField;
    cdsAccLedgerBalPositionLEDGERTYPE: TStringField;
    cdsAccLedgerBalPositionCCY: TStringField;
    cdsAccLedgerBalPositionBALANCE: TFloatField;
    cdsAccLedgerBalPositionSETTLESTS: TStringField;
    cdsAccLedgerBalPositionBALSTS: TStringField;
    dsAccLedgerBalPosition: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterLEDGERTYPE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterBALANCE: TcxGridDBBandedColumn;
    gvwMasterSETTLESTS: TcxGridDBBandedColumn;
    gvwMasterBALSTS: TcxGridDBBandedColumn;
    procedure actViewListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccLedgerBalPosition: TfrmAccLedgerBalPosition;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmAccLedgerBalPosition.actViewListExecute(Sender: TObject);
begin
  inherited;
  cdsAccLedgerBalPosition.Close;
  cdsAccLedgerBalPosition.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsAccLedgerBalPosition.Open;
end;

procedure TfrmAccLedgerBalPosition.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmAccLedgerBalPosition);

end.
