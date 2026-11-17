unit FormCustHaircut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmCustHaircut = class(TfrmEditorData)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustHaircut: TfrmCustHaircut;

implementation

{$R *.dfm}

uses DataGlobal, FormCustHaircutList, DataLookup;

end.
