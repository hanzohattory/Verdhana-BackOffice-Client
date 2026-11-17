unit FormMKBDSupportingReportFilter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, dxLayoutControl;

type
  TfrmMKBDSupportReportFilter = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edFrom: TcxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edTo: TcxSpinEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    lblHeader: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
    function FilterRow(ACaption: String; var ANoFrom, ANoTo: Integer): TModalResult;
  end;

var
  frmMKBDSupportReportFilter: TfrmMKBDSupportReportFilter;

implementation

{$R *.dfm}

{ TfrmMKBDSupportReportFilter }

function TfrmMKBDSupportReportFilter.FilterRow(ACaption: String; var ANoFrom,
  ANoTo: Integer): TModalResult;
begin
  Result := mrNone;
  frmMKBDSupportReportFilter := TfrmMKBDSupportReportFilter.Create(Nil);
  Try
    with frmMKBDSupportReportFilter do
    begin
      lblHeader.Caption := ACaption;
      edFrom.EditValue := ANoFrom;
      edTo.EditValue := ANoTo;

      Result := ShowModal;
      if Result = mrOk then
      begin
        ANoFrom := StrToIntDef(VarToStr(edFrom.EditValue), 0);
        ANoTo := StrToIntDef(VarToStr(edTo.EditValue), 0);
      end;
    end;
  Finally
    FreeAndNil(frmMKBDSupportReportFilter);
  End;
end;

end.
