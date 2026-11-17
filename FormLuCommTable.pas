unit FormLuCommTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxTextEdit, cxDBEdit;

type
  TfrmLuCommTable = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdCommTableD: TcxGrid;
    gvwCommTableD: TcxGridDBTableView;
    grdCommTableDLevel1: TcxGridLevel;
    grdCommTableH: TcxGrid;
    gvwCommTableH: TcxGridDBTableView;
    grdCommTableHLevel1: TcxGridLevel;
    spMain: TcxSplitter;
    dsCommTableH: TDataSource;
    dsCommTableD: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gvwCommTableHCOMM_TABLE_CODE: TcxGridDBColumn;
    gvwCommTableHDESCRIPTION: TcxGridDBColumn;
    gvwCommTableDSTART_VALUE: TcxGridDBColumn;
    gvwCommTableDEND_VALUE: TcxGridDBColumn;
    gvwCommTableDCOMM_RATE: TcxGridDBColumn;
    gvwCommTableDNET_RATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AMarketCode, ACommTableCode: String): TModalResult;
  end;

var
  frmLuCommTable: TfrmLuCommTable;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal;

{ TfrmLuCommTable }

function TfrmLuCommTable.Run(AMarketCode, ACommTableCode: String): TModalResult;
var
  oForm: TForm;
begin
  Result := mrCancel;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCommTableH.Close;
    cdsLuCommTableH.Params[0].AsString := AMarketCode;
    cdsLuCommTableH.Open;

    cdsLuCommTableH.Locate('COMM_TABLE_CODE', ACommTableCode, []);
  end;

  oForm := TfrmLuCommTable.Create(nil);
  Try
    if oForm.ShowModal = mrOK then
      if not dmGlobal.IntDataLookup.cdsLuCommTableH.IsEmpty then
        Result := mrOK;
  Finally
    oForm.Free;
  End;
end;

end.
