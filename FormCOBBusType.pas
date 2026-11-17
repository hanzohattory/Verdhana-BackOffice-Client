unit FormCOBBusType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxDBLabel,
  cxLabel, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCOBBusType = class(TfrmEditor)
    txtCustRegNo: TcxLabel;
    LayoutControlItem1: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    tabCommission: TcxTabSheet;
    grdComm: TcxGrid;
    gvwComm: TcxGridDBTableView;
    gvwCommCHANNELCODE: TcxGridDBColumn;
    gvwCommMARKETCODE: TcxGridDBColumn;
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_DAYTRADE: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCommLevel1: TcxGridLevel;
    tabCharge: TcxTabSheet;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    gvwChargeMARKETCODE: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeDESCRIPTION: TcxGridDBColumn;
    gvwChargeISUSED: TcxGridDBColumn;
    grdChargeLevel1: TcxGridLevel;
    cbBusType: TcxDBLookupComboBox;
    LayoutControlItem3: TdxLayoutItem;
    dsCommission: TDataSource;
    dsCharges: TDataSource;
    btnGetSetting: TcxButton;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
  private
    FCustRegNo: string;
    { Private declarations }
  public
    { Public declarations }
    property CustRegNo: string read FCustRegNo write FCustRegNo;
  end;

var
  frmCOBBusType: TfrmCOBBusType;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCOBList;

procedure TfrmCOBBusType.FormShow(Sender: TObject);
begin
  inherited;
  txtCustRegNo.Caption := FCustRegNo;
end;

end.
