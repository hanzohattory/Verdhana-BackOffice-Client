unit FormCustStockPos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.Menus,
  Datasnap.DBClient, NClientDataset, Vcl.StdCtrls, cxButtons, cxCheckBox,
  cxTextEdit, cxCurrencyEdit, dxDateRanges;

type
  TAvailQty = class(TObject)
  private
    FTargetQty: Double;
  public
    property TargetQty: Double read FTargetQty write FTargetQty;
  end;

  TfrmClientStockPos = class(TForm)
    Panel1: TPanel;
    gvwStockPos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Ok: TcxButton;
    cdsStockPosition: TNClientDataset;
    cdsStockPositionLOCALCODE: TStringField;
    cdsStockPositionOnHand: TFloatField;
    cdsStockPositionAcqPrice: TFloatField;
    cdsStockPositionTargetPrice: TFloatField;
    cdsStockPositionTargetQty: TFloatField;
    cdsStockPositionCheckBox: TStringField;
    dsStockPosition: TDataSource;
    gvwStockPosLocalCode: TcxGridDBColumn;
    gvwStockPosOnHand: TcxGridDBColumn;
    gvwStockPosAcqPrice: TcxGridDBColumn;
    gvwStockPosTargetPrice: TcxGridDBColumn;
    gvwStockPosTargetQty: TcxGridDBColumn;
    gvwStockPosCheckBox: TcxGridDBColumn;
    cdsClientStockPos: TNClientDataset;
    cdsClientStockPosBranchID: TIntegerField;
    cdsClientStockPosBranchCode: TStringField;
    cdsClientStockPosBranchName: TStringField;
    cdsClientStockPosSalesID: TIntegerField;
    cdsClientStockPosSalesCode: TStringField;
    cdsClientStockPosSalesName: TStringField;
    cdsClientStockPosAccID: TLargeintField;
    cdsClientStockPosAccNo: TStringField;
    cdsClientStockPosAccName: TStringField;
    cdsClientStockPosStockID: TIntegerField;
    cdsClientStockPosStockCode: TStringField;
    cdsClientStockPosStockName: TStringField;
    cdsClientStockPosAvgPrice: TFloatField;
    cdsClientStockPosClosePrice: TFloatField;
    cdsClientStockPosStockOnHand: TFloatField;
    cdsClientStockPosStockOnHold: TFloatField;
    cdsClientStockPosStockOuts: TFloatField;
    cdsClientStockPosStockBalance: TFloatField;
    cdsClientStockPosStockBal_Value: TFloatField;
    cdsClientStockPosStockBal_MktValue: TFloatField;
    cdsClientStockPosUnReal_LossProfit: TFloatField;
    cdsClientStockPosLastCP: TDateField;
    cdsClientStockPosInvType: TStringField;
    cdsStockPositionStockID: TIntegerField;
    cdsStockPositionOutstands: TFloatField;
    cdsStockPositionBalance: TFloatField;
    gvwStockPosOutstands: TcxGridDBColumn;
    gvwStockPosBalance: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cdsStockPositionTargetQtyChange(Sender: TField);
    procedure cdsStockPositionTargetPriceChange(Sender: TField);
    procedure OkClick(Sender: TObject);
  private
    FAccID: Integer;
    FTargetList: TStringList;
    FTargetQty: TAvailQty;
    FPrdCode: string;
    { Private declarations }
  public
    property AccountID : Integer read FAccID write FAccID;
    property TargetList: TStringList read FTargetList write FTargetList;
    property TargetQty: TAvailQty read FTargetQty write FTargetQty;
    property PrdCode: string read FPrdCode write FPrdCode;
  end;

var
  frmClientStockPos: TfrmClientStockPos;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmClientStockPos.cdsStockPositionTargetPriceChange(
  Sender: TField);
begin
  if cdsStockPositionTargetPrice.AsFloat > cdsStockPositionAcqPrice.AsFloat then
  begin
    MessageDlg('Target price can not bigger than source price', mtError, [mbOk], 0);
    cdsStockPositionTargetPrice.AsFloat := cdsStockPositionAcqPrice.OldValue;
  end;
end;

procedure TfrmClientStockPos.cdsStockPositionTargetQtyChange(
  Sender: TField);
begin
  if cdsStockPositionTargetQty.AsFloat > cdsStockPositionBalance.AsFloat then
  begin
    MessageDlg('Target quantity can not bigger than source quantity', mtError, [mbOk], 0);
    cdsStockPositionTargetQty.AsFloat := cdsStockPositionTargetQty.OldValue;
  end;
end;

procedure TfrmClientStockPos.FormShow(Sender: TObject);
var
  dAvailQty, dStockOnHand: Double;
  iRes: integer;
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsClientStockPos.Close;
    cdsClientStockPos.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
    cdsClientStockPos.Params[1].AsInteger := AccountID;
    cdsClientStockPos.Open;

    cdsStockPosition.Close;
    cdsStockPosition.CreateDataSet;
  end;

  if not cdsClientStockPos.IsEmpty then
  begin
    cdsClientStockPos.First;
    while not cdsClientStockPos.Eof do
    begin
      iRes := TargetList.IndexOf(cdsClientStockPosStockID.AsString);
      if iRes <> -1 then
      begin
        TargetQty := TAvailQty(TargetList.Objects[iRes]);
        dAvailQty := TargetQty.TargetQty;
      end
      else
        dAvailQty := 0;

      dStockOnHand := cdsClientStockPosStockOnHand.AsFloat - dAvailQty;

      cdsStockPosition.Append;
      cdsStockPositionStockID.AsInteger   := cdsClientStockPosStockID.AsInteger;
      cdsStockPositionLOCALCODE.AsString  := cdsClientStockPosStockCode.AsString;
      cdsStockPositionOnHand.AsFloat      := cdsClientStockPosStockOnHand.AsFloat;
      cdsStockPositionAcqPrice.AsFloat    := cdsClientStockPosAvgPrice.AsFloat;
      cdsStockPositionTargetPrice.AsFloat := cdsStockPositionAcqPrice.AsFloat;
      cdsStockPositionBalance.AsFloat     := cdsClientStockPosStockOnHand.AsFloat + cdsClientStockPosStockOuts.AsFloat;
      cdsStockPositionTargetQty.AsFloat   := cdsClientStockPosStockOnHand.AsFloat + cdsClientStockPosStockOuts.AsFloat;
      cdsStockPosition.Post;

      cdsClientStockPos.Next;
    end;
  end;
end;

procedure TfrmClientStockPos.OkClick(Sender: TObject);
begin
  if cdsStockPositionOnHand.AsFloat >= cdsStockPositionTargetQty.AsFloat then
    ModalResult := mrOk
  else if cdsStockPositionBalance.AsFloat >= cdsStockPositionTargetQty.AsFloat then
  begin
    if MessageDlg('There is stock outstand on portfolio, continue?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ModalResult := mrOk
    else
      ModalResult := mrNone;
  end;
end;

end.
