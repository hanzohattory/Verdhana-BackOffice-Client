unit FormAMLConditionParameter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxDBLookupComboBox, Datasnap.DBClient, NClientDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxLabel, dxLayoutContainer, dxLayoutControl, cxCurrencyEdit;

type
  TfrmAMLConditionParameter = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxGrid1: TcxGrid;
    gvwAssetParameter: TcxGridDBBandedTableView;
    gvwAssetParameterOCCUPATION: TcxGridDBBandedColumn;
    gvwAssetParameterASSETVALUE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsAMLConditionParameter: TNClientDataset;
    cdsAMLConditionParameterCONDITION_A: TFloatField;
    cdsAMLConditionParameterCONDITION_B1: TFloatField;
    cdsAMLConditionParameterCONDITION_B2: TFloatField;
    cdsAMLConditionParameterCONDITION_C1: TFloatField;
    cdsAMLConditionParameterCONDITION_C2: TFloatField;
    cdsAMLConditionParameterCONDITION_D: TFloatField;
    cdsAMLConditionParameterCONDITION_E: TFloatField;
    cdsAMLConditionParameterCONDITION_F: TFloatField;
    cdsAMLConditionParameterCONDITION_G: TFloatField;
    cdsAMLConditionParameterCONDITION_H: TFloatField;
    cdsAMLConditionParameterCONDITION_I: TFloatField;
    cdsAMLConditionParameterCONDITION_J: TFloatField;
    edPenghasilanNetAsset: TcxCurrencyEdit;
    edNetAsset: TcxCurrencyEdit;
    edUsia: TcxCurrencyEdit;
    edDeposit: TcxCurrencyEdit;
    edRataan: TcxCurrencyEdit;
    edDeviasi: TcxCurrencyEdit;
    edPenghasilan: TcxCurrencyEdit;
    edPerkalianTertentu: TcxCurrencyEdit;
    edRataanNetPlusDeviasi: TcxCurrencyEdit;
    edTotalPlusDeviasi: TcxCurrencyEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  function ShowAMLSetting: boolean; overload;
  end;

var
  frmAMLConditionParameter: TfrmAMLConditionParameter;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmAMLConditionParameter }

function TfrmAMLConditionParameter.ShowAMLSetting: boolean;
begin
  with TfrmAMLConditionParameter.Create(Application) do
  begin
//    cdsAMLConditionParameter.Close;
//    cdsAMLConditionParameter.Open;
//
//    with dmGlobal do
//    begin
//      edPenghasilanNetAsset.EditValue  := BatasPenghasilanNetAsset;
//      edNetAsset.EditValue             := BatasAtasNetAsset;
//      edUsia.EditValue                 := BatasAtasUsia;
//      edDeposit.EditValue              := BatasAtasDeposit;
//      edRataan.EditValue               := Rataan;
//      edPenghasilan.EditValue          := Penghasilan;
//      edPerkalianTertentu.EditValue    := PerkalianTertentu;
//      edDeviasi.EditValue              := Deviasi;
//      edRataanNetPlusDeviasi.EditValue := RataanNetPlusDeviasi;
//      edTotalPlusDeviasi.EditValue     := TotalPlusDeviasi;
//    end;

    ShowModal;
  end;
end;

end.
