unit FormGLJournalMaps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxTextEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid;

type
  TfrmGLJournalMaps = class(TfrmEditor)
    dsGLJournalMap: TDataSource;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwGLJournalMap: TcxGridDBBandedTableView;
    gvwGLJournalMapJOUMAPID: TcxGridDBBandedColumn;
    gvwGLJournalMapJMSEQID: TcxGridDBBandedColumn;
    gvwGLJournalMapCCYCODE: TcxGridDBBandedColumn;
    gvwGLJournalMapGLACCOUNTID: TcxGridDBBandedColumn;
    gvwGLJournalMapMODDA: TcxGridDBBandedColumn;
    gvwGLJournalMapMODUI: TcxGridDBBandedColumn;
    gvwGLJournalMapAPPDA: TcxGridDBBandedColumn;
    gvwGLJournalMapAPPUI: TcxGridDBBandedColumn;
    gvwGLJournalMapUNDER4Y: TcxGridDBBandedColumn;
    gvwGLJournalMapUNDER4YDA: TcxGridDBBandedColumn;
    gvwGLJournalMapNOTES4Y: TcxGridDBBandedColumn;
    gvwGLJournalMapISDEL: TcxGridDBBandedColumn;
    gvwGLJournalMapID: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLJournalMaps: TfrmGLJournalMaps;

implementation

{$R *.dfm}

uses DataGlobal, FormGLJournalMap;

end.
