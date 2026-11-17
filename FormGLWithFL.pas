unit FormGLWithFL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, cxGridDBTableView,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons;

type
  TfrmGLWithFL = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTrDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsGLWithFL: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsGLWithFL: TNClientDataset;
    cdsGLWithFLALTYPE: TStringField;
    cdsGLWithFLALCODE: TStringField;
    cdsGLWithFLGLACCOUNTCODE: TStringField;
    cdsGLWithFLGLACCOUNTNAME: TStringField;
    cdsGLWithFLACCBANKCODE: TStringField;
    cdsGLWithFLBNCODE: TStringField;
    cdsGLWithFLBANKACCNO: TStringField;
    cdsGLWithFLFL_CCY: TStringField;
    cdsGLWithFLFL_BALANCE: TFloatField;
    cdsGLWithFLGL_CCY: TStringField;
    cdsGLWithFLGL_BALANCE: TFloatField;
    cdsGLWithFLDIFFERENT: TFloatField;
    ActionList1: TActionList;
    adtRefrehData: TAction;
    gvwGLWithFL: TcxGridDBBandedTableView;
    gvwGLWithFLALTYPE: TcxGridDBBandedColumn;
    gvwGLWithFLALCODE: TcxGridDBBandedColumn;
    gvwGLWithFLGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwGLWithFLGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwGLWithFLACCBANKCODE: TcxGridDBBandedColumn;
    gvwGLWithFLBNCODE: TcxGridDBBandedColumn;
    gvwGLWithFLBANKACCNO: TcxGridDBBandedColumn;
    gvwGLWithFLFL_CCY: TcxGridDBBandedColumn;
    gvwGLWithFLFL_BALANCE: TcxGridDBBandedColumn;
    gvwGLWithFLGL_CCY: TcxGridDBBandedColumn;
    gvwGLWithFLGL_BALANCE: TcxGridDBBandedColumn;
    gvwGLWithFLDIFFERENT: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure adtRefrehDataExecute(Sender: TObject);
    procedure dtTrDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure refreshData;
  public
    { Public declarations }
  end;

var
  frmGLWithFL: TfrmGLWithFL;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLWithFL.adtRefrehDataExecute(Sender: TObject);
begin
  inherited;
  cdsGLWithFL.Close;
  cdsGLWithFL.Params[0].AsDate := dtTrDate.Date;
  cdsGLWithFL.Open;
end;

procedure TfrmGLWithFL.dtTrDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmGLWithFL.FormShow(Sender: TObject);
begin
  inherited;
  dtTrDate.Date := dmGlobal.RemoteServer.GetTransDate;
  refreshData;
end;

procedure TfrmGLWithFL.refreshData;
begin
  cdsGLWithFL.Close;
  cdsGLWithFL.Params[0].AsDate := dtTrDate.Date;
  cdsGLWithFL.Open;
end;

initialization
  RegisterClass(TfrmGLWithFL);

end.
