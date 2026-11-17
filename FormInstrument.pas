unit FormInstrument;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  NClientDataset, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, cxCheckBox,
  cxButtonEdit, dxLayoutLookAndFeels, cxClasses, cxImageComboBox;

type
  TfrmInstrument = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cdsInstrument: TNClientDataset;
    cdsInstrumentINSTRUMENT_ID: TLargeintField;
    cdsInstrumentINSTRUMENT_CODE: TStringField;
    cdsInstrumentLOCALCODE: TStringField;
    cdsInstrumentMARKETCODE: TStringField;
    cdsInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentSHORTNAME: TStringField;
    cdsInstrumentLONGNAME: TStringField;
    cdsInstrumentISSUERNAME: TStringField;
    cdsInstrumentCCY: TStringField;
    cdsInstrumentISINCODE: TStringField;
    cdsInstrumentISINDATE: TDateTimeField;
    cdsInstrumentMARGIN: TIntegerField;
    cdsInstrumentSTATUS: TStringField;
    cdsInstrumentDELISTINGDATE: TDateTimeField;
    cdsInstrumentLISTINGDATE: TDateTimeField;
    cdsInstrumentLASTCLSPRICE: TFloatField;
    cdsInstrumentLASTCPPRICEDATE: TDateField;
    cdsInstrumentSECTOR: TStringField;
    cdsInstrumentMODDA: TDateTimeField;
    cdsInstrumentMODUI: TStringField;
    cdsInstrumentAPPDA: TDateTimeField;
    cdsInstrumentAPPUI: TStringField;
    cdsInstrumentISDEL: TIntegerField;
    cdsInstrumentID: TLargeintField;
    cdsInstrumentSEDOL: TStringField;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cdsInstrumentHCUT_MARGIN: TFloatField;
    cdsInstrumentHCUT_REG: TFloatField;
    cdsInstrumentHCUT_REPO: TFloatField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cdsInstrumentISSUERID: TLargeintField;
    cdsInstrumentACCCODE: TStringField;
    cdsInstrumentACCNAME: TStringField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cdsInstrumentAFFIL: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure cdsInstrumentNewRecord(DataSet: TDataSet);
    procedure cdsInstrumentBeforePost(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrument: TfrmInstrument;

implementation

{$R *.dfm}

uses FormInstruments, DataGlobal, FormLuAccountUnderwriter;

procedure TfrmInstrument.cdsInstrumentBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.State in [dsInsert]) then
  begin
    if DataSet.FieldByName('INSTRUMENT_ID').AsLargeInt = -1 then
    begin
      DataSet.FieldByName('INSTRUMENT_ID').AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_INSTRUMENT');
      DataSet.FieldByName('APPDA').AsDateTime := Now;
      DataSet.FieldByName('APPUI').AsString   := dmGlobal.UserID;
    end;
  end;

  DataSet.FieldByName('INSTRUMENT_CODE').AsString := DataSet.FieldByName('LOCALCODE').AsString
    + '.' + DataSet.FieldByName('MARKETCODE').AsString;

end;

procedure TfrmInstrument.cdsInstrumentNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsInstrumentINSTRUMENT_ID.AsLargeInt := -1;
  cdsInstrumentINSTRUMENT_CODE.AsString := '<AUTO>';
end;

procedure TfrmInstrument.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oDataSet: TClientDataSet;
begin
  inherited;
  oDataSet := TClientDataSet(dsSubject.DataSet);
  if (oDataSet.ReadOnly) then
    Exit;

  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccountUnderwriter.Run = mrOK then
    begin
      if not (oDataSet.State in dsEditModes) then
        oDataSet.Edit;

      oDataSet.FieldByName('ISSUERID').AsInteger := cdsLuAccountUnderWriterACCID.AsInteger;
      oDataSet.FieldByName('ISSUERNAME').AsString := cdsLuAccountUnderWriterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmInstrument.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
      cdsLuAccount.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmInstrument);

end.
