unit FormReferralType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxGroupBox, cxRadioGroup;

type
  TfrmReferralType = class(TfrmEditorData)
    cdsReferralType: TNClientDataset;
    cdsReferralTypeREFERRAL_TYPE: TStringField;
    cdsReferralTypeREFERRAL_TYPE_DESC: TStringField;
    cdsReferralTypeMODDA: TDateTimeField;
    cdsReferralTypeMODUI: TStringField;
    cdsReferralTypeAPPDA: TDateTimeField;
    cdsReferralTypeAPPUI: TStringField;
    cdsReferralTypeUNDER4Y: TIntegerField;
    cdsReferralTypeUNDER4YDA: TDateTimeField;
    cdsReferralTypeNOTES4Y: TStringField;
    cdsReferralTypeISDEL: TIntegerField;
    cdsReferralTypeID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsReferralTypeREFERRAL_TYPE_ID: TIntegerField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsReferralTypeREFERRAL_GROUP: TStringField;
    procedure cdsReferralTypeNewRecord(DataSet: TDataSet);
    procedure cdsReferralTypeBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReferralType: TfrmReferralType;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReferralType.cdsReferralTypeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsReferralType.State = dsInsert then
  begin
    cdsReferralTypeREFERRAL_TYPE_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_REFERRAL_TYPE');
  end;
end;

procedure TfrmReferralType.cdsReferralTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsReferralTypeREFERRAL_TYPE_ID.AsInteger := -1;
end;

end.
