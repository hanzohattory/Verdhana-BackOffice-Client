unit FormLoading;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvAnimatedImage, JvGIFCtrl, Vcl.ExtCtrls;

type
  TfrmLoading = class(TForm)
    tmrLoading: TTimer;
    imgLoading: TJvGIFAnimator;
    procedure tmrLoadingTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class function GetInstance(AParent: TWinControl): TfrmLoading;
  end;

var
  frmLoading: TfrmLoading;

implementation

{$R *.dfm}

{ TfrmLoading }

class function TfrmLoading.GetInstance(AParent: TWinControl): TfrmLoading;
var
  oRes : TfrmLoading;
begin
  oRes := TfrmLoading.Create(AParent);
  oRes.Parent := AParent;


  Result := oRes;
end;

procedure TfrmLoading.FormShow(Sender: TObject);
begin
  with imgLoading do
  begin
    Left := (Self.Parent.Width div 2) - (Width div 2);
    Top := (Self.Parent.Height div 2) - (Height div 2);
  end;

//  tmrLoading.Enabled := True;
end;

procedure TfrmLoading.tmrLoadingTimer(Sender: TObject);
begin
  tmrLoading.Enabled := False;
  Self.Free;
end;

end.
