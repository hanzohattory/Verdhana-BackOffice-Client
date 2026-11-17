unit FrameGridReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxPropertiesStore,
  Vcl.ActnList, NDatasetAction, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridDBTableView,
  cxButtonEdit, System.DateUtils, System.Actions;

type
  TfrGridReport = class(TFrame)
    cdsSubject: TNClientDataset;
    dsSubject: TDataSource;
    gridReport: TcxGrid;
    gvwReport: TcxGridDBBandedTableView;
    gridReportLevel1: TcxGridLevel;
    lcFilter: TdxLayoutControl;
    dt1: TcxDateEdit;
    dt2: TcxDateEdit;
    btnView: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    lcDate1: TdxLayoutItem;
    lcDate2: TdxLayoutItem;
    lcFilterGroup0: TdxLayoutGroup;
    lcViewData: TdxLayoutItem;
    aclReport: TActionList;
    actCustomizeColumn: TNAction;
    popGrid: TPopupMenu;
    CustomizeColumn1: TMenuItem;
    PropStore: TcxPropertiesStore;
    actViewData: TNAction;
    actExportToExcel: TNAction;
    NAction3: TNAction;
    NAction4: TNAction;
    NAction5: TNAction;
    ViewData1: TMenuItem;
    N1: TMenuItem;
    ExportToExcel1: TMenuItem;
    SaveDialog: TSaveDialog;
    cdsReportGrid: TNClientDataset;
    cdsReportGridREPORT_ID: TIntegerField;
    cdsReportGridREPORT_CODE: TStringField;
    cdsReportGridDESCRIPTION: TStringField;
    cdsReportGridCATEGORY_ID: TIntegerField;
    cdsReportGridSQL: TWideMemoField;
    cdsReportGridREPORT_CONFIG: TWideMemoField;
    cdsReportGridFILTER_CONFIG: TWideMemoField;
    cdsReportGridMODDA: TDateTimeField;
    cdsReportGridMODUI: TStringField;
    cdsReportGridAPPDA: TDateTimeField;
    cdsReportGridAPPUI: TStringField;
    cdsReportGridUNDER4Y: TIntegerField;
    cdsReportGridUNDER4YDA: TDateTimeField;
    cdsReportGridNOTES4Y: TStringField;
    cdsReportGridISDEL: TIntegerField;
    cdsReportGridID: TLargeintField;
    lcAccCode1: TdxLayoutItem;
    edAccCode1: TcxButtonEdit;
    lcAccName1: TdxLayoutItem;
    edAccName1: TcxTextEdit;
    lcFilterGroup1: TdxLayoutGroup;
    lcAccCode2: TdxLayoutItem;
    edAccCode2: TcxButtonEdit;
    lcAccName2: TdxLayoutItem;
    edAccName2: TcxTextEdit;
    lcFilterGroup2: TdxLayoutGroup;
    lcSales1: TdxLayoutItem;
    cbSales1: TcxLookupComboBox;
    lcSales2: TdxLayoutItem;
    cbSales2: TcxLookupComboBox;
    lcFilterGroup3: TdxLayoutGroup;
    procedure actCustomizeColumnExecute(Sender: TObject);
    procedure actExportToExcelExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure cdsSubjectAfterOpen(DataSet: TDataSet);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCode2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FFirstView: Boolean;
  public
    { Public declarations }
    property FirstView: Boolean read FFirstView write FFirstView default True;
  end;

implementation

{$R *.dfm}

uses DataGlobal, cxGridExportLink, FormLuAccount;

procedure TfrGridReport.actCustomizeColumnExecute(Sender: TObject);
begin
  gvwReport.Controller.Customization := True;
end;

procedure TfrGridReport.actExportToExcelExecute(Sender: TObject);
var
  sFileName: String;
begin
  if SaveDialog.Execute then
  begin
    sFileName := SaveDialog.FileName;
    ExportGridToExcel(sFileName, gridReport);
  end;
end;

procedure TfrGridReport.actViewDataExecute(Sender: TObject);
var
  nParam, i: Integer;
  PropStream: TStream;
  dtAwal1, dtAwal2: TDateTime;
begin
  nParam := cdsSubject.Params.Count;
  if nParam = 0 then
  begin
    cdsSubject.Close;
    cdsSubject.Open;
  end
  else
  begin
    cdsSubject.Close;
    if (dt1.Tag <> -1) and (dt1.Tag <= nParam) then
      cdsSubject.Params[dt1.Tag].AsDate := DateOf(dt1.Date);
    if (dt2.Tag <> -1) and (dt2.Tag <= nParam) then
      cdsSubject.Params[dt2.Tag].AsDate := DateOf(dt2.Date);
    if (edAccCode1.Tag <> -1) and (edAccCode1.Tag <= nParam) then
      cdsSubject.Params[edAccCode1.Tag].AsInteger := StrToIntDef(edAccCode1.Hint, -1);
    if (edAccCode2.Tag <> -1) and (edAccCode2.Tag <= nParam) then
      cdsSubject.Params[edAccCode2.Tag].AsInteger := StrToIntDef(edAccCode2.Hint, -1);
    cdsSubject.Open;
  end;

  if FirstView then
  begin
    dtAwal1 := dt1.Date;
    dtAwal2 := dt2.Date;

//    for i := 0 to cdsSubject.FieldCount - 1 do
//    begin
//      cdsSubject.Fields[i].Name := cdsSubject.Name + cdsSubject.Fields[i].FieldName;
////      with PropStore.Components.Add do
////      begin
////        Component := cdsSubject.Fields[i];
////      end;
//
//      if cdsSubject.Fields[i] is TIntegerField then
//      begin
//        TIntegerField(cdsSubject.Fields[i]).DisplayFormat := '#,##0';
//      end
//      else if cdsSubject.Fields[i] is TDateField then
//      begin
//        TDateField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy';
//      end
//      else if cdsSubject.Fields[i] is TTimeField then
//      begin
//        TTimeField(cdsSubject.Fields[i]).DisplayFormat := 'hh:nn:ss.zzz';
//      end
//      else if cdsSubject.Fields[i] is TDateTimeField then
//      begin
//        TDateTimeField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy hh:nn:ss.zzz';
//      end
//      else if cdsSubject.Fields[i] is TFloatField then
//      begin
//        TFloatField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
//      end
//      else if cdsSubject.Fields[i] is TNumericField then
//      begin
//        TNumericField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
//      end;
//    end;

    gvwReport.ClearItems;
    gvwReport.DataController.CreateAllItems();

    for i := 0 to gvwReport.ColumnCount - 1 do
    begin
      with PropStore.Components.Add do
      begin
        Component := gvwReport.Columns[i];
        Properties.Add('AlternateCaption');
        Properties.Add('BestFitMaxWidth');
        Properties.Add('Caption');
        Properties.Add('DataBinding');
        Properties.Add('DateTimeGrouping');
        Properties.Add('FooterAlignmentHorz');
        Properties.Add('GroupIndex');
        Properties.Add('GroupSummaryAlignment');
        Properties.Add('HeaderAlignmentHorz');
        Properties.Add('HeaderAlignmentVert');
        Properties.Add('HeaderGlyph');
        Properties.Add('HeaderGlyphAlignmentHorz');
        Properties.Add('HeaderGlyphAlignmentVert');
        Properties.Add('HeaderHint');
        Properties.Add('HeaderImageIndex');
        Properties.Add('MinWidth');
        Properties.Add('Name');
        Properties.Add('Options');
        Properties.Add('Position');
        Properties.Add('Properties');
        Properties.Add('RepositoryItem');
        Properties.Add('SortIndex');
        Properties.Add('SortOrder');
        Properties.Add('Styles');
        Properties.Add('Summary');
        Properties.Add('Tag');
        Properties.Add('Visible');
        Properties.Add('VisibleForCustomization');
        Properties.Add('Width');
      end;
    end;

    PropStream := cdsReportGrid.CreateBlobStream(cdsReportGridREPORT_CONFIG, bmRead);
    Try
      cdsSubject.Close;
      PropStore.StorageStream := PropStream;
      PropStore.RestoreFrom;
      dt1.Date := dtAwal1;
      dt2.Date := dtAwal2;
      cdsSubject.Open;
    Finally
      FreeAndNil(PropStream);
    End;

    FirstView := False;
  end;
end;

procedure TfrGridReport.cdsSubjectAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  for i := 0 to cdsSubject.FieldCount - 1 do
  begin
    if cdsSubject.Fields[i] is TIntegerField then
    begin
      TIntegerField(cdsSubject.Fields[i]).DisplayFormat := '#,##0';
    end
    else if cdsSubject.Fields[i] is TDateField then
    begin
      TDateField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy';
    end
    else if cdsSubject.Fields[i] is TTimeField then
    begin
      TTimeField(cdsSubject.Fields[i]).DisplayFormat := 'hh:nn:ss.zzz';
    end
    else if cdsSubject.Fields[i] is TDateTimeField then
    begin
      TDateTimeField(cdsSubject.Fields[i]).DisplayFormat := 'dd MMM yyyy hh:nn:ss.zzz';
    end
    else if cdsSubject.Fields[i] is TFloatField then
    begin
      TFloatField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
    end
    else if cdsSubject.Fields[i] is TNumericField then
    begin
      TNumericField(cdsSubject.Fields[i]).DisplayFormat := '#,##0.##########';
    end;
  end;
end;

procedure TfrGridReport.edAccCode2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  AccID: Integer;
begin
  with dmGlobal.IntDataLookup do
  begin
    AccID := StrToIntDef(edAccCode2.Hint, -1);
    if frmLuAccount.Run(AccID) = mrOK then
    begin
      AccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode2.EditValue := AccID;
      edAccCode2.Hint := IntToStr(AccID);
      edAccCode2.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName2.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrGridReport.edAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  AccID: Integer;
begin
  with dmGlobal.IntDataLookup do
  begin
    AccID := StrToIntDef(edAccCode1.Hint, -1);
    if frmLuAccount.Run(AccID) = mrOK then
    begin
      AccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode1.EditValue := AccID;
      edAccCode1.Hint := IntToStr(AccID);
      edAccCode1.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName1.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

end.
