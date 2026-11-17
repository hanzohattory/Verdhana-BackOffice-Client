unit FormValidateDataReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmValidateDataReport = class(TfrmBrowseData)
    cdsValidate: TNClientDataset;
    cdsValidateREPORTDATE: TDateField;
    cdsValidateREPORT_VLD: TDateTimeField;
    cdsValidateUSERID: TStringField;
    gvwMasterREPORTDATE: TcxGridDBBandedColumn;
    gvwMasterREPORT_VLD: TcxGridDBBandedColumn;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    actValidReport: TNAction;
    ValidReportByUser1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure actValidReportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidateDataReport: TfrmValidateDataReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmValidateDataReport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsValidate.Close;
  cdsValidate.Open;
end;

procedure TfrmValidateDataReport.actValidReportExecute(Sender: TObject);
begin
//  inherited;
  if MessageDlg('Valid Report ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if not cdsValidate.IsEmpty then
    begin
      cdsValidate.Edit;
      cdsValidateREPORT_VLD.AsDateTime := Now;
      cdsValidateUSERID.AsString       := dmGlobal.UserID;
      cdsValidate.Post;

      cdsValidate.ApplyUpdates(-1);
    end
    else
    begin
      MessageDlg('There no data can be validate', mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmValidateDataReport.FormCreate(Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

end.
