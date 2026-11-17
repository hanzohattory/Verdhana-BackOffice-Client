unit FormLuAccountUnderwriter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmLuAccountUnderwriter = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsSubject: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function Run: TModalResult;
  end;

var
  frmLuAccountUnderwriter: TfrmLuAccountUnderwriter;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmLuAccountUnderwriter }

procedure TfrmLuAccountUnderwriter.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel
  else if Key = #13 then
    ModalResult := mrOk;
end;

function TfrmLuAccountUnderwriter.Run: TModalResult;
var
  oForm: TfrmLuAccountUnderwriter;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuAccountUnderwriter.Create(nil);
  Try

    with dmGlobal.IntDataLookup, oForm do
    begin
      if not cdsLuAccountUnderWriter.Active then
      begin
        cdsLuAccountUnderWriter.Close;
        cdsLuAccountUnderWriter.Open;
      end;

      if oForm.ShowModal = mrOK then
      begin
        if (cdsLuAccountUnderWriter.Active) and (not cdsLuAccountUnderWriter.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;
end;

end.
