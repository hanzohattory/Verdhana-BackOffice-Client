unit FormLuChargeTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxSplitter, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxDBEdit, dxLayoutControl;

type
  TfrmLuChargeTable = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    grdChargeTableD: TcxGrid;
    gvwChargeTableD: TcxGridDBTableView;
    grdChargeTableDLevel1: TcxGridLevel;
    grdChargeTableH: TcxGrid;
    gvwChargeTableH: TcxGridDBTableView;
    grdChargeTableHLevel1: TcxGridLevel;
    spMain: TcxSplitter;
    dsChargeTableH: TDataSource;
    dsChargeTableD: TDataSource;
    gvwChargeTableHCHARGE_TABLE_CODE: TcxGridDBColumn;
    gvwChargeTableHDESCRIPTION: TcxGridDBColumn;
    gvwChargeTableDSTART_VALUE: TcxGridDBColumn;
    gvwChargeTableDEND_VALUE: TcxGridDBColumn;
    gvwChargeTableDBASIS: TcxGridDBColumn;
    gvwChargeTableDRATE: TcxGridDBColumn;
    gvwChargeTableDAMOUNT: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AMarketCode, AChargeTableID: String): TModalResult;
  end;

var
  frmLuChargeTable: TfrmLuChargeTable;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal;

{ TfrmLuChargeTable }

function TfrmLuChargeTable.Run(AMarketCode,
  AChargeTableID: String): TModalResult;
var
  oForm: TForm;
begin
  Result := mrCancel;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuChargeTableH.Close;
    cdsLuChargeTableH.Params[0].AsString := AMarketCode;
    cdsLuChargeTableH.Open;

    cdsLuChargeTableH.Locate('CHARGE_TABLE_ID', AChargeTableID, []);
  end;

  oForm := TfrmLuChargeTable.Create(nil);
  Try
    if oForm.ShowModal = mrOK then
      if not dmGlobal.IntDataLookup.cdsLuChargeTableH.IsEmpty then
        Result := mrOK;
  Finally
    oForm.Free;
  End;
end;

end.
