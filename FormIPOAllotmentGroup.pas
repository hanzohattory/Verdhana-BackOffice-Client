unit FormIPOAllotmentGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit, Datasnap.DBClient,
  NClientDataset, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, dxLayoutLookAndFeels;

type
  TfrmIPOAllotmentGroup = class(TfrmEditorData)
    cdsIPOAllotmentGroup: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    GroupName: TdxLayoutItem;
    txtNetFee: TcxDBCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtVAT: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    txtWHT: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsIPOAllotmentGroupALLOTMENT_GROUPID: TLargeintField;
    cdsIPOAllotmentGroupALLOTMENT_GROUPNAME: TStringField;
    cdsIPOAllotmentGroupNETFEE: TFloatField;
    cdsIPOAllotmentGroupVAT: TFloatField;
    cdsIPOAllotmentGroupWHT: TFloatField;
    cdsIPOAllotmentGroupIPOID: TLargeintField;
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
    cdsIPOAllotmentGroupTRANSDATE: TDateField;
    cdsIPOAllotmentGroupDUEDATE: TDateField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
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
  frmIPOAllotmentGroup: TfrmIPOAllotmentGroup;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmIPOAllotmentGroup.btnOKClick(Sender: TObject);
begin
  if cdsIPOAllotmentGroup.State in dsEditModes then
  begin
    cdsIPOAllotmentGroupALLOTMENT_GROUPID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_ALLOTMENT_GROUP');
    cdsIPOAllotmentGroupIPOID.AsInteger              := FIPOID;
    cdsIPOAllotmentGroup.Post;
    cdsIPOAllotmentGroup.ApplyUpdates(-1);
  end;
  inherited;
end;

procedure TfrmIPOAllotmentGroup.FormShow(Sender: TObject);
begin
  inherited;
  if not cdsIPOAllotmentGroup.Active then
  begin
    cdsIPOAllotmentGroup.Params[0].AsInteger := FIPOID;
    cdsIPOAllotmentGroup.Open;
  end;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := FIPOID;
  cdsIPO.Open;

  if FAddNew then
  begin
    if FGroupID = 0 then
    begin
      cdsIPOAllotmentGroup.Append;
      cdsIPOAllotmentGroupNETFEE.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOAllotmentGroupVAT.AsFloat    := cdsIPOVAT.AsFloat;
      cdsIPOAllotmentGroupWHT.AsFloat    := cdsIPOWHT.AsFloat;

      cdsIPOAllotmentGroupTRANSDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
      cdsIPOAllotmentGroupDUEDATE.AsDateTime   := cdsIPOAllotmentGroupTRANSDATE.AsDateTime;
    end
    else
    begin
      cdsIPOAllotmentGroup.Locate('ALLOTMENT_GROUPID', FGroupID, []);
      cdsIPOAllotmentGroup.Edit;
    end;
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
