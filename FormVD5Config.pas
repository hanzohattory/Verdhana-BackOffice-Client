unit FormVD5Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, ClassClientConst;

type
  TfrmVD5Configs = class(TfrmBrowseData)
    cdsVD51Config: TNClientDataset;
    cdsVD52Config: TNClientDataset;
    dsVD52Config: TDataSource;
    grdMasterLevel2: TcxGridLevel;
    gvwVD52Config: TcxGridDBBandedTableView;
    cdsVD51ConfigVD5: TStringField;
    cdsVD51ConfigBARIS: TIntegerField;
    cdsVD51ConfigKETERANGAN: TStringField;
    cdsVD51ConfigISGRUP: TBooleanField;
    cdsVD51ConfigKELOMPOK: TIntegerField;
    cdsVD51ConfigISTRANS: TBooleanField;
    cdsVD52ConfigVD5: TStringField;
    cdsVD52ConfigBARIS: TIntegerField;
    cdsVD52ConfigKETERANGAN: TStringField;
    cdsVD52ConfigISGRUP: TBooleanField;
    cdsVD52ConfigKELOMPOK: TIntegerField;
    cdsVD52ConfigISTRANS: TBooleanField;
    gvwMasterVD5: TcxGridDBBandedColumn;
    gvwMasterBARIS: TcxGridDBBandedColumn;
    gvwMasterKETERANGAN: TcxGridDBBandedColumn;
    gvwMasterISGRUP: TcxGridDBBandedColumn;
    gvwMasterKELOMPOK: TcxGridDBBandedColumn;
    gvwMasterISTRANS: TcxGridDBBandedColumn;
    gvwVD52ConfigVD5: TcxGridDBBandedColumn;
    gvwVD52ConfigBARIS: TcxGridDBBandedColumn;
    gvwVD52ConfigKETERANGAN: TcxGridDBBandedColumn;
    gvwVD52ConfigISGRUP: TcxGridDBBandedColumn;
    gvwVD52ConfigKELOMPOK: TcxGridDBBandedColumn;
    gvwVD52ConfigISTRANS: TcxGridDBBandedColumn;
    cdsVD51ConfigEDITED: TStringField;
    cdsVD52ConfigEDITED: TStringField;
    gvwMasterEDITED: TcxGridDBBandedColumn;
    gvwVD52ConfigEDITED: TcxGridDBBandedColumn;
    actAddEditCOA: TNAction;
    AddEditCOAforVD51: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAddEditCOAExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actOpenExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD5Configs: TfrmVD5Configs;

implementation

{$R *.dfm}

uses DataGlobal, FormVD5ConfigEditor;

procedure TfrmVD5Configs.actAddEditCOAExecute(Sender: TObject);
var
  oForm: TfrmVD5ConfigEditor;
  bEdited: Boolean;
  sKeyVD5: string;
  iKeyBaris: Integer;
  sVD5, sKeterangan: string;
  iBaris: Integer;
begin
  bEdited := True;

  if gvwMaster.Focused then
  begin
    sKeyVD5   := cdsVD51ConfigVD5.AsString;
    iKeyBaris := cdsVD51ConfigBARIS.AsInteger;

    sVD5        := cdsVD51ConfigVD5.AsString;
    iBaris      := cdsVD51ConfigBARIS.AsInteger;
    sKeterangan := cdsVD51ConfigKETERANGAN.AsString;

    if (cdsVD51ConfigEDITED.AsString = '0') or (cdsVD51ConfigEDITED.AsString = '') then
    begin
      MessageError('This data is not editable !');
      bEdited := False;
    end;
  end
  else
  begin
    sKeyVD5   := cdsVD52ConfigVD5.AsString;
    iKeyBaris := cdsVD52ConfigBARIS.AsInteger;

    sVD5        := cdsVD52ConfigVD5.AsString;
    iBaris      := cdsVD52ConfigBARIS.AsInteger;
    sKeterangan := cdsVD52ConfigKETERANGAN.AsString;

    if (cdsVD52ConfigEDITED.AsString = '0') or (cdsVD52ConfigEDITED.AsString = '') then
    begin
      MessageError('This data is not editable !');
      bEdited := False;
    end;
  end;

  if bEdited then
  begin
    try
      oForm := TfrmVD5ConfigEditor.Create(nil);
      TfrmVD5ConfigEditor(oForm).KeyVD5   := sKeyVD5;
      TfrmVD5ConfigEditor(oForm).KeyBaris := iKeyBaris;

      TfrmVD5ConfigEditor(oForm).VD5        := sVD5;
      TfrmVD5ConfigEditor(oForm).Baris      := iBaris;
      TfrmVD5ConfigEditor(oForm).Keterangan := sKeterangan;

      TfrmVD5ConfigEditor(oForm).VDState := dsEdit;

      if oForm.ShowModal = mrOk then
      begin
      end;
    finally
      oForm.Free;
    end;
  end;
end;

procedure TfrmVD5Configs.actOpenExecute(Sender: TObject);
var
  oForm: TfrmVD5ConfigEditor;
  bEdited: Boolean;
  sKeyVD5: string;
  iKeyBaris: Integer;
  sVD5, sKeterangan: string;
  iBaris: Integer;
begin
  if gvwMaster.Focused then
  begin
    sKeyVD5   := cdsVD51ConfigVD5.AsString;
    iKeyBaris := cdsVD51ConfigBARIS.AsInteger;

    sVD5        := cdsVD51ConfigVD5.AsString;
    iBaris      := cdsVD51ConfigBARIS.AsInteger;
    sKeterangan := cdsVD51ConfigKETERANGAN.AsString;
  end
  else
  begin
    sKeyVD5   := cdsVD52ConfigVD5.AsString;
    iKeyBaris := cdsVD52ConfigBARIS.AsInteger;

    sVD5        := cdsVD52ConfigVD5.AsString;
    iBaris      := cdsVD52ConfigBARIS.AsInteger;
    sKeterangan := cdsVD52ConfigKETERANGAN.AsString;
  end;

  try
    oForm := TfrmVD5ConfigEditor.Create(nil);
    TfrmVD5ConfigEditor(oForm).KeyVD5   := sKeyVD5;
    TfrmVD5ConfigEditor(oForm).KeyBaris := iKeyBaris;

    TfrmVD5ConfigEditor(oForm).VD5        := sVD5;
    TfrmVD5ConfigEditor(oForm).Baris      := iBaris;
    TfrmVD5ConfigEditor(oForm).Keterangan := sKeterangan;

    TfrmVD5ConfigEditor(oForm).VDState := dsBrowse;

    if oForm.ShowModal = mrOk then
    begin
    end;
  finally
    oForm.Free;
  end;

end;

procedure TfrmVD5Configs.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsVD51Config.Close;
  cdsVD51Config.Open;

  cdsVD52Config.Close;
  cdsVD52Config.Open;
end;

procedure TfrmVD5Configs.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmVD5ConfigEditor;
end;

procedure TfrmVD5Configs.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(2);
  if gvwMaster.Focused then
  begin
    KeyFields[0] := cdsVD51ConfigVD5;
    KeyFields[1] := cdsVD51ConfigBARIS;
  end
  else
  begin
    KeyFields[0] := cdsVD52ConfigVD5;
    KeyFields[1] := cdsVD51ConfigBARIS;
  end;
end;

procedure TfrmVD5Configs.FormShow(Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

end.
