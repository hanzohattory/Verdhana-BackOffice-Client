unit FormCompanyBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxLabel,
  cxDBLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Datasnap.DBClient,
  NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxImageComboBox, cxClasses;

type
  TfrmCompanyBank = class(TfrmEditorData)
    cdsCompanyBank: TNClientDataset;
    cdsCompanyBankBANKID: TIntegerField;
    cdsCompanyBankCCYCODE: TStringField;
    cdsCompanyBankBNCODE: TStringField;
    cdsCompanyBankBANKACCNO: TStringField;
    cdsCompanyBankBANKACCNAME: TStringField;
    cdsCompanyBankBANKBRANCH: TStringField;
    cdsCompanyBankSTAT: TStringField;
    cdsCompanyBankMODDA: TDateTimeField;
    cdsCompanyBankMODUI: TStringField;
    cdsCompanyBankAPPDA: TDateTimeField;
    cdsCompanyBankAPPUI: TStringField;
    cdsCompanyBankUNDER4Y: TIntegerField;
    cdsCompanyBankUNDER4YDA: TDateTimeField;
    cdsCompanyBankNOTES4Y: TStringField;
    cdsCompanyBankISDEL: TIntegerField;
    cdsCompanyBankID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsCompanyBankBNNAME: TStringField;
    cdsCompanyBankBANKTYPE: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsCompanyBankDefault: TNClientDataset;
    cdsCompanyBankDefaultBANKTYPE: TStringField;
    cdsCompanyBankDefaultCCYCODE: TStringField;
    cdsCompanyBankDefaultBANKID: TIntegerField;
    cdsCompanyBankDefaultMODDA: TDateTimeField;
    cdsCompanyBankDefaultMODUI: TStringField;
    cdsCompanyBankDefaultAPPDA: TDateTimeField;
    cdsCompanyBankDefaultAPPUI: TStringField;
    cdsCompanyBankDefaultUNDER4Y: TIntegerField;
    cdsCompanyBankDefaultUNDER4YDA: TDateTimeField;
    cdsCompanyBankDefaultNOTES4Y: TStringField;
    cdsCompanyBankDefaultISDEL: TIntegerField;
    cdsCompanyBankDefaultID: TLargeintField;
    chkDefault: TcxCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsCompanyBankGLACCOUNTID: TIntegerField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cdsCompanyBankCOA: TStringField;
    procedure cdsCompanyBankNewRecord(DataSet: TDataSet);
    procedure cdsCompanyBankBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsCompanyBankAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanyBank: TfrmCompanyBank;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCompanyBank.cdsCompanyBankAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsCompanyBank.IsEmpty then
  begin
    cdsCompanyBankDefault.Close;
    cdsCompanyBankDefault.Params[0].AsString := cdsCompanyBankBANKTYPE.AsString;
    cdsCompanyBankDefault.Params[1].AsString := cdsCompanyBankCCYCODE.AsString;
    cdsCompanyBankDefault.Open;

    chkDefault.Checked := cdsCompanyBankDefaultBANKID.AsInteger = cdsCompanyBankBANKID.AsInteger;
  end;
end;

procedure TfrmCompanyBank.cdsCompanyBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCompanyBank.State = dsInsert then
  begin
    cdsCompanyBankBANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_COMPANY_BANK');
  end;

  if not cdsCompanyBankDefault.Active then
  begin
    cdsCompanyBankDefault.Close;
    cdsCompanyBankDefault.Params[0].AsString := cdsCompanyBankBANKTYPE.AsString;
    cdsCompanyBankDefault.Params[1].AsString := cdsCompanyBankCCYCODE.AsString;
    cdsCompanyBankDefault.Open;
  end;

  if cdsCompanyBankDefault.IsEmpty then
  begin
    if chkDefault.Checked then
    begin
      cdsCompanyBankDefault.Append;
      cdsCompanyBankDefaultBANKTYPE.AsString := cdsCompanyBankBANKTYPE.AsString;
      cdsCompanyBankDefaultCCYCODE.AsString := cdsCompanyBankCCYCODE.AsString;
      cdsCompanyBankDefaultBANKID.AsInteger := cdsCompanyBankBANKID.AsInteger;
      cdsCompanyBankDefault.Post;
      cdsCompanyBankDefault.ApplyUpdates(-1);
    end;
  end
  else
  begin
    if (cdsCompanyBankDefaultBANKTYPE.AsString = cdsCompanyBankBANKTYPE.AsString)
      And (cdsCompanyBankDefaultCCYCODE.AsString = cdsCompanyBankCCYCODE.AsString) then
    begin
      if chkDefault.Checked then
      begin
        cdsCompanyBankDefault.Edit;
        cdsCompanyBankDefaultBANKID.AsInteger := cdsCompanyBankBANKID.AsInteger;
        cdsCompanyBankDefault.Post;
        cdsCompanyBankDefault.ApplyUpdates(-1);
      end
      else
      begin
        if cdsCompanyBankDefaultBANKID.AsInteger = cdsCompanyBankBANKID.AsInteger then
        begin
          cdsCompanyBankDefault.Delete;
          cdsCompanyBankDefault.ApplyUpdates(-1);
        end;
      end;
    end
    else
    begin
      if cdsCompanyBankDefaultBANKID.AsInteger = cdsCompanyBankBANKID.AsInteger then
      begin
        cdsCompanyBankDefault.Delete;
        cdsCompanyBankDefault.ApplyUpdates(-1);

        if chkDefault.Checked then
        begin
          cdsCompanyBankDefault.Close;
          cdsCompanyBankDefault.Params[0].AsString := cdsCompanyBankBANKTYPE.AsString;
          cdsCompanyBankDefault.Params[1].AsString := cdsCompanyBankCCYCODE.AsString;
          cdsCompanyBankDefault.Open;

          if cdsCompanyBankDefault.IsEmpty then
          begin
            cdsCompanyBankDefault.Append;
            cdsCompanyBankDefaultBANKTYPE.AsString := cdsCompanyBankBANKTYPE.AsString;
            cdsCompanyBankDefaultCCYCODE.AsString := cdsCompanyBankCCYCODE.AsString;
          end
          else
            cdsCompanyBankDefault.Edit;

          cdsCompanyBankDefaultBANKID.AsInteger := cdsCompanyBankBANKID.AsInteger;
          cdsCompanyBankDefault.Post;
          cdsCompanyBankDefault.ApplyUpdates(-1);
        end;
      end
      else
      begin
        if chkDefault.Checked then
        begin
          cdsCompanyBankDefault.Close;
          cdsCompanyBankDefault.Params[0].AsString := cdsCompanyBankBANKTYPE.AsString;
          cdsCompanyBankDefault.Params[1].AsString := cdsCompanyBankCCYCODE.AsString;
          cdsCompanyBankDefault.Open;

          if cdsCompanyBankDefault.IsEmpty then
          begin
            cdsCompanyBankDefault.Append;
            cdsCompanyBankDefaultBANKTYPE.AsString := cdsCompanyBankBANKTYPE.AsString;
            cdsCompanyBankDefaultCCYCODE.AsString := cdsCompanyBankCCYCODE.AsString;
          end
          else
            cdsCompanyBankDefault.Edit;

          cdsCompanyBankDefaultBANKID.AsInteger := cdsCompanyBankBANKID.AsInteger;
          cdsCompanyBankDefault.Post;
          cdsCompanyBankDefault.ApplyUpdates(-1);
        end;
      end;
    end;
  end;
end;

procedure TfrmCompanyBank.cdsCompanyBankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCompanyBankBANKID.AsInteger      := -1;
  cdsCompanyBankCCYCODE.AsString      := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCompanyBankSTAT.AsString         := '1';
  cdsCompanyBankGLACCOUNTID.AsInteger := -1;
end;

procedure TfrmCompanyBank.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBank.Active then
      cdsLuBank.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;
  end;
end;

Initialization
  RegisterClass(TfrmCompanyBank);

end.
