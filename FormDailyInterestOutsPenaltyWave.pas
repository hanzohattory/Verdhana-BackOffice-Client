unit FormDailyInterestOutsPenaltyWave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGridLevel, cxGrid, Datasnap.DBClient, NClientDataset,
  System.UITypes;

type
  TfrmDailyInterestOutsPenaltyWave = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    glvGenerate: TcxGridLevel;
    grdGenerate: TcxGrid;
    gvwGenerate: TcxGridDBBandedTableView;
    cdsPenaltyWave: TNClientDataset;
    cdsPenaltyWavetransactionNo: TStringField;
    cdsPenaltyWavetransactionDesc: TStringField;
    cdsPenaltyWavevalueDate: TDateField;
    cdsPenaltyWavedueDate: TDateField;
    cdsPenaltyWavecurrency: TStringField;
    cdsPenaltyWaveinterest: TFloatField;
    cdsPenaltyWavepenalty: TFloatField;
    cdsPenaltyWaveprocessAmount: TFloatField;
    cdsPenaltyWaveaccountCode: TStringField;
    cdsPenaltyWaveaccountName: TStringField;
    dsPenaltyWave: TDataSource;
    gvwGeneratetransactionNo: TcxGridDBBandedColumn;
    gvwGeneratetransactionDesc: TcxGridDBBandedColumn;
    gvwGeneratevalueDate: TcxGridDBBandedColumn;
    gvwGeneratedueDate: TcxGridDBBandedColumn;
    gvwGeneratecurrency: TcxGridDBBandedColumn;
    gvwGenerateinterest: TcxGridDBBandedColumn;
    gvwGeneratepenalty: TcxGridDBBandedColumn;
    gvwGenerateprocessAmount: TcxGridDBBandedColumn;
    gvwGenerateaccountCode: TcxGridDBBandedColumn;
    gvwGenerateaccountName: TcxGridDBBandedColumn;
    procedure gvwGenerateCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    FAmount: Double;
    { Private declarations }
  public
    { Public declarations }
    property Amount: Double read FAmount write FAmount;

    procedure LoadData(ACoID: Integer);
  end;

var
  frmDailyInterestOutsPenaltyWave: TfrmDailyInterestOutsPenaltyWave;

implementation

{$R *.dfm}

uses DataGlobal, FormDailyInterestOutsList;

procedure TfrmDailyInterestOutsPenaltyWave.cxButton1Click(Sender: TObject);
var
  fPenaltyInterest: Double;
begin
  if MessageDlg('Process Generate '+ Self.Caption +' ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    FAmount := cdsPenaltyWaveprocessAmount.AsFloat;
    if gvwGeneratepenalty.Visible then
    begin
      fPenaltyInterest := cdsPenaltyWavepenalty.AsFloat;
      if FAmount > fPenaltyInterest then
        MessageDlg('Process Amount can not bigger than penalty !', TMsgDlgType.mtError, [mbOk], 0)
      else
        ModalResult := mrOk;
    end
    else
    begin
      fPenaltyInterest := cdsPenaltyWaveinterest.AsFloat;
      if FAmount > fPenaltyInterest then
        MessageDlg('Process Amount can not bigger than Interest !', TMsgDlgType.mtError, [mbOk], 0)
      else
        ModalResult := mrOk;
    end;
  end;
end;

procedure TfrmDailyInterestOutsPenaltyWave.gvwGenerateCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Item = gvwGenerateprocessAmount then
  begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color  := clWhite;
  end;
end;

procedure TfrmDailyInterestOutsPenaltyWave.LoadData(ACoID: Integer);
begin
  cdsPenaltyWave.Close;
  cdsPenaltyWave.Params[0].AsInteger := ACoID;
  cdsPenaltyWave.Open;
end;

end.
