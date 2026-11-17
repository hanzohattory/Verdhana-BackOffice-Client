unit FormBankCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  Data.DB, Datasnap.DBClient, NClientDataset, cxClasses, dxLayoutLookAndFeels,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, LMDResWinControl;

type
  TfrmBankCompany = class(TfrmEditorData)
    cdsBankCompany: TNClientDataset;
    cdsBankCompanyPayment: TNClientDataset;
    cdsBankCompanyRDN: TNClientDataset;
    cdsBankCompanyPrivate: TNClientDataset;
    Bank: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edCcy: TcxDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cdsBankCompanyBANKID: TIntegerField;
    cdsBankCompanyBNCODE: TStringField;
    cdsBankCompanyBANKACCOUNTNO: TStringField;
    cdsBankCompanyBANKACCOUNTNAME: TStringField;
    cdsBankCompanyBANKACCOUNTBRANCH: TStringField;
    cdsBankCompanyCCYCODE: TStringField;
    cdsBankCompanySTAT: TStringField;
    cdsBankCompanyBANKNAME: TStringField;
    cdsBankCompanyCOA: TStringField;
    cdsBankCompanyACTIVED_DATE: TDateTimeField;
    cdsBankCompanyACTIVED_SYSDATE: TDateTimeField;
    cdsBankCompanyACTIVED_UI: TStringField;
    cdsBankCompanyCLOSED_DATE: TDateTimeField;
    cdsBankCompanyCLOSED_SYSDATE: TDateTimeField;
    cdsBankCompanyCLOSED_UI: TStringField;
    cdsBankCompanyMODDA: TDateTimeField;
    cdsBankCompanyMODUI: TStringField;
    cdsBankCompanyAPPDA: TDateTimeField;
    cdsBankCompanyAPPUI: TStringField;
    cdsBankCompanyUNDER4Y: TIntegerField;
    cdsBankCompanyUNDER4YDA: TDateTimeField;
    cdsBankCompanyNOTES4Y: TStringField;
    cdsBankCompanyISDEL: TIntegerField;
    cdsBankCompanyID: TLargeintField;
    cdsBankCompanyPrivateBNCODE: TStringField;
    cdsBankCompanyPrivateCCYCODE: TStringField;
    cdsBankCompanyPrivateBANKID: TIntegerField;
    cdsBankCompanyPaymentCCYCODE: TStringField;
    cdsBankCompanyPaymentBANKID: TIntegerField;
    cdsBankCompanyRDNBNCODE: TStringField;
    cdsBankCompanyRDNCCYCODE: TStringField;
    cdsBankCompanyRDNBANKID: TIntegerField;
    dsBankCompanyPayment: TDataSource;
    dsBankCompanyRDN: TDataSource;
    dsBankCompanyPrivate: TDataSource;
    cdsBankCompanyRDND: TStringField;
    cdsBankCompanyPrivateD: TStringField;
    cdsBankCompanyPaymentD: TStringField;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    cdsEditBankCompanyPrivate: TNClientDataset;
    cdsEditBankCompanyRDN: TNClientDataset;
    cdsEditBankCompanyPrivateBNCODE: TStringField;
    cdsEditBankCompanyPrivateCCYCODE: TStringField;
    cdsEditBankCompanyPrivateBANKID: TIntegerField;
    cdsEditBankCompanyRDNBNCODE: TStringField;
    cdsEditBankCompanyRDNCCYCODE: TStringField;
    cdsEditBankCompanyRDNBANKID: TIntegerField;
    procedure cdsBankCompanyCCYCODEChange(Sender: TField);
    procedure cdsBankCompanyNewRecord(DataSet: TDataSet);
    procedure cdsBankCompanyBeforePost(DataSet: TDataSet);
    procedure cdsBankCompanyBNCODEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsBankCompanyAfterEdit(DataSet: TDataSet);
    procedure cdsBankCompanyAfterOpen(DataSet: TDataSet);
    procedure cdsBankCompanyRDNAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FIsUpdate: Boolean;

    procedure ReloadData;

    procedure SaveBankCompanyPayment;
    procedure SaveBankCompanyPrivate;
    procedure SaveBankCompanyRDN;
  public
    { Public declarations }
  end;

var
  frmBankCompany: TfrmBankCompany;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmBankCompany.cdsBankCompanyAfterEdit(DataSet: TDataSet);
begin
  inherited;
  ReloadData;

  if cdsBankCompanyPayment.Locate('BANKID', cdsBankCompanyBANKID.AsInteger, []) then
    cdsBankCompanyPaymentD.AsString := '1'
  else
    cdsBankCompanyPaymentD.AsString := '0';

  if cdsBankCompanyRDN.RecordCount = 0 then
    cdsBankCompanyRDND.AsString := '0'
  else
    cdsBankCompanyRDND.AsString := '1';

  if cdsBankCompanyPrivate.RecordCount = 0 then
    cdsBankCompanyPrivateD.AsString := '0'
  else
    cdsBankCompanyPrivateD.AsString := '1';
end;

procedure TfrmBankCompany.cdsBankCompanyAfterOpen(DataSet: TDataSet);
begin
  inherited;
//  ReloadData;

//  FIsUpdate := False;
//  cdsBankCompany.Edit;
//
//  if cdsBankCompanyPayment.Locate('BANKID', cdsBankCompanyBANKID.AsInteger, []) then
//    cdsBankCompanyPaymentD.AsString := '1'
//  else
//    cdsBankCompanyPaymentD.AsString := '0';
//
//  if cdsBankCompanyRDN.RecordCount = 0 then
//    cdsBankCompanyRDND.AsString := '0'
//  else
//    cdsBankCompanyRDND.AsString := '1';
//
//  if cdsBankCompanyPrivate.RecordCount = 0 then
//    cdsBankCompanyPrivateD.AsString := '0'
//  else
//    cdsBankCompanyPrivateD.AsString := '1';
//
//  cdsBankCompany.Post;
//  FIsUpdate := True;
end;

procedure TfrmBankCompany.cdsBankCompanyBeforePost(DataSet: TDataSet);
begin
  inherited;
  if FIsUpdate then
  begin
    if cdsBankCompanyBANKID.AsInteger = -1 then
    begin
      cdsBankCompanyBankID.AsInteger := dmglobal.RemoteServer.GetSeq('TBL_B_BANK_COMPANY');
    end;

    SaveBankCompanyPayment;
    SaveBankCompanyPrivate;
    SaveBankCompanyRDN;
  end;
end;

procedure TfrmBankCompany.cdsBankCompanyBNCODEChange(Sender: TField);
begin
  inherited;
  ReloadData;
end;

procedure TfrmBankCompany.cdsBankCompanyCCYCODEChange(Sender: TField);
begin
  inherited;
  ReloadData;
end;

procedure TfrmBankCompany.cdsBankCompanyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBankCompanyBANKID.AsLargeInt := -1;
  cdsBankCompanyCCYCODE.AsString  := dmglobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmBankCompany.cdsBankCompanyRDNAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not (cdsBankCompany.State in dsEditModes) then
  begin
    FIsUpdate := False;
    if cdsBankCompany.ReadOnly then
      cdsBankCompany.ReadOnly := false;
    cdsBankCompany.Edit;

    if cdsBankCompanyPayment.Locate('BANKID', cdsBankCompanyBANKID.AsInteger, []) then
      cdsBankCompanyPaymentD.AsString := '1'
    else
      cdsBankCompanyPaymentD.AsString := '0';

    if cdsBankCompanyRDN.RecordCount = 0 then
      cdsBankCompanyRDND.AsString := '0'
    else
      cdsBankCompanyRDND.AsString := '1';

    if cdsBankCompanyPrivate.RecordCount = 0 then
      cdsBankCompanyPrivateD.AsString := '0'
    else
      cdsBankCompanyPrivateD.AsString := '1';

    cdsBankCompany.Post;
    FIsUpdate := True;
  end;
end;

procedure TfrmBankCompany.FormShow(Sender: TObject);
begin
  inherited;
  FIsUpdate := True;

  ReloadData;
end;

procedure TfrmBankCompany.ReloadData;
begin
  cdsBankCompanyPayment.Close;
  cdsBankCompanyPayment.Params[0].AsString  := cdsBankCompanyCCYCODE.AsString;
  cdsBankCompanyPayment.Open;

  cdsBankCompanyPrivate.Close;
  cdsbankcompanyPrivate.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
  cdsBankCompanyPrivate.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
  cdsBankCompanyPrivate.Params[2].AsInteger := cdsBankCompanyBANKID.AsInteger;
  cdsBankCompanyPrivate.Open;

  cdsBankCompanyRDN.Close;
  cdsbankcompanyRDN.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
  cdsBankCompanyRDN.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
  cdsBankCompanyRDN.Params[2].AsInteger := cdsBankCompanyBANKID.AsInteger;
  cdsBankCompanyRDN.Open;
end;

procedure TfrmBankCompany.SaveBankCompanyPayment;
begin
  cdsBankCompanyPayment.Close;
  cdsBankCompanyPayment.Params[0].AsString  := cdsBankCompanyCCYCODE.AsString;
  cdsBankCompanyPayment.Open;

  if not cdsBankCompanyPayment.IsEmpty then
    cdsBankCompanyPayment.Delete;

  if cdsBankCompanyPaymentD.AsString='1' then
  begin
    cdsBankCompanyPayment.Append;
    cdsBankCompanyPaymentCCYCODE.AsString := cdsBankCompanyCCYCODE.AsString;
    cdsBankCompanyPaymentBANKID.AsInteger := cdsBankCompanyBANKID.AsInteger;
    cdsBankCompanyPayment.post;

    cdsBankCompanyPayment.ApplyUpdates(-1);
  end;
end;

procedure TfrmBankCompany.SaveBankCompanyPrivate;
begin
  if not cdsBankCompanyPrivate.Active then
  begin
    cdsBankCompanyPrivate.Close;
    cdsbankcompanyPrivate.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
    cdsBankCompanyPrivate.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
    cdsBankCompanyPrivate.Params[2].AsInteger := cdsBankCompanyBANKID.AsInteger;
    cdsBankCompanyPrivate.Open;
  end;

  if cdsBankCompanyPrivate.IsEmpty then
  begin
    if cdsBankCompanyPrivateD.AsString = '1' then
    begin
      cdsEditBankCompanyPrivate.Close;
      cdsEditbankcompanyPrivate.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
      cdsEditBankCompanyPrivate.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
      cdsEditBankCompanyPrivate.Open;

      if cdsEditBankCompanyPrivate.IsEmpty then
      begin
        cdsBankCompanyPrivate.Append;
        cdsBankCompanyPrivateBNCODE.AsString  := cdsBankCompanyBNCODE.AsString;
        cdsBankCompanyPrivateCCYCODE.AsString := cdsBankCompanyCCYCODE.AsString;
        cdsBankCompanyPrivateBANKID.AsInteger := cdsBankCompanyBANKID.AsInteger;
        cdsBankCompanyPrivate.post;

        cdsBankCompanyPrivate.ApplyUpdates(-1);
      end
      else
      begin
        cdsEditBankCompanyPrivate.Edit;
        cdsEditBankCompanyPrivateBANKID.AsInteger := cdsBankCompanyBANKID.AsInteger;
        cdsEditBankCompanyPrivate.post;

        cdsEditBankCompanyPrivate.ApplyUpdates(-1);
      end;
    end;
  end
  else
  begin
    if cdsBankCompanyPrivateD.AsString = '0' then
    begin
      cdsBankCompanyPrivate.Delete;
      cdsBankCompanyPrivate.ApplyUpdates(-1);
    end;
  end
end;

procedure TfrmBankCompany.SaveBankCompanyRDN;
begin
  if not cdsBankCompanyRDN.Active then
  begin
    cdsBankCompanyRDN.Close;
    cdsbankcompanyRDN.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
    cdsBankCompanyRDN.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
    cdsBankCompanyRDN.Params[2].AsInteger := cdsBankCompanyBANKID.AsInteger;
    cdsBankCompanyRDN.Open;
  end;

  if cdsBankCompanyRDN.IsEmpty then
  begin
    if cdsBankCompanyRDND.AsString = '1' then
    begin
      cdsEditBankCompanyRDN.Close;
      cdsEditbankcompanyRDN.Params[0].AsString  := cdsBankCompanyBNCODE.AsString;
      cdsEditBankCompanyRDN.Params[1].AsString  := cdsBankCompanyCCYCODE.AsString;
      cdsEditBankCompanyRDN.Open;

      if cdsEditBankCompanyRDN.IsEmpty then
      begin
        cdsBankCompanyRDN.Append;
        cdsBankCompanyRDNBNCODE.AsString  := cdsBankCompanyBNCODE.AsString;
        cdsBankCompanyRDNCCYCODE.AsString := cdsBankCompanyCCYCODE.AsString;
        cdsBankCompanyRDNBANKID.AsInteger := cdsBankCompanyBANKID.AsInteger;
        cdsBankCompanyRDN.post;

        cdsBankCompanyRDN.ApplyUpdates(-1);
      end
      else
      begin
        cdsEditBankCompanyRDN.Edit;
        cdsEditBankCompanyRDNBANKID.AsInteger := cdsBankCompanyBANKID.AsInteger;
        cdsEditBankCompanyRDN.post;

        cdsEditBankCompanyRDN.ApplyUpdates(-1);
      end;
    end;
  end
  else
  begin
    if cdsBankCompanyRDND.AsString = '0' then
    begin
      cdsBankCompanyRDN.Delete;
      cdsBankCompanyRDN.ApplyUpdates(-1);
    end;
  end
end;

end.
