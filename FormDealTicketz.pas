unit FormDealTicketz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer,
  dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, cxImageComboBox;

type
  TfrmDealTicketz = class(TForm)
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    gvwDealTicketz: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    dsDealTicketz: TDataSource;
    gvwDealTicketzDEALTICKETID: TcxGridDBColumn;
    gvwDealTicketzDEALTICKETCODE: TcxGridDBColumn;
    gvwDealTicketzALLOC_STAT: TcxGridDBColumn;
    gvwDealTicketzACCINIT: TcxGridDBColumn;
    gvwDealTicketzACCNAME: TcxGridDBColumn;
    gvwDealTicketzSTOCKCODE: TcxGridDBColumn;
    gvwDealTicketzDEALPRICE: TcxGridDBColumn;
    gvwDealTicketzDEALQTY: TcxGridDBColumn;
    gvwDealTicketzALLOC_CODE: TcxGridDBColumn;
    gvwDealTicketzALLOC_INIT: TcxGridDBColumn;
    gvwDealTicketzALLOC_NAME: TcxGridDBColumn;
    gvwDealTicketzAPRICE: TcxGridDBColumn;
    gvwDealTicketzAQTY: TcxGridDBColumn;
    gvwDealTicketzSTAT: TcxGridDBColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1KeyPress(Sender: TObject; var Key: Char);
    procedure dxLayoutControl2KeyPress(Sender: TObject; var Key: Char);
    procedure gvwDealTicketzKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDealTicketz: TfrmDealTicketz;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets;

procedure TfrmDealTicketz.cxButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then ModalResult := mrCancel;
end;

procedure TfrmDealTicketz.dxLayoutControl2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then ModalResult := mrCancel;
end;

procedure TfrmDealTicketz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then ModalResult := mrCancel;
end;

procedure TfrmDealTicketz.gvwDealTicketzKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then ModalResult := mrCancel;
end;

end.
