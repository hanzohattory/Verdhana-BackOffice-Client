unit FormAddAqcPrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit;

type
  TfrmAddHistoricalAcqPrice = class(TfrmEditor)
    cdsStockPos: TNClientDataset;
    cdsTmpStockPos: TNClientDataset;
    cxGrid3: TcxGrid;
    gvwAquisitionBonds: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    cdsStockPosACQ_HISID: TLargeintField;
    cdsStockPosTRADEDATE: TDateField;
    cdsStockPosBS: TStringField;
    cdsStockPosACCID: TLargeintField;
    cdsStockPosBONDID: TLargeintField;
    cdsStockPosACQDATE: TDateField;
    cdsStockPosACQ_PRICE: TFloatField;
    cdsStockPosFACEVALUE: TFloatField;
    cdsStockPosPROCEED: TFloatField;
    cdsStockPosCAP_GAIN: TFloatField;
    cdsStockPosACC_INTEREST: TFloatField;
    cdsStockPosHOLD_PERIOD: TIntegerField;
    cdsStockPosHOLD_INTEREST: TFloatField;
    cdsStockPosHOLD_TAX: TFloatField;
    cdsStockPosHOLD_INTERESTTAX: TFloatField;
    cdsStockPosNET_PROCEED: TFloatField;
    cdsStockPosSELL_VAL: TFloatField;
    cdsStockPosLINKID: TLargeintField;
    cdsStockPosPOSTED: TStringField;
    cdsTmpStockPosACQ_HISID: TLargeintField;
    cdsTmpStockPosTRADEDATE: TDateField;
    cdsTmpStockPosBS: TStringField;
    cdsTmpStockPosACCID: TLargeintField;
    cdsTmpStockPosBONDID: TLargeintField;
    cdsTmpStockPosACQDATE: TDateField;
    cdsTmpStockPosACQ_PRICE: TFloatField;
    cdsTmpStockPosFACEVALUE: TFloatField;
    cdsTmpStockPosPROCEED: TFloatField;
    cdsTmpStockPosCAP_GAIN: TFloatField;
    cdsTmpStockPosACC_INTEREST: TFloatField;
    cdsTmpStockPosHOLD_PERIOD: TIntegerField;
    cdsTmpStockPosHOLD_INTEREST: TFloatField;
    cdsTmpStockPosHOLD_TAX: TFloatField;
    cdsTmpStockPosHOLD_INTERESTTAX: TFloatField;
    cdsTmpStockPosNET_PROCEED: TFloatField;
    cdsTmpStockPosSELL_VAL: TFloatField;
    cdsTmpStockPosLINKID: TLargeintField;
    cdsTmpStockPosPOSTED: TStringField;
    gvwAquisitionBondsACQ_HISID: TcxGridDBBandedColumn;
    gvwAquisitionBondsTRADEDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsBS: TcxGridDBBandedColumn;
    gvwAquisitionBondsACCID: TcxGridDBBandedColumn;
    gvwAquisitionBondsBONDID: TcxGridDBBandedColumn;
    gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsACQ_PRICE: TcxGridDBBandedColumn;
    gvwAquisitionBondsFACEVALUE: TcxGridDBBandedColumn;
    gvwAquisitionBondsPROCEED: TcxGridDBBandedColumn;
    gvwAquisitionBondsCAP_GAIN: TcxGridDBBandedColumn;
    gvwAquisitionBondsACC_INTEREST: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_PERIOD: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_INTEREST: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_TAX: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_INTERESTTAX: TcxGridDBBandedColumn;
    gvwAquisitionBondsNET_PROCEED: TcxGridDBBandedColumn;
    gvwAquisitionBondsSELL_VAL: TcxGridDBBandedColumn;
    gvwAquisitionBondsLINKID: TcxGridDBBandedColumn;
    gvwAquisitionBondsPOSTED: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsTmpStockPosNewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsTmpStockPosACQ_PRICEChange(Sender: TField);
  private
    FSTOCKCODE: string;
    FACCID: Integer;
    FSTOCKID: Integer;
    { Private declarations }
  public
    property ACCID: Integer read FACCID write FACCID;
    property STOCKCODE: string read FSTOCKCODE write FSTOCKCODE;
    property STOCKID: Integer read FSTOCKID write FSTOCKID;
  end;

var
  frmAddHistoricalAcqPrice: TfrmAddHistoricalAcqPrice;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmAddHistoricalAcqPrice.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  cdsTmpStockPos.DisableControls;
  cdsTmpStockPos.First;

  while not cdsTmpStockPos.Eof do
  begin
    cdsStockPos.Append;
    for i := 0 to cdsTmpStockPos.FieldCount -2 do
      cdsStockPos.Fields[i].AsVariant := cdsTmpStockPos.Fields[i].AsVariant;
    cdsStockPos.Post;

    cdsTmpStockPos.Next;
  end;
  cdsStockPos.ApplyUpdates(-1);

  cdsTmpStockPos.EnableControls;
  inherited;
end;

procedure TfrmAddHistoricalAcqPrice.cdsTmpStockPosACQ_PRICEChange(
  Sender: TField);
begin
  inherited;
  cdsTmpStockPosPROCEED.AsFloat := StrToFloatDef(cdsTmpStockPosACQ_PRICE.AsString, 0) /100
                                   * StrToFloatDef(cdsTmpStockPosFACEVALUE.AsString, 0);
end;

procedure TfrmAddHistoricalAcqPrice.cdsTmpStockPosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsTmpStockPosACCID.AsInteger     := FACCID;
  cdsTmpStockPosBONDID.AsInteger    := FSTOCKID;
  cdsTmpStockPosACQDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  cdsTmpStockPosTRADEDATE.AsDateTime:= cdsTmpStockPosACQDATE.AsDateTime;
  cdsTmpStockPosACQ_HISID.AsInteger := dmGlobal.RemoteServer.GetSeq('main.B_ACQ_HIS');
  cdsTmpStockPosBS.AsString         := 'B';
  cdsTmpStockPosSELL_VAL.AsFloat    := 0;
end;

procedure TfrmAddHistoricalAcqPrice.FormCreate(Sender: TObject);
begin
  inherited;
  cdsTmpStockPos.Close;
  cdsTmpStockPos.CreateDataSet;

  cdsStockPos.Close;
  cdsStockPos.Params[0].AsInteger := -1;
  cdsStockPos.Params[1].AsInteger := -1;
  cdsStockPos.Open;
end;

end.
