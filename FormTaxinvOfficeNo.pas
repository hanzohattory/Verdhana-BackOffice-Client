unit FormTaxinvOfficeNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset;

type
  TfrmTaxInvOfficeNo = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsTaxOffice: TNClientDataset;
    cdsTaxOfficeTAXNO: TIntegerField;
    cdsTaxOfficeTAX_NODATE: TDateField;
    cdsTaxOfficeSTART_TAXNO: TStringField;
    cdsTaxOfficeEND_TAXNO: TStringField;
    cdsTaxOfficeTOTAL_TAXNO: TIntegerField;
    cdsTaxOfficeUSED_TAXNO: TIntegerField;
    cdsTaxOfficeLAST_TAXNO: TStringField;
    cdsTaxOfficeMODDA: TDateTimeField;
    cdsTaxOfficeMODUI: TStringField;
    cdsTaxOfficeAPPDA: TDateTimeField;
    cdsTaxOfficeAPPUI: TStringField;
    cdsTaxOfficeISDEL: TIntegerField;
    cdsTaxOfficeID: TLargeintField;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaxInvOfficeNo: TfrmTaxInvOfficeNo;

implementation

{$R *.dfm}

procedure TfrmTaxInvOfficeNo.btnOKClick(Sender: TObject);
var
  fJumlahAwal, fJumlahAkhir, fJumlahNomer,
  fJumlahTerpakai, fSisaJumlah: Double;

  sJumlahNomer: string;
begin

  fJumlahAwal   := StrToFloatDef(StringReplace(dsSubject.DataSet.FieldByName('START_TAXNO').AsString, '.', '', [rfReplaceAll]), 0);
  fJumlahAkhir  := StrToFloatDef(StringReplace(dsSubject.DataSet.FieldByName('END_TAXNO').AsString, '.', '', [rfReplaceAll]), 0);

  fJumlahNomer := fJumlahAkhir - fJumlahAwal + 1;

  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
    dsSubject.DataSet.FieldByName('TOTAL_TAXNO').Value := fJumlahNomer;

  inherited;
end;

end.
