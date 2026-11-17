unit FormReportGroupType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxImageComboBox,
  cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, Data.DB, Datasnap.DBClient,
  NClientDataset, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmReportGroupType = class(TfrmEditorData)
    cdsRptGrpType: TNClientDataset;
    cdsRptGrpTypeRPTTYPEGRP: TStringField;
    cdsRptGrpTypeRPTDESC: TStringField;
    cdsRptGrpTypeCOUNTCOL: TIntegerField;
    cdsRptGrpTypeFILENAME: TStringField;
    cdsRptGrpTypeEXTFILE: TStringField;
    cdsRptGrpTypeDELIMITER: TStringField;
    cdsRptGrpTypeDATEFORMAT: TStringField;
    cdsRptGrpTypeMODDA: TDateTimeField;
    cdsRptGrpTypeMODUI: TWideStringField;
    cdsRptGrpTypeAPPDA: TDateTimeField;
    cdsRptGrpTypeAPPUI: TStringField;
    cdsRptGrpTypeUNDER4Y: TIntegerField;
    cdsRptGrpTypeUNDER4YDA: TDateTimeField;
    cdsRptGrpTypeNOTES4Y: TStringField;
    cdsRptGrpTypeISDEL: TIntegerField;
    cdsRptGrpTypeID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edColumn: TcxDBSpinEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportGroupType: TfrmReportGroupType;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportGroupType.FormCreate(Sender: TObject);
begin
  inherited;
  edColumn.Properties.MaxValue := dmGlobal.RemoteServer.GetGlobalParamInteger('017');
end;

Initialization
  RegisterClass(TfrmReportGroupType);

end.
