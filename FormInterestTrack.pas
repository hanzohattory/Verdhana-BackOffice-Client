unit FormInterestTrack;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TfrmInterestTrack = class(TfrmEditor)
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem5: TdxLayoutItem;
    LayoutControlGroup3: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LayoutControlItem7: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterestTrack: TfrmInterestTrack;

implementation

{$R *.dfm}

uses FormInterestTrackList, DataGlobal;

procedure TfrmInterestTrack.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('DISCOUNT_DATE').AsString = '' then
    dsSubject.DataSet.FieldByName('DISCOUNT_DATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;

  if dsSubject.DataSet.FieldByName('DISCOUNT_AMT').AsString = '' then
    dsSubject.DataSet.FieldByName('DISCOUNT_AMT').AsFloat := dsSubject.DataSet.FieldByName('INTEREST_AMT').AsFloat;

end;

end.
