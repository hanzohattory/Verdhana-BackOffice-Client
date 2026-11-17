unit FormMTITransRecord;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxMemo,
  cxRichEdit, cxDBRichEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxDBEdit, cxTextEdit, dxLayoutControl, cxSpinEdit;

type
  TfrmMTITransRecord = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBRichEdit1: TcxDBRichEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dsSubject: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdRecord: TcxGrid;
    gvwRecord: TcxGridDBTableView;
    grdRecordLevel1: TcxGridLevel;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dsRecord: TDataSource;
    gvwRecordTRANS_RECORD_ID: TcxGridDBColumn;
    gvwRecordTRANSID: TcxGridDBColumn;
    gvwRecordRECORDID: TcxGridDBColumn;
    gvwRecordSEQID: TcxGridDBColumn;
    gvwRecordMINREC: TcxGridDBColumn;
    gvwRecordMAXREC: TcxGridDBColumn;
    gvwRecordNUM_FIELDS: TcxGridDBColumn;
    gvwRecordREQ_FIELDS: TcxGridDBColumn;
    gvwRecordMODDA: TcxGridDBColumn;
    gvwRecordMODUI: TcxGridDBColumn;
    gvwRecordAPPDA: TcxGridDBColumn;
    gvwRecordAPPUI: TcxGridDBColumn;
    gvwRecordUNDER4Y: TcxGridDBColumn;
    gvwRecordUNDER4YDA: TcxGridDBColumn;
    gvwRecordNOTES4Y: TcxGridDBColumn;
    gvwRecordISDEL: TcxGridDBColumn;
    gvwRecordID: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTITransRecord: TfrmMTITransRecord;

implementation

{$R *.dfm}

uses FormMTITransList, DataGlobal;

end.
