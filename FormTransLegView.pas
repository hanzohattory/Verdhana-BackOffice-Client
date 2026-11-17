unit FormTransLegView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.Menus, dxLayoutControlAdapters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmTransLegView = class(TForm)
    cxPageControl1: TcxPageControl;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    tabCash: TcxTabSheet;
    tabStock: TcxTabSheet;
    grdTransLegCash: TcxGrid;
    gvwTransLegCash: TcxGridDBTableView;
    grdTransLegCashLevel1: TcxGridLevel;
    dsTradeLegCash: TDataSource;
    grdTradeLegStock: TcxGrid;
    gvwTradeLegStock: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsTradeLegStock: TDataSource;
    gvwTransLegCashCONCODE: TcxGridDBColumn;
    gvwTransLegCashTRDDATE: TcxGridDBColumn;
    gvwTransLegCashBS: TcxGridDBColumn;
    gvwTransLegCashLEG: TcxGridDBColumn;
    gvwTransLegCashACCID: TcxGridDBColumn;
    gvwTransLegCashACCCODE: TcxGridDBColumn;
    gvwTransLegCashALTYPE: TcxGridDBColumn;
    gvwTransLegCashCSLACCCODE: TcxGridDBColumn;
    gvwTransLegCashCDUE: TcxGridDBColumn;
    gvwTransLegCashDC: TcxGridDBColumn;
    gvwTransLegCashCCYCODE: TcxGridDBColumn;
    gvwTransLegCashEXRATE: TcxGridDBColumn;
    gvwTransLegCashAMT: TcxGridDBColumn;
    gvwTransLegCashISCLOSE: TcxGridDBColumn;
    gvwTransLegCashRVSD: TcxGridDBColumn;
    gvwTransLegCashRSVDTLID: TcxGridDBColumn;
    gvwTransLegCashRVSDDATE: TcxGridDBColumn;
    gvwTransLegCashSTLKEY: TcxGridDBColumn;
    gvwTransLegCashSPLIT: TcxGridDBColumn;
    gvwTransLegCashSPLITLINK: TcxGridDBColumn;
    gvwTransLegCashC2SLINK: TcxGridDBColumn;
    gvwTransLegCashCUSTBANK: TcxGridDBColumn;
    gvwTransLegCashRDNCODE: TcxGridDBColumn;
    gvwTransLegCashRDNACC: TcxGridDBColumn;
    gvwTransLegCashCBEST01: TcxGridDBColumn;
    gvwTransLegCashCBEST04: TcxGridDBColumn;
    gvwTransLegCashSTLD: TcxGridDBColumn;
    gvwTransLegCashAMTSTLD: TcxGridDBColumn;
    gvwTransLegCashTAMTSTLD: TcxGridDBColumn;
    gvwTransLegCashORIGINALAMT: TcxGridDBColumn;
    gvwTradeLegStockCONCODE: TcxGridDBColumn;
    gvwTradeLegStockTRDDATE: TcxGridDBColumn;
    gvwTradeLegStockBS: TcxGridDBColumn;
    gvwTradeLegStockLEG: TcxGridDBColumn;
    gvwTradeLegStockACCID: TcxGridDBColumn;
    gvwTradeLegStockACCCODE: TcxGridDBColumn;
    gvwTradeLegStockALTYPE: TcxGridDBColumn;
    gvwTradeLegStockSSLACCCODE: TcxGridDBColumn;
    gvwTradeLegStockSDUE: TcxGridDBColumn;
    gvwTradeLegStockDR: TcxGridDBColumn;
    gvwTradeLegStockBOARD: TcxGridDBColumn;
    gvwTradeLegStockSTOCKID: TcxGridDBColumn;
    gvwTradeLegStockSTOCKCODE: TcxGridDBColumn;
    gvwTradeLegStockQTY: TcxGridDBColumn;
    gvwTradeLegStockAVGPRICE: TcxGridDBColumn;
    gvwTradeLegStockISCLOSE: TcxGridDBColumn;
    gvwTradeLegStockRVSD: TcxGridDBColumn;
    gvwTradeLegStockRSVDTLID: TcxGridDBColumn;
    gvwTradeLegStockRVSDDATE: TcxGridDBColumn;
    gvwTradeLegStockSTLKEY: TcxGridDBColumn;
    gvwTradeLegStockSPLIT: TcxGridDBColumn;
    gvwTradeLegStockSPLITLINK: TcxGridDBColumn;
    gvwTradeLegStockS2CLINK: TcxGridDBColumn;
    gvwTradeLegStockCUSTBANK: TcxGridDBColumn;
    gvwTradeLegStockCBEST01: TcxGridDBColumn;
    gvwTradeLegStockCBEST04: TcxGridDBColumn;
    gvwTradeLegStockSTLD: TcxGridDBColumn;
    gvwTradeLegStockAMTSTLD: TcxGridDBColumn;
    gvwTradeLegStockTAMTSTLD: TcxGridDBColumn;
    gvwTradeLegStockORIGINALAMT: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransLegView: TfrmTransLegView;

implementation

{$R *.dfm}

uses FormContracts;

end.
