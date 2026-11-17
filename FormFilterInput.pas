unit FormFilterInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, dxLayoutControl, dxBar, cxBarEditItem,
  cxClasses, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmFilterInput = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    txtFilter: TcxBarEditItem;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure txtFilterCurChange(Sender: TObject);
    procedure txtFilterEnter(Sender: TObject);
  private
    { Private declarations }
    FFirstKey: String;
    FFirstChange: Boolean;
    FTextEditObject: TcxTextEdit;
  public
    { Public declarations }
    Procedure PrepareFilter(AColumn: TcxGridColumn; AFirstKey: string);
  end;

var
  frmFilterInput: TfrmFilterInput;

implementation

{$R *.dfm}

{ TfrmFilterInput }

procedure TfrmFilterInput.FormActivate(Sender: TObject);
var
  Control: TcxBarEditItemControl;
  InnerControl: TWinControl;
begin
  if FFirstKey <> chr(0) then
  begin
    txtFilter.EditValue := FFirstKey;
    txtFilter.SetFocus();
//    Control := TcxBarEditItemControl(txtFilter.CurItemLink.Control);
//    if Control.Edit is TcxCustomTextEdit then
//    begin
//      InnerControl := (Control.Edit as TcxCustomTextEdit).InnerControl;
//      if InnerControl.HandleAllocated then
//        PostMessage(InnerControl.Handle, EM_SETSEL, 0, MaxInt);
//      (Control.Edit as TcxCustomTextEdit).SelStart := Length((Control.Edit as TcxCustomTextEdit).EditValue) + 1;
//      (Control.Edit as TcxCustomTextEdit).ClearSelection;
//    end;
  end
  else txtFilter.EditValue := Null;
end;

procedure TfrmFilterInput.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then ModalResult := mrOk
  else if Key = 27 then ModalResult := mrCancel;
end;

procedure TfrmFilterInput.PrepareFilter(AColumn: TcxGridColumn;
  AFirstKey: string);
begin
  Self.Caption := 'Filter by ' + AColumn.Caption;
  txtFilter.Caption := AColumn.Caption + ': ';
  FFirstKey := AFirstKey;
//  txtFilter.Properties := AColumn.Properties;
  txtFilter.RepositoryItem := AColumn.RepositoryItem;
  FFirstChange := True;
end;

procedure TfrmFilterInput.txtFilterCurChange(Sender: TObject);
begin
  txtFilter.EditValue := txtFilter.CurEditValue;
end;

procedure TfrmFilterInput.txtFilterEnter(Sender: TObject);
var
  Control: TcxBarEditItemControl;
  InnerControl: TWinControl;
begin
  Control := TcxBarEditItemControl(txtFilter.CurItemLink.Control);
  if Control.Edit is TcxCustomTextEdit then
  begin
    InnerControl := (Control.Edit as TcxCustomTextEdit).InnerControl;
    if InnerControl.HandleAllocated then
      PostMessage(InnerControl.Handle, EM_SETSEL, Length((Control.Edit as TcxCustomTextEdit).EditingValue), MaxInt);
//    (Control.Edit as TcxCustomTextEdit).SelStart := Length((Control.Edit as TcxCustomTextEdit).EditingValue) + 1;
//    (Control.Edit as TcxCustomTextEdit).ClearSelection;
  end;
end;

end.
