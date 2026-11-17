unit FormOccupation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxSkinsdxStatusBarPainter,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxTextEdit;

type
  TfrmOccupation = class(TfrmEditorData)
    cdsOccupation: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cdsOccupationOC_CODE: TLargeintField;
    cdsOccupationOCCUPATION: TStringField;
    cdsOccupationOC_DESC: TStringField;
    cdsOccupationMODDA: TDateTimeField;
    cdsOccupationMODUI: TStringField;
    cdsOccupationAPPDA: TDateTimeField;
    cdsOccupationAPPUI: TStringField;
    cdsOccupationUNDER4Y: TIntegerField;
    cdsOccupationUNDER4YDA: TDateTimeField;
    cdsOccupationNOTES4Y: TStringField;
    cdsOccupationISDEL: TIntegerField;
    cdsOccupationID: TLargeintField;
    cdsOccupationRISK: TStringField;
    cdsOccupationOCCUPATION_EN: TStringField;
    cdsOccupationOCCUPATION_ID: TStringField;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOccupation: TfrmOccupation;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmOccupation.btnOKClick(Sender: TObject);
begin
  if cdsOccupation.State in [dsInsert] then
    cdsOccupationOC_CODE.AsInteger := dmGlobal.RemoteServer.GetSeq('main.B_OCCUPATION');
  inherited;
end;

end.
