unit FormCompanyCustody;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.Menus, cxContainer, cxEdit, dxLayoutContainer,
  cxTextEdit, cxDBEdit, Data.DB, Datasnap.DBClient, NClientDataset, cxClasses,
  dxLayoutLookAndFeels, Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCompanyCustody = class(TfrmEditorData)
    cdsCompanyCustody: TNClientDataset;
    cdsCompanyCustodyCUSTODYID: TIntegerField;
    cdsCompanyCustodyCUSTODYTYPE: TStringField;
    cdsCompanyCustodyCUSTODYCODE: TStringField;
    cdsCompanyCustodyCUSTODYACCNO: TStringField;
    cdsCompanyCustodyCUSTODYACCNAME: TStringField;
    cdsCompanyCustodyCUSTODYBRANCH: TStringField;
    cdsCompanyCustodySTAT: TStringField;
    cdsCompanyCustodyMODDA: TDateTimeField;
    cdsCompanyCustodyMODUI: TStringField;
    cdsCompanyCustodyAPPDA: TDateTimeField;
    cdsCompanyCustodyAPPUI: TStringField;
    cdsCompanyCustodyUNDER4Y: TIntegerField;
    cdsCompanyCustodyUNDER4YDA: TDateTimeField;
    cdsCompanyCustodyNOTES4Y: TStringField;
    cdsCompanyCustodyISDEL: TIntegerField;
    cdsCompanyCustodyID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure cdsCompanyCustodyCUSTODYTYPEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanyCustody: TfrmCompanyCustody;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCompanyCustody.cdsCompanyCustodyCUSTODYTYPEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsCompanyCustodyCUSTODYTYPE.AsString = 'C' then
    Text := 'Collateral'
  else if cdsCompanyCustodyCUSTODYTYPE.AsString = 'D' then
    Text := 'Depository'
  else if cdsCompanyCustodyCUSTODYTYPE.AsString = 'T' then
    Text := 'Transitory'
  else
    Text := cdsCompanyCustodyCUSTODYTYPE.AsString;
end;

end.
