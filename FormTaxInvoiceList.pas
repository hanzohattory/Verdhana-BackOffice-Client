unit FormTaxInvoiceList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, StrUtils, cxImageComboBox, cxSpinEdit,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, DateUtils, cxCheckBox;

type
  TfrmTaxInvoiceList = class(TfrmBrowseData)
    cdsTaxInvoiceList: TNClientDataset;
    cdsGetTaxNo: TNClientDataset;
    cdsGetTaxNoTAXNO: TIntegerField;
    cdsGetTaxNoSTART_TAXNO: TStringField;
    cdsGetTaxNoEND_TAXNO: TStringField;
    cdsGetTaxNoTOTAL_TAXNO: TIntegerField;
    cdsGetTaxNoUSED_TAXNO: TIntegerField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    actGenerateAllTaxInvoiceNo: TNAction;
    cdsGetTaxNoLAST_TAXNO: TStringField;
    cdsTaxInvoice: TNClientDataset;
    cbMonth: TcxImageComboBox;
    cmbMonth: TdxLayoutItem;
    cxYear: TcxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnView: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnImport: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsGetInvoiceList: TNClientDataset;
    cdsGetInvoiceListTAXTYPE: TStringField;
    cdsGetInvoiceListENTTID: TIntegerField;
    cdsGetInvoiceListENTTCODE: TStringField;
    cdsGetInvoiceListNAMA: TStringField;
    cdsGetInvoiceListNPWP: TStringField;
    cdsGetInvoiceListTRADE_AMT: TFloatField;
    cdsGetInvoiceListBROKERFEE: TFloatField;
    cdsGetInvoiceListVAT: TFloatField;
    cdsGetInvoiceListVATPCT: TFloatField;
    cdsGetInvoiceListCCYCODE: TStringField;
    cdsTaxInvoiceTAXID: TLargeintField;
    cdsTaxInvoicePERIOD_YEAR: TIntegerField;
    cdsTaxInvoicePERIOD_MONTH: TIntegerField;
    cdsTaxInvoiceTAXNO: TStringField;
    cdsTaxInvoiceTAXTYPE: TStringField;
    cdsTaxInvoiceREFNO: TStringField;
    cdsTaxInvoiceENTTID: TIntegerField;
    cdsTaxInvoiceENTTCODE: TStringField;
    cdsTaxInvoiceENTNAME: TStringField;
    cdsTaxInvoiceNPWP: TStringField;
    cdsTaxInvoiceCCYCODE: TStringField;
    cdsTaxInvoiceTAXPERCENT: TFloatField;
    cdsTaxInvoiceBROKERFEE: TFloatField;
    cdsTaxInvoiceTAXAMT: TFloatField;
    cdsTaxInvoiceAMOUNT: TFloatField;
    cdsTaxInvoiceMODDA: TDateTimeField;
    cdsTaxInvoiceMODUI: TStringField;
    cdsTaxInvoiceAPPDA: TDateTimeField;
    cdsTaxInvoiceAPPUI: TStringField;
    cdsTaxInvoiceUNDER4Y: TIntegerField;
    cdsTaxInvoiceUNDER4YDA: TDateTimeField;
    cdsTaxInvoiceNOTES4Y: TStringField;
    cdsTaxInvoiceISDEL: TIntegerField;
    cdsTaxInvoiceID: TLargeintField;
    cdsTaxInvoiceListTAXID: TLargeintField;
    cdsTaxInvoiceListPERIOD_YEAR: TIntegerField;
    cdsTaxInvoiceListPERIOD_MONTH: TIntegerField;
    cdsTaxInvoiceListTAXNO: TStringField;
    cdsTaxInvoiceListTAXTYPE: TStringField;
    cdsTaxInvoiceListREFNO: TStringField;
    cdsTaxInvoiceListENTTID: TIntegerField;
    cdsTaxInvoiceListENTTCODE: TStringField;
    cdsTaxInvoiceListENTNAME: TStringField;
    cdsTaxInvoiceListNPWP: TStringField;
    cdsTaxInvoiceListCCYCODE: TStringField;
    cdsTaxInvoiceListTAXPERCENT: TFloatField;
    cdsTaxInvoiceListBROKERFEE: TFloatField;
    cdsTaxInvoiceListTAXAMT: TFloatField;
    cdsTaxInvoiceListAMOUNT: TFloatField;
    cdsTaxInvoiceListMODDA: TDateTimeField;
    cdsTaxInvoiceListMODUI: TStringField;
    cdsTaxInvoiceListAPPDA: TDateTimeField;
    cdsTaxInvoiceListAPPUI: TStringField;
    cdsTaxInvoiceListUNDER4Y: TIntegerField;
    cdsTaxInvoiceListUNDER4YDA: TDateTimeField;
    cdsTaxInvoiceListNOTES4Y: TStringField;
    cdsTaxInvoiceListISDEL: TIntegerField;
    cdsTaxInvoiceListID: TLargeintField;
    gvwMasterTAXID: TcxGridDBBandedColumn;
    gvwMasterPERIOD_YEAR: TcxGridDBBandedColumn;
    gvwMasterPERIOD_MONTH: TcxGridDBBandedColumn;
    gvwMasterTAXNO: TcxGridDBBandedColumn;
    gvwMasterTAXTYPE: TcxGridDBBandedColumn;
    gvwMasterREFNO: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterNPWP: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterTAXPERCENT: TcxGridDBBandedColumn;
    gvwMasterBROKERFEE: TcxGridDBBandedColumn;
    gvwMasterTAXAMT: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsTaxInvoiceWAPU: TFloatField;
    gvwMasterWAPU: TcxGridDBBandedColumn;
    cdsTaxInvoiceListWAPU: TFloatField;
    cdsGetInvoiceListWAPU: TIntegerField;
    cdsHolidayByDate: TNClientDataset;
    cdsTaxInvoiceTAX_FAKTUR: TDateField;
    cdsTaxInvoiceTAXDATE: TDateField;
    cdsTaxInvoiceListTAX_FAKTUR: TDateField;
    cdsTaxInvoiceListTAXDATE: TDateField;
    cdsTaxInvoice_FK: TNClientDataset;
    cdsTaxInvoice_OF: TNClientDataset;
    actImportDataFromContract: TNAction;
    actSaveToCSVFile: TNAction;
    SaveDialog: TSaveDialog;
    actSaveSelectedToCSVFile: TNAction;
    N5: TMenuItem;
    SaveAllToCSVFile1: TMenuItem;
    SaveSelectedToCSVFile1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mnuRefreshClick(Sender: TObject);
    procedure dtStartDatePropertiesCloseUp(Sender: TObject);
    procedure dtEndDatePropertiesCloseUp(Sender: TObject);
    procedure actGenerateAllTaxInvoiceNoExecute(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure actGenerateAllTaxInvoiceNoUpdate(Sender: TObject);
    procedure actImportDataFromContractExecute(Sender: TObject);
    procedure actImportDataFromContractUpdate(Sender: TObject);
    procedure actSaveToCSVFileExecute(Sender: TObject);
    procedure actSaveSelectedToCSVFileExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure RefreshData;
    procedure SaveToFile(AAllData: integer; ATaxID: string);

    function GetLastDate(AYear, AMonth: Word): TDate;
  public
    { Public declarations }
  end;

var
  frmTaxInvoiceList: TfrmTaxInvoiceList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTaxInvoiceList.actGenerateAllTaxInvoiceNoExecute(
  Sender: TObject);
var
  sLastInvoiceNo, sN0, sN1, sN2, sN3,
  sCurrInvoiceNo: string;
  iLastInvoiceNo: Double;
  iUsed: Integer;
  sLastNo, sWAPU, sNonWAPU: string;
begin
  inherited;
  cdsTaxInvoiceList.DisableControls;
  sWAPU    := dmGlobal.RemoteServer.GetGlobalParamString('216');
  sNonWAPU := dmGlobal.RemoteServer.GetGlobalParamString('217');

  cdsGetTaxNo.Close;
  cdsGetTaxNo.Params[0].AsInteger := cxYear.EditValue;
  cdsGetTaxNo.Params[1].AsInteger := cbMonth.EditValue;
  cdsGetTaxNo.Open;
  cdsGetTaxNo.First;

  if cdsGetTaxNoUSED_TAXNO.AsInteger = 0 then
    sLastInvoiceNo := cdsGetTaxNoSTART_TAXNO.AsString
  else
    sLastInvoiceNo := cdsGetTaxNoLAST_TAXNO.AsString;

  sLastNo := InputBox('Last Tax Invoice No', 'Last Invoice No ', sLastInvoiceNo);

//  sN0 := Copy(sLastNo, 0, 3);
  sN1 := Copy(sLastNo, 0, 3);
  sN2 := Copy(sLastNo, 5, 2);
  sN3 := Copy(sLastNo, 8, 8);

  iUsed          := cdsGetTaxNoUSED_TAXNO.AsInteger;
  iLastInvoiceNo := StrToFloat(sN3);

  if cdsGetTaxNoUSED_TAXNO.AsInteger > 0 then
  begin
    iLastInvoiceNo := iLastInvoiceNo + 1;
    inc(iUsed);
  end;

  cdsTaxInvoiceList.First;
  while not cdsTaxInvoiceList.Eof do
  begin
    if cdsTaxInvoiceListWAPU.AsFloat = 0 then sN0 := sNonWAPU else sN0 := sWAPU;
    
    sCurrInvoiceNo := sN1+'.'+sN2+'.'+FormatFloat('00000000', iLastInvoiceNo);
    if cdsTaxInvoiceListTAXNO.AsString = '' then
    begin
      cdsTaxInvoiceList.Edit;
      cdsTaxInvoiceListTAXNO.AsString := sN0+'.'+sCurrInvoiceNo;
      cdsTaxInvoiceList.Post;
    end;

    if iUsed >= cdsGetTaxNoTOTAL_TAXNO.AsInteger then
    begin
//      MessageDlg('Last Tax Invoice No can not bigger than End Tax Invoice No', mtError, [mbOK], 0);
      cdsGetTaxNo.Edit;
      cdsGetTaxNoLAST_TAXNO.AsString  := sCurrInvoiceNo;
      cdsGetTaxNoUSED_TAXNO.AsInteger := iUsed;
      cdsGetTaxNo.Post;

      if cdsGetTaxNo.RecordCount > 1 then
      begin
        cdsGetTaxNo.Next;

        if sCurrInvoiceNo = cdsGetTaxNoLAST_TAXNO.AsString then
        begin
          cdsGetTaxNo.ApplyUpdates(-1);
          cdsTaxInvoiceList.ApplyUpdates(-1);
          cdsTaxInvoiceList.EnableControls;

          Exit;
        end
        else
        begin
          sLastInvoiceNo := cdsGetTaxNoSTART_TAXNO.AsString;
//          sN0 := Copy(sLastInvoiceNo, 0, 3);
          sN1 := Copy(sLastInvoiceNo, 0, 3);
          sN2 := Copy(sLastInvoiceNo, 5, 2);
          sN3 := Copy(sLastInvoiceNo, 8, 8);

          iUsed          := StrToIntDef(cdsGetTaxNoUSED_TAXNO.AsString, 0);
          iLastInvoiceNo := StrToFloat(sN3);
          sCurrInvoiceNo := sN1+'.'+sN2+'.'+FormatFloat('00000000', iLastInvoiceNo);
        end;
      end
      else
      begin
        cdsGetTaxNo.ApplyUpdates(-1);
        cdsTaxInvoiceList.ApplyUpdates(-1);
        cdsTaxInvoiceList.EnableControls;

        Exit;
      end;
    end;

    iLastInvoiceNo := iLastInvoiceNo + 1;
    inc(iUsed);
    cdsTaxInvoiceList.Next;
  end;

  cdsGetTaxNo.Edit;
  cdsGetTaxNoLAST_TAXNO.AsString  := sCurrInvoiceNo;
  cdsGetTaxNoUSED_TAXNO.AsInteger := iUsed -1;
  cdsGetTaxNo.Post;

  cdsGetTaxNo.ApplyUpdates(-1);
  cdsTaxInvoiceList.ApplyUpdates(-1);
  cdsTaxInvoiceList.EnableControls;
end;

procedure TfrmTaxInvoiceList.btnViewClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmTaxInvoiceList.actGenerateAllTaxInvoiceNoUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateAllTaxInvoiceNo.Enabled := not cdsTaxInvoiceList.IsEmpty;
end;

procedure TfrmTaxInvoiceList.actImportDataFromContractExecute(
  Sender: TObject);
var
  dStartDate, dEndDate: TDateTime;
  wYear, wMonth: Word;
begin
  inherited;
  try
    cdsTaxInvoiceList.DisableControls;

    wYear  := cxYear.EditValue;
    wMonth := cbMonth.EditValue;

    dStartDate := StartOfAMonth(wYear, wMonth);
    dEndDate   := EndOfAMonth(wYear, wMonth);

    cdsGetInvoiceList.Close;
    cdsGetInvoiceList.Params[0].AsDate := dStartDate;
    cdsGetInvoiceList.Params[1].AsDate := dEndDate;
    cdsGetInvoiceList.Open;

    if cdsGetInvoiceList.IsEmpty then
    begin
      MessageDlg('The is no Invoice can be imported', mtError, [mbOK], 0);
      Exit;
    end;

    cdsGetInvoiceList.First;
    while not cdsGetInvoiceList.Eof do
    begin
      cdsTaxInvoiceList.Append;
      cdsTaxInvoiceListTAXID.AsInteger    := dmGlobal.RemoteServer.GetSeq('TBL_B_TAX_INVOICE');
      cdsTaxInvoiceListTAXTYPE.AsString   := cdsGetInvoiceListTAXTYPE.AsString;
      cdsTaxInvoiceListENTTID.AsInteger   := cdsGetInvoiceListENTTID.AsInteger;
      cdsTaxInvoiceListENTTCODE.AsString  := cdsGetInvoiceListENTTCODE.AsString;
      cdsTaxInvoiceListENTNAME.AsString   := cdsGetInvoiceListNAMA.AsString;
      cdsTaxInvoiceListNPWP.AsString      := cdsGetInvoiceListNPWP.AsString;
      cdsTaxInvoiceListCCYCODE.AsString   := cdsGetInvoiceListCCYCODE.AsString;
      cdsTaxInvoiceListTAXPERCENT.AsFloat := cdsGetInvoiceListVATPCT.AsFloat;
      cdsTaxInvoiceListBROKERFEE.AsFloat  := cdsGetInvoiceListBROKERFEE.AsFloat;
      cdsTaxInvoiceListTAXAMT.AsFloat     := cdsGetInvoiceListVAT.AsFloat;
      cdsTaxInvoiceListWAPU.AsFloat       := cdsGetInvoiceListWAPU.AsInteger;

      cdsTaxInvoiceListPERIOD_MONTH.AsInteger := wMonth;
      cdsTaxInvoiceListPERIOD_YEAR.AsInteger  := wYear;
      cdsTaxInvoiceListTAXDATE.AsDateTime     := GetLastDate(wYear, wMonth);
      cdsTaxInvoiceList.Post;

      cdsGetInvoiceList.Next;
    end;
    cdsTaxInvoiceList.ApplyUpdates(-1);

    RefreshData;
    cdsTaxInvoiceList.EnableControls;
  except

  end;
end;

procedure TfrmTaxInvoiceList.actImportDataFromContractUpdate(
  Sender: TObject);
begin
  inherited;
  actImportDataFromContract.Enabled := cdsTaxInvoiceList.IsEmpty;
end;

procedure TfrmTaxInvoiceList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsInteger := cbMonth.EditValue;
  ReportContainer.Params[1].AsInteger := cxYear.EditValue;

  inherited;

end;

procedure TfrmTaxInvoiceList.actSaveSelectedToCSVFileExecute(
  Sender: TObject);
var
  sTaxID: string;
  i: Integer;
begin
  inherited;
  sTaxID := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -2 do
    sTaxID := sTaxID + IntToStr(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterTAXID.Index]) + ',';
  sTaxID := sTaxID + IntToStr(gvwMaster.Controller.SelectedRows[gvwMaster.Controller.SelectedRecordCount -1].Values[gvwMasterTAXID.Index]);
  SaveToFile(0, sTaxID);
end;

procedure TfrmTaxInvoiceList.actSaveToCSVFileExecute(Sender: TObject);
begin
  SaveToFile(1, '');
end;

procedure TfrmTaxInvoiceList.dtEndDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmTaxInvoiceList.dtStartDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmTaxInvoiceList.FormShow(Sender: TObject);
var
  dtTransDate: TDateTime;
  wYear, wMonth: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  wYear       := StrToInt(FormatDateTime('yyyy', dtTransDate));
  wMonth      := StrToInt(FormatDateTime('mm', dtTransDate));

  cbMonth.EditValue := wMonth;
  cxYear.EditValue  := wYear;

  cdsTaxInvoice.Close;
  cdsTaxInvoice.Params[0].AsInteger := 0;
  cdsTaxInvoice.Open;

  cdsTaxInvoiceList.Close;
  cdsTaxInvoiceList.Params[0].AsInteger := cbMonth.EditValue;
  cdsTaxInvoiceList.Params[1].AsInteger := cxYear.EditValue;
  cdsTaxInvoiceList.Open;
end;

function TfrmTaxInvoiceList.GetLastDate(AYear, AMonth: Word): TDate;
var
  dDate: TDate;
  bResult: Boolean;
  i: Integer;
begin
  inherited;
  bResult := False;
  dDate   := EndOfAMonth(2016, 1);

  repeat
    if (DayOfTheWeek(dDate) = 7) or (DayOfTheWeek(dDate) = 6) then
      dDate := dDate - 1
    else
    begin
      cdsHolidayByDate.Close;
      cdsHolidayByDate.Params[0].AsDate := 0;
      cdsHolidayByDate.Open;

      cdsHolidayByDate.Close;
      cdsHolidayByDate.Params[0].AsDate := dDate;
      cdsHolidayByDate.Open;

      if cdsHolidayByDate.IsEmpty then
        bResult := True
      else
        dDate := dDate - 1;
    end;
  until bResult;

  Result := dDate;
end;

procedure TfrmTaxInvoiceList.mnuRefreshClick(Sender: TObject);
begin
  RefreshData;

  inherited;
end;

procedure TfrmTaxInvoiceList.RefreshData;
begin
  if not cdsGetTaxNo.Active then
    cdsGetTaxNo.Open;

  cdsTaxInvoiceList.Close;
  cdsTaxInvoiceList.Params[0].AsInteger := cbMonth.EditValue;
  cdsTaxInvoiceList.Params[1].AsInteger := cxYear.EditValue;
  cdsTaxInvoiceList.Open;
end;

procedure TfrmTaxInvoiceList.SaveToFile(AAllData: integer; ATaxID: string);
var
  oTaxInvoiceCSV: TStringList;
  sTaxInvoice, sFileName: string;
  i: Integer;
begin
  inherited;
  SaveDialog.Execute(Handle);
  sFileName := SaveDialog.FileName;

  if sFileName <> '' then
  begin
    oTaxInvoiceCSV := TStringList.Create;

    cdsTaxInvoice_FK.Close;
    cdsTaxInvoice_FK.Params[0].AsInteger := AAllData;
    cdsTaxInvoice_FK.Params[1].AsString  := ATaxID;
    cdsTaxInvoice_FK.Params[2].AsInteger := cbMonth.EditValue;
    cdsTaxInvoice_FK.Params[3].AsInteger := cxYear.EditValue;
    cdsTaxInvoice_FK.Open;

    cdsTaxInvoice_OF.Close;
    cdsTaxInvoice_OF.Params[0].AsInteger := AAllData;
    cdsTaxInvoice_OF.Params[1].AsString  := ATaxID;
    cdsTaxInvoice_OF.Params[2].AsInteger := cbMonth.EditValue;
    cdsTaxInvoice_OF.Params[3].AsInteger := cxYear.EditValue;
    cdsTaxInvoice_OF.Open;

    cdsTaxInvoice_FK.First;
    cdsTaxInvoice_OF.First;

    oTaxInvoiceCSV.Add('FK,KD_JENIS_TRANSAKSI,FG_PENGGANTI,NOMOR_FAKTUR,MASA_PAJAK,TAHUN_PAJAK,TANGGAL_FAKTUR,NPWP,NAMA,ALAMAT_LENGKAP,JUMLAH_DPP, '+
      'JUMLAH_PPN,JUMLAH_PPNBM,ID_KETERANGAN_TAMBAHAN,FG_UANG_MUKA,UANG_MUKA_DPP,UANG_MUKA_PPN,UANG_MUKA_PPNBM,REFERENSI,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
    oTaxInvoiceCSV.Add('LT,NPWP,NAMA,JALAN,BLOK,NOMOR,RT,RW,KECAMATAN,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
    oTaxInvoiceCSV.Add('OF,KODE_OBJEK,NAMA,HARGA_SATUAN,JUMLAH_BARANG,HARGA_TOTAL,DISKON,DPP,PPN,TARIF_PPNBM,PPNBM,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
    while not cdsTaxInvoice_FK.Eof do
    begin
      sTaxInvoice := '';
      for i := 0 to cdsTaxInvoice_FK.FieldCount -1 do
        sTaxInvoice := sTaxInvoice + cdsTaxInvoice_FK.Fields[i].AsString + ',';
      sTaxInvoice   := sTaxInvoice + ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
      oTaxInvoiceCSV.Add(sTaxInvoice);

      if not cdsTaxInvoice_OF.Eof then
      begin
        sTaxInvoice := '';
        for i := 0 to cdsTaxInvoice_OF.FieldCount -1 do
          sTaxInvoice := sTaxInvoice + cdsTaxInvoice_OF.Fields[i].AsString + ',';
        sTaxInvoice   := sTaxInvoice + ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
        oTaxInvoiceCSV.Add(sTaxInvoice);

        cdsTaxInvoice_OF.Next;
      end;

      cdsTaxInvoice_FK.Next;
    end;

    oTaxInvoiceCSV.SaveToFile(sFileName);
    FreeAndNil(oTaxInvoiceCSV);

    MessageDlg('Data has been saved as csv file', mtInformation, [mbOk], 0);
  end;
end;

initialization
  RegisterClass(TfrmTaxInvoiceList);

end.
