unit FormDOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMemo, Datasnap.DBClient,
  NClientDataset;

type
  TfrmDOT = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBMemo2: TcxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsDOT: TNClientDataset;
    cdsDOTDOT_ID: TIntegerField;
    cdsDOTREAL_NAME: TStringField;
    cdsDOTALIAS_NAME: TStringField;
    cdsDOTPOB: TStringField;
    cdsDOTDOB: TDateField;
    cdsDOTNATIONALITY: TStringField;
    cdsDOTADDRESS: TMemoField;
    cdsDOTIDCARD_NO: TStringField;
    cdsDOTDESCRIPTION: TMemoField;
    cdsDOTVALID_DATE: TDateField;
    cdsDOTEXP_DATE: TDateField;
    cdsDOTSTAT: TStringField;
    cdsDOTMODDA: TDateTimeField;
    cdsDOTMODUI: TStringField;
    cdsDOTAPPDA: TDateTimeField;
    cdsDOTAPPUI: TStringField;
    cdsDOTUNDER4Y: TIntegerField;
    cdsDOTUNDER4YDA: TDateTimeField;
    cdsDOTNOTES4Y: TStringField;
    cdsDOTISDEL: TIntegerField;
    cdsDOTID: TLargeintField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDOT: TfrmDOT;

implementation

{$R *.dfm}

uses FormDOTList, DataGlobal;

procedure TfrmDOT.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open;
  end;
end;

Initialization
  RegisterClass(TfrmDOT);

end.
