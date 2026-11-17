unit FormReportGridCategory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmReportGridCategory = class(TfrmEditorData)
    cdsReportCategory: TNClientDataset;
    cdsReportCategoryCATEGORY_ID: TIntegerField;
    cdsReportCategoryCATEGORY_CODE: TStringField;
    cdsReportCategoryDESCRIPTION: TStringField;
    cdsReportCategoryPARENT_CATEGORY_ID: TIntegerField;
    cdsReportCategoryMODDA: TDateTimeField;
    cdsReportCategoryMODUI: TStringField;
    cdsReportCategoryAPPDA: TDateTimeField;
    cdsReportCategoryAPPUI: TStringField;
    cdsReportCategoryUNDER4Y: TIntegerField;
    cdsReportCategoryUNDER4YDA: TDateTimeField;
    cdsReportCategoryNOTES4Y: TStringField;
    cdsReportCategoryISDEL: TIntegerField;
    cdsReportCategoryID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure cdsReportCategoryBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportGridCategory: TfrmReportGridCategory;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportGridCategory.cdsReportCategoryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsReportCategory.State in [dsInsert] then
  begin
    cdsReportCategoryCATEGORY_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_R_CATEGORY');
  end;
end;

Initialization
  RegisterClass(TfrmReportGridCategory);

end.
