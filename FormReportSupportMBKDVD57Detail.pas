unit FormReportSupportMBKDVD57Detail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, dxLayoutControl,
  Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmReportSupportMBKDVD57Detail = class(TForm)
    grdVD57DetailLevel1: TcxGridLevel;
    grdVD57Detail: TcxGrid;
    dsVD57Detail: TDataSource;
    gvwVD57Detail: TcxGridDBBandedTableView;
    gvwVD57DetailVALUEDATE: TcxGridDBBandedColumn;
    gvwVD57DetailROWNO: TcxGridDBBandedColumn;
    gvwVD57DetailACCID: TcxGridDBBandedColumn;
    gvwVD57DetailACCCODE: TcxGridDBBandedColumn;
    gvwVD57DetailACCNAME: TcxGridDBBandedColumn;
    gvwVD57DetailSTOCKCODE: TcxGridDBBandedColumn;
    gvwVD57DetailCLOSEPRICE: TcxGridDBBandedColumn;
    gvwVD57DetailQUANTITY: TcxGridDBBandedColumn;
    gvwVD57DetailMARKETVALUE: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSupportMBKDVD57Detail: TfrmReportSupportMBKDVD57Detail;

implementation

uses
  FormReportSupportMBKDVD5;

{$R *.dfm}

procedure TfrmReportSupportMBKDVD57Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := mrOk
end;

end.
