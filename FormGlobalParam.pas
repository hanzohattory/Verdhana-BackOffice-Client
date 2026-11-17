unit FormGlobalParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxSpinEdit, cxTimeEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxMemo, cxTextEdit,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl;

type
  TfrmGlobalParam = class(TfrmEditorData)
    cdsGlobalParam: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edDate: TcxDBDateEdit;
    edDates: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    edTimes: TdxLayoutItem;
    cdsGlobalParamPRMID: TStringField;
    cdsGlobalParamPRMNAME: TStringField;
    cdsGlobalParamPRMTY: TStringField;
    cdsGlobalParamAPPTYPE: TStringField;
    cdsGlobalParamINTVAL: TIntegerField;
    cdsGlobalParamFLOATVAL: TFloatField;
    cdsGlobalParamSTRVAL: TStringField;
    cdsGlobalParamDATEVAL: TDateTimeField;
    cdsGlobalParamMODDA: TDateTimeField;
    cdsGlobalParamMODUI: TStringField;
    cdsGlobalParamINSDA: TDateTimeField;
    cdsGlobalParamINSUI: TStringField;
    cdsGlobalParamSHOW: TStringField;
    cdsGlobalParamEDIT: TStringField;
    cdsGlobalParamAPPDA: TDateTimeField;
    cdsGlobalParamAPPUI: TStringField;
    cdsGlobalParamUNDER4Y: TIntegerField;
    cdsGlobalParamUNDER4YDA: TDateTimeField;
    cdsGlobalParamNOTES4Y: TStringField;
    cdsGlobalParamISDEL: TIntegerField;
    cdsGlobalParamID: TLargeintField;
    edInteger: TcxDBCurrencyEdit;
    edIntegers: TdxLayoutItem;
    edFloat: TcxDBCurrencyEdit;
    edFloats: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    edStrings: TdxLayoutItem;
    procedure cdsGlobalParamAfterOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideAllEditor;
  public
    { Public declarations }
  end;

var
  frmGlobalParam: TfrmGlobalParam;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGlobalParam.btnOKClick(Sender: TObject);
begin
  if cdsGlobalParamEDIT.AsString = '1' then
    inherited
  else
    MessageDlg('This data is not editable', mtError, [mbOk], 0);

end;

procedure TfrmGlobalParam.cdsGlobalParamAfterOpen(DataSet: TDataSet);
begin
  inherited;
  HideAllEditor;

  if cdsGlobalParamPRMTY.AsString = 'S' then
    edStrings.Visible := True
  else if cdsGlobalParamPRMTY.AsString = 'I' then
    edIntegers.Visible := True
  else if cdsGlobalParamPRMTY.AsString = 'F' then
    edFloats.Visible := True
  else if cdsGlobalParamPRMTY.AsString = 'D' then
    edDates.Visible := True
  else if cdsGlobalParamPRMTY.AsString = 'T' then
    edTimes.Visible := True;
end;

procedure TfrmGlobalParam.HideAllEditor;
begin
  edStrings.Visible  := False;
  edIntegers.Visible := False;
  edFloats.Visible   := False;
  edDates.Visible    := False;
  edTimes.Visible    := False;
end;

Initialization
  RegisterClass(TfrmGlobalParam);

end.
