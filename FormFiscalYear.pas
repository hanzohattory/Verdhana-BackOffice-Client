unit FormFiscalYear;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxCalendar, cxTextEdit, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, DateUtils, Datasnap.DBClient,
  NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmFiscalYear = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dtStartDate: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dtEndDate: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    grdFiscalPeriod: TcxGrid;
    gvwFiscalPeriod: TcxGridDBTableView;
    grdFiscalPeriodLevel1: TcxGridLevel;
    dsFiscalPeriod: TDataSource;
    gvwFiscalPeriodPERIODCODE: TcxGridDBColumn;
    gvwFiscalPeriodPERIODNAME: TcxGridDBColumn;
    gvwFiscalPeriodSTARTDATE: TcxGridDBColumn;
    gvwFiscalPeriodENDDATE: TcxGridDBColumn;
    gvwFiscalPeriodSTATUS: TcxGridDBColumn;
    gvwFiscalPeriodSPECIAL: TcxGridDBColumn;
    btnMonthlyPeriod: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btn3MonthPeriod: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsFiscalPeriod: TNClientDataset;
    cdsFiscalPeriodPERIODID: TLargeintField;
    cdsFiscalPeriodPERIODCODE: TStringField;
    cdsFiscalPeriodPERIODNAME: TStringField;
    cdsFiscalPeriodSTARTDATE: TDateField;
    cdsFiscalPeriodENDDATE: TDateField;
    cdsFiscalPeriodFISCALYEARID: TLargeintField;
    cdsFiscalPeriodSTATUS: TStringField;
    cdsFiscalPeriodSPECIAL: TStringField;
    cdsFiscalPeriodMODDA: TDateTimeField;
    cdsFiscalPeriodMODUI: TStringField;
    cdsFiscalPeriodAPPDA: TDateTimeField;
    cdsFiscalPeriodAPPUI: TStringField;
    cdsFiscalPeriodUNDER4Y: TIntegerField;
    cdsFiscalPeriodUNDER4YDA: TDateTimeField;
    cdsFiscalPeriodNOTES4Y: TStringField;
    cdsFiscalPeriodISDEL: TIntegerField;
    cdsFiscalPeriodID: TLargeintField;
    cdsFiscalYear: TNClientDataset;
    cdsFiscalYearFISCALYEARID: TLargeintField;
    cdsFiscalYearFISCALYEARCODE: TStringField;
    cdsFiscalYearFISCALYEARNAME: TStringField;
    cdsFiscalYearSTARTDATE: TDateField;
    cdsFiscalYearENDDATE: TDateField;
    cdsFiscalYearSTATUS: TStringField;
    cdsFiscalYearMODDA: TDateTimeField;
    cdsFiscalYearMODUI: TStringField;
    cdsFiscalYearAPPDA: TDateTimeField;
    cdsFiscalYearAPPUI: TStringField;
    cdsFiscalYearUNDER4Y: TIntegerField;
    cdsFiscalYearUNDER4YDA: TDateTimeField;
    cdsFiscalYearNOTES4Y: TStringField;
    cdsFiscalYearISDEL: TIntegerField;
    cdsFiscalYearID: TLargeintField;
    cdsFiscalYearqryFiscalPeriod: TDataSetField;
    procedure btnMonthlyPeriodClick(Sender: TObject);
    procedure btn3MonthPeriodClick(Sender: TObject);
    procedure cdsFiscalPeriodBeforePost(DataSet: TDataSet);
    procedure cdsFiscalYearBeforePost(DataSet: TDataSet);
    procedure cdsFiscalYearNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiscalYear: TfrmFiscalYear;

implementation

{$R *.dfm}

uses FormFiscalYearList, DataGlobal;

procedure TfrmFiscalYear.btn3MonthPeriodClick(Sender: TObject);
var
  StartPeriod, EndPeriod: TDate;
  StartYear, EndYear: Word;
  oDataset: TDataset;
  bLast: Boolean;
begin
  inherited;
  if (dtStartDate.EditValue <> Null) and (dtEndDate.EditValue <> Null) and
    (dtEndDate.Date > dtStartDate.Date) then
  begin
    oDataset := dsFiscalPeriod.DataSet;
    StartYear := YearOf(dtStartDate.Date);
    EndYear := YearOf(dtEndDate.Date);

    //Request By Irvan 20160809
//    oDataset.Append;
//    oDataset.FieldByName('PERIODCODE').AsString := '00/' + IntToStr(StartYear);
//    oDataset.FieldByName('PERIODNAME').AsString := 'Opening Period ' + IntToStr(StartYear);
//    oDataset.FieldByName('STARTDATE').AsDateTime := dtStartDate.Date;
//    oDataset.FieldByName('ENDDATE').AsDateTime := dtStartDate.Date;
//    oDataset.FieldByName('STATUS').AsString := 'O';
//    oDataset.FieldByName('SPECIAL').AsString := '1';
//    oDataset.Post;

    bLast := False;
    StartPeriod := dtStartDate.Date;

    while (DateOf(StartPeriod) >= DateOf(dtStartDate.Date))
      and (DateOf(StartPeriod) <= DateOf(dtEndDate.Date))
      and (not bLast) do
    begin
      EndPeriod := IncMonth(StartPeriod, 3) - 1;

      if DateOf(EndPeriod) >= DateOf(dtEndDate.Date) then
      begin
        EndPeriod := IncDay(dtEndDate.Date, -1);
        bLast := True;
      end;

      oDataset.Append;
      oDataset.FieldByName('PERIODCODE').AsString := FormatDateTime('MM/YYYY', StartPeriod);
      oDataset.FieldByName('PERIODNAME').AsString := FormatDateTime('MM/YYYY', StartPeriod);
      oDataset.FieldByName('STARTDATE').AsDateTime := StartPeriod;
      oDataset.FieldByName('ENDDATE').AsDateTime := EndPeriod;
      oDataset.FieldByName('STATUS').AsString := 'O';
      oDataset.FieldByName('SPECIAL').AsString := '0';
      oDataset.Post;

      StartPeriod := IncDay(EndPeriod, 1);
    end;

    oDataset.Append;
    oDataset.FieldByName('PERIODCODE').AsString := '13/' + IntToStr(StartYear);
    oDataset.FieldByName('PERIODNAME').AsString := 'Closing Period ' + IntToStr(StartYear);
    oDataset.FieldByName('STARTDATE').AsDateTime := dtEndDate.Date;
    oDataset.FieldByName('ENDDATE').AsDateTime := dtEndDate.Date;
    oDataset.FieldByName('STATUS').AsString := 'O';
    oDataset.FieldByName('SPECIAL').AsString := '1';
    oDataset.Post;

  end;
end;

procedure TfrmFiscalYear.btnMonthlyPeriodClick(Sender: TObject);
var
  StartPeriod, EndPeriod: TDate;
  StartYear, EndYear: Word;
  oDataset: TDataset;
  bLast: Boolean;
begin
  inherited;
  if (dtStartDate.EditValue <> Null) and (dtEndDate.EditValue <> Null) and
    (dtEndDate.Date > dtStartDate.Date) then
  begin
    oDataset := dsFiscalPeriod.DataSet;
    StartYear := YearOf(dtStartDate.Date);
    EndYear := YearOf(dtEndDate.Date);

    //Request by Irvan 20160809
//    oDataset.Append;
//    oDataset.FieldByName('PERIODCODE').AsString := '00/' + IntToStr(StartYear);
//    oDataset.FieldByName('PERIODNAME').AsString := 'Opening Period ' + IntToStr(StartYear);
//    oDataset.FieldByName('STARTDATE').AsDateTime := dtStartDate.Date;
//    oDataset.FieldByName('ENDDATE').AsDateTime := dtStartDate.Date;
//    oDataset.FieldByName('STATUS').AsString := 'O';
//    oDataset.FieldByName('SPECIAL').AsString := '1';
//    oDataset.Post;

    bLast := False;
    StartPeriod := dtStartDate.Date;

    while (DateOf(StartPeriod) >= DateOf(dtStartDate.Date))
      and (DateOf(StartPeriod) <= DateOf(dtEndDate.Date))
      and (not bLast) do
    begin
      EndPeriod := IncMonth(StartPeriod, 1) - 1;

      if DateOf(EndPeriod) >= DateOf(dtEndDate.Date) then
      begin
        EndPeriod := IncDay(dtEndDate.Date, -1);
        bLast := True;
      end;

      oDataset.Append;
      oDataset.FieldByName('PERIODCODE').AsString := FormatDateTime('MM/YYYY', StartPeriod);
      oDataset.FieldByName('PERIODNAME').AsString := FormatDateTime('MMMM YYYY', StartPeriod);
      oDataset.FieldByName('STARTDATE').AsDateTime := StartPeriod;
      oDataset.FieldByName('ENDDATE').AsDateTime := EndPeriod;
      oDataset.FieldByName('STATUS').AsString := 'O';
      oDataset.FieldByName('SPECIAL').AsString := '0';
      oDataset.Post;

      StartPeriod := IncDay(EndPeriod, 1);
    end;

    oDataset.Append;
    oDataset.FieldByName('PERIODCODE').AsString := '13/' + IntToStr(StartYear);
    oDataset.FieldByName('PERIODNAME').AsString := 'Closing Period ' + IntToStr(StartYear);
    oDataset.FieldByName('STARTDATE').AsDateTime := dtEndDate.Date;
    oDataset.FieldByName('ENDDATE').AsDateTime := dtEndDate.Date;
    oDataset.FieldByName('STATUS').AsString := 'O';
    oDataset.FieldByName('SPECIAL').AsString := '1';
    oDataset.Post;

  end;
end;

procedure TfrmFiscalYear.cdsFiscalPeriodBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFiscalPeriod.State in [dsInsert] then
  begin
    cdsFiscalPeriodPERIODID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_GL_PERIOD');
    cdsFiscalPeriodID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_GL_PERIOD');
  end;
end;

procedure TfrmFiscalYear.cdsFiscalYearBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsFiscalYear.State in [dsInsert] then
  begin
    cdsFiscalYearFISCALYEARID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_GL_FISCALYEAR');
    cdsFiscalYearID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_GL_FISCALYEAR');
  end;
end;

procedure TfrmFiscalYear.cdsFiscalYearNewRecord(DataSet: TDataSet);
var
  dtTrans: TDate;
begin
  inherited;
  dtTrans := dmGlobal.RemoteServer.GetTransDate;
  cdsFiscalYearSTARTDATE.AsDateTime := StartOfTheYear(dtTrans);
  cdsFiscalYearENDDATE.AsDateTime := EndOfTheYear(dtTrans);
  cdsFiscalYearSTATUS.AsString := 'O';
end;

Initialization
  RegisterClass(TfrmFiscalYear);

end.
