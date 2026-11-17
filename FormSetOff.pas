unit FormSetOff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, Vcl.ActnList, NActionPermission, Vcl.Menus,
  dxLayoutControlAdapters, Datasnap.DBClient, NClientDataset, Vcl.StdCtrls,
  cxButtons, NDatasetAction, Vcl.ExtCtrls;

type
  TfrmSetOff = class(TfrmBasic)
    actList: TActionList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwSetOff: TcxGridDBBandedTableView;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsDataSetoffList: TNClientDataset;
    dsDataSetoffList: TDataSource;
    actViewData: TNAction;
    actGenerateSetOff: TNAction;
    cdsDataSetOffByAccID: TNClientDataset;
    cdsDataSetOffByAccIDACCID: TLargeintField;
    cdsDataSetOffByAccIDACCNO: TStringField;
    cdsDataSetOffByAccIDACCNAME: TStringField;
    cdsDataSetOffByAccIDTRXTYPE: TStringField;
    cdsDataSetOffByAccIDTRDDATE: TDateField;
    cdsDataSetOffByAccIDDUEDATE: TDateField;
    cdsDataSetOffByAccIDCCYCODE: TStringField;
    cdsDataSetOffByAccIDEXRATE: TFloatField;
    cdsDataSetOffByAccIDAMOUNT: TFloatField;
    cdsDataSetOffByAccIDPROCESSDATE: TDateField;
    cdsDataSetOffByAccIDLEDGERACC: TStringField;
    cdsDataSetOffByAccIDLEDGERNAME: TStringField;
    cdsDataSetOffByAccIDSETOFF_DESC: TStringField;
    cdsDataSetOffByAccIDDC: TStringField;
    cdsDataSetOffByAccIDSETTOFF_AMT: TFloatField;
    cdsDataSetOffByAccIDREMARKS: TStringField;
    actViewDetails: TNAction;
    ViewDetails1: TMenuItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    pnlKeterangan: TPanel;
    cdsDataSetoffListPROCESSDATE: TDateField;
    cdsDataSetoffListACCID: TLargeintField;
    cdsDataSetoffListACCNO: TStringField;
    cdsDataSetoffListACCNAME: TStringField;
    cdsDataSetoffListDUEDATE: TDateField;
    cdsDataSetoffListCCYCODE: TStringField;
    cdsDataSetoffListAMOUNT: TFloatField;
    cdsDataSetoffListSETTOFF_AMT: TFloatField;
    gvwSetOffPROCESSDATE: TcxGridDBBandedColumn;
    gvwSetOffACCID: TcxGridDBBandedColumn;
    gvwSetOffACCNO: TcxGridDBBandedColumn;
    gvwSetOffACCNAME: TcxGridDBBandedColumn;
    gvwSetOffDUEDATE: TcxGridDBBandedColumn;
    gvwSetOffCCYCODE: TcxGridDBBandedColumn;
    gvwSetOffAMOUNT: TcxGridDBBandedColumn;
    gvwSetOffSETTOFF_AMT: TcxGridDBBandedColumn;
    cdsDataSetOffByAccIDX: TFloatField;
    cdsDataSetOffByAccIDY: TFloatField;
    ReverseDataSetOFf1: TMenuItem;
    cdsDataSetoffListVOUCHERID: TLargeintField;
    cdsDataSetoffListSETOFF_STAT: TStringField;
    gvwSetOffVOUCHERID: TcxGridDBBandedColumn;
    gvwSetOffSETOFF_STAT: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateSetOffExecute(Sender: TObject);
    procedure actViewDetailsExecute(Sender: TObject);
    procedure cdsDataSetOffByAccIDCalcFields(DataSet: TDataSet);
    procedure ReverseDataSetOFf1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmSetOff: TfrmSetOff;

implementation

{$R *.dfm}

uses DataGlobal, FormSetOffDetail;

{ TfrmSetOffList }

procedure TfrmSetOff.actGenerateSetOffExecute(Sender: TObject);
var
  sMessage: WideString;
begin
  inherited;
  pnlKeterangan.Visible := True;

  Cursor   := crHourGlass;
  Application.ProcessMessages;
  sMessage := dmGlobal.RemoteServer.GenerateARAP_SetOff(dtDueDate.Date, dmGlobal.UserID);
  Cursor   := crDefault;

  pnlKeterangan.Visible := False;
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  RefreshData;
end;

procedure TfrmSetOff.actViewDataExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmSetOff.actViewDetailsExecute(Sender: TObject);
var
  oForm: TfrmSetOffDetail;
begin
  inherited;
  cdsDataSetOffByAccID.Close;
  cdsDataSetOffByAccID.Params[0].AsInteger := gvwSetOff.Controller.SelectedRecords[0].Values[gvwSetOffACCID.Index];
  cdsDataSetOffByAccID.Params[1].AsDate    := dtDueDate.Date;
  cdsDataSetOffByAccID.Open;

  oForm := TfrmSetOffDetail.Create(nil);
  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmSetOff.cdsDataSetOffByAccIDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsDataSetOffByAccIDDC.AsString = 'C' then
  begin
    cdsDataSetOffByAccIDX.AsFloat := - cdsDataSetOffByAccIDAMOUNT.AsFloat;
    cdsDataSetOffByAccIDY.AsFloat := - cdsDataSetOffByAccIDSETTOFF_AMT.AsFloat;
  end
  else
  begin
    cdsDataSetOffByAccIDX.AsFloat := cdsDataSetOffByAccIDAMOUNT.AsFloat;
    cdsDataSetOffByAccIDY.AsFloat := - cdsDataSetOffByAccIDSETTOFF_AMT.AsFloat;
  end;
end;

procedure TfrmSetOff.FormCreate(Sender: TObject);
var
  sTransDate: TDateTime;
begin
  inherited;
  sTransDate     := dmGlobal.RemoteServer.GetTransDate;
  dtDueDate.Date := sTransDate;

  cdsDataSetoffList.Close;
  cdsDataSetoffList.Params[0].AsDate := sTransDate;
  cdsDataSetoffList.Open;
end;

procedure TfrmSetOff.RefreshData;
begin
  cdsDataSetoffList.Close;
  cdsDataSetoffList.Params[0].AsDate := dtDueDate.Date;
  cdsDataSetoffList.Open;
end;

procedure TfrmSetOff.ReverseDataSetOFf1Click(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  if MessageDlg('Reverse Data Set Off ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
//    sMessage := dmGlobal.RemoteServer.CashVoucherReverse(cdsDataSetoffListVOUCHERID.AsLargeInt, dtDueDate.Date);
//    MessageDlg(sMessage, mtInformation, [mbOk], 0);
//    RefreshData;
  end;
end;

Initialization
  RegisterClass(TfrmSetOff);

end.
