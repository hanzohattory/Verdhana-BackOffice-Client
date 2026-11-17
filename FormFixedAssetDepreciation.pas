unit FormFixedAssetDepreciation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, Data.DB,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmFixedAssetDepreciation = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    dsSubject: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterBYMONTH: TcxGridDBBandedColumn;
    gvwMasterCALC_DATE: TcxGridDBBandedColumn;
    gvwMasterASSET_GLACC: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPREC_GLACC: TcxGridDBBandedColumn;
    gvwMasterDEPREC_GLACC: TcxGridDBBandedColumn;
    gvwMasterBUY_PRICE: TcxGridDBBandedColumn;
    gvwMasterSALVAGE: TcxGridDBBandedColumn;
    gvwMasterECONOMIC_LIFE: TcxGridDBBandedColumn;
    gvwMasterMONTHLY_DEPREC: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPREC_YTD: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPREC: TcxGridDBBandedColumn;
    gvwMasterBOOK_VALUE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFixedAssetDepreciation: TfrmFixedAssetDepreciation;

implementation

{$R *.dfm}

uses FormFixedAssetList, DataGlobal;

procedure TfrmFixedAssetDepreciation.FormShow(Sender: TObject);
begin
  gvwMaster.ApplyBestFit();
end;

end.
