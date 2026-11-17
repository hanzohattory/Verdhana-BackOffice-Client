unit FormAccountDorman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxSkinsdxStatusBarPainter,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, cxTextEdit, Datasnap.DBClient, NClientDataset;

type
  TfrmAccountDorman = class(TfrmEditorData)
    cdsAccountDorman: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cdsAccountDormanADID: TLargeintField;
    cdsAccountDormanADNO: TStringField;
    cdsAccountDormanACCID: TLargeintField;
    cdsAccountDormanREMARK: TStringField;
    cdsAccountDormanREQ_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanAPPROVED: TIntegerField;
    cdsAccountDormanAPP_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanREQ_KSEI_ID: TStringField;
    cdsAccountDormanREQ_KSEIID_DATE: TDateTimeField;
    cdsAccountDormanMODDA: TDateTimeField;
    cdsAccountDormanMODUI: TStringField;
    cdsAccountDormanAPPDA: TDateTimeField;
    cdsAccountDormanAPPUI: TStringField;
    cdsAccountDormanUNDER4Y: TIntegerField;
    cdsAccountDormanUNDER4YDA: TDateTimeField;
    cdsAccountDormanNOTES4Y: TStringField;
    cdsAccountDormanISDEL: TIntegerField;
    cdsAccountDormanID: TLargeintField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cdsAccountDormanACCNAME: TStringField;
    cdsAccountDormanACCNO: TStringField;
    cdsAccountDormanOLD_SUBREK001: TStringField;
    cdsAccountDormanOLD_SUBREK004: TStringField;
    cdsAccountDormanNEW_SUBREK001: TStringField;
    cdsAccountDormanNEW_SUBREK004: TStringField;
    cdsAccountDormanUPD_KSEI_DATE: TDateField;
    procedure cdsAccountDormanNewRecord(DataSet: TDataSet);
    procedure cdsAccountDormanBeforePost(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountDorman: TfrmAccountDorman;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmAccountDorman.cdsAccountDormanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccountDorman.State in [dsInsert] then
  begin
    cdsAccountDormanADID.AsInteger     := dmGlobal.RemoteServer.GetSeq('TBL_ACCOUNT_DORMAN');
    cdsAccountDormanADNO.AsString      := FormatDateTime('YYYYMM', dmGlobal.RemoteServer.GetTransDate)+'-'+FormatFloat('0000', cdsAccountDormanADID.AsFloat);
    cdsAccountDormanREQ_DORMAN_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsAccountDormanAPPROVED.AsInteger := 0;
  end;
end;

procedure TfrmAccountDorman.cdsAccountDormanNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccountDormanADNO.AsString  := '<AUTO>';
  cdsAccountDormanADID.AsInteger := 0;
end;

procedure TfrmAccountDorman.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
      end;
    end;
  end;
end;

end.
