unit FormEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxMemo, cxDBEdit, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxImageComboBox, cxClasses, Vcl.ComCtrls, dxCore,
  Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls,
  dxLayoutLookAndFeels;

type
  TfrmEvent = class(TfrmEditorData)
    cxDBTextEdit2: TcxDBTextEdit;
    L2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    L3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    L4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    L5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    L7: TdxLayoutItem;
    luStatus: TcxDBImageComboBox;
    L9: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsEvent: TNClientDataset;
    cdsEventEVID: TIntegerField;
    cdsEventEVSTARTDATE: TDateField;
    cdsEventEVENDDATE: TDateField;
    cdsEventEVSTATUS: TStringField;
    cdsEventPIC: TStringField;
    cdsEventEVDESCRIPTION: TStringField;
    cdsEventMODDA: TDateTimeField;
    cdsEventMODUI: TStringField;
    cdsEventAPPDA: TDateTimeField;
    cdsEventAPPUI: TStringField;
    cdsEventUNDER4Y: TIntegerField;
    cdsEventUNDER4YDA: TDateTimeField;
    cdsEventNOTES4Y: TStringField;
    cdsEventISDEL: TIntegerField;
    cdsEventID: TLargeintField;
    cdsEventEVNAME: TStringField;
    procedure cdsEventNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvent: TfrmEvent;

implementation

{$R *.dfm}

uses FormEventList, DataGlobal;

procedure TfrmEvent.cdsEventNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEventEVID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_EVENT');
  cdsEventEVSTATUS.AsString := '0';
end;

Initialization
  RegisterClass(TfrmEvent);

end.
