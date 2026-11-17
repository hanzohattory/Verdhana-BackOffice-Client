unit FormBankReconPostAll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar,
  cxCurrencyEdit, cxImageComboBox, Datasnap.DBClient, NClientDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, cxGridDBTableView;

type
  TfrmBankReconPostAll = class(TForm)
    dsBankReconPostAll: TDataSource;
    cdsBankReconPostAll: TNClientDataset;
    cdsBankReconPostAllTRDATE: TDateField;
    cdsBankReconPostAllACCID: TLargeintField;
    cdsBankReconPostAllALTYPE: TStringField;
    cdsBankReconPostAllLDGACC: TStringField;
    cdsBankReconPostAllBNACC: TStringField;
    cdsBankReconPostAllBNACCNO: TStringField;
    cdsBankReconPostAllCCY: TStringField;
    cdsBankReconPostAllRDNAMT: TFloatField;
    cdsBankReconPostAllRDNBNK_AMT: TFloatField;
    cdsBankReconPostAllDIFFAMT: TFloatField;
    cdsBankReconPostAllREF: TStringField;
    cdsBankReconPostAllATRNS: TStringField;
    cdsBankReconPostAllCDID: TLargeintField;
    cdsBankReconPostAllV_TRNAMT: TFloatField;
    cdsBankReconPostAllACCNO: TStringField;
    cxGrid1: TcxGrid;
    gvwBankRecon: TcxGridDBBandedTableView;
    gvwBankReconTRDATE: TcxGridDBBandedColumn;
    gvwBankReconACCID: TcxGridDBBandedColumn;
    gvwBankReconALTYPE: TcxGridDBBandedColumn;
    gvwBankReconLDGACC: TcxGridDBBandedColumn;
    gvwBankReconBNACC: TcxGridDBBandedColumn;
    gvwBankReconBNACCNO: TcxGridDBBandedColumn;
    gvwBankReconCCY: TcxGridDBBandedColumn;
    gvwBankReconRDNAMT: TcxGridDBBandedColumn;
    gvwBankReconRDNBNK_AMT: TcxGridDBBandedColumn;
    gvwBankReconDIFFAMT: TcxGridDBBandedColumn;
    gvwBankReconREF: TcxGridDBBandedColumn;
    gvwBankReconATRNS: TcxGridDBBandedColumn;
    gvwBankReconCDID: TcxGridDBBandedColumn;
    gvwBankReconV_TRNAMT: TcxGridDBBandedColumn;
    gvwBankReconACCNO: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FTransDate: TDateTime;
    { Private declarations }
  public
    property TransDate: TDateTime read FTransDate write FTransDate;
  end;

var
  frmBankReconPostAll: TfrmBankReconPostAll;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBankReconPostAll.cxButton1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmBankReconPostAll.cxButton2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmBankReconPostAll.FormShow(Sender: TObject);
begin
  cdsBankReconPostAll.Close;
  cdsBankReconPostAll.Params[0].AsDate := TransDate;
  cdsBankReconPostAll.Open;
end;

end.
