unit FormLuInterestTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmLuInterestTable = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdInterestTableD: TcxGrid;
    gvwInterestTableD: TcxGridDBTableView;
    gvwInterestTableDSTARTVALUE: TcxGridDBColumn;
    gvwInterestTableDENDVALUE: TcxGridDBColumn;
    gvwInterestTableDINTERESTRATE: TcxGridDBColumn;
    grdInterestTableDLevel1: TcxGridLevel;
    grdInterestTableH: TcxGrid;
    gvwInterestTableH: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsInterestTableH: TDataSource;
    dsInterestTableD: TDataSource;
    spMain: TcxSplitter;
    gvwInterestTableHINTERESTTABLEDESC: TcxGridDBColumn;
    gvwInterestTableHINTERESTTABLECODE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(AInterestTableCode: String): TModalResult;
  end;

var
  frmLuInterestTable: TfrmLuInterestTable;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal;

{ TfrmLuInterestTable }

function TfrmLuInterestTable.Run(AInterestTableCode: String): TModalResult;
var
  oForm: TForm;
begin
  Result := mrCancel;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInterestTableH.Close;
    cdsLuInterestTableH.Open;

    cdsLuInterestTableH.Locate('INTERESTTABLECODE', AInterestTableCode, []);
  end;

  oForm := TfrmLuInterestTable.Create(nil);
  Try
    if oForm.ShowModal = mrOK then
      if not dmGlobal.IntDataLookup.cdsLuInterestTableH.IsEmpty then
        Result := mrOK;
  Finally
    oForm.Free;
  End;

end;

end.
