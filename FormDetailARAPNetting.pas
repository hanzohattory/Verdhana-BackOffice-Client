unit FormDetailARAPNetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid, cxTextEdit,
  cxCurrencyEdit, dxLayoutcxEditAdapters, cxContainer, cxDBEdit;

type
  TfrmDetailARAPNetting = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDetailARAPNetting: TDataSource;
    gvwDetailARAPNetting: TcxGridDBBandedTableView;
    gvwDetailARAPNettingSIID: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSINO: TcxGridDBBandedColumn;
    gvwDetailARAPNettingENTRYDATE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingTRDDATE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingDUEDATE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSITYPE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingBASE_NETAMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSETTLED_AMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingVOUCHERAMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSI_DESC: TcxGridDBBandedColumn;
    gvwDetailARAPNettingSTAT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingPROCESSAMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingOUTSTANDAMT: TcxGridDBBandedColumn;
    gvwDetailARAPNettingPROCESSAMT_X: TcxGridDBBandedColumn;
    gvwDetailARAPNettingOUTSTANDAMT_X: TcxGridDBBandedColumn;
    gvwDetailARAPNettingBOARDID: TcxGridDBBandedColumn;
    gvwDetailARAPNettingAR: TcxGridDBBandedColumn;
    gvwDetailARAPNettingAP: TcxGridDBBandedColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetailARAPNetting: TfrmDetailARAPNetting;

implementation

uses
  FormReportARAPNetting, DataGlobal;

{$R *.dfm}

end.
