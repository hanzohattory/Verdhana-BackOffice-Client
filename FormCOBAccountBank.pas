unit FormCOBAccountBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBLabel, cxLabel, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxDBLookupComboBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  TfrmCOBAccountBank = class(TfrmEditor)
    LayoutControlItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    LayoutControlItem2: TdxLayoutItem;
    txtCustRegNo: TcxLabel;
    LayoutControlItem3: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    LayoutControlGroup1: TdxLayoutGroup;
    dsAccBank: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwAccBank: TcxGridDBBandedTableView;
    gvwAccBankBNCODE: TcxGridDBBandedColumn;
    gvwAccBankBANKACCNO: TcxGridDBBandedColumn;
    gvwAccBankBANKACCNAME: TcxGridDBBandedColumn;
    gvwAccBankBANKBRANCH: TcxGridDBBandedColumn;
    gvwAccBankISRDN: TcxGridDBBandedColumn;
    gvwAccBankBNCHGSTYPE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
  private
    FCustRegNo: string;
    FAction: Integer;
    { Private declarations }
  public
    { Public declarations }
    property CustRegNo: string read FCustRegNo write FCustRegNo;
    property Action: Integer read FAction write FAction;
  end;

var
  frmCOBAccountBank: TfrmCOBAccountBank;

implementation

{$R *.dfm}

uses FormClientOnBoardingList, DataGlobal;

procedure TfrmCOBAccountBank.FormShow(Sender: TObject);
begin
  inherited;
  txtCustRegNo.Caption := CustRegNo;
  if FAction = 1 then
  begin
    btnOk.Caption     := 'Done';
    btnCancel.Caption := 'Not Complete';

    dsAccBank.DataSet.DisableControls;
  end
  else
  begin
    btnOk.Caption     := 'Ok';
    btnCancel.Caption := 'Cancel';

    dsAccBank.DataSet.EnableControls;
  end
end;

end.
