unit FormBankCharge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxImageComboBox;

type
  TfrmBankCharges = class(TfrmEditor)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNCHGTYPE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterCHARGE_AMT: TcxGridDBBandedColumn;
    gvwMasterCHARGE_MINTRANS: TcxGridDBBandedColumn;
    gvwMasterCHARGE_MAXTRANS: TcxGridDBBandedColumn;
    gvwMasterFTSERVICE: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankCharges: TfrmBankCharges;

implementation

{$R *.dfm}

uses DataGlobal, FormBanks;

end.
