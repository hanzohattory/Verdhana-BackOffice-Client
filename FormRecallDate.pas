unit FormRecallDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, Vcl.StdCtrls,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, cxClasses;

type
  TfrmRecallDate = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtRecall: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetDateLabel(const ACaption: string);
  end;

var
  frmRecallDate: TfrmRecallDate;

implementation

{$R *.dfm}

procedure TfrmRecallDate.SetDateLabel(const ACaption: string);
begin
  dxLayoutControl1Item1.CaptionOptions.Text := ACaption;
end;

end.
