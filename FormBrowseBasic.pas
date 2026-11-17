unit FormBrowseBasic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.ImgList, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  ClassGeneral, System.Actions, System.ImageList, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmBrowseBasic = class(TfrmBasic)
    imlBrowse: TImageList;
    aclBrowse: TActionList;
    actNew: TNAction;
    actEdit: TNAction;
    actDelete: TNAction;
    actRefresh: TNAction;
    actInsertFromCurrentData: TNAction;
    actOpen: TNAction;
    actCustomize: TNAction;
    actSaveView: TNAction;
    actSaveGridView: TNAction;
    actPrint: TNAction;
    actCustomizeFilter: TNAction;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsertNew: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    mnuInsert: TdxBarSubItem;
    mnuInsertCopyFromSelected: TdxBarButton;
    mnuCustomFilter: TdxBarButton;
    dsBrowse: TDataSource;
    grdBrowse: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    popBrowse: TPopupMenu;
    N2: TMenuItem;
    View1: TMenuItem;
    actPrint1: TMenuItem;
    N3: TMenuItem;
    Insert2: TMenuItem;
    Insert1: TMenuItem;
    CopyFromSelectedData1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N4: TMenuItem;
    Refresh1: TMenuItem;
    CustomizeColumn2: TMenuItem;
    CustomizeFilter1: TMenuItem;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actInsertFromCurrentDataExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
  private
    { Private declarations }
    FEditorFormClass: TFormEditorBasicClass;
    FKeyField: TField;
  public
    { Public declarations }
    property EditorFormClass: TFormEditorBasicClass read FEditorFormClass write FEditorFormClass;
    property KeyField: TField read FKeyField write FKeyField;

    function GetEditorKey: String;
  end;

var
  frmBrowseBasic: TfrmBrowseBasic;

implementation

{$R *.dfm}

uses DataGlobal, FormEditorBasic, ClassClientConst;

procedure TfrmBrowseBasic.actCustomizeExecute(Sender: TObject);
begin
  inherited;
  gvwBrowse.Controller.Customization := True;
end;

procedure TfrmBrowseBasic.actDeleteExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (EditorFormClass <> nil) and (EditorFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    sKey := GetEditorKey;
    dmGlobal.ShowEditorBasicForm(EditorFormClass, sKey, pkDelete);
  end;
end;

procedure TfrmBrowseBasic.actEditExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (EditorFormClass <> nil) and (EditorFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    sKey := GetEditorKey;
    dmGlobal.ShowEditorBasicForm(EditorFormClass, sKey, pkUpdate);
  end;
end;

procedure TfrmBrowseBasic.actInsertFromCurrentDataExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (EditorFormClass <> nil) and (EditorFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    sKey := GetEditorKey;
    dmGlobal.ShowEditorBasicForm(EditorFormClass, sKey, pkCreate);
  end;
end;

procedure TfrmBrowseBasic.actNewExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (EditorFormClass <> nil) and (EditorFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    sKey := '';
    dmGlobal.ShowEditorBasicForm(EditorFormClass, sKey, pkCreate);
  end;
end;

procedure TfrmBrowseBasic.actOpenExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (EditorFormClass <> nil) and (EditorFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    sKey := GetEditorKey;
    dmGlobal.ShowEditorBasicForm(EditorFormClass, sKey, pkRead);
  end;
end;

procedure TfrmBrowseBasic.actRefreshExecute(Sender: TObject);
begin
  inherited;
  if dsBrowse.DataSet.Active then
    dsBrowse.DataSet.Refresh;
end;

function TfrmBrowseBasic.GetEditorKey: String;
begin
  if KeyField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
    Result := FormatDateTime('yyyyMMdd', KeyField.AsDateTime)
  else
    Result := KeyField.AsString;
end;

end.
