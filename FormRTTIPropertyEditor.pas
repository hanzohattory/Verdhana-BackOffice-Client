unit FormRTTIPropertyEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, cxGridDBBandedTableView,
  cxGridTableView;

type
  TfrmRTTIPropertyEditor = class(TForm)
    lbRows: TListBox;
    procedure lbRowsClick(Sender: TObject);
  private
    { Private declarations }
    FOnObjectSelected: TNotifyEvent;
    FDataSet: TDataSet;
    FGrid: TcxGridTableView;
    function GetDataSet: TDataSet;
    procedure SetDataSet(const Value: TDataSet);
    function GetGrid: TcxGridTableView;
    procedure SetGrid(const Value: TcxGridTableView);
  protected
    procedure InitDataSetFieldsEditor;
    procedure InitGridColumnsEditor;
    procedure DoObjectSelected(Sender: TObject); virtual;
  public
    { Public declarations }
    property OnObjectSelected: TNotifyEvent read FOnObjectSelected write FOnObjectSelected;
    property DataSet: TDataSet read GetDataSet write SetDataSet;
    property Grid: TcxGridTableView read GetGrid write SetGrid;
  end;

function GetDataSetFieldsEditor(ADataset: TDataset; AEvent: TNotifyEvent): TfrmRTTIPropertyEditor;
function GetGridColumnEditor(AGrid: TcxGridTableView; AEvent: TNotifyEvent): TfrmRTTIPropertyEditor;

var
  frmRTTIPropertyEditor: TfrmRTTIPropertyEditor;

implementation

{$R *.dfm}

function GetDataSetFieldsEditor(ADataset: TDataset; AEvent: TNotifyEvent): TfrmRTTIPropertyEditor;
begin
  if frmRTTIPropertyEditor = nil then
  begin
    frmRTTIPropertyEditor := TfrmRTTIPropertyEditor.Create(Application);
  end;

  with frmRTTIPropertyEditor do
  try
    DataSet := ADataset;
    OnObjectSelected := AEvent;
    InitDataSetFieldsEditor;
  except
    Free;
  end;

  Result := frmRTTIPropertyEditor;
end;

function GetGridColumnEditor(AGrid: TcxGridTableView; AEvent: TNotifyEvent): TfrmRTTIPropertyEditor;
begin
  if frmRTTIPropertyEditor = nil then
  begin
    frmRTTIPropertyEditor := TfrmRTTIPropertyEditor.Create(Application);
  end;

  with frmRTTIPropertyEditor do
  try
    Grid := AGrid;
    OnObjectSelected := AEvent;
    InitGridColumnsEditor;
  except
    Free;
  end;

  Result := frmRTTIPropertyEditor;
end;

{ TfrmRTTIPropertyEditor }

procedure TfrmRTTIPropertyEditor.DoObjectSelected(Sender: TObject);
begin
  if Assigned(FOnObjectSelected) then
    FOnObjectSelected(Sender);
end;

function TfrmRTTIPropertyEditor.GetDataSet: TDataSet;
begin
  Result := FDataSet;
end;

function TfrmRTTIPropertyEditor.GetGrid: TcxGridTableView;
begin
  Result := FGrid;
end;

procedure TfrmRTTIPropertyEditor.InitDataSetFieldsEditor;
var
  I, AItemIndex: Integer;
begin
  AItemIndex := lbRows.ItemIndex;
  try
    lbRows.Items.Clear;
    for I := 0 to DataSet.FieldCount - 1 do
      lbRows.Items.AddObject(DataSet.Fields[I].FieldName, DataSet.Fields[I]);
  finally
    if AItemIndex <= lbRows.Items.Count - 1 then
      lbRows.ItemIndex := AItemIndex
    else
      lbRows.ItemIndex := lbRows.Items.Count - 1;
  end;

  Self.Caption := DataSet.Owner.Name + '.' + DataSet.Name;
end;

procedure TfrmRTTIPropertyEditor.InitGridColumnsEditor;
var
  I, AItemIndex: Integer;
begin
  AItemIndex := lbRows.ItemIndex;
  try
    lbRows.Items.Clear;
    for I := 0 to Grid.ColumnCount - 1 do
      lbRows.Items.AddObject(Grid.Columns[I].Name, Grid.Columns[I]);
  finally
    if AItemIndex <= lbRows.Items.Count - 1 then
      lbRows.ItemIndex := AItemIndex
    else
      lbRows.ItemIndex := lbRows.Items.Count - 1;
  end;

  Self.Caption := Grid.Owner.Name + '.' + Grid.Name;
end;

procedure TfrmRTTIPropertyEditor.lbRowsClick(Sender: TObject);
begin
  if lbRows.ItemIndex <> -1 then
    DoObjectSelected(lbRows.Items.Objects[lbRows.ItemIndex]);
end;

procedure TfrmRTTIPropertyEditor.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
end;

procedure TfrmRTTIPropertyEditor.SetGrid(const Value: TcxGridTableView);
begin
  FGrid := Value;
end;

end.
