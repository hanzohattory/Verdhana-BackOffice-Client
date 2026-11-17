unit FormLuBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmLuBank = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsSubject: TDataSource;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    gvwMasterBICODE: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run: TModalResult;
  end;

var
  frmLuBank: TfrmLuBank;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmLuBank }

function TfrmLuBank.Run: TModalResult;
var
  oForm: TfrmLuBank;
begin
  Result := mrCancel;

  oForm := TfrmLuBank.Create(nil);
  try
    with dmGlobal.IntDataLookup do
    begin
      if oForm.ShowModal = mrOk then
      begin
        if (cdsLuBank.Active) and (not cdsLuBank.IsEmpty) then
          Result := mrOk;
      end;
    end;
  finally
    FreeAndNil(oForm);
  end;
end;

end.
