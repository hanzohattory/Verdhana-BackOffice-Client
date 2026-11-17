unit FormAuditTrail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxCalendar, cxCheckBox, cxDBLookupComboBox, dxBar, cxBarEditItem,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxClasses,
  Vcl.ImgList, Vcl.ActnList, NDatasetAction, Datasnap.DBClient, NClientDataset;

type
  TfrmAuditTrail = class(TfrmBasic)
    aclBrowse: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuLoadData: TdxBarButton;
    grdBrowse: TcxGrid;
    gvwAudit: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    chkAll: TcxBarEditItem;
    luUser: TcxBarEditItem;
    cdsAuditByDate: TNClientDataset;
    cdsAuditLogByDate: TNClientDataset;
    cdsAuditByDateID: TLargeintField;
    cdsAuditByDateMODULE: TStringField;
    cdsAuditByDateNOTES: TMemoField;
    cdsAuditByDateKEYID: TStringField;
    cdsAuditByDateWRITEDATE: TDateTimeField;
    cdsAuditByDateWRITEUID: TStringField;
    cdsAuditByDateACCESSID: TLargeintField;
    cdsAuditByDatePROTOCOL: TStringField;
    cdsAuditByDateIPADDRESS: TStringField;
    cdsAuditByDateCOMPNAME: TStringField;
    cdsAuditByDateMACADDRESS: TStringField;
    cdsAuditLogByDateID: TLargeintField;
    cdsAuditLogByDateSEQID: TIntegerField;
    cdsAuditLogByDateTABLENAME: TStringField;
    cdsAuditLogByDateFIELDNAME: TStringField;
    cdsAuditLogByDateFIELDID: TStringField;
    cdsAuditLogByDateSTATUS: TStringField;
    cdsAuditLogByDateOLDVALUE: TMemoField;
    cdsAuditLogByDateNEWVALUE: TMemoField;
    grdBrowseLevel2: TcxGridLevel;
    gvwAuditLog: TcxGridDBBandedTableView;
    dsAuditByDate: TDataSource;
    dsAuditLogByDate: TDataSource;
    gvwAuditID: TcxGridDBBandedColumn;
    gvwAuditMODULE: TcxGridDBBandedColumn;
    gvwAuditNOTES: TcxGridDBBandedColumn;
    gvwAuditKEYID: TcxGridDBBandedColumn;
    gvwAuditWRITEDATE: TcxGridDBBandedColumn;
    gvwAuditWRITEUID: TcxGridDBBandedColumn;
    gvwAuditACCESSID: TcxGridDBBandedColumn;
    gvwAuditPROTOCOL: TcxGridDBBandedColumn;
    gvwAuditIPADDRESS: TcxGridDBBandedColumn;
    gvwAuditCOMPNAME: TcxGridDBBandedColumn;
    gvwAuditMACADDRESS: TcxGridDBBandedColumn;
    gvwAuditLogID: TcxGridDBBandedColumn;
    gvwAuditLogSEQID: TcxGridDBBandedColumn;
    gvwAuditLogTABLENAME: TcxGridDBBandedColumn;
    gvwAuditLogFIELDNAME: TcxGridDBBandedColumn;
    gvwAuditLogFIELDID: TcxGridDBBandedColumn;
    gvwAuditLogSTATUS: TcxGridDBBandedColumn;
    gvwAuditLogOLDVALUE: TcxGridDBBandedColumn;
    gvwAuditLogNEWVALUE: TcxGridDBBandedColumn;
    actViewAuditByModule: TNAction;
    actViewAuditByTable: TNAction;
    actViewAuditByField: TNAction;
    popBrowse: TPopupMenu;
    ViewAuditLogByModule1: TMenuItem;
    ViewAuditLogByTable1: TMenuItem;
    ViewAuditLogByField1: TMenuItem;
    cdsAuditByDateDEFAULTFORM: TStringField;
    actViewCurrentData: TNAction;
    N1: TMenuItem;
    ViewCurrentData1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure actViewAuditByModuleExecute(Sender: TObject);
    procedure actViewAuditByTableExecute(Sender: TObject);
    procedure actViewAuditByFieldExecute(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
    procedure actViewCurrentDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuditTrail: TfrmAuditTrail;

implementation

{$R *.dfm}

uses DataGlobal, DateUtils, FormAuditLog, ClassClientConst;

procedure TfrmAuditTrail.actLoadDataExecute(Sender: TObject);
var
  dtFrom, dtTo: TDate;
  sAll, sUser: String;
begin
  inherited;
  dtFrom := DateOf(VarToDateTime(dtStart.EditValue));
  dtTo := DateOf(IncDay(VarToDateTime(dtEnd.EditValue), 1));
  sAll := VarToStr(chkAll.EditValue);
  sUser := VarToStr(luUser.EditValue);

  cdsAuditByDate.Close;
  cdsAuditByDate.Params[0].AsDate := dtFrom;
  cdsAuditByDate.Params[1].AsDate := dtTo;
  cdsAuditByDate.Params[2].AsString := sAll;
  cdsAuditByDate.Params[3].AsString := sUser;
  cdsAuditByDate.Open;

  cdsAuditLogByDate.Close;
  if not cdsAuditByDate.IsEmpty then
  begin
    cdsAuditLogByDate.Params[0].AsDate := dtFrom;
    cdsAuditLogByDate.Params[1].AsDate := dtTo;
    cdsAuditLogByDate.Params[2].AsString := sAll;
    cdsAuditLogByDate.Params[3].AsString := sUser;
    cdsAuditLogByDate.Open;
  end;

  actViewAuditByModule.Enabled := not cdsAuditByDate.IsEmpty;
  actViewAuditByTable.Enabled := not cdsAuditLogByDate.IsEmpty;
  actViewAuditByField.Enabled := not cdsAuditLogByDate.IsEmpty;
end;

procedure TfrmAuditTrail.actViewAuditByFieldExecute(Sender: TObject);
begin
  inherited;
  frmAuditLog.ViewAuditByField(cdsAuditLogByDateTABLENAME.AsString, cdsAuditLogByDateFIELDNAME.AsString, cdsAuditLogByDateFIELDID.AsString);
end;

procedure TfrmAuditTrail.actViewAuditByModuleExecute(Sender: TObject);
begin
  inherited;
  frmAuditLog.ViewAuditByModule(cdsAuditByDateMODULE.AsString, cdsAuditByDateKEYID.AsString);
end;

procedure TfrmAuditTrail.actViewAuditByTableExecute(Sender: TObject);
begin
  inherited;
  frmAuditLog.ViewAuditByTable(cdsAuditLogByDateTABLENAME.AsString, cdsAuditLogByDateFIELDID.AsString);
end;

procedure TfrmAuditTrail.actViewCurrentDataExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsAuditByDateDEFAULTFORM.IsNull)
    and (Trim(cdsAuditByDateDEFAULTFORM.AsString) <> '') then
  begin
    sKey := cdsAuditByDateKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsAuditByDateDEFAULTFORM.AsString, sKey, pkRead);
  end;
end;

procedure TfrmAuditTrail.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  if VarToStr(chkAll.EditValue) = '1' then
    luUser.Visible := ivNever
  else
    luUser.Visible := ivAlways;
end;

procedure TfrmAuditTrail.FormCreate(Sender: TObject);
begin
  inherited;
  chkAll.EditValue := 1;
  luUser.EditValue := dmGlobal.UserID;
  luUser.Visible := ivNever;
  dtStart.EditValue := Now;
  dtEnd.EditValue := Now;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuUser.Close;
    cdsLuUser.Open;
  end;
end;

Initialization
  RegisterClass(TfrmAuditTrail);

end.
