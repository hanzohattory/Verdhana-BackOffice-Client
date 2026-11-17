unit FormMonthlyLTAB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, System.Actions, Data.DB,
  Datasnap.DBClient, NClientDataset, ComObj;

type
  TfrmMonthlyLTAB = class(TfrmReport)
    cbMonth: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    edYear: TcxSpinEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cbStockFrom: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    cbStockTo: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    ckSelectAll: TcxCheckBox;
    lcParameterItem5: TdxLayoutItem;
    dxBarButton1: TdxBarButton;
    cdsBuktiPotongPajak: TNClientDataset;
    cdsBuktiPotongPajakNPWPPemotong: TStringField;
    cdsBuktiPotongPajakMasaPajak: TIntegerField;
    cdsBuktiPotongPajakTahunPajak: TIntegerField;
    cdsBuktiPotongPajakNPWP: TStringField;
    cdsBuktiPotongPajakIDTKUPenerimaPenghasilan: TStringField;
    cdsBuktiPotongPajakFasilitas: TStringField;
    cdsBuktiPotongPajakKodeObjekPajak: TStringField;
    cdsBuktiPotongPajakDPP: TFloatField;
    cdsBuktiPotongPajakTarif: TFloatField;
    cdsBuktiPotongPajakJenisDokReferensi: TStringField;
    cdsBuktiPotongPajakNomorDokReferensi: TStringField;
    cdsBuktiPotongPajakTanggalDokReferensi: TWideStringField;
    cdsBuktiPotongPajakIDTKUPemotong: TStringField;
    cdsBuktiPotongPajakOpsiPembayaranIP: TStringField;
    cdsBuktiPotongPajakNomorSP2DIP: TStringField;
    cdsBuktiPotongPajakTanggalPemotongan: TWideStringField;
    SaveDialog: TSaveDialog;
    procedure ckSelectAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportIntoXML(AFileName: string);
    procedure ExportIntoXLS(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmMonthlyLTAB: TfrmMonthlyLTAB;

implementation

{$R *.dfm}

uses DataGlobal, FormPleaseWait;

procedure TfrmMonthlyLTAB.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].asInteger := cbMonth.EditValue;
  Report.Params[1].asInteger := edYear.EditValue;
  if ckSelectAll.checked then
  begin
    Report.Params[2].asInteger := 0;
    Report.Params[3].asInteger := 0;
  end
  else
  begin
    Report.Params[2].asInteger := cbStockFrom.EditValue;
    Report.Params[3].asInteger := cbStockTo.EditValue;
  end;
  Report.Params[4].asInteger := ckSelectAll.EditValue;
  inherited;
end;

procedure TfrmMonthlyLTAB.ckSelectAllClick(Sender: TObject);
begin
  inherited;
  if ckSelectAll.checked then
  begin
    cbStockFrom.Enabled := False;
    cbStockTo.Enabled := False;
  end
  else
  begin
    cbStockFrom.Enabled := True;
    cbStockTo.Enabled := True;
  end;

end;

procedure TfrmMonthlyLTAB.dxBarButton1Click(Sender: TObject);
var
  oProcess: TfrmPlaseWait;
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iLastRow: integer;
  oDataTaxList: TStringList;
  iDate_1, iMonth_1, iYear_1: Word;
  iDate_2, iMonth_2, iYear_2: Word;
begin
  inherited;
  cdsBuktiPotongPajak.Close;
  cdsBuktiPotongPajak.Params[0].AsInteger := cbMonth.EditValue;
  cdsBuktiPotongPajak.Params[1].AsInteger := edYear.EditValue;
  cdsBuktiPotongPajak.Open;

  if cdsBuktiPotongPajak.IsEmpty then
    MessageDlg('There is no data can be exported !', TMsgDlgType.mtInformation, [mbOk], 0)
  else
  begin
    SaveDialog.FileName := 'Tax-'+ cdsBuktiPotongPajakTahunPajak.AsString + cdsBuktiPotongPajakMasaPajak.AsString;
    if SaveDialog.Execute then
      sFileName := SaveDialog.FileName;

    if sFileName = '' then
      MessageDlg('File name can not be empty !', TMsgDlgType.mtInformation, [mbOk], 0)
    else
    begin
      try
        cdsBuktiPotongPajak.First;

        oProcess := TfrmPlaseWait.Create(nil);
        oProcess.Show;

//      ======== Start Create Function Excel Generator =========
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := False;
        oExcel.Workbooks.Add;

        oSheet := oExcel.Workbooks[1].WorkSheets[1];
        oSheet.cells[1, 1]  := 'NPWP Pemotong : '+ cdsBuktiPotongPajakNPWPPemotong.AsString;
        oSheet.cells[3, 2]  := 'Masa Pajak';
        oSheet.cells[3, 3]  := 'Tahun Pajak';
        oSheet.cells[3, 4]  := 'NPWP';
        oSheet.cells[3, 5]  := 'ID TKU Penerima Penghasilan';
        oSheet.cells[3, 6]  := 'Fasilitas';
        oSheet.cells[3, 7]  := 'Kode Objek Pajak';
        oSheet.cells[3, 8]  := 'DPP';
        oSheet.cells[3, 9]  := 'Tarif';
        oSheet.cells[3, 10] := 'Jenis Dok. Referensi';
        oSheet.cells[3, 11] := 'Nomor Dok. Referensi';
        oSheet.cells[3, 12] := 'Tanggal Dok. Referensi';
        oSheet.cells[3, 13] := 'ID TKU Pemotong';
        oSheet.cells[3, 14] := 'Opsi Pembayaran (IP)';
        oSheet.cells[3, 15] := 'Nomor SP2D (IP)';
        oSheet.cells[3, 16] := 'Tanggal Pemotongan';

        iLastRow := 3;
//      ======== End Create Function Excel Generator =========

//      ======== Start Create Function XML Generator =========
        oDataTaxList := TStringList.Create;
        oDataTaxList.Add('<BpuBulk xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">');
        oDataTaxList.Add('  <TIN>'+ cdsBuktiPotongPajakNPWPPemotong.AsString +'</TIN>');
        oDataTaxList.Add('  <ListOfBou>');
//      ======== End Create Function XML Generator =========

        while not cdsBuktiPotongPajak.Eof do
        begin
//      ======== Start prepare data into excel =========
          Inc(iLastRow);

          iDate_1  := StrToInt(Copy(cdsBuktiPotongPajakTanggalDokReferensi.AsString, 1, 2));
          iMonth_1 := StrToInt(Copy(cdsBuktiPotongPajakTanggalDokReferensi.AsString, 4, 2));
          iYear_1  := StrToInt(Copy(cdsBuktiPotongPajakTanggalDokReferensi.AsString, 7, 4));

          iDate_2  := StrToInt(Copy(cdsBuktiPotongPajakTanggalPemotongan.AsString, 1, 2));
          iMonth_2 := StrToInt(Copy(cdsBuktiPotongPajakTanggalPemotongan.AsString, 4, 2));
          iYear_2  := StrToInt(Copy(cdsBuktiPotongPajakTanggalPemotongan.AsString, 7, 4));

          oSheet.cells[iLastRow, 2]  := cdsBuktiPotongPajakMasaPajak.AsString;
          oSheet.cells[iLastRow, 3]  := cdsBuktiPotongPajakTahunPajak.AsString;
          oSheet.cells[iLastRow, 4]  := cdsBuktiPotongPajakNPWP.AsString;
          oSheet.cells[iLastRow, 5]  := cdsBuktiPotongPajakIDTKUPenerimaPenghasilan.AsString;
          oSheet.cells[iLastRow, 6]  := cdsBuktiPotongPajakFasilitas.AsString;
          oSheet.cells[iLastRow, 7]  := cdsBuktiPotongPajakKodeObjekPajak.AsString;
          oSheet.cells[iLastRow, 8]  := cdsBuktiPotongPajakDPP.AsString;
          oSheet.cells[iLastRow, 9]  := cdsBuktiPotongPajakTarif.AsString;
          oSheet.cells[iLastRow, 10] := cdsBuktiPotongPajakJenisDokReferensi.AsString;
          oSheet.cells[iLastRow, 11] := cdsBuktiPotongPajakNomorDokReferensi.AsString;
          oSheet.cells[iLastRow, 12] := EncodeDate(iYear_1, iMonth_1, iDate_1);
          oSheet.cells[iLastRow, 13] := cdsBuktiPotongPajakIDTKUPemotong.AsString;
          oSheet.cells[iLastRow, 14] := cdsBuktiPotongPajakOpsiPembayaranIP.AsString;
          oSheet.cells[iLastRow, 15] := cdsBuktiPotongPajakNomorSP2DIP.AsString;
          oSheet.cells[iLastRow, 16] := EncodeDate(iYear_2, iMonth_2, iDate_2);;
//      ======== End prepare data into excel =========

//      ======== Start prepare data into XML =========
          oDataTaxList.Add('  <Bpu>');
          oDataTaxList.Add('    <TaxPeriodMonth>'+cdsBuktiPotongPajakMasaPajak.AsString+'</TaxPeriodMonth>');
          oDataTaxList.Add('    <TaxPeriodYear>'+cdsBuktiPotongPajakTahunPajak.AsString+'</TaxPeriodYear>');
          oDataTaxList.Add('    <CounterpartTin>'+cdsBuktiPotongPajakNPWP.AsString+'</CounterpartTin>');
          oDataTaxList.Add('    <IDPlaceOfBusinessActivityOfIncomeRecipient>'+cdsBuktiPotongPajakIDTKUPenerimaPenghasilan.AsString+'</IDPlaceOfBusinessActivityOfIncomeRecipient>');
          oDataTaxList.Add('    <TaxCertificate>'+cdsBuktiPotongPajakFasilitas.AsString+'</TaxCertificate>');
          oDataTaxList.Add('    <TaxObjectCode>'+cdsBuktiPotongPajakKodeObjekPajak.AsString+'</TaxObjectCode>');
          oDataTaxList.Add('    <TaxBase>'+cdsBuktiPotongPajakNomorDokReferensi.AsString+'</TaxBase>');
          oDataTaxList.Add('    <Rate>'+cdsBuktiPotongPajakTarif.AsString+'</Rate>');
          oDataTaxList.Add('    <Document>'+cdsBuktiPotongPajakJenisDokReferensi.AsString+'</Document>');
          oDataTaxList.Add('    <DocumentNumber>'+cdsBuktiPotongPajakNomorDokReferensi.AsString+'</DocumentNumber>');
          oDataTaxList.Add('    <DocumentDate>'+IntToStr(iYear_1)+'-'+IntToStr(iMonth_1)+'-'+IntToStr(iDate_1)+'</DocumentDate>');
          oDataTaxList.Add('    <IDPlaceOfBusinessActivity>'+cdsBuktiPotongPajakIDTKUPemotong.AsString+'</IDPlaceOfBusinessActivity>');
          oDataTaxList.Add('    <GovTreasurerOpt>'+cdsBuktiPotongPajakOpsiPembayaranIP.AsString+'</GovTreasurerOpt>');
          oDataTaxList.Add('    <SP2DNumber xsi:nil="true"/>');
          oDataTaxList.Add('    <WithholdingDate>'+IntToStr(iYear_2)+'-'+IntToStr(iMonth_2)+'-'+IntToStr(iDate_2)+'</WithholdingDate>');
          oDataTaxList.Add('  </Bpu>');
//      ======== End prepare data into XML =========

          cdsBuktiPotongPajak.Next;
        end;
      finally
 //      ======== Start Create Function Excel Generator =========
        sFileName := ChangeFileExt(sFileName, '.xlsx');
        if FileExists(sFileName) then
          DeleteFile(sFileName);
        oExcel.Workbooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;
 //      ======== End Create Function Excel Generator =========

//      ======== Start Create Function XML Generator =========
        oDataTaxList.Add('  </ListOfBou>');
        oDataTaxList.Add('</BpuBulk>');

        sFileName := ChangeFileExt(sFileName, '.xml');
        oDataTaxList.SaveToFile(sFileName);
//      ======== End Create Function XML Generator =========

        FreeAndNil(oProcess);
        MessageDlg('Data has been exported !', TMsgDlgType.mtInformation, [mbOk], 0)
      end;
    end;
  end;
end;

procedure TfrmMonthlyLTAB.ExportIntoXLS(AFileName: string);
begin

end;

procedure TfrmMonthlyLTAB.ExportIntoXML(AFileName: string);
begin

end;

procedure TfrmMonthlyLTAB.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;
  end;
end;

end.
