unit FormReceiveEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, cxClasses, dxLayoutLookAndFeels,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReceiveEmail = class(TfrmEditorData)
    cdsReceiveEmail: TNClientDataset;
    cdsReceiveEmailEDATETIME: TDateTimeField;
    cdsReceiveEmailESUBJECT: TStringField;
    cdsReceiveEmailEFROMADDRESS: TStringField;
    cdsReceiveEmailEBODY: TMemoField;
    cdsReceiveEmailEMSGID: TStringField;
    cdsReceiveEmailEDATETIMEMAIL: TDateTimeField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiveEmail: TfrmReceiveEmail;

implementation

uses DataGlobal;

{$R *.dfm}

end.
