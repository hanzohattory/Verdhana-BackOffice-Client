unit FormFacilitationBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.DB, Datasnap.DBClient, NClientDataset;

type
  TfrmFacilitationBoard = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    edBoardID: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edCPAccID: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cdsBoard: TNClientDataset;
    cdsBoardBOARDID: TLargeintField;
    cdsBoardBOARDCODE: TStringField;
    cdsBoardMARKETCODE: TStringField;
    cdsBoardBOARDDESC: TStringField;
    cdsBoardGLCD: TStringField;
    cdsBoardMARKET: TStringField;
    cdsBoardCPTYPE: TStringField;
    cdsBoardDUEBUYSTOCK: TIntegerField;
    cdsBoardDUESELLSTOCK: TIntegerField;
    cdsBoardDUEBUYCASH: TIntegerField;
    cdsBoardDUESELLCASH: TIntegerField;
    cdsBoardUSEMOVEDUE: TStringField;
    cdsBoardMOVEDUE_BUYSTOCK: TIntegerField;
    cdsBoardMOVEDUE_SELLSTOCK: TIntegerField;
    cdsBoardMOVEDUE_BUYCASH: TIntegerField;
    cdsBoardMOVEDUE_SELLCASH: TIntegerField;
    cdsBoardCPVALUE: TIntegerField;
    cdsBoardMODDA: TDateTimeField;
    cdsBoardMODUI: TStringField;
    cdsBoardAPPDA: TDateTimeField;
    cdsBoardAPPUI: TStringField;
    cdsBoardISDEL: TIntegerField;
    cdsBoardID: TLargeintField;
    procedure edBoardIDPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFacilitationBoard: TfrmFacilitationBoard;

implementation

uses DataGlobal, DataLookUp;

{$R *.dfm}

procedure TfrmFacilitationBoard.edBoardIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  cdsBoard.Close;
  cdsBoard.Params[0].AsInteger := edBoardID.EditValue;
  cdsboard.Open;

  edCPAccID.Enabled := cdsBoardCPVALUE.IsNull;
end;

end.
