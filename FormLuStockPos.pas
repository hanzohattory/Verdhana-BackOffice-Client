unit FormLuStockPos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmLuStockPos = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsSubject: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterISSUERNAME: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterISINDATE: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHAND: TcxGridDBBandedColumn;
    gvwMasterQTY_OUTS: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHOLD: TcxGridDBBandedColumn;
    gvwMasterQTY_BAL: TcxGridDBBandedColumn;
    gvwMasterQTY_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterQTY_DLV: TcxGridDBBandedColumn;
    gvwMasterQTY_RCV: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AccountID: Integer): TModalResult;
  end;

var
  frmLuStockPos: TfrmLuStockPos;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmLuStockPos }

function TfrmLuStockPos.Run(AccountID: Integer): TModalResult;
var
  oForm: TfrmLuStockPos;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuStockPos.Create(nil);
  Try
    with dmGlobal.IntDataLookup, oForm do
    begin
      cdsLuStockPosByAcc.Close;
      cdsLuStockPosByAcc.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
      cdsLuStockPosByAcc.Params[1].AsInteger := AccountID;
      cdsLuStockPosByAcc.Open;

      gvwMaster.ApplyBestFit();

      if ShowModal = mrOk then
      begin
        if not cdsLuStockPosByAcc.IsEmpty then
          Result := mrOk;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
