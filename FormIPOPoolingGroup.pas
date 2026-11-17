unit FormIPOPoolingGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit, Datasnap.DBClient,
  NClientDataset, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutLookAndFeels;

type
  TfrmIPOPoolingGroup = class(TfrmEditorData)
    cdsIPOPoolingGroup: TNClientDataset;
    cdsIPOPoolingGroupNETFEE: TFloatField;
    cdsIPOPoolingGroupVAT: TFloatField;
    cdsIPOPoolingGroupWHT: TFloatField;
    cdsIPOPoolingGroupIPOID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    GroupName: TdxLayoutItem;
    txtNetFee: TcxDBCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtVAT: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    txtWHT: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsIPO: TNClientDataset;
    cdsIPOIPOID: TIntegerField;
    cdsIPOIPOCODE: TStringField;
    cdsIPOSCRIPCODE: TStringField;
    cdsIPOSCRIPNAME: TStringField;
    cdsIPOENTRYDATE: TDateField;
    cdsIPOIPODATE: TDateField;
    cdsIPOORDERFROMDATE: TDateField;
    cdsIPOORDERTODATE: TDateField;
    cdsIPONETFEE: TFloatField;
    cdsIPOVAT: TFloatField;
    cdsIPOWHT: TFloatField;
    cdsIPOCCY: TStringField;
    cdsIPOBOTPRICE: TFloatField;
    cdsIPOTOPPRICE: TFloatField;
    cdsIPOFIXEDPRICE: TFloatField;
    cdsIPOACCBANKID: TIntegerField;
    cdsIPOGUARANTEETYPE: TStringField;
    cdsIPOCONDATE: TDateField;
    cdsIPOREMARK1: TStringField;
    cdsIPOREMARK2: TStringField;
    cdsIPOSTATUS: TStringField;
    cdsIPOMODDA: TDateTimeField;
    cdsIPOMODUI: TStringField;
    cdsIPOAPPDA: TDateTimeField;
    cdsIPOAPPUI: TStringField;
    cdsIPOUNDER4Y: TIntegerField;
    cdsIPOUNDER4YDA: TDateTimeField;
    cdsIPONOTES4Y: TStringField;
    cdsIPOISDEL: TIntegerField;
    cdsIPOID: TLargeintField;
    cdsIPOCOMMITMENTAMT: TFloatField;
    cdsIPOABSORBAMT: TFloatField;
    cdsIPOBGAMT: TFloatField;
    cdsIPOHAIRCUT: TIntegerField;
    cdsIPOBAEID: TIntegerField;
    cdsIPODUEDATE: TDateField;
    cdsIPODISTRIBUTIONDATE: TDateField;
    cdsIPOLISTINGDATE: TDateField;
    cdsIPOREFUNDDATE: TDateField;
    cdsIPOISINCODE: TStringField;
    cdsIPOISINDATE: TDateTimeField;
    cdsIPOIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOINSTRUMENT_ID: TLargeintField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsIPOACCID: TIntegerField;
    cdsIPOACCCODE: TStringField;
    cdsIPOACCNAME: TStringField;
    cdsIPOACCNO: TStringField;
    cdsIPOIPO_TYPE: TStringField;
    cdsIPOIPO_PRODUCT: TStringField;
    cdsIPOCOUPON_RATE: TFloatField;
    cdsIPOMATURITYDATE: TDateField;
    cdsIPOCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOISSUER_TYPE: TStringField;
    cdsIPOPoolingGroupPOOLING_GROUPID: TLargeintField;
    cdsIPOPoolingGroupPOOLING_GROUPNAME: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsIPOPoolingGroupTRANSDATE: TDateField;
    cdsIPOPoolingGroupDUEDATE: TDateField;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsIPOCOMMITMENTQTY: TLargeintField;
    cdsIPOABSORBQTY: TLargeintField;
    cdsIPOUSEGROUP: TStringField;
    cdsIPOMNGMT_FEE: TFloatField;
    cdsIPOUNDERWT_FEE: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FAddNew: Boolean;
    FGroupID: Integer;
    FIPOID: Integer;
    { Private declarations }
  public
    { Public declarations }
    property AddNew: Boolean read FAddNew write FAddNew;
    property GroupID: Integer read FGroupID write FGroupID;
    property IPOID: Integer read FIPOID write FIPOID;
  end;

var
  frmIPOPoolingGroup: TfrmIPOPoolingGroup;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmIPOPoolingGroup.btnOKClick(Sender: TObject);
begin
  if cdsIPOPoolingGroup.State in dsEditModes then
  begin
    cdsIPOPoolingGroupPOOLING_GROUPID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_POOLING_GROUP');
    cdsIPOPoolingGroupIPOID.AsInteger            := FIPOID;
    cdsIPOPoolingGroup.Post;
    cdsIPOPoolingGroup.ApplyUpdates(-1);
  end;
  inherited;
end;

procedure TfrmIPOPoolingGroup.FormShow(Sender: TObject);
begin
  inherited;
  if not cdsIPOPoolingGroup.Active then
  begin
    cdsIPOPoolingGroup.Params[0].AsInteger := FIPOID;
    cdsIPOPoolingGroup.Open;
  end;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := FIPOID;
  cdsIPO.Open;

  if FAddNew then
  begin
    if FGroupID = 0 then
    begin
      cdsIPOPoolingGroup.Append;
      cdsIPOPoolingGroupNETFEE.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOPoolingGroupVAT.AsFloat    := cdsIPOVAT.AsFloat;
      cdsIPOPoolingGroupWHT.AsFloat    := cdsIPOWHT.AsFloat;

      cdsIPOPoolingGroupTRANSDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
      cdsIPOPoolingGroupDUEDATE.AsDateTime   := cdsIPOPoolingGroupTRANSDATE.AsDateTime;
    end
    else
      cdsIPOPoolingGroup.Edit;
  end;

  txtNetFee.ParentColor         := Not FAddNew;
  txtNetFee.Properties.ReadOnly := Not FAddNew;
  txtNetFee.TabStop             := FAddNew;

  txtVAT.ParentColor         := Not FAddNew;
  txtVAT.Properties.ReadOnly := Not FAddNew;
  txtVAT.TabStop             := FAddNew;

  txtWHT.ParentColor         := Not FAddNew;
  txtWHT.Properties.ReadOnly := Not FAddNew;
  txtWHT.TabStop             := FAddNew;
end;

end.
