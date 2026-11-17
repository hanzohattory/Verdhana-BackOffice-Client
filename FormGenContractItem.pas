unit FormGenContractItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo,
  cxDBEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmGenContractItem = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    btnAddBoard: TcxButton;
    btnRemoveBoard: TcxButton;
    btnRemoveAllBoard: TcxButton;
    btnAddAllBoard: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    grdSource: TcxGrid;
    gvwSource: TcxGridDBTableView;
    grdSourceLevel1: TcxGridLevel;
    grdTarget: TcxGrid;
    gvwTarget: TcxGridDBTableView;
    grdTargetLevel1: TcxGridLevel;
    dsSource: TDataSource;
    dsTarget: TDataSource;
    gvwTargetCONCODE: TcxGridDBColumn;
    gvwSourceCONCODE: TcxGridDBColumn;
    procedure btnAddAllBoardClick(Sender: TObject);
    procedure btnRemoveAllBoardClick(Sender: TObject);
    procedure btnAddBoardClick(Sender: TObject);
    procedure btnRemoveBoardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenContractItem: TfrmGenContractItem;

implementation

{$R *.dfm}

uses FormContracts;

procedure TfrmGenContractItem.btnAddAllBoardClick(Sender: TObject);
var
  oDataset, oDatasetSource: TDataset;
begin
  inherited;
  oDataset := dsTarget.DataSet;
  oDatasetSource := dsSource.DataSet;

  if oDataset <> nil then
  begin
    oDatasetSource.DisableControls;
    oDataset.DisableControls;

    oDatasetSource.First;

    while not oDatasetSource.IsEmpty do
    begin
      if not oDataset.Locate('CONID', oDatasetSource.FieldByName('CONID').Value, []) then
      begin
        oDataset.Append;
        oDataset.FieldByName('CONID').AsLargeInt := oDatasetSource.FieldByName('CONID').AsLargeInt;
        oDataset.Post;
      end;

      oDatasetSource.Delete;
    end;

    oDataset.EnableControls;
    oDatasetSource.EnableControls;
  end;
end;

procedure TfrmGenContractItem.btnAddBoardClick(Sender: TObject);
var
  oDataset, oDatasetSource: TDataset;
begin
  inherited;
  oDataset := dsTarget.DataSet;
  oDatasetSource := dsSource.DataSet;

  if oDataset <> nil then
  begin
    oDatasetSource.DisableControls;
    oDataset.DisableControls;

    if not oDatasetSource.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('CONID').AsLargeInt := oDatasetSource.FieldByName('CONID').AsLargeInt;
      oDataset.Post;

      oDatasetSource.Delete;
    end;

    oDataset.EnableControls;
    oDatasetSource.EnableControls;
  end;
end;

procedure TfrmGenContractItem.btnRemoveAllBoardClick(Sender: TObject);
var
  oDataset, oDatasetSource: TDataset;
begin
  inherited;
  oDataset := dsSource.DataSet;
  oDatasetSource := dsTarget.DataSet;

  if oDataset <> nil then
  begin
    oDatasetSource.DisableControls;
    oDataset.DisableControls;

    oDatasetSource.First;

    while not oDatasetSource.IsEmpty do
    begin
      if not oDataset.Locate('CONID', oDatasetSource.FieldByName('CONID').Value, []) then
      begin
        oDataset.Append;
        oDataset.FieldByName('CONID').AsLargeInt := oDatasetSource.FieldByName('CONID').AsLargeInt;
        oDataset.FieldByName('CONCODE').AsString := oDatasetSource.FieldByName('CONCODE').AsString;
        oDataset.Post;
      end;

      oDatasetSource.Delete;
    end;

    oDataset.EnableControls;
    oDatasetSource.EnableControls;
  end;
end;

procedure TfrmGenContractItem.btnRemoveBoardClick(Sender: TObject);
var
  oDataset, oDatasetSource: TDataset;
begin
  inherited;
  oDataset := dsSource.DataSet;
  oDatasetSource := dsTarget.DataSet;

  if oDataset <> nil then
  begin
    oDatasetSource.DisableControls;
    oDataset.DisableControls;

    if not oDatasetSource.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('CONID').AsLargeInt := oDatasetSource.FieldByName('CONID').AsLargeInt;
      oDataset.FieldByName('CONCODE').AsString := oDatasetSource.FieldByName('CONCODE').AsString;
      oDataset.Post;

      oDatasetSource.Delete;
    end;

    oDataset.EnableControls;
    oDatasetSource.EnableControls;
  end;
end;

end.
