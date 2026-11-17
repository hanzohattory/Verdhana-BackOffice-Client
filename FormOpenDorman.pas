unit FormOpenDorman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxDBEdit, NDatasetContainer,
  Datasnap.DBClient, NClientDataset, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxLayoutLookAndFeels, cxClasses;

type
  TfrmOpenDorman = class(TfrmEditorData)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtSIDNo: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtProdDesc: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    txtCustType: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    txtDormanDesc: TcxTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsUpdateAccountDorman: TNClientDataset;
    procedure FormCreate(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure ShowAccountDetail;
  public
    { Public declarations }
  end;

var
  frmOpenDorman: TfrmOpenDorman;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormOpenDormanList;

procedure TfrmOpenDorman.btnOKClick(Sender: TObject);
begin
//  if (Self.DataContainer.State in [mddsApprove]) then
//  begin
//    cdsUpdateAccountDorman.Close;
//    cdsUpdateAccountDorman.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
//    cdsUpdateAccountDorman.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
//    cdsUpdateAccountDorman.Execute;
//  end;

  inherited;
end;

procedure TfrmOpenDorman.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  ShowAccountDetail;
end;

procedure TfrmOpenDorman.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.luAccountDormanOn;
end;

procedure TfrmOpenDorman.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsEdit, dsBrowse] then
    ShowAccountDetail;

end;

procedure TfrmOpenDorman.ShowAccountDetail;
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccDorman.Locate('ACCID', dsSubject.DataSet.FieldByName('ACCID').AsInteger, []) then
    begin
      txtSIDNo.EditValue := cdsLuAccDormanSIDNO.Value;
      txtProdDesc.EditValue := cdsLuAccDormanPRDDESC.Value;
      txtCustType.EditValue := cdsLuAccDormanAccountType.Value;
      txtDormanDesc.EditValue := cdsLuAccDormanCustomerType.Value;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmOpenDorman);

end.
