unit FormGenerateReportByReportType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, dxLayoutControl, NLibraries,
  Datasnap.DBClient, NClientDataset, cxClasses, Vcl.ExtCtrls, cxLabel, cxDBLabel;

type
  TfrmGenerateReportByRptType = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    GenerateReport: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem1: TdxLayoutItem;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1ValueDate: TDateField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerateReportByRptType: TfrmGenerateReportByRptType;

implementation

uses DataGlobal,FormLoading;

{$R *.dfm}

procedure TfrmGenerateReportByRptType.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Close;
  ClientDataSet1.CreateDataSet;

  ClientDataSet1.Append;
  ClientDataSet1ValueDate.AsDateTime := dmGlobal.RemoteServer.getTransDate;
  ClientDataSet1.Post;
end;

end.
