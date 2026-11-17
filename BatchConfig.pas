unit BatchConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, Vcl.ActnList,
  NActionPermission, Vcl.Menus;

type
  TfrmBatchConfig = class(TfrmBasic)
    ActionList: TActionList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBatchConfig: TfrmBatchConfig;

implementation

{$R *.dfm}

end.
