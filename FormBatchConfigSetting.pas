unit FormBatchConfigSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList, NActionPermission,
  Vcl.Menus, NDatasetAction, cxImageComboBox;

type
  TfrmBatchConfigSetting = class(TfrmBasic)
    aclBatchGroup: TActionList;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsBatchConfig: TNClientDataset;
    cdsBatchConfigBATCHID: TIntegerField;
    cdsBatchConfigCAT_CODE: TStringField;
    cdsBatchConfigCAT_DESC: TStringField;
    cdsBatchConfigPROCTIME: TDateTimeField;
    cdsBatchConfigPERIODIC: TStringField;
    cdsBatchConfigPROCDATE: TStringField;
    cdsBatchConfigMODDA: TDateTimeField;
    cdsBatchConfigMODUI: TStringField;
    cdsBatchConfigAPPDA: TDateTimeField;
    cdsBatchConfigAPPUI: TStringField;
    cdsBatchConfigUNDER4Y: TIntegerField;
    cdsBatchConfigUNDER4YDA: TDateTimeField;
    cdsBatchConfigNOTES4Y: TStringField;
    cdsBatchConfigISDEL: TIntegerField;
    cdsBatchConfigID: TLargeintField;
    cdsBatchConfigAUTO: TStringField;
    cdsBatchConfigDAYPROCTYPE: TStringField;
    cdsBatchConfigREPEAT: TStringField;
    cdsBatchConfigSEQNO: TIntegerField;
    dsBatchConfig: TDataSource;
    gvwMasterBATCHID: TcxGridDBBandedColumn;
    gvwMasterCAT_CODE: TcxGridDBBandedColumn;
    gvwMasterCAT_DESC: TcxGridDBBandedColumn;
    gvwMasterPROCTIME: TcxGridDBBandedColumn;
    gvwMasterPERIODIC: TcxGridDBBandedColumn;
    gvwMasterPROCDATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterAUTO: TcxGridDBBandedColumn;
    gvwMasterDAYPROCTYPE: TcxGridDBBandedColumn;
    gvwMasterREPEAT: TcxGridDBBandedColumn;
    gvwMasterSEQNO: TcxGridDBBandedColumn;
    actSelectGroup: TNAction;
    popGrid: TPopupMenu;
    AssignGrouptoSelectedBatchProcess1: TMenuItem;
    cdsBatchConfigNOTI_TIME: TDateTimeField;
    cdsBatchConfigEMAILTYPE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actSelectGroupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBatchConfigSetting: TfrmBatchConfigSetting;

implementation

{$R *.dfm}

uses DataGlobal, FormBatchAssignGroup;

procedure TfrmBatchConfigSetting.actSelectGroupExecute(Sender: TObject);
begin
  inherited;
  frmBatchAssignGroup.Run(cdsBatchConfigBATCHID.AsInteger, cdsBatchConfigCAT_DESC.AsString);
end;

procedure TfrmBatchConfigSetting.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBatchConfig.Close;
  cdsBatchConfig.Open;
end;

Initialization
  RegisterClass(TfrmBatchConfigSetting);

end.
