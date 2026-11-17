unit FormDataSetOffList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, dxLayoutContainer,
  cxMaskEdit, cxButtonEdit, dxLayoutControl, cxPropertiesStore, dxBar,
  cxClasses, dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction,
  Vcl.ActnList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCheckBox, cxCurrencyEdit;

type
  TfrmDataSetOffList = class(TfrmBrowseSingle)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtAccCode: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccName: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsDataSetOffList: TNClientDataset;
    cdsDataSetOffListSIID: TLargeintField;
    cdsDataSetOffListSINO: TStringField;
    cdsDataSetOffListENTRYDATE: TDateField;
    cdsDataSetOffListVALUEDATE: TDateField;
    cdsDataSetOffListSITYPE: TStringField;
    cdsDataSetOffListSETTLE_SIDE: TStringField;
    cdsDataSetOffListSETTLESIDE: TStringField;
    cdsDataSetOffListACCID: TLargeintField;
    cdsDataSetOffListACCNO: TStringField;
    cdsDataSetOffListACCNAME: TStringField;
    cdsDataSetOffListSETTLE_CCYCODE: TStringField;
    cdsDataSetOffListSETTLE_EXRATE: TFloatField;
    cdsDataSetOffListSETOFF_AMT: TFloatField;
    cdsDataSetOffListSI_DESC: TStringField;
    cdsDataSetOffListSTAT: TStringField;
    gvwBrowseSIID: TcxGridDBBandedColumn;
    gvwBrowseSINO: TcxGridDBBandedColumn;
    gvwBrowseENTRYDATE: TcxGridDBBandedColumn;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseSITYPE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwBrowseSETTLESIDE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwBrowseSETOFF_AMT: TcxGridDBBandedColumn;
    gvwBrowseSI_DESC: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    actSetOff: TNAction;
    SetOff: TMenuItem;
    actViewDetail: TNAction;
    ViewDetailSetOff1: TMenuItem;
    N5: TMenuItem;
    actReverseSetOff: TNAction;
    cdsViewSetOff: TNClientDataset;
    cdsViewSetOffSIID: TLargeintField;
    cdsViewSetOffSINO: TStringField;
    cdsViewSetOffENTRYDATE: TDateField;
    cdsViewSetOffVALUEDATE: TDateField;
    cdsViewSetOffSITYPE: TStringField;
    cdsViewSetOffSETTLE_SIDE: TStringField;
    cdsViewSetOffSETTLESIDE: TStringField;
    cdsViewSetOffACCID: TLargeintField;
    cdsViewSetOffACCNO: TStringField;
    cdsViewSetOffACCNAME: TStringField;
    cdsViewSetOffSETTLE_CCYCODE: TStringField;
    cdsViewSetOffSETTLE_EXRATE: TFloatField;
    cdsViewSetOffSETOFF_AMT: TFloatField;
    cdsViewSetOffSI_DESC: TStringField;
    cdsViewSetOffSTAT: TStringField;
    cdsViewSetOffLINKID: TLargeintField;
    cdsViewSetOffLINKNO: TStringField;
    cdsViewSetOffDUEDATE: TDateField;
    cdsViewSetOffDIFF: TFloatField;
    ReverseSetOFf1: TMenuItem;
    cdsDataSetOffListDUEDATE: TDateField;
    gvwBrowseDUEDATE: TcxGridDBBandedColumn;
    cdsDataSetOffListTRDDATE: TDateField;
    gvwBrowseTRDDATE: TcxGridDBBandedColumn;
    chkIncludeZero: TcxCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsDataSetOffListAMOUNT: TFloatField;
    txtTotalSelected: TcxCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gvwBrowseAMOUNT: TcxGridDBBandedColumn;
    cdsViewSetOffTRDDATE: TDateField;
    actRefreshs: TNAction;
    Refresh2: TMenuItem;
    dxBarButton1: TdxBarButton;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actSetOffExecute(Sender: TObject);
    procedure actViewDetailExecute(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure actReverseSetOffExecute(Sender: TObject);
    procedure chkIncludeZeroClick(Sender: TObject);
    procedure cdsDataSetOffListCalcFields(DataSet: TDataSet);
    procedure gvwBrowseCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actRefreshsExecute(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmDataSetOffList: TfrmDataSetOffList;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, FormGetAccSetOff, DataLookup;

procedure TfrmDataSetOffList.actRefreshsExecute(Sender: TObject);
begin
  inherited;
  cdsDataSetOffList.Close;
  cdsDataSetOffList.Params[0].AsInteger := FAccID;
//      cdsDataSetOffList.Params[1].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsDataSetOffList.Open;
end;

procedure TfrmDataSetOffList.actReverseSetOffExecute(Sender: TObject);
var
  oForm: TfrmGetAccSetOff;
  sMessage: string;
  bResult: Boolean;
begin
  inherited;
  cdsViewSetOff.Close;
  cdsViewSetOff.Params[0].AsInteger := cdsDataSetoffListSIID.AsInteger;
  cdsViewSetOff.Open;

  if cdsViewSetOff.IsEmpty then
  begin
    MessageError('There is no data setoff can be view');
    exit;
  end;

  oForm := TfrmGetAccSetOff.Create(nil);
  TfrmGetAccSetOff(oForm).SIID       := cdsDataSetoffListSIID.AsString;
  TfrmGetAccSetOff(oForm).SetOffType := 3;
  if oForm.ShowModal = mrOk then
  begin
    bResult := dmGlobal.RemoteServer.GenerateSetOffReverse(cdsDataSetoffListSIID.AsInteger, sMessage);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);
  end;
  FreeAndNil(oForm);

  cdsDataSetoffList.Refresh;
end;

procedure TfrmDataSetOffList.actSetOffExecute(Sender: TObject);
var
  oForm: TfrmGetAccSetOff;
  sSIID: string;
  i: Integer;
begin
  inherited;
  sSIID := '';
  for i := 0 to gvwBrowse.Controller.SelectedRecordCount -1 do
    sSIID := sSIID + IntToStr(gvwBrowse.Controller.SelectedRecords[i].Values[gvwBrowseSIID.Index])+';';

  oForm := TfrmGetAccSetOff.Create(nil);
  TfrmGetAccSetOff(oForm).SIID       := sSIID;
  TfrmGetAccSetOff(oForm).SetOffType := 1;
  oForm.ShowModal;
  FreeAndNil(oForm);

  cdsDataSetoffList.Refresh;
end;

procedure TfrmDataSetOffList.actViewDetailExecute(Sender: TObject);
var
  oForm: TfrmGetAccSetOff;
  sSIID: string;
begin
  inherited;
  sSIID := IntToStr(gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseSIID.Index]);

  oForm := TfrmGetAccSetOff.Create(nil);
  TfrmGetAccSetOff(oForm).SIID       := sSIID;
  TfrmGetAccSetOff(oForm).SetOffType := 2;
  oForm.ShowModal;
  FreeAndNil(oForm);

  cdsDataSetoffList.Refresh;
end;

procedure TfrmDataSetOffList.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      FAccID          := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;

      cdsDataSetOffList.Close;
      cdsDataSetOffList.Params[0].AsInteger := FAccID;
//      cdsDataSetOffList.Params[1].AsDate    := dmGlobal.RemoteServer.GetTransDate;
      cdsDataSetOffList.Open;
    end;
  end;
end;

procedure TfrmDataSetOffList.gvwBrowseCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  dTotal: Double;
  i: Integer;
begin
  inherited;
  dTotal := 0;
  for i := 0 to gvwBrowse.Controller.SelectedRecordCount -1 do
    dTotal := dTotal + gvwBrowse.Controller.SelectedRecords[i].Values[gvwBrowseAMOUNT.Index];

  txtTotalSelected.EditValue := dTotal;
end;

procedure TfrmDataSetOffList.cdsDataSetOffListCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsDataSetoffListSETTLE_SIDE.AsString = 'P' then
    cdsDataSetoffListAMOUNT.AsFloat := - cdsDataSetoffListSETOFF_AMT.AsFloat
  else
    cdsDataSetoffListAMOUNT.AsFloat := cdsDataSetoffListSETOFF_AMT.AsFloat;
end;

procedure TfrmDataSetOffList.chkIncludeZeroClick(Sender: TObject);
begin
  inherited;
  cdsDataSetoffList.Filtered := not chkIncludeZero.Checked;
end;

procedure TfrmDataSetOffList.Refresh1Click(Sender: TObject);
begin
  inherited;
  cdsDataSetoffList.Refresh;
end;

end.
