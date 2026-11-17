unit FormPeriod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmPeriod = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsPeriod: TNClientDataset;
    cdsPeriodPERIODID: TLargeintField;
    cdsPeriodPERIODCODE: TStringField;
    cdsPeriodPERIODNAME: TStringField;
    cdsPeriodSTARTDATE: TDateField;
    cdsPeriodENDDATE: TDateField;
    cdsPeriodFISCALYEARID: TLargeintField;
    cdsPeriodSTATUS: TStringField;
    cdsPeriodSPECIAL: TStringField;
    cdsPeriodMODDA: TDateTimeField;
    cdsPeriodMODUI: TStringField;
    cdsPeriodAPPDA: TDateTimeField;
    cdsPeriodAPPUI: TStringField;
    cdsPeriodUNDER4Y: TIntegerField;
    cdsPeriodUNDER4YDA: TDateTimeField;
    cdsPeriodNOTES4Y: TStringField;
    cdsPeriodISDEL: TIntegerField;
    cdsPeriodID: TLargeintField;
    procedure cdsPeriodBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriod: TfrmPeriod;

implementation

{$R *.dfm}

uses DataGlobal, FormPeriodList;

procedure TfrmPeriod.cdsPeriodBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsPeriod.State in [dsInsert] then
  begin
    cdsPeriodPERIODID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_GL_PERIOD');
    cdsPeriodID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_GL_PERIOD');
  end;
end;

Initialization
  RegisterClass(TfrmPeriod);

end.
