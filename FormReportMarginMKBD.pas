unit FormReportMarginMKBD;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,XLSSheetData5, XLSReadWriteII5, Winapi.ShellAPI,
  System.Actions, System.ImageList;

type
  TfrmReportMarginMKBD = class(TfrmBrowseData)
    grdMasterLevel2: TcxGridLevel;
    grdMasterLevel3: TcxGridLevel;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView4: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView2: TcxGridDBBandedTableView;
    dsFormulir2: TDataSource;
    dsFormulir3: TDataSource;
    cdsFormulir1: TNClientDataset;
    cdsFormulir2: TNClientDataset;
    cdsFormulir3: TNClientDataset;
    cdsFormulir1STOCKCODE: TStringField;
    cdsFormulir1TBIAYA: TFloatField;
    cdsFormulir1NUMACC: TIntegerField;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterTBIAYA: TcxGridDBBandedColumn;
    gvwMasterNUMACC: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1COLLATERAL: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1PERCENTAGE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1NUMACC: TcxGridDBBandedColumn;
    actGenerateFile: TNAction;
    GenerateFile1: TMenuItem;
    SaveFile: TSaveDialog;
    cdsFormulir2STOCKCODE: TStringField;
    cdsFormulir2COLLATERAL: TFloatField;
    cdsFormulir2NUMACC: TIntegerField;
    cdsFormulir2PERCENTAGE: TFloatField;
    actGenerateXLS: TNAction;
    cdsFormulir2jeniscoll: TStringField;
    grdMasterLevel4: TcxGridLevel;
    grdMasterDBBandedTableView5: TcxGridDBBandedTableView;
    grdMasterLevel5: TcxGridLevel;
    cdsSupportFormulir1: TNClientDataset;
    cdsSupportFormulir2: TNClientDataset;
    dsSupportFormulir1: TDataSource;
    dsSupportFormulir2: TDataSource;
    cdsSupportFormulir1STOCKCODE: TStringField;
    cdsSupportFormulir1ACCNO: TStringField;
    cdsSupportFormulir1ACCNAME: TStringField;
    cdsSupportFormulir1QTY_BAL: TFloatField;
    cdsSupportFormulir1LASTCLSPRICE: TFloatField;
    cdsSupportFormulir1MKTVALUE: TFloatField;
    cdsSupportFormulir1COLLATERAL: TFloatField;
    cdsSupportFormulir1TOTALPEMBIAYAAN: TFloatField;
    cdsSupportFormulir2COLTYPE: TStringField;
    cdsSupportFormulir2STOCKCODE: TStringField;
    cdsSupportFormulir2ACCNO: TStringField;
    cdsSupportFormulir2ACCNAME: TStringField;
    cdsSupportFormulir2COLLATERAL: TFloatField;
    grdMasterDBBandedTableView1jeniscoll: TcxGridDBBandedColumn;
    cdsFormulir3ACCNO: TStringField;
    cdsFormulir3ACCNAME: TStringField;
    cdsFormulir3COLLATERAL: TFloatField;
    cdsFormulir3totalexposure: TFloatField;
    cdsFormulir3ratarata: TFloatField;
    cdsFormulir3RATIO: TFloatField;
    cdsFormulir3exp1bulan: TIntegerField;
    cdsFormulir3exp3bulan: TIntegerField;
    cdsFormulir3exp6bulan: TIntegerField;
    cdsFormulir3ratio1bulan: TIntegerField;
    cdsFormulir3ratio3bulan: TIntegerField;
    cdsFormulir3ratio6bulan: TIntegerField;
    grdMasterDBBandedTableView2ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2COLLATERAL: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2totalexposure: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ratarata: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2RATIO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2exp1bulan: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2exp3bulan: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2exp6bulan: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ratio1bulan: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ratio3bulan: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2ratio6bulan: TcxGridDBBandedColumn;
    grdMasterLevel6: TcxGridLevel;
    grdMasterDBBandedTableView3: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView4STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4QTY_BAL: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4LASTCLSPRICE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4MKTVALUE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4COLLATERAL: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView4TOTALPEMBIAYAAN: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5COLTYPE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5STOCKCODE: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5ACCNO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5ACCNAME: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView5COLLATERAL: TcxGridDBBandedColumn;
    XLS: TXLSReadWriteII5;
    GenerateFileXLS1: TMenuItem;
    actGenerateSupportXLS: TNAction;
    GenerateFileSupportXLS1: TMenuItem;
    procedure actGenerateFileExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateXLSExecute(Sender: TObject);
    procedure actGenerateSupportXLSExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FBrokerCode: string;
    FBrokerName: string;
  public
    { Public declarations }
  end;

var
  frmReportMarginMKBD: TfrmReportMarginMKBD;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginMKBD.actGenerateFileExecute(Sender: TObject);
var
  sList : string;
  oMarginMKBDList : TStringList;
  iSeq: Integer;
  sTransferType: string;
  s1, s2, s3, s4, s5, s6, s7,
  s8, s9, s10, s11, s12, s13,
  s14, s15, s16 : string;
  sFileName, sFolderName: string;
  sSumcol,sSumpercent : double;
  sSumAcc : integer;
begin
  inherited;
  try
    oMarginMKBDList  := TStringList.Create;
    sFileName := '';
    sSumCol := 0;
    sSumpercent := 0;
    sSumAcc := 0;

    cdsFormulir1.DisableControls;
    cdsFormulir2.DisableControls;
    cdsFormulir3.DisableControls;
    //Formulir III-I.1
    oMarginMKBDList.Add('LAPORAN MARJIN');
    oMarginMKBDList.Add('NAMA AB|'+FBrokerName+'|');
    oMarginMKBDList.Add('KODE AB|'+FBrokerCode+'|');
    oMarginMKBDList.Add('TANGGAL|'+formatdatetime('dd-mmm-yyyy',dmGlobal.RemoteServer.GetTransDate));
    oMarginMKBDList.Add('FORMULIR III-I.1');
    oMarginMKBDList.Add('RINGKASAN DATA EXPOSURE');
    cdsFormulir1.First;
    while not cdsFormulir1.Eof do
    begin
        oMarginMKBDList.Add('KODE EFEK|'+cdsFormulir1STOCKCODE.AsString+'|'+cdsFormulir1TBIAYA.AsString+'|'+cdsFormulir1NUMACC.AsString);
        CDSFORMULIR1.Next;
        sSumCol := sSumCol + cdsFormulir1TBIAYA.AsFloat;
        sSumAcc :=  sSumAcc + cdsFormulir1NUMACC.AsInteger;
    end;
    oMarginMKBDList.Add('|TOTAL|'+FormatFloat('###0.00',sSumCol)+'|'+inttostr(sSumAcc));

    sSumCol := 0;
    sSumpercent := 0;
    sSumAcc := 0;

    //FORMULIR III-I.2
    oMarginMKBDList.Add('FORMULIR III-I.2');
    oMarginMKBDList.Add('RINGKASAN DATA EXPOSURE');
    cdsFormulir2.First;
    while not cdsFormulir2.Eof do
    begin
        oMarginMKBDList.Add('JENIS KOLATERAL|EFEK|'+cdsFormulir2STOCKCODE.AsString+'|'+cdsFormulir2COLLATERAL.AsString+'|'+cdsFormulir2PERCENTAGE.AsString+'|'+cdsFormulir2NUMACC.AsString);
        sSumCol := sSumCol + cdsFormulir2COLLATERAL.AsFloat;
        sSumpercent :=  sSumpercent + cdsFormulir2PERCENTAGE.asFloat;
        sSumAcc := sSumAcc + cdsFormulir2NUMACC.AsInteger;
        CDSFORMULIR2.Next;
    end;
    oMarginMKBDList.Add('|JUMLAH|'+FormatFloat('###0.00',sSumCol)+'|'+FormatFloat('#,##0.00', sSumpercent)+'|'+inttostr(sSumAcc));

    //FORMULIR III-I.3
    oMarginMKBDList.Add('FORMULIR III-I.3');
     cdsFormulir3.First;
    while not cdsFormulir3.Eof do
    begin
        oMarginMKBDList.Add('ID-NASABAH|'+cdsFormulir3ACCNO.AsString+'||'+FormatFloat('###0.00',cdsFormulir3COLLATERAL.asFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3totalexposure.AsFloat)+'|'+FormatFloat('###0.00',cdsFormulir3RataRata.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3RATIO.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3exp1bulan.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3exp3bulan.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3exp6bulan.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3ratio1bulan.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3ratio3bulan.AsFloat)+'|'+FormatFloat('#,##0.00',cdsFormulir3ratio6bulan.AsFloat));
        sSumCol := sSumCol + cdsFormulir3COLLATERAL.AsFloat;
        CDSFORMULIR3.Next;
    end;
    oMarginMKBDList.Add('JUMLAH|'+FormatFloat('###0.00',sSumCol));

    //FORMULIR III-I.4
    oMarginMKBDList.Add('FORMULIR III-I.4');


    sFileName         := FBrokerCode+'-MARGIN'+FormatDateTime('YYYYMMDD', dmGlobal.RemoteServer.GetTransDate)+'.mjn';
    SaveFile.FileName := sFileName;
    if SaveFile.Execute(Handle) then
      begin
        sFileName := SaveFile.FileName;
        oMarginMKBDList.SaveToFile(sFileName);

        MessageDlg('Generate file has done...', mtInformation, [mbOk], 0);
        oMarginMKBDList.Free;
        cdsFormulir1.EnableControls;
        cdsFormulir2.EnableControls;
        cdsFormulir3.EnableControls;
        Refresh;
      end;
  except
    on E: Exception do
    begin
      MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
      oMarginMKBDList.Free;
      cdsFormulir1.EnableControls;
      cdsFormulir2.EnableControls;
      cdsFormulir3.EnableControls;
    end;
  end;
end;

procedure TfrmReportMarginMKBD.actGenerateSupportXLSExecute(Sender: TObject);
var
  bMark: TBookmark;
  oXLSMarginSupport: TXLSReadWriteII5;
  oSheetForm1: TXLSWorksheet;
  oSheetForm2: TXLSWorksheet;
  sFileMargin: String;
  iMargin: Integer;
begin
  inherited;

  cdsSupportFormulir1.DisableControls;
  cdsSupportFormulir1.DisableControls;
  if not cdsFormulir1.IsEmpty then
  begin
    oXLSMarginSupport := TXLSReadWriteII5.Create(Self);

    Try
      sFileMargin := dmGlobal.AppPath + 'Temp\Supporting Report(Formulir III-I.1).xls';
      oXLSMarginSupport.Filename := sFileMargin;
      oXLSMarginSupport.Version := XLS.Version;
      oSheetForm1 := oXLSMarginSupport.Sheets[0];
      oSheetForm1.Clear;
      oSheetForm1.Name := 'Formulir III-I.1';

      oSheetForm1.AsString[0, 0] := 'Supporting Report (Formulir III-I.1)';
      oSheetForm1.AsString[0, 2] := 'Sec ID';
      oSheetForm1.AsString[1, 2] := 'CLient Code';
      oSheetForm1.AsString[2, 2] := 'Client Name';
      oSheetForm1.AsString[3, 2] := 'Qty';
      oSheetForm1.AsString[4, 2] := 'Closing Price';
      oSheetForm1.AsString[5, 2] := 'Total Market  Value';
      oSheetForm1.AsString[6, 2] := 'Total Exposure';
      oSheetForm1.AsString[7, 2] := 'Total Financing';

      iMargin := 3;

      cdsSupportFormulir1.First;
      while not cdsSupportFormulir1.Eof do
      begin
          oSheetForm1.AsString[0, iMargin] := cdsSupportFormulir1STOCKCODE.AsString;
          oSheetForm1.AsString[1, iMargin] := cdsSupportFormulir1ACCNO.AsString;
          oSheetForm1.AsString[2, iMargin] := cdsSupportFormulir1ACCNAME.AsString;
          oSheetForm1.asString[3, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir1QTY_BAL.AsFloat);
          oSheetForm1.asString[4, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir1LASTCLSPRICE.AsFloat);
          oSheetForm1.asString[5, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir1MKTVALUE.AsFloat);
          oSheetForm1.asString[6, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir1COLLATERAL.AsFloat);
          oSheetForm1.asString[7, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir1TOTALPEMBIAYAAN.AsFloat);
          Inc(iMargin);
        cdsSupportFormulir1.Next;
      end;
      oSheetForm1.AutoWidthCols(0,7);

      oXLSMarginSupport.Add;
      oSheetForm2 := oXLSMarginSupport.Sheets[1];
      oSheetForm2.Clear;
      oSheetForm2.Name := 'Formulir III-I.2';

      oSheetForm2.AsString[0, 0] := 'Supporting Report (Formulir III-I.2)';
      oSheetForm2.AsString[0, 2] := 'Collateral Type';
      oSheetForm2.AsString[1, 2] := 'Collateral ID';
      oSheetForm2.AsString[2, 2] := 'Client Code';
      oSheetForm2.AsString[3, 2] := 'Client Name';
      oSheetForm2.AsString[4, 2] := 'Collateral Value';
      iMargin := 3;

      cdsSupportFormulir2.First;
      while not cdsSupportFormulir2.Eof do
      begin
          oSheetForm2.AsString[0, iMargin] := 'EQUITY';
          oSheetForm2.AsString[1, iMargin] := cdsSupportFormulir2STOCKCODE.AsString;
          oSheetForm2.AsString[2, iMargin] := cdsSupportFormulir2ACCNO.asString;
          oSheetForm2.asString[3, iMargin] := cdsSupportFormulir2ACCNAME.AsString;
          oSheetForm2.asString[4, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsSupportFormulir2COLLATERAL.AsFloat);
          Inc(iMargin);
        cdsSupportFormulir2.Next;
      end;
      oSheetForm2.AutoWidthCols(0,4);

      oXLSMarginSupport.Write;

    Finally
      FreeAndNil(oXLSMarginSupport);
      cdsSupportFormulir1.DisableControls;
      cdsSupportFormulir1.DisableControls;
    End;

    if FileExists(sFileMargin) then
      ShellExecute(Application.Handle, 'open', PChar(sFileMargin), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfrmReportMarginMKBD.actGenerateXLSExecute(Sender: TObject);
var
  bMark: TBookmark;
  oXLSMargin: TXLSReadWriteII5;
  oSheetForm1: TXLSWorksheet;
  oSheetForm2: TXLSWorksheet;
  oSheetForm3: TXLSWorksheet;
  oSheetForm4: TXLSWorksheet;
  sFileMargin: String;
  iMargin: Integer;
  sSumcol,sSumpercent : double;
  sSumAcc : integer;
  sSumAcc0,sSumAcc50,sSumAcc65,sSumAcc80 : Integer;
  SSumCol0,sSumCol50,sSumCol65,sSumCol80 : Double;
begin
  inherited;
  sSumCol := 0;
  sSumpercent := 0;
  sSumAcc := 0;
  sSumAcc0 := 0;
  sSumAcc50 := 0;
  sSumAcc65 := 0;
  sSumAcc80 := 0;
  SSumCol0 := 0;
  sSumCol50:= 0;
  sSumCol65:= 0;
  sSumCol80 := 0;

  cdsFormulir1.DisableControls;
  cdsFormulir2.DisableControls;
  cdsFormulir3.DisableControls;
  if not cdsFormulir1.IsEmpty then
  begin
    oXLSMargin := TXLSReadWriteII5.Create(Self);

    Try
      sFileMargin := dmGlobal.AppPath + 'Temp\'+FBrokerName+'-MARGIN' +FormatDateTime('YYYYMMDD', dmGlobal.RemoteServer.GetTransDate) + '.xls';
      oXLSMargin.Filename := sFileMargin;
      oXLSMargin.Version := XLS.Version;
      oSheetForm1 := oXLSMargin.Sheets[0];
      oSheetForm1.Clear;
      oSheetForm1.Name := 'Formulir III-I.1';

      oSheetForm1.AsString[0, 0] := 'Formulir III-I.1';
      oSheetForm1.AsString[0, 2] := 'Nama Anggota Bursa Efek :';
      oSheetForm1.AsString[1, 2] := FBrokerName;
      oSheetForm1.AsString[0, 3] := 'Kode Anggota Bursa :';
      oSheetForm1.AsString[1, 3] := FBrokerName;
      oSheetForm1.AsString[0, 4] := 'Ringkasan Data Exposure';
      oSheetForm1.AsString[0, 6] := 'Kode Efek';
      oSheetForm1.AsString[1, 6] := 'Total Pembiayaan';
      oSheetForm1.AsString[2, 6] := 'Jumlah Rekening Marjin';
      iMargin := 7;

      sSumCol := 0;
      sSumAcc := 0;
      cdsFormulir1.First;
      while not cdsFormulir1.Eof do
      begin
          oSheetForm1.AsString[0, iMargin] := cdsFormulir1STOCKCODE.AsString;
          oSheetForm1.asString[1, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir1TBIAYA.AsFloat);
          oSheetForm1.AsInteger[2, iMargin] := cdsFormulir1NUMACC.asInteger;
          sSumCol := sSumCol + cdsFormulir1TBIAYA.AsFloat;
          sSumAcc :=  sSumAcc + cdsFormulir1NUMACC.AsInteger;
          Inc(iMargin);
        cdsFormulir1.Next;
      end;

      oSheetForm1.AsString[0, iMargin + 1] := 'Total';
      oSheetForm1.asString[1, iMargin + 1] := FormatFloat('#,##00;(#,##00);0',sSumCol);
      oSheetForm1.AsInteger[2, iMargin + 1] := sSumAcc;
      oSheetForm1.AutoWidthCols(0,3);

      oXLSMargin.Add;
      oSheetForm2 := oXLSMargin.Sheets[1];
      oSheetForm2.Clear;
      oSheetForm2.Name := 'Formulir III-I.2';

      oSheetForm2.AsString[0, 0] := 'Formulir III-I.2';
      oSheetForm2.AsString[0, 2] := 'Nama Anggota Bursa Efek :';
      oSheetForm2.AsString[1, 2] := FBrokerName;
      oSheetForm2.AsString[0, 3] := 'Kode Anggota Bursa :';
      oSheetForm2.AsString[1, 3] := FBrokerCode;
      oSheetForm2.AsString[0, 4] := 'Ringkasan Data - Kolateral';
      oSheetForm2.AsString[0, 6] := 'Jenis Kolateral';
      oSheetForm2.AsString[1, 6] := 'Kolateral ID';
      oSheetForm2.AsString[2, 6] := 'Nilai Kolateral';
      oSheetForm2.AsString[3, 6] := '% Nilai Kolateral dari Total Kolateral';
      oSheetForm2.AsString[4, 6] := 'Jumlah Rekening Marjin';
      iMargin := 7;

      sSumCol := 0;
      cdsFormulir2.First;
      while not cdsFormulir2.Eof do
      begin
          oSheetForm2.AsString[0, iMargin] := 'EQUITY';
          oSheetForm2.AsString[1, iMargin] := cdsFormulir2STOCKCODE.AsString;
          oSheetForm2.AsString[2, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir2COLLATERAL.AsFloat);
          oSheetForm2.asString[3, iMargin] := cdsFormulir2PERCENTAGE.AsString + '%';
          oSheetForm2.asInteger[4, iMargin] := cdsFormulir2NUMACC.AsInteger;
          sSumCol := sSumCol + cdsFormulir2COLLATERAL.AsFloat;
          Inc(iMargin);
        cdsFormulir2.Next;
      end;

      oSheetForm2.AsString[1, iMargin + 1] := 'Total';
      oSheetForm2.asString[2, iMargin + 1] := FormatFloat('#,##00;(#,##00);0',sSumCol);
      oSheetForm2.AutoWidthCols(0,4);

      oXLSMargin.Add;
      oSheetForm3:= oXLSMargin.Sheets[2];
      oSheetForm3.Clear;
      oSheetForm3.Name := 'Formulir III-I.3';

      oSheetForm3.AsString[0, 0] := 'Formulir III-I.3';
      oSheetForm3.AsString[0, 2] := 'Nama Anggota Bursa Efek :';
      oSheetForm3.AsString[1, 2] := FBrokerName;
      oSheetForm3.AsString[0, 3] := 'Kode Anggota Bursa :';
      oSheetForm3.AsString[1, 3] := FBrokerCode;
      oSheetForm3.AsString[0, 4] := 'Ringkasan Data Nasabah';
      oSheetForm3.AsString[0, 6] := 'Data Nasabah';
      oSheetForm3.MergeCells(0,6,1,6);
      oSheetForm3.AsString[2, 6] := 'Nilai (Current Value)';
      oSheetForm3.MergeCells(2,6,5,6);
      oSheetForm3.AsString[6, 6] := 'Rata-Rata Exposure';
      oSheetForm3.MergeCells(6,6,8,6);
      oSheetForm3.AsString[9, 6] := 'Rata-Rata Marjin Rasio';
      oSheetForm3.MergeCells(9,6,11,6);
      oSheetForm3.AsString[0, 7] := 'Account Code';
      oSheetForm3.AsString[1, 7] := 'Account Name';
      oSheetForm3.AsString[2, 7] := 'Nilai Exposure';
      oSheetForm3.AsString[3, 7] := '% dari Jumlah Exposure';
      oSheetForm3.AsString[4, 7] := 'Rata-Rata Exposure Individual Efek';
      oSheetForm3.AsString[5, 7] := 'Marjin Rasio';
      oSheetForm3.AsString[6, 7] := '1 Bulan';
      oSheetForm3.AsString[7, 7] := '3 Bulan';
      oSheetForm3.AsString[8, 7] := '6 Bulan';
      oSheetForm3.AsString[9, 7] := '1 Bulan';
      oSheetForm3.AsString[10, 7] := '3 Bulan';
      oSheetForm3.AsString[11, 7] := '6 Bulan';
      iMargin := 8;

      sSumCol := 0;
      cdsFormulir3.First;
      while not cdsFormulir3.Eof do
      begin
          oSheetForm3.AsString[0, iMargin] := cdsFormulir3ACCNO.AsString;
          oSheetForm3.AsString[1, iMargin] := cdsFormulir3ACCNAME.AsString;
          oSheetForm3.AsString[2, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3COLLATERAL.AsFloat);
          oSheetForm3.AsString[3, iMargin] := cdsFormulir3totalexposure.AsString;
          oSheetForm3.AsString[4, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3ratarata.AsFloat);
          oSheetForm3.AsString[5, iMargin] := cdsFormulir3RATIO.AsString;
          oSheetForm3.AsString[6, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3exp1bulan.AsFloat);
          oSheetForm3.AsString[7, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3exp3bulan.AsFloat);
          oSheetForm3.AsString[8, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3exp6bulan.AsFloat);
          oSheetForm3.AsString[9, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3ratio1bulan.AsFloat);
          oSheetForm3.AsString[10, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3ratio3bulan.AsFloat);
          oSheetForm3.AsString[11, iMargin] := FormatFloat('#,##00;(#,##00);0',cdsFormulir3ratio6bulan.AsFloat);
          sSumCol := sSumCol + cdsFormulir3COLLATERAL.AsFloat;
          if(cdsFormulir3RATIO.AsFloat <= 50) then
          begin
             sSumAcc0 := sSumAcc0 + 1;
             sSumCol0 := SSumCol0 + cdsFormulir3COLLATERAL.AsFloat;
          end
          else if ((cdsFormulir3RATIO.AsFloat > 50) and (cdsFormulir3RATIO.AsFloat <= 65)) then
          begin
             sSumAcc50 := sSumAcc50 + 1;
             sSumCol50 := SSumCol50 + cdsFormulir3COLLATERAL.AsFloat;
          end
          else if ((cdsFormulir3RATIO.AsFloat > 65) and (cdsFormulir3RATIO.AsFloat <= 80)) then
          begin
             sSumAcc65 := sSumAcc65 + 1;
             sSumCol65 := SSumCol65 + cdsFormulir3COLLATERAL.AsFloat;
          end
          else if (cdsFormulir3RATIO.AsFloat > 80) then
          begin
             sSumAcc80 := sSumAcc80 + 1;
             sSumCol80 := SSumCol80 + cdsFormulir3COLLATERAL.AsFloat;
          end;
          Inc(iMargin);
        cdsFormulir3.Next;
      end;

      oSheetForm3.AsString[1, iMargin + 1] := 'Total';
      oSheetForm3.asString[2, iMargin + 1] := FormatFloat('#,##00;(#,##00);0',sSumCol);

      oSheetForm3.AsString[0, iMargin + 3] := 'Marjin Rasio';
      oSheetForm3.MergeCells(0,iMargin + 3,3,iMargin + 3);
      oSheetForm3.AsString[0, iMargin + 4] := 'MR < 50%';
      oSheetForm3.AsString[1, iMargin + 4] := '50% < MR < 65%';
      oSheetForm3.AsString[2, iMargin + 4] := '65% < MR < 80%';
      oSheetForm3.AsString[3, iMargin + 4] := 'MR > 80%';
      oSheetForm3.asInteger[0, iMargin + 5] := sSumAcc0;
      oSheetForm3.asInteger[1, iMargin + 5] := sSumAcc50;
      oSheetForm3.asInteger[2, iMargin + 5] := sSumAcc65;
      oSheetForm3.asInteger[3, iMargin + 5] := sSumAcc80;
      oSheetForm3.AsString[0, iMargin + 6] := FormatFloat('#,##00;(#,##00);0',sSumCol0);
      oSheetForm3.AsString[1, iMargin + 6] := FormatFloat('#,##00;(#,##00);0',sSumCol50);
      oSheetForm3.AsString[2, iMargin + 6] := FormatFloat('#,##00;(#,##00);0',sSumCol65);
      oSheetForm3.AsString[3, iMargin + 6] := FormatFloat('#,##00;(#,##00);0',sSumCol80);
      oSheetForm3.AutoWidthCols(0,11);


      oXLSMargin.Add;
      oSheetForm4 := oXLSMargin.Sheets[3];
      oSheetForm4.Clear;
      oSheetForm4.Name := 'Formulir III-I.4';

      oSheetForm4.AsString[0, 0] := 'Formulir III-I.4';
      oSheetForm4.AsString[0, 2] := 'Nama Anggota Bursa Efek :';
      oSheetForm4.AsString[1, 2] := FBrokerName;
      oSheetForm4.AsString[0, 3] := 'Kode Anggota Bursa :';
      oSheetForm4.AsString[1, 3] := FBrokerCode;
      oSheetForm4.AsString[0, 4] := 'Posisi Short Selling';
      oSheetForm4.AsString[0, 6] := 'Kode Efek';
      oSheetForm4.AsString[1, 6] := 'Total Exposure';
      oSheetForm4.AsString[2, 6] := 'Total Unit';
      oSheetForm4.AsString[3, 6] := '% Dari Saham yang Dapat Diperdagangkan';
      oSheetForm4.AsString[4, 6] := 'Jumlah Rekening';
      oSheetForm4.AsString[5, 6] := 'Pinjaman dari KPEI';
      oSheetForm4.AsString[6, 6] := 'Pinjaman Bilateral';
      oSheetForm4.AutoWidthCols(0,6);

      oXLSMargin.Write;

    Finally
      FreeAndNil(oXLSMargin);
       cdsFormulir1.EnableControls;
       cdsFormulir2.EnableControls;
       cdsFormulir3.EnableControls;
    End;

    if FileExists(sFileMargin) then
      ShellExecute(Application.Handle, 'open', PChar(sFileMargin), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfrmReportMarginMKBD.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFormulir1.Close;
  cdsFormulir1.Open;

  cdsFormulir2.Close;
  cdsFormulir2.Open;

  cdsFormulir3.Close;
  cdsFormulir3.Open;

  cdsSupportFormulir1.Close;
  cdsSupportFormulir1.Open;

  cdsSupportFormulir2.Close;
  cdsSupportFormulir2.Open;
end;

procedure TfrmReportMarginMKBD.FormShow(Sender: TObject);
begin
  inherited;
  FBrokerCode := dmGlobal.RemoteServer.GetBrokerCode;
  FBrokerName := dmGlobal.RemoteServer.GetBrokerName;
end;

end.
