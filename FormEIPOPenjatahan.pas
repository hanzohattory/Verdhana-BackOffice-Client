unit FormEIPOPenjatahan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxCurrencyEdit, cxDBEdit, cxTextEdit, Data.DB,
  Datasnap.DBClient, NClientDataset;

type
  TfrmEIPOAlloted = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cdsSubject: TNClientDataset;
    cdsSubjectIPOID: TLargeintField;
    cdsSubjectIPOCODE: TStringField;
    cdsSubjectINSTTYPE: TStringField;
    cdsSubjectEXTREF: TStringField;
    cdsSubjectSTOCKID: TLargeintField;
    cdsSubjectSHARE: TStringField;
    cdsSubjectTRANSDATE: TDateField;
    cdsSubjectACCID: TLargeintField;
    cdsSubjectCLIENTACC: TStringField;
    cdsSubjectSENT_TO_FROM: TStringField;
    cdsSubjectNOTEDESC: TStringField;
    cdsSubjectQTY: TFloatField;
    cdsSubjectPRICE: TFloatField;
    cdsSubjectAMOUNT: TFloatField;
    cdsSubjectSETTLEDATE: TDateField;
    cdsSubjectREASON: TStringField;
    cdsSubjectALLOTEDQTY: TFloatField;
    cdsSubjectALLOTEDPRICE: TFloatField;
    cdsSubjectALLOTEDAMOUNT: TFloatField;
    cdsSubjectSTATUS: TStringField;
    cdsSubjectSTAT_IPO: TStringField;
    cdsSubjectINSDATE: TDateTimeField;
    cdsSubjectINSTIME: TDateTimeField;
    cdsSubjectINSUI: TStringField;
    cdsSubjectAPPDATE: TDateTimeField;
    cdsSubjectAPPTIME: TDateTimeField;
    cdsSubjectAPPUI: TStringField;
    cdsSubjectALLDATE: TDateTimeField;
    cdsSubjectALLTIME: TDateTimeField;
    cdsSubjectALLUI: TStringField;
    cdsSubjectDISDATE: TDateTimeField;
    cdsSubjectDISTIME: TDateTimeField;
    cdsSubjectDISUI: TStringField;
    cdsSubjectCCLDATE: TDateTimeField;
    cdsSubjectCCLTIME: TDateTimeField;
    cdsSubjectCCLUI: TStringField;
    dsSubject: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cdsSubjectACCNAME: TStringField;
    cdsSubjectSTOCKNAME: TStringField;
    procedure cdsSubjectALLOTEDQTYChange(Sender: TField);
    procedure cdsSubjectALLOTEDPRICEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEIPOAlloted: TfrmEIPOAlloted;

implementation

uses DataGlobal, DataLookUp;

{$R *.dfm}

procedure TfrmEIPOAlloted.cdsSubjectALLOTEDPRICEChange(Sender: TField);
begin
  cdsSubjectALLOTEDAMOUNT.AsFloat := cdsSubjectALLOTEDQTY.AsFloat * cdsSubjectALLOTEDPRICE.AsFloat;
end;

procedure TfrmEIPOAlloted.cdsSubjectALLOTEDQTYChange(Sender: TField);
begin
  cdsSubjectALLOTEDAMOUNT.AsFloat := cdsSubjectALLOTEDQTY.AsFloat * cdsSubjectALLOTEDPRICE.AsFloat;
end;

end.
