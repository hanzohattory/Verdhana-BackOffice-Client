unit FormLuAccBankGroupByEntity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmLuAccBankGroupByEntity = class(TForm)
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
    grdMasterLevel1: TcxGridLevel;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AccountBankID: Integer): TModalResult;
  end;

var
  frmLuAccBankGroupByEntity: TfrmLuAccBankGroupByEntity;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmLuAccBankGroupByEntity }

function TfrmLuAccBankGroupByEntity.Run(AccountBankID: Integer): TModalResult;
var
  oForm: TfrmLuAccBankGroupByEntity;
begin
  Result := mrCancel;

  oForm := TfrmLuAccBankGroupByEntity.Create(nil);
  Try
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAccBankGroupByEntity.Locate('ACCBANKID', AccountBankID, []);

      if oForm.ShowModal = mrOk then
      begin
        if (cdsLuAccBankGroupByEntity.Active) and (not cdsLuAccBankGroupByEntity.IsEmpty) then
          Result := mrOk;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
