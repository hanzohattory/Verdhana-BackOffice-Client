unit FormUserConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Datasnap.DBClient, cxCurrencyEdit;

type
  TfrmUserConfig = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    btnAdd: TcxButton;
    btnRemove: TcxButton;
    btnRemoveAll: TcxButton;
    btnAddAll: TcxButton;
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
    dsUserGroup: TDataSource;
    gvwTargetGROUPID: TcxGridDBColumn;
    cdsAvailableGroup: TClientDataSet;
    cdsAvailableGroupGROUPID: TStringField;
    dsAvailableGroup: TDataSource;
    gvwSourceGROUPID: TcxGridDBColumn;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    procedure btnAddAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareData;
  public
    { Public declarations }
  end;

var
  frmUserConfig: TfrmUserConfig;

implementation

{$R *.dfm}

uses FormUserConfigList, DataGlobal;

procedure TfrmUserConfig.btnAddAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsUserGroup.DataSet;
  if oDataset <> nil then
  begin
    cdsAvailableGroup.DisableControls;
    oDataset.DisableControls;

    cdsAvailableGroup.First;

    while not cdsAvailableGroup.IsEmpty do
    begin
      if not oDataset.Locate('GROUPID', cdsAvailableGroupGROUPID.AsString, []) then
      begin
        oDataset.Append;
        oDataset.FieldByName('GROUPID').AsString := cdsAvailableGroupGROUPID.AsString;
        oDataset.Post;
      end;

      cdsAvailableGroup.Delete;
    end;

    oDataset.EnableControls;
    cdsAvailableGroup.EnableControls;
  end;
end;

procedure TfrmUserConfig.btnAddClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsUserGroup.DataSet;
  if oDataset <> nil then
  begin
    cdsAvailableGroup.DisableControls;
    oDataset.DisableControls;

    if not cdsAvailableGroup.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('GROUPID').AsString := cdsAvailableGroupGROUPID.AsString;
      oDataset.Post;

      cdsAvailableGroup.Delete;
    end;

    oDataset.EnableControls;
    cdsAvailableGroup.EnableControls;
  end;
end;

procedure TfrmUserConfig.btnRemoveAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsUserGroup.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsAvailableGroup.DisableControls;
    oDataset.DisableControls;

    oDataset.First;

    while not oDataset.IsEmpty do
    begin
      cdsAvailableGroup.Append;
      cdsAvailableGroupGROUPID.AsString := oDataset.FieldByName('GROUPID').AsString;
      cdsAvailableGroup.Post;

      oDataset.Delete;
    end;

    oDataset.EnableControls;
    cdsAvailableGroup.EnableControls;
  end;
end;

procedure TfrmUserConfig.btnRemoveClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  inherited;
  oDataset := dsUserGroup.DataSet;
  with dmGlobal.IntDataLookup do
  begin
    cdsAvailableGroup.DisableControls;
    oDataset.DisableControls;

    if not oDataset.IsEmpty then
    begin
      cdsAvailableGroup.Append;
      cdsAvailableGroupGROUPID.AsString := oDataset.FieldByName('GROUPID').AsString;
      cdsAvailableGroup.Post;

      oDataset.Delete;
    end;

    oDataset.EnableControls;
    cdsAvailableGroup.EnableControls;
  end;
end;

procedure TfrmUserConfig.FormShow(Sender: TObject);
begin
  inherited;
  PrepareData;
end;

procedure TfrmUserConfig.PrepareData;
var
  oDatasetGroup: TDataset;
begin
  oDatasetGroup := dsUserGroup.DataSet;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuGroups.Active then
    begin
      cdsLuGroups.Close;
      cdsLuGroups.Open;
    end;

    cdsAvailableGroup.Close;
    cdsAvailableGroup.CreateDataSet;

    cdsLuGroups.First;
    while not cdsLuGroups.Eof do
    begin
      if not oDatasetGroup.Locate('GROUPID', cdsLuGroupsGROUPID.AsString, []) then
      begin
        cdsAvailableGroup.Append;
        cdsAvailableGroupGROUPID.AsString := cdsLuGroupsGROUPID.AsString;
        cdsAvailableGroup.Post;
      end;

      cdsLuGroups.Next;
    end;
  end;
end;

end.
