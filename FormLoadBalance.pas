unit FormLoadBalance;

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
  cxEdit, cxTextEdit, cxDBEdit, cxCurrencyEdit, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid;

type
  TfrmLendBorrow = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dsLB_CON_D: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwDetail: TcxGridDBBandedTableView;
    gvwDetailLBID: TcxGridDBBandedColumn;
    gvwDetailSTOCKID: TcxGridDBBandedColumn;
    gvwDetailSTOCKCODE: TcxGridDBBandedColumn;
    gvwDetailSTOCKNAME: TcxGridDBBandedColumn;
    gvwDetailLB_PRICE: TcxGridDBBandedColumn;
    gvwDetailLB_QTY: TcxGridDBBandedColumn;
    gvwDetailCHARGES_AMT: TcxGridDBBandedColumn;
    gvwDetailCHARGES_PAYDATE: TcxGridDBBandedColumn;
    gvwDetailCHARGES_PAID: TcxGridDBBandedColumn;
    gvwDetailMODDA: TcxGridDBBandedColumn;
    gvwDetailMODUI: TcxGridDBBandedColumn;
    gvwDetailAPPDA: TcxGridDBBandedColumn;
    gvwDetailAPPUI: TcxGridDBBandedColumn;
    gvwDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwDetailISDEL: TcxGridDBBandedColumn;
    gvwDetailID: TcxGridDBBandedColumn;
    dsluInstrument: TDataSource;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure gvwDetailSTOCKIDPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLendBorrow: TfrmLendBorrow;

implementation

{$R *.dfm}

uses FormLoadBalanceList, DataGlobal;

procedure TfrmLendBorrow.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('ACCNO').AsString   := dsSubject.DataSet.FieldByName('ACCCODETMP').AsString;
  dsSubject.DataSet.FieldByName('ACCNAME').AsString := dsSubject.DataSet.FieldByName('ACCNAMETMP').AsString;
end;

procedure TfrmLendBorrow.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('CP_ACCNO').AsString   := dsSubject.DataSet.FieldByName('CPACCCODETMP').AsString;
  dsSubject.DataSet.FieldByName('CP_ACCNAME').AsString := dsSubject.DataSet.FieldByName('CPACCNAMETMP').AsString;
end;

procedure TfrmLendBorrow.gvwDetailSTOCKIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  dsLB_CON_D.DataSet.FieldByName('STOCKCODE').AsString := dsLB_CON_D.DataSet.FieldByName('STOCKCODETMP').AsString;
  dsLB_CON_D.DataSet.FieldByName('STOCKNAME').AsString := dsLB_CON_D.DataSet.FieldByName('STOCKNAMETMP').AsString;
end;

end.
