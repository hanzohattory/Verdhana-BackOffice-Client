unit FormAccountDormanUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLabel, cxDBLabel, dxLayoutContainer, cxClasses, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxTextEdit, cxDBEdit, Data.DB, Datasnap.DBClient,
  NClientDataset;

type
  TfrmAccountDormanUpdate = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cdsAccountDorman: TNClientDataset;
    cdsAccountDormanADID: TLargeintField;
    cdsAccountDormanADNO: TStringField;
    cdsAccountDormanACCID: TLargeintField;
    cdsAccountDormanREMARK: TStringField;
    cdsAccountDormanREQ_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanAPPROVED: TIntegerField;
    cdsAccountDormanAPP_DORMAN_DATE: TDateTimeField;
    cdsAccountDormanREQ_KSEI_ID: TStringField;
    cdsAccountDormanREQ_KSEIID_DATE: TDateTimeField;
    cdsAccountDormanMODDA: TDateTimeField;
    cdsAccountDormanMODUI: TStringField;
    cdsAccountDormanAPPDA: TDateTimeField;
    cdsAccountDormanAPPUI: TStringField;
    cdsAccountDormanUNDER4Y: TIntegerField;
    cdsAccountDormanUNDER4YDA: TDateTimeField;
    cdsAccountDormanNOTES4Y: TStringField;
    cdsAccountDormanISDEL: TIntegerField;
    cdsAccountDormanID: TLargeintField;
    cdsAccountDormanACCNAME: TStringField;
    cdsAccountDormanACCNO: TStringField;
    cdsAccountDormanOLD_SUBREK001: TStringField;
    cdsAccountDormanOLD_SUBREK004: TStringField;
    cdsAccountDormanNEW_SUBREK001: TStringField;
    cdsAccountDormanNEW_SUBREK004: TStringField;
    cdsAccountDormanUPD_KSEI_DATE: TDateField;
    dsAccountDorman: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountDormanUpdate: TfrmAccountDormanUpdate;

implementation

{$R *.dfm}

uses DataGlobal;

end.
