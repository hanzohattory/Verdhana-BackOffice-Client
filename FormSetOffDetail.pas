unit FormSetOffDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, dxLayoutControl, cxContainer,
  dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit, cxImageComboBox;

type
  TfrmSetOffDetail = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvSetOffDetail: TcxGridDBBandedTableView;
    dsDataSetOffByAccID: TDataSource;
    gvSetOffDetailACCID: TcxGridDBBandedColumn;
    gvSetOffDetailACCNO: TcxGridDBBandedColumn;
    gvSetOffDetailACCNAME: TcxGridDBBandedColumn;
    gvSetOffDetailTRXTYPE: TcxGridDBBandedColumn;
    gvSetOffDetailTRDDATE: TcxGridDBBandedColumn;
    gvSetOffDetailDUEDATE: TcxGridDBBandedColumn;
    gvSetOffDetailCCYCODE: TcxGridDBBandedColumn;
    gvSetOffDetailEXRATE: TcxGridDBBandedColumn;
    gvSetOffDetailAMOUNT: TcxGridDBBandedColumn;
    gvSetOffDetailPROCESSDATE: TcxGridDBBandedColumn;
    gvSetOffDetailLEDGERACC: TcxGridDBBandedColumn;
    gvSetOffDetailLEDGERNAME: TcxGridDBBandedColumn;
    gvSetOffDetailSETOFF_DESC: TcxGridDBBandedColumn;
    gvSetOffDetailDC: TcxGridDBBandedColumn;
    gvSetOffDetailSETTOFF_AMT: TcxGridDBBandedColumn;
    gvSetOffDetailREMARKS: TcxGridDBBandedColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetOffDetail: TfrmSetOffDetail;

implementation

{$R *.dfm}

uses FormSetOff, DataGlobal;

end.
