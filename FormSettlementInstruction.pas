unit FormSettlementInstruction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, Vcl.ActnList, NDatasetAction, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, LMDDckSite,
  Datasnap.DBClient, NClientDataset, System.DateUtils, System.Actions;

type
  TfrmSettlementInstruction = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    aclSettlementInstruction: TActionList;
    actViewList: TNAction;
    Site: TLMDDockSite;
    panelCashSI: TLMDDockPanel;
    grdCash: TcxGrid;
    gvwCashSI: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    panelStockSI: TLMDDockPanel;
    grdStock: TcxGrid;
    gvwStockSI: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    DockManager: TLMDDockManager;
    cdsSICash: TNClientDataset;
    cdsSIStock: TNClientDataset;
    dsSICash: TDataSource;
    dsSIStock: TDataSource;
    grdCashLevel1: TcxGridLevel;
    gvwCashSettlement: TcxGridDBBandedTableView;
    cdsSICashSIID: TLargeintField;
    cdsSICashSINO: TStringField;
    cdsSICashCONID: TLargeintField;
    cdsSICashDUEDATE: TDateField;
    cdsSICashSETTLE_SIDE: TStringField;
    cdsSICashINSTRUCTION_TYPE: TStringField;
    cdsSICashACCID: TLargeintField;
    cdsSICashACCNO: TStringField;
    cdsSICashACCNAME: TStringField;
    cdsSICashBANKCODE: TStringField;
    cdsSICashBANKACCNO: TStringField;
    cdsSICashCP_BANKCODE: TStringField;
    cdsSICashCP_BANKACCNO: TStringField;
    cdsSICashSETTLE_CCYCODE: TStringField;
    cdsSICashSETTLE_EXRATE: TFloatField;
    cdsSICashSETTLE_NETAMT: TFloatField;
    cdsSIStockSIID: TLargeintField;
    cdsSIStockSINO: TStringField;
    cdsSIStockCONID: TLargeintField;
    cdsSIStockDUEDATE: TDateField;
    cdsSIStockSETTLE_SIDE: TStringField;
    cdsSIStockINSTRUCTION_TYPE: TStringField;
    cdsSIStockACCID: TLargeintField;
    cdsSIStockACCNO: TStringField;
    cdsSIStockACCNAME: TStringField;
    cdsSIStockSTOCKID: TIntegerField;
    cdsSIStockSTOCKCODE: TStringField;
    cdsSIStockSTOCKNAME: TStringField;
    cdsSIStockBANKCODE: TStringField;
    cdsSIStockBANKACCNO: TStringField;
    cdsSIStockCP_BANKCODE: TStringField;
    cdsSIStockCP_BANKACCNO: TStringField;
    cdsSIStockQTY: TFloatField;
    grdStockLevel1: TcxGridLevel;
    gvwStockSettlement: TcxGridDBBandedTableView;
    cdsCashSettlement: TNClientDataset;
    cdsStockSettlement: TNClientDataset;
    dsCashSettlement: TDataSource;
    dsStockSettlement: TDataSource;
    cdsCashSettlementACCID: TLargeintField;
    cdsCashSettlementACCNO: TStringField;
    cdsCashSettlementACCNAME: TStringField;
    cdsCashSettlementCCYCODE: TStringField;
    cdsCashSettlementCASH_POS: TFloatField;
    cdsCashSettlementNET_ARAPOD: TFloatField;
    cdsCashSettlementNET_ARAPDUE0: TFloatField;
    cdsCashSettlementNET_ARAPDUE1: TFloatField;
    cdsCashSettlementNET_ARAPDUE2: TFloatField;
    cdsCashSettlementNET_ARAPDUE22: TFloatField;
    cdsCashSettlementNET_ARAP: TFloatField;
    cdsStockSettlementACCID: TLargeintField;
    cdsStockSettlementACCNO: TStringField;
    cdsStockSettlementACCNAME: TStringField;
    cdsStockSettlementSTOCKID: TIntegerField;
    cdsStockSettlementSTOCKCODE: TStringField;
    cdsStockSettlementSTOCKNAME: TStringField;
    cdsStockSettlementSTOCK_POS: TFloatField;
    cdsStockSettlementNETSTOCK_OD: TFloatField;
    cdsStockSettlementNETSTOCK_DUE0: TFloatField;
    cdsStockSettlementNETSTOCK_DUE1: TFloatField;
    cdsStockSettlementNETSTOCK_DUE2: TFloatField;
    cdsStockSettlementNETSTOCK_DUE22: TFloatField;
    cdsStockSettlementNET_STOCK: TFloatField;
    gvwCashSettlementACCID: TcxGridDBBandedColumn;
    gvwCashSettlementACCNO: TcxGridDBBandedColumn;
    gvwCashSettlementACCNAME: TcxGridDBBandedColumn;
    gvwCashSettlementCCYCODE: TcxGridDBBandedColumn;
    gvwCashSettlementCASH_POS: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAPOD: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAPDUE0: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAPDUE1: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAPDUE2: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAPDUE21: TcxGridDBBandedColumn;
    gvwCashSettlementNET_ARAP: TcxGridDBBandedColumn;
    gvwCashSISIID: TcxGridDBBandedColumn;
    gvwCashSISINO: TcxGridDBBandedColumn;
    gvwCashSICONID: TcxGridDBBandedColumn;
    gvwCashSIDUEDATE: TcxGridDBBandedColumn;
    gvwCashSISETTLE_SIDE: TcxGridDBBandedColumn;
    gvwCashSIINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwCashSIACCID: TcxGridDBBandedColumn;
    gvwCashSIACCNO: TcxGridDBBandedColumn;
    gvwCashSIACCNAME: TcxGridDBBandedColumn;
    gvwCashSIBANKCODE: TcxGridDBBandedColumn;
    gvwCashSIBANKACCNO: TcxGridDBBandedColumn;
    gvwCashSICP_BANKCODE: TcxGridDBBandedColumn;
    gvwCashSICP_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashSISETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwCashSISETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwCashSISETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwStockSettlementACCID: TcxGridDBBandedColumn;
    gvwStockSettlementACCNO: TcxGridDBBandedColumn;
    gvwStockSettlementACCNAME: TcxGridDBBandedColumn;
    gvwStockSettlementSTOCKID: TcxGridDBBandedColumn;
    gvwStockSettlementSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockSettlementSTOCKNAME: TcxGridDBBandedColumn;
    gvwStockSettlementSTOCK_POS: TcxGridDBBandedColumn;
    gvwStockSettlementNETSTOCK_OD: TcxGridDBBandedColumn;
    gvwStockSettlementNETSTOCK_DUE0: TcxGridDBBandedColumn;
    gvwStockSettlementNETSTOCK_DUE1: TcxGridDBBandedColumn;
    gvwStockSettlementNETSTOCK_DUE2: TcxGridDBBandedColumn;
    gvwStockSettlementNETSTOCK_DUE21: TcxGridDBBandedColumn;
    gvwStockSettlementNET_STOCK: TcxGridDBBandedColumn;
    gvwStockSISIID: TcxGridDBBandedColumn;
    gvwStockSISINO: TcxGridDBBandedColumn;
    gvwStockSICONID: TcxGridDBBandedColumn;
    gvwStockSIDUEDATE: TcxGridDBBandedColumn;
    gvwStockSISETTLE_SIDE: TcxGridDBBandedColumn;
    gvwStockSIINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwStockSIACCID: TcxGridDBBandedColumn;
    gvwStockSIACCNO: TcxGridDBBandedColumn;
    gvwStockSIACCNAME: TcxGridDBBandedColumn;
    gvwStockSISTOCKID: TcxGridDBBandedColumn;
    gvwStockSISTOCKCODE: TcxGridDBBandedColumn;
    gvwStockSISTOCKNAME: TcxGridDBBandedColumn;
    gvwStockSIBANKCODE: TcxGridDBBandedColumn;
    gvwStockSIBANKACCNO: TcxGridDBBandedColumn;
    gvwStockSICP_BANKCODE: TcxGridDBBandedColumn;
    gvwStockSICP_BANKACCNO: TcxGridDBBandedColumn;
    gvwStockSIQTY: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actViewListExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettlementInstruction: TfrmSettlementInstruction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSettlementInstruction.actViewListExecute(Sender: TObject);
begin
  inherited;
  cdsCashSettlement.Close;
  cdsCashSettlement.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsCashSettlement.Open;

  cdsSICash.Close;
  cdsSICash.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsSICash.Open;

  cdsStockSettlement.Close;
  cdsStockSettlement.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsStockSettlement.Open;

  cdsSIStock.Close;
  cdsSIStock.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsSIStock.Open;

  gvwCashSettlement.ApplyBestFit();
  gvwStockSettlement.ApplyBestFit();
  gvwCashSI.ApplyBestFit();
  gvwStockSI.ApplyBestFit();

end;

procedure TfrmSettlementInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmSettlementInstruction);

end.
