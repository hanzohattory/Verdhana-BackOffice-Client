unit FormBankMutationCancel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, dxLayoutControl, Datasnap.DBClient,
  NClientDataset, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxImageComboBox;

type
  TfrmBankMutationCancel = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBankMutationCancel: TcxGridDBBandedTableView;
    cdsBankMutationCancel: TNClientDataset;
    cdsBankMutationCancelTRTYPE: TStringField;
    cdsBankMutationCancelACCID: TLargeintField;
    cdsBankMutationCancelENTRYDATE: TDateField;
    cdsBankMutationCancelTRDATE: TDateField;
    cdsBankMutationCancelREFID: TLargeintField;
    cdsBankMutationCancelREFNO: TStringField;
    cdsBankMutationCancelRECON_DESC: TStringField;
    cdsBankMutationCancelCCY: TStringField;
    cdsBankMutationCancelAMOUNT: TFloatField;
    dsBankMutationCancel: TDataSource;
    gvwBankMutationCancelTRTYPE: TcxGridDBBandedColumn;
    gvwBankMutationCancelACCID: TcxGridDBBandedColumn;
    gvwBankMutationCancelENTRYDATE: TcxGridDBBandedColumn;
    gvwBankMutationCancelTRDATE: TcxGridDBBandedColumn;
    gvwBankMutationCancelREFID: TcxGridDBBandedColumn;
    gvwBankMutationCancelREFNO: TcxGridDBBandedColumn;
    gvwBankMutationCancelRECON_DESC: TcxGridDBBandedColumn;
    gvwBankMutationCancelCCY: TcxGridDBBandedColumn;
    gvwBankMutationCancelAMOUNT: TcxGridDBBandedColumn;
    txtAccCode: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccName: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    PopupMenu1: TPopupMenu;
    CancelMutation1: TMenuItem;
    procedure CancelMutation1Click(Sender: TObject);
  private
    FAccID: Integer;
    FReconDate: TDate;
    { Private declarations }
  public
    { Public declarations }
    property AccID: Integer read FAccID write FAccID;
    property ReconDate: TDate read FReconDate write FReconDate;
  end;

var
  frmBankMutationCancel: TfrmBankMutationCancel;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBankMutationCancel.CancelMutation1Click(Sender: TObject);
var
  sMessage, sTrType: string;
  iRefID: Int64;
  i: integer;
begin
  if MessageDlg('Cancel mutation ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i := 0 to gvwBankMutationCancel.Controller.SelectedRecordCount -1 do
    begin
      sTrType := gvwBankMutationCancel.Controller.SelectedRecords[i].Values[gvwBankMutationCancelTRTYPE.Index];
      iRefID  := gvwBankMutationCancel.Controller.SelectedRecords[i].Values[gvwBankMutationCancelREFID.Index];
      sMessage := dmGlobal.RemoteServer.CashReconciliationCancel(ReconDate, sTrType, iRefID);
    end;
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    ModalResult := mrOk;
  end;
end;

end.
