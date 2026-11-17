unit FormChackDTERecon;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxImageComboBox, dxDateRanges, dxScrollbarAnnotations;
type
  TfrmCheckDTERecon = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwDTERecon: TcxGridDBBandedTableView;
    dsDTERecon: TDataSource;
    gvwDTEReconDT_STOCKCODE: TcxGridDBBandedColumn;
    gvwDTEReconDT_BOARDCODE: TcxGridDBBandedColumn;
    gvwDTEReconDT_BS: TcxGridDBBandedColumn;
    gvwDTEReconDT_PRICE: TcxGridDBBandedColumn;
    gvwDTEReconDT_QTY: TcxGridDBBandedColumn;
    gvwDTEReconDTE_STOCKCODE: TcxGridDBBandedColumn;
    gvwDTEReconDTE_BOARDCODE: TcxGridDBBandedColumn;
    gvwDTEReconDTE_BS: TcxGridDBBandedColumn;
    gvwDTEReconDTE_PRICE: TcxGridDBBandedColumn;
    gvwDTEReconDTE_QTY: TcxGridDBBandedColumn;
    gvwDTEReconDIFFERENT: TcxGridDBBandedColumn;
    gvwDTEReconACCNO: TcxGridDBBandedColumn;
    gvwDTEReconACCNAME: TcxGridDBBandedColumn;
    gvwDTEReconDT_VALUE: TcxGridDBBandedColumn;
    gvwDTEReconDTE_VALUE: TcxGridDBBandedColumn;
    gvwDTEReconACCNO_DTE: TcxGridDBBandedColumn;
    gvwDTEReconACCNAME_DTE: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    SaveGridAsExcel1: TMenuItem;
    SaveDlg: TSaveDialog;
    procedure SaveGridAsExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmCheckDTERecon: TfrmCheckDTERecon;
implementation
{$R *.dfm}
uses FormReconcileDTE, DataGlobal, cxGridExportLink;
procedure TfrmCheckDTERecon.SaveGridAsExcel1Click(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, cxGrid1);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

end.
