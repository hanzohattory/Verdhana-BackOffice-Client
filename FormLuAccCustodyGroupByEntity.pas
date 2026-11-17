unit FormLuAccCustodyGroupByEntity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmLuAccCustodyGroupByEntity = class(TForm)
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
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNAME: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AccountCustodyID: Integer): TModalResult;
  end;

var
  frmLuAccCustodyGroupByEntity: TfrmLuAccCustodyGroupByEntity;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmLuAccCustodyGroupByEntity }

function TfrmLuAccCustodyGroupByEntity.Run(
  AccountCustodyID: Integer): TModalResult;
var
  oForm: TfrmLuAccCustodyGroupByEntity;
begin
  Result := mrCancel;

  oForm := TfrmLuAccCustodyGroupByEntity.Create(nil);
  Try
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAccCustodyGroupByEntity.Locate('ACCCUSTODYID', AccountCustodyID, []);

      if oForm.ShowModal = mrOk then
      begin
        if (cdsLuAccCustodyGroupByEntity.Active) and (not cdsLuAccCustodyGroupByEntity.IsEmpty) then
          Result := mrOk;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
