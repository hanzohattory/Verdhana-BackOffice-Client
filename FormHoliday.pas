unit FormHoliday;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TfrmHoliday = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsHoliday: TNClientDataset;
    cdsHolidayHOLID: TLargeintField;
    cdsHolidayMARKETCODE: TStringField;
    cdsHolidayHOLDATE: TDateField;
    cdsHolidayHOLDESCRIPTION: TStringField;
    cdsHolidayMODDA: TDateTimeField;
    cdsHolidayMODUI: TStringField;
    cdsHolidayAPPDA: TDateTimeField;
    cdsHolidayAPPUI: TStringField;
    cdsHolidayUNDER4Y: TIntegerField;
    cdsHolidayUNDER4YDA: TDateTimeField;
    cdsHolidayNOTES4Y: TStringField;
    cdsHolidayISDEL: TIntegerField;
    cdsHolidayID: TLargeintField;
    procedure cdsHolidayNewRecord(DataSet: TDataSet);
    procedure cdsHolidayBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHoliday: TfrmHoliday;

implementation

{$R *.dfm}

uses FormHolidayList, DataGlobal;

procedure TfrmHoliday.cdsHolidayBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsHoliday.State in [dsInsert] then
  begin
    if (cdsHolidayHOLID.AsLargeInt = -1) or (cdsHolidayHOLID.IsNull) then
      cdsHolidayHOLID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_HOLIDAY');
  end;
end;

procedure TfrmHoliday.cdsHolidayNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsHolidayHOLID.AsLargeInt := -1;
  cdsHolidayMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsHolidayHOLDATE.AsDateTime := Now;
end;

Initialization
  RegisterClass(TfrmHoliday);

end.
