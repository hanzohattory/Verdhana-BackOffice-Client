unit FormInterestTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxTextEdit,
  cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset, dxDateRanges,
  dxScrollbarAnnotations, dxLayoutLookAndFeels;

type
  TfrmInterestTable = class(TfrmEditorData)
    grdInterestTableD: TcxGrid;
    gvwInterestTableD: TcxGridDBTableView;
    grdInterestTableDLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsInterestTableD: TDataSource;
    gvwInterestTableDSTARTVALUE: TcxGridDBColumn;
    gvwInterestTableDENDVALUE: TcxGridDBColumn;
    gvwInterestTableDINTERESTRATE: TcxGridDBColumn;
    cdsInterestTableH: TNClientDataset;
    cdsInterestTableHINTERESTTABLECODE: TStringField;
    cdsInterestTableHINTERESTTABLEDESC: TStringField;
    cdsInterestTableHMODDA: TDateTimeField;
    cdsInterestTableHMODUI: TStringField;
    cdsInterestTableHAPPDA: TDateTimeField;
    cdsInterestTableHAPPUI: TStringField;
    cdsInterestTableHISDEL: TIntegerField;
    cdsInterestTableHID: TLargeintField;
    cdsInterestTableHqryInterestTableD: TDataSetField;
    cdsInterestTableHUNDER4Y: TIntegerField;
    cdsInterestTableHUNDER4YDA: TDateTimeField;
    cdsInterestTableHNOTES4Y: TStringField;
    cdsInterestTableD: TNClientDataset;
    cdsInterestTableDINTERESTTABLECODE: TStringField;
    cdsInterestTableDSEQNO: TIntegerField;
    cdsInterestTableDSTARTVALUE: TFloatField;
    cdsInterestTableDENDVALUE: TFloatField;
    cdsInterestTableDINTERESTRATE: TFloatField;
    cdsInterestTableDMODDA: TDateTimeField;
    cdsInterestTableDMODUI: TStringField;
    cdsInterestTableDAPPDA: TDateTimeField;
    cdsInterestTableDAPPUI: TStringField;
    cdsInterestTableDISDEL: TIntegerField;
    cdsInterestTableDID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterestTable: TfrmInterestTable;

implementation

{$R *.dfm}

uses FormInterestTables;

Initialization
  RegisterClass(TfrmInterestTable);

end.
