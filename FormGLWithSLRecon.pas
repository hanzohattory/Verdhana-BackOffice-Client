unit FormGLWithSLRecon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, Vcl.Menus, Vcl.ActnList, Data.DB, Datasnap.DBClient,
  NClientDataset, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridLevel, cxGrid;

type
  TfrmGLWithSLRecon = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsGLWithSLRecon: TNClientDataset;
    ActionList1: TActionList;
    cdsGLWithSLReconACCID: TLargeintField;
    cdsGLWithSLReconACCNO: TStringField;
    cdsGLWithSLReconACCNAME: TStringField;
    cdsGLWithSLReconGL_BALANCE: TFloatField;
    cdsGLWithSLReconSL_BALANCE: TFloatField;
    cdsGLWithSLReconDIFFERENT: TFloatField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvGLWithSLRecon: TcxGridDBBandedTableView;
    dsGLWithSLRecon: TDataSource;
    gvGLWithSLReconACCID: TcxGridDBBandedColumn;
    gvGLWithSLReconACCNO: TcxGridDBBandedColumn;
    gvGLWithSLReconACCNAME: TcxGridDBBandedColumn;
    gvGLWithSLReconGL_BALANCE: TcxGridDBBandedColumn;
    gvGLWithSLReconSL_BALANCE: TcxGridDBBandedColumn;
    gvGLWithSLReconDIFFERENT: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure dtTransDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmGLWithSLRecon: TfrmGLWithSLRecon;

implementation

{ TfrmGLWithSLRecon }

uses DataGlobal;

procedure TfrmGLWithSLRecon.dtTransDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmGLWithSLRecon.FormShow(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  RefreshData;
end;

procedure TfrmGLWithSLRecon.RefreshData;
begin
  cdsGLWithSLRecon.Close;
  cdsGLWithSLRecon.Params[0].AsDate := dtTransDate.Date;
  cdsGLWithSLRecon.Open;
end;

initialization
  registerClass(TfrmGLWithSLRecon);

{$R *.dfm}

end.
