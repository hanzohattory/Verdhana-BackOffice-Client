unit FormGLwithBANKRekon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, Vcl.ActnList,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, Datasnap.DBClient, NClientDataset;

type
  TfrmGLWithBankRecon = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwGLWithBankRecon: TcxGridDBBandedTableView;
    cdsGLWithBankRecon: TNClientDataset;
    cdsGLWithBankReconGLACCOUNTCODE: TStringField;
    cdsGLWithBankReconGLACCOUNTNAME: TStringField;
    cdsGLWithBankReconACCBANKCODE: TStringField;
    cdsGLWithBankReconBNCODE: TStringField;
    cdsGLWithBankReconBANKACCNO: TStringField;
    cdsGLWithBankReconBANK_CCY: TStringField;
    cdsGLWithBankReconBANK_BALANCE: TFloatField;
    cdsGLWithBankReconGL_CCY: TStringField;
    cdsGLWithBankReconGL_BALANCE: TFloatField;
    cdsGLWithBankReconDIFFERENT: TFloatField;
    dsGLWithBankRecon: TDataSource;
    gvwGLWithBankReconGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwGLWithBankReconGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwGLWithBankReconACCBANKCODE: TcxGridDBBandedColumn;
    gvwGLWithBankReconBNCODE: TcxGridDBBandedColumn;
    gvwGLWithBankReconBANKACCNO: TcxGridDBBandedColumn;
    gvwGLWithBankReconBANK_CCY: TcxGridDBBandedColumn;
    gvwGLWithBankReconBANK_BALANCE: TcxGridDBBandedColumn;
    gvwGLWithBankReconGL_CCY: TcxGridDBBandedColumn;
    gvwGLWithBankReconGL_BALANCE: TcxGridDBBandedColumn;
    gvwGLWithBankReconDIFFERENT: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure dtTransDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmGLWithBankRecon: TfrmGLWithBankRecon;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLWithBankRecon.dtTransDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmGLWithBankRecon.FormShow(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  RefreshData;
end;

procedure TfrmGLWithBankRecon.RefreshData;
begin
  cdsGLWithBankRecon.Close;
  cdsGLWithBankRecon.Params[0].AsDate := dtTransDate.Date;
  cdsGLWithBankRecon.Open;
end;

initialization
  RegisterClass(TfrmGLWithBankRecon);

end.
