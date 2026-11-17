unit FormReferral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl;

type
  TfrmReferral = class(TfrmEditorData)
    cdsReferral: TNClientDataset;
    cdsReferralREFERRAL_ID: TIntegerField;
    cdsReferralREFERRAL_CODE: TStringField;
    cdsReferralREFERRAL_DESC: TStringField;
    cdsReferralMODDA: TDateTimeField;
    cdsReferralMODUI: TStringField;
    cdsReferralAPPDA: TDateTimeField;
    cdsReferralAPPUI: TStringField;
    cdsReferralUNDER4Y: TIntegerField;
    cdsReferralUNDER4YDA: TDateTimeField;
    cdsReferralNOTES4Y: TStringField;
    cdsReferralISDEL: TIntegerField;
    cdsReferralID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsReferralREFERRAL_TYPE_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cdsReferralNewRecord(DataSet: TDataSet);
    procedure cdsReferralBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReferral: TfrmReferral;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReferral.cdsReferralBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsReferral.State = dsInsert then
  begin
    cdsReferralREFERRAL_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_REFERRAL');
  end;
end;

procedure TfrmReferral.cdsReferralNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsReferralREFERRAL_ID.AsInteger := -1;
end;

procedure TfrmReferral.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuReferralType.Active then
      cdsLuReferralType.Open
    else
      cdsLuReferralType.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmReferral);

end.
