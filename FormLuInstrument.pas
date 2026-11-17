unit FormLuInstrument;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Vcl.ImgList, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmLuInstrument = class(TForm)
    lcBottom: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lcBottomItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsSubject: TDataSource;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    btnNew: TcxButton;
    lcBottomItem1: TdxLayoutItem;
    btnEdit: TcxButton;
    lcBottomItem3: TdxLayoutItem;
    lcBottomGroup1: TdxLayoutGroup;
    imlBrowse: TImageList;
    btnRefresh: TcxButton;
    lcBottomItem4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Run: Int64; overload;
    function Run(AInstrumentID: Int64): Int64; overload;
  end;

var
  frmLuInstrument: TfrmLuInstrument;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormInstrument, ClassClientConst;

{ TfrmLuInstrument }

function TfrmLuInstrument.Run: Int64;
begin
  Result := -1;
  frmLuInstrument := TfrmLuInstrument.Create(Nil);
  Try

    if frmLuInstrument.ShowModal = mrOk then
    begin
      with dmGlobal.IntDataLookup do
      begin
        if not cdsLuInstrument.IsEmpty then
          Result := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
      end;
    end;

  Finally
    FreeAndNil(frmLuInstrument);
  End;
end;

procedure TfrmLuInstrument.btnEditClick(Sender: TObject);
var
  sKey: String;
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrument.IsEmpty then
    begin
      sKey := cdsLuInstrumentINSTRUMENT_ID.AsString;

      if dmGlobal.ShowEditorForm(TfrmInstrument, sKey, pkUpdate) = mrOk then
      Begin
        cdsLuInstrument.Refresh;
      End;
    end;
  end;
end;

procedure TfrmLuInstrument.btnNewClick(Sender: TObject);
var
  sKey: String;
begin
  sKey := '';
  if dmGlobal.ShowEditorForm(TfrmInstrument, sKey, pkCreate) = mrOk then
  Begin
    dmGlobal.IntDataLookup.cdsLuInstrument.Refresh;
  End;
end;

procedure TfrmLuInstrument.btnRefreshClick(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
end;

procedure TfrmLuInstrument.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;

    if not cdsLuInstrument.Active then
      cdsLuInstrument.Open;

    if cdsLuInstrument.Filtered then
      cdsLuInstrument.Filtered := False;
  end;
end;

function TfrmLuInstrument.Run(AInstrumentID: Int64): Int64;
begin
  Result := AInstrumentID;
  frmLuInstrument := TfrmLuInstrument.Create(Nil);
  Try
    dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID', AInstrumentID, []);

    if frmLuInstrument.ShowModal = mrOk then
    begin
      with dmGlobal.IntDataLookup do
      begin
        if not cdsLuInstrument.IsEmpty then
          Result := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
      end;
    end;

  Finally
    FreeAndNil(frmLuInstrument);
  End;
end;

end.
