unit FormAMLSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxCurrencyEdit, cxDBEdit, cxClasses,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Data.DB, Datasnap.DBClient, NClientDataset, cxLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, dxDateRanges,
  dxScrollbarAnnotations, NActionPermission;

type
  TfrmAMLSetting = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnSave: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cdsAMLSetting: TNClientDataset;
    cdsAMLSettingCONDITION_A: TFloatField;
    cdsAMLSettingCONDITION_B1: TFloatField;
    cdsAMLSettingCONDITION_B2: TFloatField;
    cdsAMLSettingCONDITION_C1: TFloatField;
    cdsAMLSettingCONDITION_C2: TFloatField;
    cdsAMLSettingCONDITION_D: TFloatField;
    cdsAMLSettingCONDITION_E: TFloatField;
    cdsAMLSettingCONDITION_F: TFloatField;
    cdsAMLSettingCONDITION_G: TFloatField;
    cdsAMLSettingCONDITION_H: TFloatField;
    cdsAMLSettingCONDITION_I: TFloatField;
    cdsAMLSettingCONDITION_J: TFloatField;
    Label1: TLabel;
    edPenghasilanNetAsset: TcxCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edNetAsset: TcxCurrencyEdit;
    edUsia: TcxCurrencyEdit;
    edDeposit: TcxCurrencyEdit;
    edRataan: TcxCurrencyEdit;
    edDeviasi: TcxCurrencyEdit;
    edPenghasilan: TcxCurrencyEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edPerkalianTertentu: TcxCurrencyEdit;
    edRataanNetPlusDeviasi: TcxCurrencyEdit;
    edTotalPlusDeviasi: TcxCurrencyEdit;
    cdsOccupation: TNClientDataset;
    dsOccupation: TDataSource;
    cdsAssetParam: TNClientDataset;
    cdsAssetParamOCCUPATION: TStringField;
    cdsAssetParamASSETVALUE: TFloatField;
    dsAssetParam: TDataSource;
    cxGrid1: TcxGrid;
    gvwAssetParameter: TcxGridDBBandedTableView;
    gvwAssetParameterOCCUPATION: TcxGridDBBandedColumn;
    gvwAssetParameterASSETVALUE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    actPermission: TNActionPermission;
    cdsOccupationOC_CODE: TLargeintField;
    cdsOccupationOCCUPATION: TStringField;
    cdsOccupationOC_DESC: TStringField;
    cdsOccupationMODDA: TDateTimeField;
    cdsOccupationMODUI: TStringField;
    cdsOccupationAPPDA: TDateTimeField;
    cdsOccupationAPPUI: TStringField;
    cdsOccupationUNDER4Y: TIntegerField;
    cdsOccupationUNDER4YDA: TDateTimeField;
    cdsOccupationNOTES4Y: TStringField;
    cdsOccupationISDEL: TIntegerField;
    cdsOccupationID: TLargeintField;
    cdsOccupationRISK: TStringField;
    cdsOccupationOCCUPATION_EN: TStringField;
    cdsOccupationOCCUPATION_ID: TStringField;
    cdsOccupationMAXAMOUNT: TFloatField;
    procedure cxButton2Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gvwAssetParameterFocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
  private
    { Private declarations }
    procedure SaveSetting;
    procedure LoadSetting;
  public
    { Public declarations }
  end;

  function ShowAMLSetting: Boolean; Overload;
var
  frmAMLSetting: TfrmAMLSetting;

implementation

{$R *.dfm}

uses DataGlobal;//, FormAssetParameter;

function ShowAMLSetting: Boolean; Overload;
begin
  with TfrmAMLSetting.Create(Application) do
  begin
    LoadSetting;

    with dmGlobal do
    begin
      edPenghasilanNetAsset.EditValue  := BatasPenghasilanNetAsset;
      edNetAsset.EditValue             := BatasAtasNetAsset;
      edUsia.EditValue                 := BatasAtasUsia;
      edDeposit.EditValue              := BatasAtasDeposit;
      edRataan.EditValue               := Rataan;
      edPenghasilan.EditValue          := Penghasilan;
      edPerkalianTertentu.EditValue    := PerkalianTertentu;
      edDeviasi.EditValue              := Deviasi;
      edRataanNetPlusDeviasi.EditValue := RataanNetPlusDeviasi;
      edTotalPlusDeviasi.EditValue     := TotalPlusDeviasi;
    end;

    ShowModal;
  end;
end;

procedure TfrmAMLSetting.btnSaveClick(Sender: TObject);
begin
  if MessageDlg('Save Parameter Setting ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dmGlobal do
    begin
      BatasPenghasilanNetAsset := edPenghasilanNetAsset.EditValue;
      BatasAtasNetAsset        := edNetAsset.EditValue;
      BatasAtasUsia            := edUsia.EditValue;
      BatasAtasDeposit         := edDeposit.EditValue;
      Rataan                   := edRataan.EditValue;
      Deviasi                  := edDeviasi.EditValue;
      Penghasilan              := edPenghasilan.EditValue;
      PerkalianTertentu        := edPerkalianTertentu.EditValue;
      RataanNetPlusDeviasi     := edRataanNetPlusDeviasi.EditValue;
      TotalPlusDeviasi         := edTotalPlusDeviasi.EditValue;
    end;

    SaveSetting;
    ModalResult := mrOk;
  end;
end;

procedure TfrmAMLSetting.cxButton1Click(Sender: TObject);
begin
//  ShowAssetParameter;
end;

procedure TfrmAMLSetting.cxButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAMLSetting.FormCreate(Sender: TObject);
begin
  cdsAssetParam.Close;
  cdsAssetParam.Open;

  cdsOccupation.Close;
  cdsOccupation.Open;

  cdsAMLSetting.close;
  cdsAMLSetting.Open;
end;

procedure TfrmAMLSetting.gvwAssetParameterFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  if cdsOccupation.Locate('OC_DESC', cdsAssetParamOCCUPATION.AsString, []) then
    cdsAssetParamASSETVALUE.AsFloat := cdsOccupationMAXAMOUNT.AsFloat;
end;

procedure TfrmAMLSetting.LoadSetting;
begin
  with TfrmAMLSetting.Create(Application) do
  begin
    cdsAMLSetting.Close;
    cdsAMLSetting.Open;

    with dmGlobal do
    begin
      BatasPenghasilanNetAsset  := cdsAMLSettingCONDITION_A.AsFloat;
      BatasAtasNetAsset         := cdsAMLSettingCONDITION_B1.AsFloat;
      BatasAtasUsia             := cdsAMLSettingCONDITION_B2.AsFloat;
      BatasAtasDeposit          := cdsAMLSettingCONDITION_D.AsFloat;
      Rataan                    := cdsAMLSettingCONDITION_E.AsFloat;
      Penghasilan               := cdsAMLSettingCONDITION_F.asfloat;
      PerkalianTertentu         := cdsAMLSettingCONDITION_G.AsFloat;
      Deviasi                   := cdsAMLSettingCONDITION_H.AsFloat;
      RataanNetPlusDeviasi      := cdsAMLSettingCONDITION_I.AsFloat;
      TotalPlusDeviasi          := cdsAMLSettingCONDITION_J.AsFloat;
    end;
  end;
end;

procedure TfrmAMLSetting.SaveSetting;
begin
  with dmGlobal do
  begin
    cdsAMLSetting.Edit;
    cdsAMLSettingCONDITION_A.AsFloat  := BatasPenghasilanNetAsset;
    cdsAMLSettingCONDITION_B1.AsFloat := BatasAtasNetAsset;
    cdsAMLSettingCONDITION_B2.AsFloat := BatasAtasUsia;
    cdsAMLSettingCONDITION_C1.AsFloat := 0;
    cdsAMLSettingCONDITION_C2.AsFloat := 0;
    cdsAMLSettingCONDITION_D.AsFloat  := BatasAtasDeposit;
    cdsAMLSettingCONDITION_E.AsFloat  := Rataan;
    cdsAMLSettingCONDITION_F.AsFloat  := Deviasi;
    cdsAMLSettingCONDITION_G.AsFloat  := Penghasilan;
    cdsAMLSettingCONDITION_H.AsFloat  := PerkalianTertentu;
    cdsAMLSettingCONDITION_I.AsFloat  := RataanNetPlusDeviasi;
    cdsAMLSettingCONDITION_J.AsFloat  := TotalPlusDeviasi;
    cdsAMLSetting.Post;
    cdsAMLSetting.ApplyUpdates(-1);

    cdsAssetParam.ApplyUpdates(-1);
  end;
end;

end.
