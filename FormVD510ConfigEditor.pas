unit FormVD510ConfigEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset;

type
  TfrmVD5ConfigEditor = class(TfrmEditorData)
    cdsVD5Config: TNClientDataset;
    cdsVD5ConfigVD5: TStringField;
    cdsVD5ConfigBARIS: TIntegerField;
    cdsVD5ConfigKETERANGAN: TStringField;
    cdsVD5ConfigISGRUP: TBooleanField;
    cdsVD5ConfigKELOMPOK: TIntegerField;
    cdsVD5ConfigISTRANS: TBooleanField;
    cdsVD5ConfigEDITED: TStringField;
    cdsVD5ConfigID: TLargeintField;
    cdsVD5ConfigVD5_1: TStringField;
    cdsVD5ConfigBARIS_1: TIntegerField;
    cdsVD5ConfigCOACODE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD5ConfigEditor: TfrmVD5ConfigEditor;

implementation

{$R *.dfm}

uses DataGlobal;

end.
