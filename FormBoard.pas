unit FormBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxButtonEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxSkinsCore, cxImageComboBox, cxCheckBox,
  dxLayoutLookAndFeels, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  NClientDataset;

type
  TfrmBoard = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsBoard: TNClientDataset;
    cdsBoardBOARDID: TLargeintField;
    cdsBoardBOARDCODE: TStringField;
    cdsBoardMARKETCODE: TStringField;
    cdsBoardBOARDDESC: TStringField;
    cdsBoardGLCD: TStringField;
    cdsBoardMARKET: TStringField;
    cdsBoardDUEBUYSTOCK: TIntegerField;
    cdsBoardDUESELLSTOCK: TIntegerField;
    cdsBoardDUEBUYCASH: TIntegerField;
    cdsBoardDUESELLCASH: TIntegerField;
    cdsBoardMODDA: TDateTimeField;
    cdsBoardMODUI: TStringField;
    cdsBoardAPPDA: TDateTimeField;
    cdsBoardAPPUI: TStringField;
    cdsBoardISDEL: TIntegerField;
    cdsBoardID: TLargeintField;
    cdsBoardCPTYPE: TStringField;
    cdsBoardCPVALUE: TIntegerField;
    procedure cdsBoardNewRecord(DataSet: TDataSet);
    procedure cdsBoardBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBoard: TfrmBoard;

implementation

{$R *.dfm}

uses DataGlobal, FormBoards;

procedure TfrmBoard.cdsBoardBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsBoard.State = dsInsert then
  begin
    cdsBoardBOARDID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BOARD');
  end;
end;

procedure TfrmBoard.cdsBoardNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBoardBOARDID.AsLargeInt := -1;
end;

end.
