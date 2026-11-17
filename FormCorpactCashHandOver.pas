unit FormCorpactCashHandOver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  Vcl.ActnList, NDatasetAction, frxClass, frxServerClient, NReportClient,
  cxCheckBox;

type
  TfrmCorpActCashHandOver = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    txtCorpActType: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsCorpActEnt: TDataSource;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsCorpActExer: TNClientDataset;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    Report: TNClientReportContainer;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    dsCorpactExer: TDataSource;
    cdsCorpActExerCAID: TLargeintField;
    cdsCorpActExerEXER_ID: TLargeintField;
    cdsCorpActExerACCID: TLargeintField;
    cdsCorpActExerEXERDATE: TDateField;
    cdsCorpActExerACCNO: TStringField;
    cdsCorpActExerACCNAME: TStringField;
    cdsCorpActExerCA_QTY: TFloatField;
    cdsCorpActExerCA_AMT: TFloatField;
    cdsCorpActExerEXERQTY: TFloatField;
    cdsCorpActExerEXER_AMT: TFloatField;
    cdsCorpActExerEXER_WARRQTY: TFloatField;
    cdsCorpActExerEXER_PAYDATE: TDateField;
    cdsCorpActExerEXER_PAID: TStringField;
    cdsCorpActExerEXER_PAIDAMT: TFloatField;
    gvwEntetlementCAID: TcxGridDBBandedColumn;
    gvwEntetlementEXER_ID: TcxGridDBBandedColumn;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementEXERDATE: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXERQTY: TcxGridDBBandedColumn;
    gvwEntetlementEXER_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAID: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwEntetlementRCASH_VOUCHEID: TcxGridDBBandedColumn;
    gvwEntetlementRCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwEntetlementPCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwEntetlementPCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwEntetlementMODDA: TcxGridDBBandedColumn;
    gvwEntetlementMODUI: TcxGridDBBandedColumn;
    gvwEntetlementAPPDA: TcxGridDBBandedColumn;
    gvwEntetlementAPPUI: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4Y: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn;
    gvwEntetlementNOTES4Y: TcxGridDBBandedColumn;
    gvwEntetlementISDEL: TcxGridDBBandedColumn;
    gvwEntetlementID: TcxGridDBBandedColumn;
    cdsCorpActExerFINANCE: TStringField;
    cdsCorpActExerVCA_INSTRUCTION: TStringField;
    cdsCorpActExerBT_INSTRUCTION: TStringField;
    cdsCorpActExerBANK_INSTRUCTION: TStringField;
    cdsCorpActExerREQUEST_CASH_LOAN: TStringField;
    cdsCorpActExerCASH_LOAN_APPV: TStringField;
    cdsCorpActExerSTOCK_DIST: TStringField;
    cdsCorpActExerMODDA: TDateTimeField;
    cdsCorpActExerMODUI: TStringField;
    cdsCorpActExerAPPDA: TDateTimeField;
    cdsCorpActExerAPPUI: TStringField;
    cdsCorpActExerUNDER4Y: TIntegerField;
    cdsCorpActExerUNDER4YDA: TDateTimeField;
    cdsCorpActExerNOTES4Y: TStringField;
    cdsCorpActExerISDEL: TIntegerField;
    cdsCorpActExerID: TLargeintField;

    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpActCashHandOver: TfrmCorpActCashHandOver;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList;

procedure TfrmCorpActCashHandOver.FormShow(Sender: TObject);
var
  iCAType: Integer;
begin
  inherited;
  if dsSubject.DataSet.FieldByName('CATYPE').AsString <> '' then
  begin
    iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);
    case iCAType of
      1 : txtCorpActType.Caption := 'HMETD';
      2 : txtCorpActType.Caption := 'Cash Dividen';
      3 : txtCorpActType.Caption := 'Stock Dividen';
      4 : txtCorpActType.Caption := 'Stock Mix';
      5 : txtCorpActType.Caption := 'Stock Bonus';
      6 : txtCorpActType.Caption := 'Stock Split';
      7 : txtCorpActType.Caption := 'Stock Reverse';
      8 : txtCorpActType.Caption := 'Stock Merge';
      9 : txtCorpActType.Caption := 'Coupon Payment';
    end;
  end;

  cdsCorpActExer.Close;
  cdsCorpActExer.Open;
end;

end.
