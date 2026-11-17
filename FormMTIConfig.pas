unit FormMTIConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxSpinEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxRichEdit,
  cxDBRichEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, Vcl.ActnList, NDatasetAction,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, dxDateRanges,
  dxScrollbarAnnotations, System.Actions;

type
  TfrmMTIConfig = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    grdRecord: TcxGrid;
    gvwRecord: TcxGridDBTableView;
    grdRecordLevel1: TcxGridLevel;
    dsRecord: TDataSource;
    popRecord: TPopupMenu;
    aclMTIConfig: TActionList;
    actSetFieldConfig: TNAction;
    actResetFieldConfig: TNAction;
    SetFieldConfiguration1: TMenuItem;
    ResetFieldConfiguration1: TMenuItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsMTIConfigField: TNClientDataset;
    cdsMTIConfigFieldCONFIG_RECORD_ID: TIntegerField;
    cdsMTIConfigFieldFIELDID: TIntegerField;
    cdsMTIConfigFieldSOURCEDATA: TStringField;
    cdsMTIConfigFieldSOURCEVALUE: TStringField;
    cdsMTIConfigFieldMODDA: TDateTimeField;
    cdsMTIConfigFieldMODUI: TStringField;
    cdsMTIConfigFieldAPPDA: TDateTimeField;
    cdsMTIConfigFieldAPPUI: TStringField;
    cdsMTIConfigFieldUNDER4Y: TIntegerField;
    cdsMTIConfigFieldUNDER4YDA: TDateTimeField;
    cdsMTIConfigFieldNOTES4Y: TStringField;
    cdsMTIConfigFieldISDEL: TIntegerField;
    cdsMTIConfigFieldID: TLargeintField;
    cdsMTIConfigRecord: TNClientDataset;
    cdsMTIConfigRecordCONFIG_RECORD_ID: TIntegerField;
    cdsMTIConfigRecordCONFIGID: TIntegerField;
    cdsMTIConfigRecordRECORDID: TIntegerField;
    cdsMTIConfigRecordSEQID: TIntegerField;
    cdsMTIConfigRecordMODDA: TDateTimeField;
    cdsMTIConfigRecordMODUI: TStringField;
    cdsMTIConfigRecordAPPDA: TDateTimeField;
    cdsMTIConfigRecordAPPUI: TStringField;
    cdsMTIConfigRecordUNDER4Y: TIntegerField;
    cdsMTIConfigRecordUNDER4YDA: TDateTimeField;
    cdsMTIConfigRecordNOTES4Y: TStringField;
    cdsMTIConfigRecordISDEL: TIntegerField;
    cdsMTIConfigRecordID: TLargeintField;
    cdsMTIConfigRecordqryMTIConfigField: TDataSetField;
    cdsLuMTITransRecordMINREC: TIntegerField;
    cdsLuMTITransRecordMAXREC: TIntegerField;
    cdsLuMTITransRecordNUM_FIELDS: TIntegerField;
    cdsLuMTITransRecordREQ_FIELDS: TIntegerField;
    cdsMTIConfig: TNClientDataset;
    cdsMTIConfigCONFIGID: TIntegerField;
    cdsMTIConfigCONFIGCODE: TStringField;
    cdsMTIConfigTRANSID: TIntegerField;
    cdsMTIConfigDESCRIPTION: TStringField;
    cdsMTIConfigMODDA: TDateTimeField;
    cdsMTIConfigMODUI: TStringField;
    cdsMTIConfigAPPDA: TDateTimeField;
    cdsMTIConfigAPPUI: TStringField;
    cdsMTIConfigUNDER4Y: TIntegerField;
    cdsMTIConfigUNDER4YDA: TDateTimeField;
    cdsMTIConfigNOTES4Y: TStringField;
    cdsMTIConfigISDEL: TIntegerField;
    cdsMTIConfigID: TLargeintField;
    dsMTIConfigRecords: TDataSource;
    cdsMTIConfigqryMTIConfigRecord: TDataSetField;
    gvwRecordCONFIG_RECORD_ID: TcxGridDBColumn;
    gvwRecordCONFIGID: TcxGridDBColumn;
    gvwRecordRECORDID: TcxGridDBColumn;
    gvwRecordSEQID: TcxGridDBColumn;
    gvwRecordMODDA: TcxGridDBColumn;
    gvwRecordMODUI: TcxGridDBColumn;
    gvwRecordAPPDA: TcxGridDBColumn;
    gvwRecordAPPUI: TcxGridDBColumn;
    gvwRecordUNDER4Y: TcxGridDBColumn;
    gvwRecordUNDER4YDA: TcxGridDBColumn;
    gvwRecordNOTES4Y: TcxGridDBColumn;
    gvwRecordISDEL: TcxGridDBColumn;
    gvwRecordID: TcxGridDBColumn;
    gvwRecordqryMTIConfigField: TcxGridDBColumn;
    gvwRecordMINREC: TcxGridDBColumn;
    gvwRecordMAXREC: TcxGridDBColumn;
    gvwRecordNUM_FIELDS: TcxGridDBColumn;
    gvwRecordREQ_FIELDS: TcxGridDBColumn;
    procedure actSetFieldConfigExecute(Sender: TObject);
    procedure actResetFieldConfigExecute(Sender: TObject);
    procedure cdsMTIConfigTRANSIDChange(Sender: TField);
    procedure cdsMTIConfigAfterOpen(DataSet: TDataSet);
    procedure cdsMTIConfigRecordAfterOpen(DataSet: TDataSet);
    procedure cdsMTIConfigRecordBeforePost(DataSet: TDataSet);
    procedure cdsMTIConfigBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ResetFieldConfig;
  end;

var
  frmMTIConfig: TfrmMTIConfig;

implementation

{$R *.dfm}

uses DataGlobal, FormMTIConfigField, DataLookUp;

procedure TfrmMTIConfig.actResetFieldConfigExecute(Sender: TObject);
var
  oForm: TfrmMTIConfigField;
begin
  inherited;
  ResetFieldConfig;
  
  oForm := TfrmMTIConfigField.Create(nil);
  Try
    oForm.ShowModal;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmMTIConfig.actSetFieldConfigExecute(Sender: TObject);
var
  oForm: TfrmMTIConfigField;
begin
  inherited;
  if cdsMTIConfigField.IsEmpty then
    ResetFieldConfig;

  oForm := TfrmMTIConfigField.Create(nil);
  Try
    oForm.ShowModal;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmMTIConfig.cdsMTIConfigAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  sSQL: String;
begin
  inherited;
//  if Sender.State <> mddsInsert then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuMTITransRecord.Close;
      cdsLuMTITransRecord.Params[0].AsInteger := cdsMTIConfigTRANSID.AsInteger;
      cdsLuMTITransRecord.Open;

      if cdsLuMTITrans.Locate('TRANSID', cdsMTIConfigTRANSID.AsInteger, []) then
      begin
        if (not cdsLuMTITransSOURCEDATA.IsNull)
          and (Trim(cdsLuMTITransSOURCEDATA.AsString) <> '') then
        begin
          Try
            sSQL := cdsLuMTITransSOURCEDATA.AsString;
            sSQL := StringReplace(sSQL, ':DEALTICKETID', '(Select TOP 1 DEALTICKETID From main.B_DEALTICKET)', [rfReplaceAll]);

            dmGlobal.cdsGlobal.Close;
            dmGlobal.cdsGlobal.CommandText := sSQL;
            dmGlobal.cdsGlobal.Open;

//            if not dmGlobal.cdsGlobal.IsEmpty then
            begin
              cdsLuMTIDatasetField.Close;
              cdsLuMTIDatasetField.CreateDataSet;

              for i := 0 to dmGlobal.cdsGlobal.FieldCount - 1 do
              begin
                cdsLuMTIDatasetField.Append;
                cdsLuMTIDatasetFieldFIELDNAME.AsString := dmGlobal.cdsGlobal.Fields[i].FieldName;
                cdsLuMTIDatasetField.Post;
              end;
            end;
          Except
            //
          End;
        end;
      end;
    end;
  end;
end;

procedure TfrmMTIConfig.cdsMTIConfigBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsMTIConfigCONFIGID.IsNull then
    cdsMTIConfigCONFIGID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_CONFIG');
end;

procedure TfrmMTIConfig.cdsMTIConfigRecordAfterOpen(DataSet: TDataSet);
begin
  inherited;
//  cdsMTIConfigRecord.Refresh;
end;

procedure TfrmMTIConfig.cdsMTIConfigRecordBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsMTIConfigRecordCONFIG_RECORD_ID.IsNull then
    cdsMTIConfigRecordCONFIG_RECORD_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_CONFIG_RECORD');
end;

procedure TfrmMTIConfig.cdsMTIConfigTRANSIDChange(Sender: TField);
var
  i: Integer;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuMTITransRecord.Close;
    cdsLuMTITransRecord.Params[0].AsInteger := cdsMTIConfigTRANSID.AsInteger;
    cdsLuMTITransRecord.Open;

    if cdsLuMTITrans.Locate('TRANSID', cdsMTIConfigTRANSID.AsInteger, []) then
    begin
      if (not cdsLuMTITransSOURCEDATA.IsNull)
        and (Trim(cdsLuMTITransSOURCEDATA.AsString) <> '') then
      begin
        Try
          dmGlobal.cdsGlobal.Close;
          dmGlobal.cdsGlobal.CommandText := cdsLuMTITransSOURCEDATA.AsString;
          dmGlobal.cdsGlobal.Open;

          if not dmGlobal.cdsGlobal.IsEmpty then
          begin
            cdsLuMTIDatasetField.Close;
            cdsLuMTIDatasetField.CreateDataSet;

            for i := 0 to dmGlobal.cdsGlobal.FieldCount - 1 do
            begin
              cdsLuMTIDatasetField.Append;
              cdsLuMTIDatasetFieldFIELDNAME.AsString := dmGlobal.cdsGlobal.Fields[i].FieldName;
              cdsLuMTIDatasetField.Post;
            end;
          end;
        Except
          //
        End;
      end;
    end;
  end;
end;

procedure TfrmMTIConfig.ResetFieldConfig;
begin
  while not cdsMTIConfigField.IsEmpty do
  begin
    cdsMTIConfigField.Delete;
  end;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMTIFieldByRecord.Close;
    cdsLuMTIFieldByRecord.Params[0].AsInteger := cdsMTIConfigRecordRECORDID.AsInteger;
    cdsLuMTIFieldByRecord.Open;

    cdsLuMTIFieldByRecord.First;

    while not cdsLuMTIFieldByRecord.Eof do
    begin
      cdsMTIConfigField.Append;
      cdsMTIConfigFieldFIELDID.AsInteger := cdsLuMTIFieldByRecordFIELDID.AsInteger;
      cdsMTIConfigFieldSOURCEDATA.AsString := 'E';//Empty
      cdsMTIConfigField.Post;

      cdsLuMTIFieldByRecord.Next;
    end;

  end;

end;

end.
