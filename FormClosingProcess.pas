unit FormClosingProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxMemo, cxCurrencyEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, NDatasetContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmClosingProcess = class(TfrmEditorData)
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item11: TdxLayoutItem;
    gvwStockPosition: TcxGridDBBandedTableView;
    cdsCashPos: TNClientDataset;
    cdsCashPosACCID: TLargeintField;
    cdsCashPosACCNO: TStringField;
    cdsCashPosACCNAME: TStringField;
    cdsCashPosCCY: TStringField;
    cdsCashPosCashOnHand: TFloatField;
    cdsCashPosCashOnHold: TFloatField;
    cdsCashPosARAmt: TFloatField;
    cdsCashPosApAmt: TFloatField;
    cdsCashPosNetARAP: TFloatField;
    cdsCashPosCashPosition: TFloatField;
    dsCashPos: TDataSource;
    dsStockPos: TDataSource;
    cdsStockPos: TNClientDataset;
    cdsStockPosBranchID: TIntegerField;
    cdsStockPosBranchCode: TStringField;
    cdsStockPosBranchName: TStringField;
    cdsStockPosSalesID: TIntegerField;
    cdsStockPosSalesCode: TStringField;
    cdsStockPosSalesName: TStringField;
    cdsStockPosAccID: TLargeintField;
    cdsStockPosAccNo: TStringField;
    cdsStockPosAccName: TStringField;
    cdsStockPosStockID: TIntegerField;
    cdsStockPosStockCode: TStringField;
    cdsStockPosStockName: TStringField;
    cdsStockPosAvgPrice: TFloatField;
    cdsStockPosClosePrice: TFloatField;
    cdsStockPosStockOnHand: TFloatField;
    cdsStockPosStockOnHold: TFloatField;
    cdsStockPosStockOuts: TFloatField;
    cdsStockPosStockBalance: TFloatField;
    cdsStockPosStockBal_Value: TFloatField;
    cdsStockPosStockBal_MktValue: TFloatField;
    cdsStockPosUnReal_LossProfit: TFloatField;
    cdsStockPosLastCP: TDateField;
    cdsStockPosInvType: TStringField;
    gvwStockPositionBranchID: TcxGridDBBandedColumn;
    gvwStockPositionBranchCode: TcxGridDBBandedColumn;
    gvwStockPositionBranchName: TcxGridDBBandedColumn;
    gvwStockPositionSalesID: TcxGridDBBandedColumn;
    gvwStockPositionSalesCode: TcxGridDBBandedColumn;
    gvwStockPositionSalesName: TcxGridDBBandedColumn;
    gvwStockPositionAccID: TcxGridDBBandedColumn;
    gvwStockPositionAccNo: TcxGridDBBandedColumn;
    gvwStockPositionAccName: TcxGridDBBandedColumn;
    gvwStockPositionStockID: TcxGridDBBandedColumn;
    gvwStockPositionStockCode: TcxGridDBBandedColumn;
    gvwStockPositionStockName: TcxGridDBBandedColumn;
    gvwStockPositionAvgPrice: TcxGridDBBandedColumn;
    gvwStockPositionClosePrice: TcxGridDBBandedColumn;
    gvwStockPositionStockOnHand: TcxGridDBBandedColumn;
    gvwStockPositionStockOnHold: TcxGridDBBandedColumn;
    gvwStockPositionStockOuts: TcxGridDBBandedColumn;
    gvwStockPositionStockBalance: TcxGridDBBandedColumn;
    gvwStockPositionStockBal_Value: TcxGridDBBandedColumn;
    gvwStockPositionStockBal_MktValue: TcxGridDBBandedColumn;
    gvwStockPositionUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwStockPositionLastCP: TcxGridDBBandedColumn;
    gvwStockPositionInvType: TcxGridDBBandedColumn;
    cdsAccountByParam: TNClientDataset;
    cdsAccountByParamACCID: TIntegerField;
    cdsAccountByParamACCCODE: TStringField;
    cdsAccountByParamACCNAME: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure GetCashPosition;
  public
    { Public declarations }
  end;

var
  frmClosingProcess: TfrmClosingProcess;

implementation

{$R *.dfm}

uses FormClosingProcessList, DataLookup, DataGlobal;

procedure TfrmClosingProcess.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  GetCashPosition;
end;

procedure TfrmClosingProcess.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  GetCashPosition;

end;

procedure TfrmClosingProcess.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  bCont: Boolean;
begin
  if DataContainer.State = mddsApprove then
  begin
    if (cdsCashPosCashOnHand.AsFloat = 0) and (cdsCashPosCashOnHold.AsFloat = 0) and
       (cdsCashPosARAmt.AsFloat = 0) and (cdsCashPosApAmt.AsFloat = 0) and (cdsCashPosNetARAP.AsFloat = 0) and
       (cdsCashPosCashPosition.AsFloat = 0)
    then
      bCont := True
    else
    begin
      bCont := False;
      MessageDlg('Can not continue closing account, because there is cash issue', mtWarning, [mbOk], 0);
    end;

    if bCont then
    begin
      if cdsStockPos.RecordCount = 0 then
        bCont := True
      else
      begin
        bCont := False;
        MessageDlg('Can not continue closing account, because there is stock issue', mtWarning, [mbOk], 0);
      end;
    end;

    if bCont then
      inherited
    else
      ModalResult := mrCancel;

  end
  else
    inherited;
end;

procedure TfrmClosingProcess.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('CLSDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;

  cdsCashPos.Close;
  cdsCashPos.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsCashPos.Params[1].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsCashPos.Open;

  cdsStockPos.Close;
  cdsStockPos.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsStockPos.Params[1].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsStockPos.Open;
end;

procedure TfrmClosingProcess.GetCashPosition;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    cdsAccountByParam.Close;
    cdsAccountByParam.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
    cdsAccountByParam.Open;

    dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsAccountByParamACCCODE.AsString;
    dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsAccountByParamACCNAME.AsString;

    cdsCashPos.Close;
    cdsCashPos.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
    cdsCashPos.Params[1].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
    cdsCashPos.Open;

    cdsStockPos.Close;
    cdsStockPos.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
    cdsStockPos.Params[1].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
    cdsStockPos.Open;
  end;
end;

end.
