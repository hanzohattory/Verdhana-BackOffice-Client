unit FormUserActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxBlobEdit, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, cxGridLevel, cxGridCustomView, cxGrid, dxBar,
  cxClasses, Vcl.ImgList, Vcl.ActnList, NDatasetAction, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DateUtils, cxMemo;

type
  TfrmUserActivity = class(TfrmBasic)
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    dtStartDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsUserActivity: TNClientDataset;
    cdsUserActivityLOGIN_ID: TLargeintField;
    cdsUserActivitySEQID: TIntegerField;
    cdsUserActivityUSERID: TStringField;
    cdsUserActivityFORMNAME: TStringField;
    cdsUserActivityACTIONNAME: TStringField;
    cdsUserActivityACTIONDESC: TMemoField;
    cdsUserActivityACTIONTYPE: TStringField;
    cdsUserActivityACTIONDATE: TDateTimeField;
    cdsUserActivityIPCOMP: TStringField;
    cdsUserActivityCOMPNAME: TStringField;
    dsUserActivity: TDataSource;
    gvwMasterLOGIN_ID: TcxGridDBBandedColumn;
    gvwMasterSEQID: TcxGridDBBandedColumn;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    gvwMasterFORMNAME: TcxGridDBBandedColumn;
    gvwMasterACTIONNAME: TcxGridDBBandedColumn;
    gvwMasterACTIONDESC: TcxGridDBBandedColumn;
    gvwMasterACTIONTYPE: TcxGridDBBandedColumn;
    gvwMasterACTIONDATE: TcxGridDBBandedColumn;
    gvwMasterIPCOMP: TcxGridDBBandedColumn;
    gvwMasterCOMPNAME: TcxGridDBBandedColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    luUser: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserActivity: TfrmUserActivity;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmUserActivity.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsUserActivity.Close;
  cdsUserActivity.Params[0].AsString := luUser.EditValue;
  cdsUserActivity.Params[1].AsDateTime := DateOf(dtStartDate.Date);
  cdsUserActivity.Params[2].AsDateTime := DateOf(IncDay(dtEndDate.Date, 1));
  cdsUserActivity.Open;
end;

procedure TfrmUserActivity.FormCreate(Sender: TObject);
begin
  inherited;
  luUser.EditValue := dmGlobal.UserID;
  dtStartDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.Date := dtStartDate.Date;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuUser.Close;
    cdsLuUser.Open;
  end;
end;

Initialization
  RegisterClass(TfrmUserActivity);

end.
