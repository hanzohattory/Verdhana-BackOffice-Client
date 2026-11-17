unit SelectDataInterestByAccID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl,
  Data.DB, Datasnap.DBClient, NClientDataset, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, Vcl.Menus,
  cxDBLookupComboBox, cxImageComboBox, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmSelectDataInterestByAccID = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsInterestDetail: TNClientDataset;
    cdsInterestDetailPERIODID: TLargeintField;
    cdsInterestDetailINTRS_ID: TLargeintField;
    cdsInterestDetailINTEREST_NO: TStringField;
    cdsInterestDetailINTERESTDATE: TDateField;
    cdsInterestDetailACCID: TIntegerField;
    cdsInterestDetailACCNO: TStringField;
    cdsInterestDetailACCNAME: TStringField;
    cdsInterestDetailCCYCODE: TStringField;
    cdsInterestDetailINTEREST_TYPE: TStringField;
    cdsInterestDetailBASE_INTRS_AMT: TFloatField;
    cdsInterestDetailRATE: TFloatField;
    cdsInterestDetailINTEREST_DAY: TIntegerField;
    cdsInterestDetailYEAROFDAY: TIntegerField;
    cdsInterestDetailINTEREST_AMT: TFloatField;
    cdsInterestDetailTAX_PERCENT: TFloatField;
    cdsInterestDetailTAX_AMT: TFloatField;
    cdsInterestDetailNET_INTEREST: TFloatField;
    cdsInterestDetailPOSTED: TStringField;
    cdsInterestDetailACCRUED: TStringField;
    cdsInterestDetailACCRUE_DATE: TDateField;
    cdsInterestDetailACCRUE_JRNID: TLargeintField;
    cdsInterestDetailEXECUTED: TStringField;
    cdsInterestDetailEXEC_DATE: TDateField;
    cdsInterestDetailEXEC_JRNHID: TLargeintField;
    cdsInterestDetailREVERSED: TStringField;
    cdsInterestDetailREVERSE_DATE: TDateField;
    cdsInterestDetailREVERSE_JRNHID: TLargeintField;
    cdsInterestDetailREVERSE_POSTED: TStringField;
    cdsInterestDetailDISCOUNT: TStringField;
    cdsInterestDetailDISCOUNT_DATE: TDateField;
    cdsInterestDetailDISCOUNT_AMT: TFloatField;
    cdsInterestDetailDISCOUNT_JRNHID: TLargeintField;
    cdsInterestDetailDISCOUNT_POSTED: TStringField;
    dsInterestDetail: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwInterestDetail: TcxGridDBBandedTableView;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    PopupMenu1: TPopupMenu;
    InterestCancel: TMenuItem;
    cdsSelectDataInterestDetail: TNClientDataset;
    cdsSelectDataInterestDetailACCID: TIntegerField;
    cdsSelectDataInterestDetailINTEREST_NO: TStringField;
    cdsSelectDataInterestDetailINTERESTDATE: TDateField;
    cdsSelectDataInterestDetailPRINCIPLE_METHOD: TStringField;
    cdsSelectDataInterestDetailCCYCODE: TStringField;
    cdsSelectDataInterestDetailBASE_INTRS_AMT: TFloatField;
    cdsSelectDataInterestDetailRATE: TFloatField;
    cdsSelectDataInterestDetailYEAROFDAY: TIntegerField;
    cdsSelectDataInterestDetailINTEREST_AMT: TFloatField;
    cdsSelectDataInterestDetailREVERSED: TStringField;
    cdsSelectDataInterestDetailREVERSE_DATE: TDateField;
    cdsSelectDataInterestDetailREVERSE_POSTED: TStringField;
    cdsSelectDataInterestDetailREVERSED_JRNCODE: TStringField;
    cdsSelectDataInterestDetailPAID: TStringField;
    cdsSelectDataInterestDetailPAID_DATE: TDateField;
    cdsSelectDataInterestDetailPAID_UI: TStringField;
    cdsSelectDataInterestDetailCSNO: TStringField;
    cdsSelectDataInterestDetailACC_POSTED: TStringField;
    cdsSelectDataInterestDetailPAY_JRNCODE: TStringField;
    gvwInterestDetailACCID: TcxGridDBBandedColumn;
    gvwInterestDetailINTEREST_NO: TcxGridDBBandedColumn;
    gvwInterestDetailINTERESTDATE: TcxGridDBBandedColumn;
    gvwInterestDetailPRINCIPLE_METHOD: TcxGridDBBandedColumn;
    gvwInterestDetailCCYCODE: TcxGridDBBandedColumn;
    gvwInterestDetailBASE_INTRS_AMT: TcxGridDBBandedColumn;
    gvwInterestDetailRATE: TcxGridDBBandedColumn;
    gvwInterestDetailYEAROFDAY: TcxGridDBBandedColumn;
    gvwInterestDetailINTEREST_AMT: TcxGridDBBandedColumn;
    gvwInterestDetailREVERSED: TcxGridDBBandedColumn;
    gvwInterestDetailREVERSE_DATE: TcxGridDBBandedColumn;
    gvwInterestDetailREVERSE_POSTED: TcxGridDBBandedColumn;
    gvwInterestDetailREVERSED_JRNCODE: TcxGridDBBandedColumn;
    gvwInterestDetailPAID: TcxGridDBBandedColumn;
    gvwInterestDetailPAID_DATE: TcxGridDBBandedColumn;
    gvwInterestDetailPAID_UI: TcxGridDBBandedColumn;
    gvwInterestDetailCSNO: TcxGridDBBandedColumn;
    gvwInterestDetailACC_POSTED: TcxGridDBBandedColumn;
    gvwInterestDetailPAY_JRNCODE: TcxGridDBBandedColumn;
    cdsSelectDataInterestDetailACCNO: TStringField;
    cdsSelectDataInterestDetailACCNAME: TStringField;
    cdsSelectDataInterestDetailEXECUTED: TStringField;
    gvwInterestDetailACCNO: TcxGridDBBandedColumn;
    gvwInterestDetailACCNAME: TcxGridDBBandedColumn;
    gvwInterestDetailEXECUTED: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure InterestDiscount1Click(Sender: TObject);
    procedure InterestCancelClick(Sender: TObject);
  private
    FPeriodID: Integer;
    FAccID: Integer;
    { Private declarations }
  public
    { Public declarations }
    property PeriodID: Integer read FPeriodID write FPeriodID;
    property AccID: Integer read FAccID write FAccID;
  end;

var
  frmSelectDataInterestByAccID: TfrmSelectDataInterestByAccID;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSelectDataInterestByAccID.FormShow(Sender: TObject);
begin
  cdsSelectDataInterestDetail.Close;
  cdsSelectDataInterestDetail.Params[0].AsInteger := PeriodID;
  cdsSelectDataInterestDetail.Params[1].AsInteger := AccID;
  cdsSelectDataInterestDetail.Open;
end;

procedure TfrmSelectDataInterestByAccID.InterestDiscount1Click(
  Sender: TObject);
var
  sDiscount: string;
begin
  try
    sDiscount := '0';
    if InputQuery('Interest Discount', 'Discount Amount', sDiscount) then
    begin
      if StrToInt(sDiscount) <> 0 then
      begin
        dmGlobal.RemoteServer.IntrstDiscount(PeriodID, AccID, StrToInt(sDiscount));
        MessageDlg('Interest Discount has been generate', mtInformation, [mbOk], 0);
      end;
    end;

    cdsSelectDataInterestDetail.Close;
    cdsSelectDataInterestDetail.Params[0].AsInteger := PeriodID;
    cdsSelectDataInterestDetail.Params[1].AsInteger := AccID;
    cdsSelectDataInterestDetail.Open;
  except
    on E: Exception do
      MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmSelectDataInterestByAccID.InterestCancelClick(
  Sender: TObject);
var
  sCCYCode, sMsg: string;
begin
  sCCYCode := gvwInterestDetail.Controller.SelectedRows[0].Values[gvwInterestDetailCCYCODE.Index];

  dmGlobal.RemoteServer.InterestReserved(PeriodID, AccID, sCCYCode, sMsg);
  MessageDlg(sMsg , mtInformation, [mbOk], 0);

  cdsSelectDataInterestDetail.Close;
  cdsSelectDataInterestDetail.Params[0].AsInteger := PeriodID;
  cdsSelectDataInterestDetail.Params[1].AsInteger := AccID;
  cdsSelectDataInterestDetail.Open;
end;

end.
