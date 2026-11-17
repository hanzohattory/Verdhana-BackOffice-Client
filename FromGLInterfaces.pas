unit FromGLInterfaces;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxPropertiesStore,
  cxClasses, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid;

type
  TfrmGLInterfaces = class(TfrmBrowseNoEdit)
    dxLayoutControl1: TdxLayoutControl;
    dtReport: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLInterfaces: TfrmGLInterfaces;

implementation

{$R *.dfm}

procedure TfrmGLInterfaces.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
