unit FormCOBKSEIStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, NClientDataset, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid;

type
  TfrmCOBKSEIStatus = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwKSEIStatus: TcxGridDBBandedTableView;
    cdsKSEIStatus: TNClientDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBKSEIStatus: TfrmCOBKSEIStatus;

implementation

{$R *.dfm}

uses DataGlobal;

end.
