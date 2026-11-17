unit FormTrialBalance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControl, dxBar, Vcl.ImgList, NDatasetAction,
  Vcl.ActnList, NActionPermission, Vcl.Menus, Datasnap.DBClient, NClientDataset,
  System.StrUtils, NReportRPC, frxClass, frxDBSet;

type
  TfrmTrialBalance = class(TfrmBasic)
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    luFiscalYear: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    luPeriod: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    luCCY: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwTrialBalance: TcxGridDBBandedTableView;
    cdsTrialBalance: TNClientDataset;
    cdsTrialBalanceGLACCOUNTID: TIntegerField;
    cdsTrialBalanceGLACCOUNTCODE: TStringField;
    cdsTrialBalanceGLACCOUNTNAME: TStringField;
    cdsTrialBalanceCCY: TStringField;
    cdsTrialBalanceL1GROUPCODE: TStringField;
    cdsTrialBalanceL1GROUPNAME: TStringField;
    cdsTrialBalanceBEGDEBIT: TFloatField;
    cdsTrialBalanceBEGCREDIT: TFloatField;
    cdsTrialBalanceBEGBAL: TFloatField;
    cdsTrialBalanceENDDEBIT: TFloatField;
    cdsTrialBalanceENDCREDIT: TFloatField;
    cdsTrialBalanceENDBAL: TFloatField;
    dsTrialBalance: TDataSource;
    gvwTrialBalanceGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwTrialBalanceGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwTrialBalanceCCY: TcxGridDBBandedColumn;
    gvwTrialBalanceL1GROUPNAME: TcxGridDBBandedColumn;
    gvwTrialBalanceENDDEBIT: TcxGridDBBandedColumn;
    gvwTrialBalanceENDCREDIT: TcxGridDBBandedColumn;
    cdsTrialBalanceENDBALANCE: TFloatField;
    gvwTrialBalanceENDBALANCE: TcxGridDBBandedColumn;
    gvwTrialBalanceBEGBAL: TcxGridDBBandedColumn;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    dbTrialBalance: TfrxDBDataset;
    ReportContainer: TNReportContainer;
    procedure FormShow(Sender: TObject);
    procedure luPeriodEnter(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure cdsTrialBalanceCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ReportContainerPrepareData(AFormParam: TForm);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrialBalance: TfrmTrialBalance;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmTrialBalance.actLoadDataExecute(Sender: TObject);
var
  sMOnth, sYear: string;
  iMonth: Integer;
  sPerCode: string;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsluGLPeriod.Locate('PERIODID', VarArrayOf([luPeriod.EditValue]), []) then
    begin
      sMOnth := LeftStr(cdsluGLPeriodPERIODCODE.AsString,2);
      sYear := RightStr(cdsluGLPeriodPERIODCODE.AsString, 4);
      iMonth := strToInt(sMOnth);
      iMonth := iMonth - 1;

      sPerCode := FormatFloat('00',iMonth) + '/' + sYear;

      cdsGLPeriodByCode.Close;
      cdsGLPeriodByCode.Params[0].AsString := sPerCode;
      cdsGLPeriodByCode.Open;

      if not cdsGLPeriodByCode.IsEmpty then
      begin
        cdsTrialBalance.Close;
        cdsTrialBalance.Params[0].AsInteger := cdsGLPeriodByCodePERIODID.AsInteger;
        cdsTrialBalance.Params[1].AsInteger := cdsluGLPeriodPERIODID.AsInteger;
        cdsTrialBalance.Params[2].AsString := luCCY.EditValue;

        cdsTrialBalance.Open;;


      end;


    end;


  end;
end;

procedure TfrmTrialBalance.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.ExecuteReport;
end;

procedure TfrmTrialBalance.cdsTrialBalanceCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsTrialBalanceENDBALANCE.AsFloat := cdsTrialBalanceBEGBAL.AsFloat + cdsTrialBalanceENDBAL.AsFloat;
end;

procedure TfrmTrialBalance.FormShow(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuFiscalYear.Close;
    cdsLuFiscalYear.Open;

    cdsFiscalYearByDate.Close;
    cdsFiscalYearByDate.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsFiscalYearByDate.Params[1].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsFiscalYearByDate.Open;

    if not cdsFiscalYearByDate.IsEmpty then
    begin
      luFiscalYear.EditValue := cdsFiscalYearByDateFISCALYEARID.AsInteger;

      cdsluGLPeriod.Close;
      cdsluGLPeriod.Params[0].AsInteger := 1;

      if VarIsNull(luFiscalYear.EditValue) or (VarIsEmpty(luFiscalYear.EditingValue)) then
      begin
        cdsluGLPeriod.Params[1].AsInteger := 0;
      end
      else
      begin
        cdsluGLPeriod.Params[1].AsInteger := luFiscalYear.EditingValue;
      end;

      cdsluGLPeriod.Params[2].AsInteger := 1;
      cdsluGLPeriod.Open;

    end;


    cdsGLPeriodByDate.Close;
    cdsGLPeriodByDate.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsGLPeriodByDate.Params[1].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsGLPeriodByDate.Open;

    if not cdsGLPeriodByDate.IsEmpty then
    begin
      luPeriod.EditValue := cdsGLPeriodByDatePERIODID.AsInteger;
    end;





  end;
end;

procedure TfrmTrialBalance.luPeriodEnter(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsluGLPeriod.Close;
    cdsluGLPeriod.Params[0].AsInteger := 1;

    if VarIsNull(luFiscalYear.EditValue) or (VarIsEmpty(luFiscalYear.EditingValue)) then
    begin
      cdsluGLPeriod.Params[1].AsInteger := 0;
    end
    else
    begin
      cdsluGLPeriod.Params[1].AsInteger := luFiscalYear.EditingValue;
    end;

    cdsluGLPeriod.Params[2].AsInteger := 1;
    cdsluGLPeriod.Open;
  end;
end;

procedure TfrmTrialBalance.ReportContainerPrepareData(AFormParam: TForm);
begin
  inherited;
  actLoadData.Execute;
end;

Initialization
RegisterClass(TfrmTrialBalance);

end.
