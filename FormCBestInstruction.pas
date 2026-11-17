unit FormCBestInstruction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls,
  NDatasetAction, System.DateUtils, System.Actions, dxDateRanges;

type
  TfrmCBestInstruction = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    aclCF: TActionList;
    cdsCBestInstruction: TNClientDataset;
    cdsCBestInstructionACCID: TLargeintField;
    cdsCBestInstructionACCNO: TStringField;
    cdsCBestInstructionACCNAME: TStringField;
    cdsCBestInstructionTRDATE: TDateField;
    cdsCBestInstructionDUEDATE: TDateField;
    cdsCBestInstructionCCY: TStringField;
    cdsCBestInstructionART0T2: TFloatField;
    cdsCBestInstructionAPT0T2: TFloatField;
    cdsCBestInstructionART3: TFloatField;
    cdsCBestInstructionAPT3: TFloatField;
    cdsCBestInstructionART4: TFloatField;
    cdsCBestInstructionAPT4: TFloatField;
    cdsCBestInstructionART5: TFloatField;
    cdsCBestInstructionAPT5: TFloatField;
    cdsCBestInstructionART6: TFloatField;
    cdsCBestInstructionAPT6: TFloatField;
    cdsCBestInstructionARuptoT6: TFloatField;
    cdsCBestInstructionAPuptoT6: TFloatField;
    cdsCBestInstructionARTotal: TFloatField;
    cdsCBestInstructionAPTotal: TFloatField;
    cdsCBestInstructionCASH_CBEST_DEP_ACC: TStringField;
    cdsCBestInstructionCASH_CBEST_COLL_ACC: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCBestInstruction: TcxGridDBBandedTableView;
    dsCBest: TDataSource;
    gvwCBestInstructionACCNO: TcxGridDBBandedColumn;
    gvwCBestInstructionACCNAME: TcxGridDBBandedColumn;
    gvwCBestInstructionDUEDATE: TcxGridDBBandedColumn;
    gvwCBestInstructionART0T2: TcxGridDBBandedColumn;
    gvwCBestInstructionAPT0T2: TcxGridDBBandedColumn;
    gvwCBestInstructionCASH_CBEST_DEP_ACC: TcxGridDBBandedColumn;
    gvwCBestInstructionCASH_CBEST_COLL_ACC: TcxGridDBBandedColumn;
    gvwCBestInstructionART3: TcxGridDBBandedColumn;
    gvwCBestInstructionAPT3: TcxGridDBBandedColumn;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    cdsCBestInstructionNETARAP: TFloatField;
    gvwCBestInstructionNETARAP: TcxGridDBBandedColumn;
    Button1: TButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actViewData: TNAction;
    Button2: TButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cdsCBestInstructionCalcFields(DataSet: TDataSet);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCBestInstruction: TfrmCBestInstruction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCBestInstruction.actViewDataExecute(Sender: TObject);
begin
  inherited;

  cdsCBestInstruction.Close;
  cdsCBestInstruction.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsCBestInstruction.Open;
end;

procedure TfrmCBestInstruction.cdsCBestInstructionCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsCBestInstructionNETARAP.AsFloat := cdsCBestInstructionART0T2.AsFloat - cdsCBestInstructionAPT0T2.AsFloat;
end;

procedure TfrmCBestInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

  cdsCBestInstruction.Close;
  cdsCBestInstruction.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsCBestInstruction.Open;

end;

initialization
  RegisterClass(TfrmCBestInstruction);

end.
