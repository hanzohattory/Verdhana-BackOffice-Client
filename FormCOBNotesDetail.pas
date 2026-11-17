unit FormCOBNotesDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox;

type
  TfrmCOBNoteDetail = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBNoteDetail: TfrmCOBNoteDetail;

implementation

{$R *.dfm}

uses FormClientOnBoardingList, DataGlobal;

end.
