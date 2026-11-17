unit FormCOBCommCharges;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxDBLookupComboBox, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxCheckBox, cxDBLabel, cxLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGridDBTableView;

type
  TfrmCOBCommCharges = class(TfrmEditor)
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlGroup4: TdxLayoutGroup;
    dsCommission: TDataSource;
    dsCharges: TDataSource;
    LayoutControlGroup5: TdxLayoutGroup;
    LayoutControlItem3: TdxLayoutItem;
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
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    LayoutControlItem4: TdxLayoutItem;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    gvwChargeMARKETCODE: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeDESCRIPTION: TcxGridDBColumn;
    gvwChargeISUSED: TcxGridDBColumn;
    grdChargeLevel1: TcxGridLevel;
    gvwCommCCYCODE: TcxGridDBColumn;
    gvwCommNET_COMMID: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBCommCharges: TfrmCOBCommCharges;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal, DataLookup;

end.
