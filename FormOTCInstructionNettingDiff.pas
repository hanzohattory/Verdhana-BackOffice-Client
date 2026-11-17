unit FormOTCInstructionNettingDiff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxImageComboBox;

type
  TfrmOTCInstructionNettingDiff = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwNetting: TcxGridDBBandedTableView;
    dsSubject: TDataSource;
    gvwNettingCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwNettingCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwNettingACCID: TcxGridDBBandedColumn;
    gvwNettingACCNO: TcxGridDBBandedColumn;
    gvwNettingACCNAME: TcxGridDBBandedColumn;
    gvwNettingVALUEDATE: TcxGridDBBandedColumn;
    gvwNettingTRDDATE: TcxGridDBBandedColumn;
    gvwNettingSETTLEDATE: TcxGridDBBandedColumn;
    gvwNettingSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwNettingINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwNettingPARTY_CODE: TcxGridDBBandedColumn;
    gvwNettingPARTY_ACC: TcxGridDBBandedColumn;
    gvwNettingCOUNTER_CODE: TcxGridDBBandedColumn;
    gvwNettingCOUNTER_ACC: TcxGridDBBandedColumn;
    gvwNettingSECURITYCODE_TYPE: TcxGridDBBandedColumn;
    gvwNettingSTOCKID: TcxGridDBBandedColumn;
    gvwNettingSTOCKCODE: TcxGridDBBandedColumn;
    gvwNettingQTY: TcxGridDBBandedColumn;
    gvwNettingCCY: TcxGridDBBandedColumn;
    gvwNettingORIGINAL_AMT: TcxGridDBBandedColumn;
    gvwNettingSETTLE_AMOUNT: TcxGridDBBandedColumn;
    gvwNettingREMARKS: TcxGridDBBandedColumn;
    gvwNettingPURPOSE: TcxGridDBBandedColumn;
    gvwNettingTRADE_REF: TcxGridDBBandedColumn;
    gvwNettingSETTLE_REASON: TcxGridDBBandedColumn;
    gvwNettingBENEFICIARYCODE: TcxGridDBBandedColumn;
    gvwNettingBENEFICIARYACC: TcxGridDBBandedColumn;
    gvwNettingCORPACT_TYPE: TcxGridDBBandedColumn;
    gvwNettingLINKTYPE: TcxGridDBBandedColumn;
    gvwNettingLINKID: TcxGridDBBandedColumn;
    gvwNettingCONFIRM_BY: TcxGridDBBandedColumn;
    gvwNettingCREATE_FILE: TcxGridDBBandedColumn;
    gvwNettingCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwNettingCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwNettingSTAT: TcxGridDBBandedColumn;
    gvwNettingMODDA: TcxGridDBBandedColumn;
    gvwNettingMODUI: TcxGridDBBandedColumn;
    gvwNettingAPPDA: TcxGridDBBandedColumn;
    gvwNettingAPPUI: TcxGridDBBandedColumn;
    gvwNettingUNDER4Y: TcxGridDBBandedColumn;
    gvwNettingUNDER4YDA: TcxGridDBBandedColumn;
    gvwNettingNOTES4Y: TcxGridDBBandedColumn;
    gvwNettingISDEL: TcxGridDBBandedColumn;
    gvwNettingID: TcxGridDBBandedColumn;
    gvwNettingCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwNettingPARTY_ID: TcxGridDBBandedColumn;
    gvwNettingCOUNTER_ID: TcxGridDBBandedColumn;
    gvwNettingISMULTICCY: TcxGridDBBandedColumn;
    gvwNettingFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwNettingFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwNettingFOREIGN_SETTTLEAMT: TcxGridDBBandedColumn;
    gvwNettingSID_NO: TcxGridDBBandedColumn;
    gvwNettingKSEI_RECON: TcxGridDBBandedColumn;
    gvwNettingSALDO: TcxGridDBBandedColumn;
    gvwNettingSALDO_TYPE: TcxGridDBBandedColumn;
    gvwNettingMATCH: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOTCInstructionNettingDiff: TfrmOTCInstructionNettingDiff;

implementation

{$R *.dfm}

uses FormOTCInstruction, DataGlobal;

end.
