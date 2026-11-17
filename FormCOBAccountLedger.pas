unit FormCOBAccountLedger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
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
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  Datasnap.DBClient, NClientDataset;

type
  TfrmCOBAccountLedger = class(TfrmEditor)
    txtRegNo: TcxTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    txtCustName: TcxTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdAccLedger: TcxGridDBBandedTableView;
    grdAccLedgerALTYPE: TcxGridDBBandedColumn;
    grdAccLedgerALCODE: TcxGridDBBandedColumn;
    grdAccLedgerCALCINTEREST: TcxGridDBBandedColumn;
    grdAccLedgerINTERESTCODE: TcxGridDBBandedColumn;
    cdsCOBAccLedgerClass: TNClientDataset;
    cdsCOBAccLedgerClassALCID: TIntegerField;
    cdsCOBAccLedgerClassALTYPE: TStringField;
    cdsCOBAccLedgerClassMODDA: TDateTimeField;
    cdsCOBAccLedgerClassMODUI: TStringField;
    cdsCOBAccLedgerClassAPPDA: TDateTimeField;
    cdsCOBAccLedgerClassAPPUI: TStringField;
    cdsCOBAccLedgerClassUNDER4Y: TIntegerField;
    cdsCOBAccLedgerClassUNDER4YDA: TDateTimeField;
    cdsCOBAccLedgerClassNOTES4Y: TStringField;
    cdsCOBAccLedgerClassISDEL: TIntegerField;
    cdsCOBAccLedgerClassID: TLargeintField;
    cxButton1: TcxButton;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    lgLedegrClass: TdxLayoutGroup;
    cbAccLedClass: TcxDBLookupComboBox;
    LayoutControlItem5: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    dsAccount: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FRegNo: string;
    FCustName: string;
    FAccID: Integer;
    { Private declarations }
  public
    property RegNo: string read FRegNo write FRegNo;
    property CustName: string read FCustName write FCustName;
    property AccID: Integer read FAccID write FAccID;
    procedure PrepareData(AUpdate: Boolean);
  end;

var
  frmCOBAccountLedger: TfrmCOBAccountLedger;

implementation

{$R *.dfm}

uses FormCOBList, DataLookup, DataGlobal;

procedure TfrmCOBAccountLedger.cxButton1Click(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsSubject.DataSet;

  oDataSet.DisableControls;

  if oDataSet.RecordCount>0 then
  begin
    if MessageDlg('Ledger Account List Already Exist, Do you want to delete it first?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    begin
      oDataSet.First;

      while not oDataSet.IsEmpty do
      begin
        oDataSet.Delete;
      end;
    end;
  end;

  cdsCOBAccLedgerClass.Close;
  cdsCOBAccLedgerClass.Params[0].Value := cbAccLedClass.EditValue;
  cdsCOBAccLedgerClass.Open;

  cdsCOBAccLedgerClass.First;
  while not cdsCOBAccLedgerClass.Eof do
  begin
    oDataSet.Append;
    oDataSet.FieldByName('ACCID').AsInteger := FAccID;
    oDataSet.FieldByName('ALTYPE').AsString := cdsCOBAccLedgerClassALTYPE.AsString;
    oDataSet.FieldByName('ALCODE').AsString := IntToStr(FAccID)+'-'+cdsCOBAccLedgerClassALTYPE.AsString+'-'+oDataSet.FieldByName('SEQID').AsString;
    oDataSet.Post;

    cdsCOBAccLedgerClass.Next;
  end;

  oDataSet.EnableControls;

end;

procedure TfrmCOBAccountLedger.FormShow(Sender: TObject);
begin
  inherited;
  txtRegNo.Text    := FRegNo;
  txtCustName.Text := FCustName;


end;

procedure TfrmCOBAccountLedger.PrepareData(AUpdate: Boolean);
begin
  dsSubject.AutoEdit := AUpdate;
  lgLedegrClass.Visible := AUpdate;
  grdAccLedger.Navigator.Visible := AUpdate;
end;

end.                                                                vo
