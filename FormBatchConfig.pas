unit FormBatchConfig;

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
  cxEdit, cxCheckBox, cxDBEdit, cxImageComboBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxSpinEdit, cxTimeEdit, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmBatchConfig = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    luPeriod: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    luProcDayType: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDate: TdxLayoutItem;
    lgProcDayType: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTimeEdit2: TcxDBTimeEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    procedure luPeriodPropertiesChange(Sender: TObject);
    procedure luProcDayTypePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBatchConfig: TfrmBatchConfig;

implementation

{$R *.dfm}

uses FormBatchConfigList, DataGlobal;

procedure TfrmBatchConfig.luPeriodPropertiesChange(Sender: TObject);
begin
  inherited;

  if luPeriod.EditValue = 'D' then
  begin
    lgProcDayType.Visible := False;
    with TfrmBatchConfigList(BrowserForm) do
    begin
      if cdsBatchConfig.State in [dsInsert, dsEdit] then
      begin
        cdsBatchConfigDAYPROCTYPE.Clear;
      end;
    end;

  end
  else lgProcDayType.Visible := True;
end;

procedure TfrmBatchConfig.luProcDayTypePropertiesChange(Sender: TObject);
begin
  inherited;
  if luProcDayType.EditingValue = '5' then lcDate.Visible := True
  else lcDate.Visible := False;

end;

end.
