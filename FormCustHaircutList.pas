unit FormCustHaircutList;

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
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, DBXJSON, Data.DBXJSONCommon,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, XLSSheetData5,
  XLSReadWriteII5, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, ComObj, dxDateRanges, dxScrollbarAnnotations,
  cxBarEditItem, cxButtonEdit;

type
  TfrmCustHaircutList = class(TfrmBrowseData)
    cdsCustomerHaircustList: TNClientDataset;
    cdsCustomerHaircustListINSTRUMENT_ID: TLargeintField;
    cdsCustomerHaircustListINSTRUMENT_CODE: TStringField;
    cdsCustomerHaircustListLOCALCODE: TStringField;
    cdsCustomerHaircustListMARKETCODE: TStringField;
    cdsCustomerHaircustListINSTRUMENT_TYPE_CODE: TStringField;
    cdsCustomerHaircustListHCUTDATE: TDateTimeField;
    cdsCustomerHaircustListHCUTTYPE: TStringField;
    cdsCustomerHaircustListHCUTPRICE: TFloatField;
    cdsCustomerHaircustListMODDA: TDateTimeField;
    cdsCustomerHaircustListMODUI: TStringField;
    cdsCustomerHaircustListAPPDA: TDateTimeField;
    cdsCustomerHaircustListAPPUI: TStringField;
    cdsCustomerHaircustListISDEL: TIntegerField;
    cdsCustomerHaircustListID: TLargeintField;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterHCUTDATE: TcxGridDBBandedColumn;
    gvwMasterHCUTTYPE: TcxGridDBBandedColumn;
    gvwMasterHCUTPRICE: TcxGridDBBandedColumn;
    actUploadFile: TNAction;
    OpenDialog: TOpenDialog;
    Uploadfromfile1: TMenuItem;
    N5: TMenuItem;
    cdsHaircut: TNClientDataset;
    cdsHaircutINSTRUMENT_ID: TLargeintField;
    cdsHaircutINSTRUMENT_CODE: TStringField;
    cdsHaircutLOCALCODE: TStringField;
    cdsHaircutMARKETCODE: TStringField;
    cdsHaircutINSTRUMENT_TYPE_CODE: TStringField;
    cdsHaircutHCUTDATE: TDateTimeField;
    cdsHaircutHCUTTYPE: TStringField;
    cdsHaircutHCUTPRICE: TFloatField;
    cdsHaircutMODDA: TDateTimeField;
    cdsHaircutMODUI: TStringField;
    cdsHaircutAPPDA: TDateTimeField;
    cdsHaircutAPPUI: TStringField;
    cdsHaircutISDEL: TIntegerField;
    cdsHaircutID: TLargeintField;
    BarMBrowseBar2: TdxBar;
    BarMBrowseBar4: TdxBar;
    edMarket: TcxBarEditItem;
    dtTransDate: TcxBarEditItem;
    edFileNam: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure actUploadFileExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actRefreshExecute(Sender: TObject);
    procedure edFileNamPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustHaircutList: TfrmCustHaircutList;

implementation

{$R *.dfm}

uses DataGlobal, FormCustHaircut, DataLookup, FormProgressBar, FormStockHaircut;

procedure TfrmCustHaircutList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsCustomerHaircustList.Close;
  cdsCustomerHaircustList.Params[0].AsDateTime := VarToDateTime(dtTransDate.EditValue);
  cdsCustomerHaircustList.Params[1].AsString   := VarToStr(edMarket.EditValue);
  cdsCustomerHaircustList.Open;
end;

procedure TfrmCustHaircutList.actUploadFileExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
  sStockCode: String;
  i, n: Integer;
  iYear, iMonth, iDate: Integer;
  dHairCutDate: TDateTime;
  sStringDate: string;
  slHairCut, slValue: TStringList;
  fHairCut: Double;
  oProgress: TfrmProgressBar;
  oExcel, oSheet: OleVariant;
begin
  inherited;
  if OpenDialog.Execute(Handle) then
  begin
    sFileName           := OpenDialog.FileName;
    edFileNam.EditValue := sFileName;
  end
  else
    Exit;

  if sFileName = '' then
  begin
    MessageDlg('Plase choose one file before uploading', mtError, [mbOk], 0);
    Exit;
  end;

  sFileExt := ExtractFileExt(sFileName);
  if (sFileExt = '.txt') then
  begin
    oProgress := TfrmProgressBar.Create(Nil);
    slHairCut := TStringList.Create;
    slValue := TStringList.Create;
    Try
      oProgress.Show;
      sStringDate := '';
      slHairCut.LoadFromFile(sFileName);
      n := slHairCut.Count;
      for i := 1 to n do
      begin
        Try
          dmGlobal.ParseDelimited(slValue, slHairCut[i], '|');
          if slValue.Count = 5 then
          begin
            sStringDate := slValue[0];
            sStockCode  := slValue[1];
            fHaircut    := StrToFloatDef(slValue[3], 0);
            iYear  := StrToIntDef(copy(sStringDate, 0, 4), 1900);
            iMonth := StrToIntDef(copy(sStringDate, 5, 2), 1);
            iDate  := StrToIntDef(copy(sStringDate, 7, 2), 1);
            dHairCutDate := EncodeDate(iYear, iMonth, iDate);
          end
          else
            Continue;

          oProgress.ChangeBar(trunc(i / n * 100), 'Processing Stock ' + sStockCode
            + ' for Date ' + FormatDateTime('dd MMM yyyy', dHairCutDate));

          with dmGlobal.IntDataLookup do
          begin
            if cdsLuInstrument.Locate('MARKETCODE;LOCALCODE',
              VarArrayOf([cdsCustomerHaircustList.Params[1].AsString, sStockCode]), []) then
            begin
              cdsHaircut.Close;
              cdsHaircut.Params[0].AsDate := dHairCutDate;
              cdsHaircut.Params[1].AsInteger := cdsLuInstrumentINSTRUMENT_ID.AsInteger;
              cdsHaircut.Open;

              if cdsHaircut.IsEmpty then
                cdsHaircut.Append
              else
                cdsHaircut.Edit;

              cdsHaircutINSTRUMENT_ID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
              cdsHaircutINSTRUMENT_CODE.AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
              cdsHaircutLOCALCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
              cdsHaircutMARKETCODE.AsString := cdsLuInstrumentMARKETCODE.AsString;
              cdsHaircutINSTRUMENT_TYPE_CODE.AsString := cdsLuInstrumentINSTRUMENT_TYPE_CODE.AsString;
              cdsHaircutHCUTDATE.AsDateTime := dHairCutDate;
              cdsHaircutHCUTTYPE.AsString := 'K';
              cdsHaircutHCUTPRICE.AsFloat := fHairCut;

              cdsHaircut.Post;
              cdsHaircut.ApplyUpdates(-1);
            end;
          end;
        Except
          on E: Exception do
          begin
            oProgress.ChangeBarCaption('Error Processing Stock ' + sStockCode + ' for date ' + sStringDate);
            sStringDate := '';
          end;
        end;

      end;
    Finally
      FreeAndNil(slValue);
      FreeAndNil(slHairCut);
      FreeAndNil(oProgress);
      ShowMessage('Stock Haircut Uploaded.');
    End;
  end
  else if (sFileExt = '.xls') or (sFileExt = '.xlsx') then
  begin
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      oProgress.Show;
      sStringDate := '';
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := false;

      oExcel.WorkBooks.Open(sFileName);
      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      n      := oSheet.Usedrange.Rows.Count;

      for i := 1 to n do
      begin
        Try
          sStockCode := oSheet.Cells[i, 2].Value; //oSheet.AsString[1, i];
          if sStringDate <> VarToStr(oSheet.Cells[i, 1].Value) then //oSheet.AsString[0, i] then
          begin
            sStringDate := VarToStr(oSheet.Cells[i, 1].Value); //oSheet.AsString[0, i];

            iYear  := StrToIntDef(copy(sStringDate, 0, 4), 1900);
            iMonth := StrToIntDef(copy(sStringDate, 5, 2), 1);
            iDate  := StrToIntDef(copy(sStringDate, 7, 2), 1);

            dHairCutDate := EncodeDate(iYear, iMonth, iDate);
          end;

          oProgress.ChangeBar(trunc(i / n * 100), 'Processing Stock ' + sStockCode
            + ' for Date ' + FormatDateTime('dd MMM yyyy', dHairCutDate));

          with dmGlobal.IntDataLookup do
          begin
            if cdsLuInstrument.Locate('MARKETCODE;LOCALCODE',
              VarArrayOf([cdsCustomerHaircustList.Params[1].AsString, sStockCode]), []) then
            begin
              cdsHaircut.Close;
              cdsHaircut.Params[0].AsDate := dHairCutDate;
              cdsHaircut.Params[1].AsInteger := cdsLuInstrumentINSTRUMENT_ID.AsInteger;
              cdsHaircut.Open;

              if cdsHaircut.IsEmpty then
                cdsHaircut.Append
              else
                cdsHaircut.Edit;

              cdsHaircutINSTRUMENT_ID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
              cdsHaircutINSTRUMENT_CODE.AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
              cdsHaircutLOCALCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
              cdsHaircutMARKETCODE.AsString := cdsLuInstrumentMARKETCODE.AsString;
              cdsHaircutINSTRUMENT_TYPE_CODE.AsString := cdsLuInstrumentINSTRUMENT_TYPE_CODE.AsString;
              cdsHaircutHCUTDATE.AsDateTime := dHairCutDate;
              cdsHaircutHCUTTYPE.AsString := 'K';
              cdsHaircutHCUTPRICE.AsFloat := oSheet.Cells[i, 4].Value; //oSheet.AsFloat[3, i];

              cdsHaircut.Post;
              cdsHaircut.ApplyUpdates(-1);
            end;
          end;
        Except
          on E: Exception do
          begin
            oProgress.ChangeBarCaption('Error Processing Stock ' + sStockCode + ' for date ' + sStringDate);
            sStringDate := '';
          end;
        end;

      end;
    Finally
      FreeAndNil(oProgress);
      ShowMessage('Stock Haircut Uploaded.');
      cdsCustomerHaircustList.Refresh;
    End;
  end;
end;

procedure TfrmCustHaircutList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockHaircut;
end;

procedure TfrmCustHaircutList.dxBarButton1Click(Sender: TObject);
var
  sFileName, sFileExt: String;
  sStockCode: String;
  i, n: Integer;
  iYear, iMonth, iDate: Integer;
  dHairCutDate: TDateTime;
  sStringDate: string;
  slHairCut, slValue: TStringList;
  fHairCut: Double;
  oProgress: TfrmProgressBar;
  oExcel, oSheet: OleVariant;
begin
  inherited;
  sFileName := edFileNam.EditValue;

  if sFileName = '' then
  begin
    MessageDlg('Plase choose one file before uploading', mtError, [mbOk], 0);
    Exit;
  end;

  sFileExt := ExtractFileExt(sFileName);
  if (sFileExt = '.txt') then
  begin
    oProgress := TfrmProgressBar.Create(Nil);
    slHairCut := TStringList.Create;
    slValue := TStringList.Create;
    Try
      oProgress.Show;
      sStringDate := '';
      slHairCut.LoadFromFile(sFileName);
      n := slHairCut.Count;
      for i := 1 to n do
      begin
        Try
          dmGlobal.ParseDelimited(slValue, slHairCut[i], '|');
          if slValue.Count >= 5 then
          begin
            sStringDate  := slValue[0];
            sStockCode   := slValue[1];
            fHaircut     := StrToFloatDef(slValue[3], 0);
            iYear        := StrToIntDef(copy(sStringDate, 0, 4), 1900);
            iMonth       := StrToIntDef(copy(sStringDate, 5, 2), 1);
            iDate        := StrToIntDef(copy(sStringDate, 7, 2), 1);
            dHairCutDate := EncodeDate(iYear, iMonth, iDate);
          end
          else
            Continue;

          oProgress.ChangeBar(trunc(i / n * 100), 'Processing Stock ' + sStockCode
            + ' for Date ' + FormatDateTime('dd MMM yyyy', dHairCutDate));

          with dmGlobal.IntDataLookup do
          begin
            if cdsLuInstrument.Locate('MARKETCODE;LOCALCODE',
              VarArrayOf([cdsCustomerHaircustList.Params[1].AsString, sStockCode]), []) then
            begin
              cdsHaircut.Close;
              cdsHaircut.Params[0].AsDate := dHairCutDate;
              cdsHaircut.Params[1].AsInteger := cdsLuInstrumentINSTRUMENT_ID.AsInteger;
              cdsHaircut.Open;

              if cdsHaircut.IsEmpty then
                cdsHaircut.Append
              else
                cdsHaircut.Edit;

              cdsHaircutINSTRUMENT_ID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
              cdsHaircutINSTRUMENT_CODE.AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
              cdsHaircutLOCALCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
              cdsHaircutMARKETCODE.AsString := cdsLuInstrumentMARKETCODE.AsString;
              cdsHaircutINSTRUMENT_TYPE_CODE.AsString := cdsLuInstrumentINSTRUMENT_TYPE_CODE.AsString;
              cdsHaircutHCUTDATE.AsDateTime := dHairCutDate;
              cdsHaircutHCUTTYPE.AsString := 'K';
              cdsHaircutHCUTPRICE.AsFloat := fHairCut;

              cdsHaircut.Post;
              cdsHaircut.ApplyUpdates(-1);
            end;
          end;
        Except
          on E: Exception do
          begin
            oProgress.ChangeBarCaption('Error Processing Stock ' + sStockCode + ' for date ' + sStringDate);
            sStringDate := '';
          end;
        end;

      end;
    Finally
      FreeAndNil(slValue);
      FreeAndNil(slHairCut);
      FreeAndNil(oProgress);
      ShowMessage('Stock Haircut Uploaded.');

      cdsCustomerHaircustList.Refresh;
    End;
  end
  else if (sFileExt = '.xls') or (sFileExt = '.xlsx') then
  begin
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      oProgress.Show;
      sStringDate := '';
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := false;

      oExcel.WorkBooks.Open(sFileName);
      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      n      := oSheet.Usedrange.Rows.Count;

      for i := 1 to n do
      begin
        Try
          sStockCode := oSheet.Cells[i, 2].Value; //oSheet.AsString[1, i];
          if sStringDate <> VarToStr(oSheet.Cells[i, 1].Value) then //oSheet.AsString[0, i] then
          begin
            sStringDate := VarToStr(oSheet.Cells[i, 1].Value); //oSheet.AsString[0, i];

            iYear  := StrToIntDef(copy(sStringDate, 0, 4), 1900);
            iMonth := StrToIntDef(copy(sStringDate, 5, 2), 1);
            iDate  := StrToIntDef(copy(sStringDate, 7, 2), 1);

            dHairCutDate := EncodeDate(iYear, iMonth, iDate);
          end;

          oProgress.ChangeBar(trunc(i / n * 100), 'Processing Stock ' + sStockCode
            + ' for Date ' + FormatDateTime('dd MMM yyyy', dHairCutDate));

          with dmGlobal.IntDataLookup do
          begin
            if cdsLuInstrument.Locate('MARKETCODE;LOCALCODE',
              VarArrayOf([cdsCustomerHaircustList.Params[1].AsString, sStockCode]), []) then
            begin
              cdsHaircut.Close;
              cdsHaircut.Params[0].AsDate := dHairCutDate;
              cdsHaircut.Params[1].AsInteger := cdsLuInstrumentINSTRUMENT_ID.AsInteger;
              cdsHaircut.Open;

              if cdsHaircut.IsEmpty then
                cdsHaircut.Append
              else
                cdsHaircut.Edit;

              cdsHaircutINSTRUMENT_ID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
              cdsHaircutINSTRUMENT_CODE.AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
              cdsHaircutLOCALCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
              cdsHaircutMARKETCODE.AsString := cdsLuInstrumentMARKETCODE.AsString;
              cdsHaircutINSTRUMENT_TYPE_CODE.AsString := cdsLuInstrumentINSTRUMENT_TYPE_CODE.AsString;
              cdsHaircutHCUTDATE.AsDateTime := dHairCutDate;
              cdsHaircutHCUTTYPE.AsString := 'K';
              cdsHaircutHCUTPRICE.AsFloat := oSheet.Cells[i, 4].Value; //oSheet.AsFloat[3, i];

              cdsHaircut.Post;
              cdsHaircut.ApplyUpdates(-1);
            end;
          end;
        Except
          on E: Exception do
          begin
            oProgress.ChangeBarCaption('Error Processing Stock ' + sStockCode + ' for date ' + sStringDate);
            sStringDate := '';
          end;
        end;

      end;
    Finally
      FreeAndNil(oProgress);
      ShowMessage('Stock Haircut Uploaded.');
      cdsCustomerHaircustList.Refresh;
    End;
  end;
end;

procedure TfrmCustHaircutList.edFileNamPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute(Handle) then
    edFileNam.EditValue := OpenDialog.FileName
  else
    Exit;
end;

procedure TfrmCustHaircutList.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(2);
  KeyFields[0] := cdsCustomerHaircustListHCUTDATE;
  KeyFields[1] := cdsCustomerHaircustListINSTRUMENT_ID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open;

    if not cdsLuInstrument.Active then
      cdsLuInstrument.Open;
  end;

  dtTransDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  edMarket.EditValue    := dmGlobal.RemoteServer.GetDefaultMarket;
  edFileNam.EditValue   := '';

  cdsCustomerHaircustList.Close;
  cdsCustomerHaircustList.Params[0].AsDateTime := VarToDateTime(dtTransDate.EditValue);
  cdsCustomerHaircustList.Params[1].AsString   := VarToStr(edMarket.EditValue);
  cdsCustomerHaircustList.Open;
end;

Initialization
  RegisterClass(TfrmCustHaircutList);

end.
