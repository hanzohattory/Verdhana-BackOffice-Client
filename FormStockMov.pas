unit FormStockMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo, cxDBEdit, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, Data.DB, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, DBClient, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, NDatasetContainer, cxImageComboBox, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NClientDataset, dxLayoutLookAndFeels,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockMov = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    grdStockMov: TcxGrid;
    gvwStockMov: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsStockMovD: TDataSource;
    gvwStockMovSMID: TcxGridDBColumn;
    gvwStockMovINSTRUMENT_ID: TcxGridDBColumn;
    gvwStockMovSMQTY: TcxGridDBColumn;
    gvwStockMovMODDA: TcxGridDBColumn;
    gvwStockMovMODUI: TcxGridDBColumn;
    gvwStockMovAPPDA: TcxGridDBColumn;
    gvwStockMovAPPUI: TcxGridDBColumn;
    gvwStockMovUNDER4Y: TcxGridDBColumn;
    gvwStockMovUNDER4YDA: TcxGridDBColumn;
    gvwStockMovNOTES4Y: TcxGridDBColumn;
    gvwStockMovISDEL: TcxGridDBColumn;
    gvwStockMovID: TcxGridDBColumn;
    gvwStockMovMARKETCODE: TcxGridDBColumn;
    gvwStockMovLOCALCODE: TcxGridDBColumn;
    gvwStockMovISSUERNAME: TcxGridDBColumn;
    gvwStockMovISINCODE: TcxGridDBColumn;
    gvwStockMovISINDATE: TcxGridDBColumn;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxButton1: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    gvwStockMovMAXQTY: TcxGridDBColumn;
    gvwStockMovSOURCE_SETTLED: TcxGridDBColumn;
    gvwStockMovTARGET_SETTLED: TcxGridDBColumn;
    gvwStockMovSOURCE_MATCH: TcxGridDBColumn;
    gvwStockMovTARGET_MATCH: TcxGridDBColumn;
    gvwStockMovSOURCE_PRICE: TcxGridDBColumn;
    gvwStockMovTARGET_PRICE: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Cancel1: TMenuItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cdsGetAccOverTL: TNClientDataset;
    cdsGetAccOverTLACCID: TLargeintField;
    cdsGetAccOverTLPRDCODE: TStringField;
    cdsGetAccOverTLACCTYPE: TStringField;
    cdsGetAccOverTLRATIO_MRGCALL: TFloatField;
    cdsGetAccOverTLRATIO_MRGWARING: TFloatField;
    cdsGetAccOverTLAR_RATIO: TFloatField;
    cdsGetAccOverTLOVER_TL: TFloatField;
    dsGetAccOverTL: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gvwStockMovLOCALCODEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
  private
    procedure GetDetail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockMov: TfrmStockMov;

implementation

{$R *.dfm}

uses FormStockMovList, DataGlobal, FormLuAccount, FormLuStockPos,
  FormCustStockPos;

procedure TfrmStockMov.btnOKClick(Sender: TObject);
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger = dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger) then
    begin
      dmGlobal.ErrorMessage('Source Account and Target Account must be different!');
      Abort;
    end;
  end;

  inherited;
end;

procedure TfrmStockMov.Cancel1Click(Sender: TObject);
begin
  inherited;
  dsStockMovD.DataSet.Delete;
end;

procedure TfrmStockMov.GetDetail;
begin
  cdsGetAccOverTL.Close;
  cdsGetAccOverTL.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime;;
  cdsGetAccOverTL.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger;
  cdsGetAccOverTL.Params[2].AsInteger  := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
  cdsGetAccOverTL.Params[3].AsFloat    := dsSubject.DataSet.FieldByName('SWQTY').AsFloat;
  cdsGetAccOverTL.Open;
end;

procedure TfrmStockMov.cxButton1Click(Sender: TObject);
var
  oForm : TfrmClientStockPos;
  dTargetQty: LargeInt;
begin
  inherited;
  oForm := TfrmClientStockPos.Create(nil);
  with TfrmClientStockPos(oForm) do
  begin
    TargetList := TStringList.Create;
    AccountID  := dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger;
    PrdCode    := dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsString;

    dsStockMovD.DataSet.DisableControls;
    dsStockMovD.DataSet.First;
    while not dsStockMovD.DataSet.Eof do
    begin
      TargetQty := TAvailQty.Create;
      TargetQty.TargetQty := dsStockMovD.DataSet.FieldByName('SMQTY').AsFloat;

      TargetList.AddObject(dsStockMovD.DataSet.FieldByName('INSTRUMENT_ID').AsString, TargetQty);
      dsStockMovD.DataSet.Next;
    end;

    if oForm.ShowModal = mrOk then
    begin
      cdsStockPosition.First;
      while not cdsStockPosition.Eof do
      begin
        if cdsStockPositionCheckBox.AsString = '1' then
        begin
          if dsStockMovD.DataSet.Locate('INSTRUMENT_ID', cdsStockPositionStockID.AsInteger, []) then
          begin
            dsStockMovD.DataSet.Edit;
            dTargetQty := dsStockMovD.DataSet.FieldByName('SMQTY').AsLargeInt + cdsStockPositionTargetQty.AsLargeInt;
          end
          else
          begin
            dsStockMovD.DataSet.Append;
            dTargetQty := cdsStockPositionTargetQty.AsLargeInt;
          end;

          dsStockMovD.DataSet.FieldByName('INSTRUMENT_ID').AsInteger := cdsStockPositionStockID.AsInteger;
          dsStockMovD.DataSet.FieldByName('LOCALCODE').AsString      := cdsStockPositionLOCALCODE.AsString;
          dsStockMovD.DataSet.FieldByName('TARGET_PRICE').AsFloat    := cdsStockPositionTargetPrice.AsFloat;
          dsStockMovD.DataSet.FieldByName('SOURCE_PRICE').AsFloat    := cdsStockPositionAcqPrice.AsFloat;
          dsStockMovD.DataSet.FieldByName('SMQTY').AsLargeInt        := dTargetQty;
          dsStockMovD.DataSet.FieldByName('MAXQTY').AsLargeInt       := dTargetQty;
          dsStockMovD.DataSet.Post;
        end;

        cdsStockPosition.Next;
      end;
    end;

    dsStockMovD.DataSet.EnableControls;
  end;

  FreeAndNil(oForm);
end;

procedure TfrmStockMov.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
  oForm: TfrmClientStockPos;
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger) = mrOK then
      begin
        dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('SOURCE_ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('SOURCE_ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        dsSubject.DataSet.FieldByName('SOURCE_ENTID').AsInteger := cdsLuAccountMultiFilterENTTID.AsInteger;
        dsSubject.DataSet.FieldByName('PURPOSE').AsString      := 'NONEXCHG';
        dsSubject.DataSet.FieldByName('SETTLEREASON').AsString := 'OWNE';
      end;
    end;
  end;
end;

procedure TfrmStockMov.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  iTargetAccID: Integer;
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if not VarIsNull(dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger) then
        iTargetAccID := 0
      else
        iTargetAccID := dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger;

//      if frmLuAccount.RunByEntity(iTargetAccID, dsSubject.DataSet.FieldByName('SOURCE_ENTID').AsInteger) = mrOK then
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('SOURCE_ENTID').AsInteger) = mrOK then
      begin
        dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('TARGET_ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('TARGET_ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmStockMov.gvwStockMovLOCALCODEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
//  begin
//    with dmGlobal.IntDataLookup do
//    begin
//      if frmLuStockPos.Run(dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger) = mrOK then
//      begin
//        if not (dsStockMovD.DataSet.State in dsEditModes) then
//          dsStockMovD.DataSet.Edit;
//
//        dsStockMovD.DataSet.FieldByName('INSTRUMENT_ID').AsInteger := cdsLuStockPosByAccSTOCKID.AsInteger;
//        dsStockMovD.DataSet.FieldByName('LOCALCODE').AsString := cdsLuStockPosByAccLOCALCODE.AsString;
//        dsStockMovD.DataSet.FieldByName('ISSUERNAME').AsString := cdsLuStockPosByAccISSUERNAME.AsString;
//        dsStockMovD.DataSet.FieldByName('MARKETCODE').AsString := cdsLuStockPosByAccMARKETCODE.AsString;
//        dsStockMovD.DataSet.FieldByName('SMQTY').AsLargeInt := Trunc(cdsLuStockPosByAccQTY_ONHAND.AsFloat);
//        dsStockMovD.DataSet.FieldByName('MAXQTY').AsLargeInt := Trunc(cdsLuStockPosByAccQTY_ONHAND.AsFloat);
//      end;
//    end;
//  end;
end;

end.
