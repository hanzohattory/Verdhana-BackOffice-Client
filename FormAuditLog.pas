unit FormAuditLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient,
  NClientDataset;

type
  TfrmAuditLog = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdAudit: TcxGrid;
    gvwAudit: TcxGridDBBandedTableView;
    grdAuditLevel1: TcxGridLevel;
    cdsAudit: TClientDataSet;
    dsAudit: TDataSource;
    cdsAuditByModule: TNClientDataset;
    cdsAuditByTable: TNClientDataset;
    cdsAuditByField: TNClientDataset;
    cdsAuditByModuleID: TLargeintField;
    cdsAuditByModuleMODULE: TStringField;
    cdsAuditByModuleNOTES: TMemoField;
    cdsAuditByModuleKEYID: TStringField;
    cdsAuditByModuleWRITEDATE: TDateTimeField;
    cdsAuditByModuleWRITEUID: TStringField;
    cdsAuditByModulePROTOCOL: TStringField;
    cdsAuditByModuleIPADDRESS: TStringField;
    cdsAuditByModuleCOMPNAME: TStringField;
    cdsAuditByModuleMACADDRESS: TStringField;
    cdsAuditByTableID: TLargeintField;
    cdsAuditByTableMODULE: TStringField;
    cdsAuditByTableNOTES: TMemoField;
    cdsAuditByTableKEYID: TStringField;
    cdsAuditByTableWRITEDATE: TDateTimeField;
    cdsAuditByTableWRITEUID: TStringField;
    cdsAuditByTablePROTOCOL: TStringField;
    cdsAuditByTableIPADDRESS: TStringField;
    cdsAuditByTableCOMPNAME: TStringField;
    cdsAuditByTableMACADDRESS: TStringField;
    cdsAuditByFieldID: TLargeintField;
    cdsAuditByFieldMODULE: TStringField;
    cdsAuditByFieldNOTES: TMemoField;
    cdsAuditByFieldKEYID: TStringField;
    cdsAuditByFieldWRITEDATE: TDateTimeField;
    cdsAuditByFieldWRITEUID: TStringField;
    cdsAuditByFieldPROTOCOL: TStringField;
    cdsAuditByFieldIPADDRESS: TStringField;
    cdsAuditByFieldCOMPNAME: TStringField;
    cdsAuditByFieldMACADDRESS: TStringField;
    cdsAuditLogByModule: TNClientDataset;
    cdsAuditLogByTable: TNClientDataset;
    cdsAuditLogByField: TNClientDataset;
    cdsAuditLogByFieldID: TLargeintField;
    cdsAuditLogByFieldSEQID: TIntegerField;
    cdsAuditLogByFieldTABLENAME: TStringField;
    cdsAuditLogByFieldFIELDNAME: TStringField;
    cdsAuditLogByFieldFIELDID: TStringField;
    cdsAuditLogByFieldSTATUS: TStringField;
    cdsAuditLogByFieldOLDVALUE: TMemoField;
    cdsAuditLogByFieldNEWVALUE: TMemoField;
    cdsAuditLogByTableID: TLargeintField;
    cdsAuditLogByTableSEQID: TIntegerField;
    cdsAuditLogByTableTABLENAME: TStringField;
    cdsAuditLogByTableFIELDNAME: TStringField;
    cdsAuditLogByTableFIELDID: TStringField;
    cdsAuditLogByTableSTATUS: TStringField;
    cdsAuditLogByTableOLDVALUE: TMemoField;
    cdsAuditLogByTableNEWVALUE: TMemoField;
    cdsAuditLogByModuleID: TLargeintField;
    cdsAuditLogByModuleSEQID: TIntegerField;
    cdsAuditLogByModuleTABLENAME: TStringField;
    cdsAuditLogByModuleFIELDNAME: TStringField;
    cdsAuditLogByModuleFIELDID: TStringField;
    cdsAuditLogByModuleSTATUS: TStringField;
    cdsAuditLogByModuleOLDVALUE: TMemoField;
    cdsAuditLogByModuleNEWVALUE: TMemoField;
    grdAuditLevel2: TcxGridLevel;
    gvwAuditLog: TcxGridDBBandedTableView;
    dsAuditLog: TDataSource;
    gvwAuditID: TcxGridDBBandedColumn;
    gvwAuditMODULE: TcxGridDBBandedColumn;
    gvwAuditNOTES: TcxGridDBBandedColumn;
    gvwAuditKEYID: TcxGridDBBandedColumn;
    gvwAuditWRITEDATE: TcxGridDBBandedColumn;
    gvwAuditWRITEUID: TcxGridDBBandedColumn;
    gvwAuditPROTOCOL: TcxGridDBBandedColumn;
    gvwAuditIPADDRESS: TcxGridDBBandedColumn;
    gvwAuditCOMPNAME: TcxGridDBBandedColumn;
    gvwAuditMACADDRESS: TcxGridDBBandedColumn;
    gvwAuditLogID: TcxGridDBBandedColumn;
    gvwAuditLogSEQID: TcxGridDBBandedColumn;
    gvwAuditLogTABLENAME: TcxGridDBBandedColumn;
    gvwAuditLogFIELDNAME: TcxGridDBBandedColumn;
    gvwAuditLogFIELDID: TcxGridDBBandedColumn;
    gvwAuditLogSTATUS: TcxGridDBBandedColumn;
    gvwAuditLogOLDVALUE: TcxGridDBBandedColumn;
    gvwAuditLogNEWVALUE: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(ACommandText: WideString);
    procedure ViewAuditByModule(AModuleName, AKeyID: String);
    procedure ViewAuditByTable(ATableName, AFieldID: String);
    procedure ViewAuditByField(ATableName, AFieldName, AFieldID: String);
  end;

var
  frmAuditLog: TfrmAuditLog;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmAuditLog }

procedure TfrmAuditLog.Run(ACommandText: WideString);
var
  oForm: TfrmAuditLog;
begin
  oForm := TfrmAuditLog.Create(nil);
  Try
    with oForm do
    begin
      cdsAudit.Close;
      cdsAudit.CommandText := ACommandText;
      cdsAudit.Open;

//      if not cdsAudit.IsEmpty then
      begin
        gvwAudit.DataController.CreateAllItems;
        ShowModal;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmAuditLog.ViewAuditByField(ATableName, AFieldName,
  AFieldID: String);
var
  oForm: TfrmAuditLog;
begin
  oForm := TfrmAuditLog.Create(nil);
  Try
    with oForm do
    begin
      dsAudit.DataSet := cdsAuditByField;
      cdsAuditByField.Close;
      cdsAuditByField.Params[0].AsString := ATableName;
      cdsAuditByField.Params[1].AsString := AFieldName;
      cdsAuditByField.Params[2].AsString := AFieldID;
      cdsAuditByField.Open;

      if not cdsAuditByField.IsEmpty then
      begin
        dsAuditLog.DataSet := cdsAuditLogByField;
        cdsAuditLogByField.Close;
        cdsAuditLogByField.Params[0].AsString := ATableName;
        cdsAuditLogByField.Params[1].AsString := AFieldName;
        cdsAuditLogByField.Params[2].AsString := AFieldID;
        cdsAuditLogByField.Open;

        Caption := 'Audit Log By Table ' + QuotedStr(ATableName)
          + ' and Field ' + QuotedStr(AFieldName)
          + ' with Key ' + QuotedStr(AFieldID);
        gvwAudit.ViewData.Expand(True);
        ShowModal;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;

end;

procedure TfrmAuditLog.ViewAuditByModule(AModuleName, AKeyID: String);
var
  oForm: TfrmAuditLog;
begin
  oForm := TfrmAuditLog.Create(nil);
  Try
    with oForm do
    begin
      dsAudit.DataSet := cdsAuditByModule;
      cdsAuditByModule.Close;
      cdsAuditByModule.Params[0].AsString := AModuleName;
      cdsAuditByModule.Params[1].AsString := AKeyID;
      cdsAuditByModule.Open;

      if not cdsAuditByModule.IsEmpty then
      begin
        dsAuditLog.DataSet := cdsAuditLogByModule;
        cdsAuditLogByModule.Close;
        cdsAuditLogByModule.Params[0].AsString := AModuleName;
        cdsAuditLogByModule.Params[1].AsString := AKeyID;
        cdsAuditLogByModule.Open;

        Caption := 'Audit Log By Module ' + QuotedStr(AModuleName)
          + ' with Key ' + QuotedStr(AKeyID);
        gvwAudit.ViewData.Expand(True);
        ShowModal;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;

end;

procedure TfrmAuditLog.ViewAuditByTable(ATableName, AFieldID: String);
var
  oForm: TfrmAuditLog;
begin
  oForm := TfrmAuditLog.Create(nil);
  Try
    with oForm do
    begin
      dsAudit.DataSet := cdsAuditByTable;
      cdsAuditByTable.Close;
      cdsAuditByTable.Params[0].AsString := ATableName;
      cdsAuditByTable.Params[1].AsString := AFieldID;
      cdsAuditByTable.Open;

      if not cdsAuditByTable.IsEmpty then
      begin
        dsAuditLog.DataSet := cdsAuditLogByTable;
        cdsAuditLogByTable.Close;
        cdsAuditLogByTable.Params[0].AsString := ATableName;
        cdsAuditLogByTable.Params[1].AsString := AFieldID;
        cdsAuditLogByTable.Open;

        Caption := 'Audit Log By Table ' + QuotedStr(ATableName)
          + ' with Key ' + QuotedStr(AFieldID);
        gvwAudit.ViewData.Expand(True);
        ShowModal;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;

end;

end.
