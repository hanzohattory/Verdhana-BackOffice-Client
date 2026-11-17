unit FormSInvProcessConf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGridLevel, cxGrid;

type
  TfrmSInvProcessConfig = class(TfrmEditorData)
    cdsSInvProcessConf: TNClientDataset;
    cdsSInvFormatFields: TNClientDataset;
    dsSInvFormatFields: TDataSource;
    cdsSInvProcessConfSIP_ID: TLargeintField;
    cdsSInvProcessConfSIP_CODE: TStringField;
    cdsSInvProcessConfSIP_NAME: TStringField;
    cdsSInvProcessConfDELIMITERCHAR: TStringField;
    cdsSInvProcessConfFORMAT1: TStringField;
    cdsSInvProcessConfFORMAT2: TStringField;
    cdsSInvProcessConfFORMAT3: TStringField;
    cdsSInvProcessConfDESCRIPTION: TStringField;
    cdsSInvProcessConfMODDA: TDateTimeField;
    cdsSInvProcessConfMODUI: TStringField;
    cdsSInvProcessConfAPPDA: TDateTimeField;
    cdsSInvProcessConfAPPUI: TStringField;
    cdsSInvProcessConfUNDER4Y: TIntegerField;
    cdsSInvProcessConfUNDER4YDA: TDateTimeField;
    cdsSInvProcessConfNOTES4Y: TStringField;
    cdsSInvProcessConfISDEL: TIntegerField;
    cdsSInvProcessConfID: TLargeintField;
    cdsSInvFormatFieldsSIP_ID: TLargeintField;
    cdsSInvFormatFieldsSEQ: TIntegerField;
    cdsSInvFormatFieldsFIELDNAME: TStringField;
    cdsSInvFormatFieldsFORMATSYNTAX: TStringField;
    cdsSInvFormatFieldsFORMATFIELD: TStringField;
    cdsSInvFormatFieldsMOC: TStringField;
    cdsSInvFormatFieldsDESCRIPTION: TStringField;
    cdsSInvFormatFieldsMODDA: TDateTimeField;
    cdsSInvFormatFieldsMODUI: TStringField;
    cdsSInvFormatFieldsAPPDA: TDateTimeField;
    cdsSInvFormatFieldsAPPUI: TStringField;
    cdsSInvFormatFieldsUNDER4Y: TIntegerField;
    cdsSInvFormatFieldsUNDER4YDA: TDateTimeField;
    cdsSInvFormatFieldsNOTES4Y: TStringField;
    cdsSInvFormatFieldsISDEL: TIntegerField;
    cdsSInvFormatFieldsID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwSInvFormatFields: TcxGridDBBandedTableView;
    gvwSInvFormatFieldsSIP_ID: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsSEQ: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsFIELDNAME: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsFORMATSYNTAX: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsFORMATFIELD: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsMOC: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsDESCRIPTION: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsMODDA: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsMODUI: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsAPPDA: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsAPPUI: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsUNDER4Y: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsUNDER4YDA: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsNOTES4Y: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsISDEL: TcxGridDBBandedColumn;
    gvwSInvFormatFieldsID: TcxGridDBBandedColumn;
    cdsSInvProcessConfGENERATEFOLDER: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsSInvProcessConfNewRecord(DataSet: TDataSet);
    procedure cdsSInvFormatFieldsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSInvProcessConfig: TfrmSInvProcessConfig;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSInvProcessConfig.btnOKClick(Sender: TObject);
begin
  cdsSInvProcessConf.ApplyUpdates(-1);
  cdsSInvFormatFields.ApplyUpdates(-1);

  inherited;

end;

procedure TfrmSInvProcessConfig.cdsSInvFormatFieldsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsSInvFormatFieldsSIP_ID.AsInteger := cdsSInvProcessConfSIP_ID.AsInteger;
end;

procedure TfrmSInvProcessConfig.cdsSInvProcessConfNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSInvProcessConfSIP_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_SINVPROCESS');
end;

procedure TfrmSInvProcessConfig.FormShow(Sender: TObject);
begin
  inherited;
  cdsSInvFormatFields.Close;
  cdsSInvFormatFields.Params[0].AsInteger := cdsSInvProcessConf.Params[0].AsInteger;
  cdsSInvFormatFields.Open;

  cdsSInvFormatFields.ReadOnly := cdsSInvProcessConf.ReadOnly;
  gvwSInvFormatFields.Navigator.Visible := not cdsSInvFormatFields.ReadOnly;
end;

end.
