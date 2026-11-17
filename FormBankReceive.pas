unit FormBankReceive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, Vcl.ActnList;

type
  TfrmRDNReceive = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBankReceive: TcxGridDBBandedTableView;
    cdsBankReceive: TNClientDataset;
    cdsBankReceiveTRID: TLargeintField;
    cdsBankReceiveTRDATE: TDateTimeField;
    cdsBankReceiveIO: TStringField;
    cdsBankReceiveCCY: TStringField;
    cdsBankReceiveTRDESC: TStringField;
    cdsBankReceiveBANKTYPE: TStringField;
    cdsBankReceiveTRAMOUNT: TFloatField;
    cdsBankReceiveRDNPOS: TFloatField;
    cdsBankReceiveRECSTATUS: TStringField;
    cdsBankReceiveRECDATE: TDateTimeField;
    cdsBankReceiveACCID: TLargeintField;
    cdsBankReceiveACCCODE: TStringField;
    cdsBankReceiveLEGACC: TStringField;
    cdsBankReceiveLEGTYPE: TStringField;
    cdsBankReceiveBNCODE: TStringField;
    cdsBankReceiveBNNAME: TStringField;
    cdsBankReceiveBNACCNO: TStringField;
    cdsBankReceiveACCNAME: TStringField;
    dsBankReceive: TDataSource;
    gvwBankReceiveTRDATE: TcxGridDBBandedColumn;
    gvwBankReceiveCCY: TcxGridDBBandedColumn;
    gvwBankReceiveTRDESC: TcxGridDBBandedColumn;
    gvwBankReceiveTRAMOUNT: TcxGridDBBandedColumn;
    gvwBankReceiveRDNPOS: TcxGridDBBandedColumn;
    gvwBankReceiveRECSTATUS: TcxGridDBBandedColumn;
    gvwBankReceiveRECDATE: TcxGridDBBandedColumn;
    gvwBankReceiveACCCODE: TcxGridDBBandedColumn;
    gvwBankReceiveBNNAME: TcxGridDBBandedColumn;
    gvwBankReceiveBNACCNO: TcxGridDBBandedColumn;
    gvwBankReceiveACCNAME: TcxGridDBBandedColumn;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    aclBankReceive: TActionList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure OpenView;
  end;

var
  frmRDNReceive: TfrmRDNReceive;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmRDNReceive.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

  OpenView;
end;

procedure TfrmRDNReceive.OpenView;
begin
  cdsBankReceive.Close;
  cdsBankReceive.Params[0].AsDate := dtTransDate.Date;
  cdsBankReceive.Open;
end;

initialization
RegisterClass(TfrmRDNReceive);

end.
