unit FormCashProjection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxPropertiesStore, dxBar,
  cxClasses, dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction,
  Vcl.ActnList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxImageComboBox;

type
  TfrmCashProjection = class(TfrmBrowseSingle)
    cdsCashProjection: TNClientDataset;
    gvwBrowseTRSIDE: TcxGridDBBandedColumn;
    gvwBrowseRPTDATE: TcxGridDBBandedColumn;
    gvwBrowseREMARKS: TcxGridDBBandedColumn;
    gvwBrowseACTLED_SEQID: TcxGridDBBandedColumn;
    gvwBrowseACCBANKID: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseAMT_T0: TcxGridDBBandedColumn;
    gvwBrowseAMT_T1: TcxGridDBBandedColumn;
    gvwBrowseAMT_T2: TcxGridDBBandedColumn;
    gvwBrowseAMT_T3: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtBankID: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtBankDesc: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsCashProjectionTRSIDE: TStringField;
    cdsCashProjectionRPTDATE: TDateField;
    cdsCashProjectionREMARKS: TStringField;
    cdsCashProjectionACTLED_SEQID: TIntegerField;
    cdsCashProjectionACCBANKID: TLargeintField;
    cdsCashProjectionCCY: TStringField;
    cdsCashProjectionAMT_T0: TFloatField;
    cdsCashProjectionAMT_T1: TFloatField;
    cdsCashProjectionAMT_T2: TFloatField;
    cdsCashProjectionAMT_T3: TFloatField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtBankIDExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashProjection: TfrmCashProjection;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCashProjection.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsCashProjection.Close;
  cdsCashProjection.Params[0].AsDateTime := dtValueDate.Date;
  cdsCashProjection.Params[1].AsInteger  := txtBankID.EditValue;
  cdsCashProjection.Open;

  gvwBrowseAMT_T0.Caption := FormatDateTime('dd mmm yyyy', dtValueDate.Date);
  gvwBrowseAMT_T1.Caption := FormatDateTime('dd mmm yyyy',
     dmGlobal.RemoteServer.GetNextTradingDate(dtValueDate.Date, 1));
  gvwBrowseAMT_T2.Caption := FormatDateTime('dd mmm yyyy',
     dmGlobal.RemoteServer.GetNextTradingDate(dtValueDate.Date, 2));
  gvwBrowseAMT_T3.Caption := FormatDateTime('dd mmm yyyy',
     dmGlobal.RemoteServer.GetNextTradingDate(dtValueDate.Date, 3));
end;

procedure TfrmCashProjection.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;
  end;
end;

procedure TfrmCashProjection.txtBankIDExit(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', txtBankID.EditValue, []) then
      txtBankDesc.Text := 'Bank Account No. ' +cdsLuBankAccountBANKACCNO.AsString+ ' a/c: '+ cdsLuBankAccountBANKACCNAME.AsString+
                          ', Branch: '+ cdsLuBankAccountBANKBRANCH.AsString;
  end;
end;

Initialization
  RegisterClass(TfrmCashProjection);


end.
