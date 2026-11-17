unit FormViewMutation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, Datasnap.DBClient, NClientDataset, cxImageComboBox, Vcl.Menus;

type
  TfrmViewMutation = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwViewMutation: TcxGridDBBandedTableView;
    cdsViewMutation: TNClientDataset;
    cdsViewMutationTRANSTYPE: TStringField;
    cdsViewMutationACCID: TIntegerField;
    cdsViewMutationACCNO: TStringField;
    cdsViewMutationACCNAME: TStringField;
    cdsViewMutationVALUEDATE: TDateField;
    cdsViewMutationREFID: TLargeintField;
    cdsViewMutationREFNO: TStringField;
    cdsViewMutationREMARKS: TStringField;
    cdsViewMutationBNCODE: TStringField;
    cdsViewMutationBANKACCNO: TStringField;
    cdsViewMutationBANKACCNAME: TStringField;
    cdsViewMutationCCY: TStringField;
    cdsViewMutationDC: TStringField;
    cdsViewMutationAMOUNT: TFloatField;
    dsViewMutation: TDataSource;
    gvwViewMutationTRANSTYPE: TcxGridDBBandedColumn;
    gvwViewMutationACCID: TcxGridDBBandedColumn;
    gvwViewMutationACCNO: TcxGridDBBandedColumn;
    gvwViewMutationACCNAME: TcxGridDBBandedColumn;
    gvwViewMutationVALUEDATE: TcxGridDBBandedColumn;
    gvwViewMutationREFID: TcxGridDBBandedColumn;
    gvwViewMutationREFNO: TcxGridDBBandedColumn;
    gvwViewMutationREMARKS: TcxGridDBBandedColumn;
    gvwViewMutationBNCODE: TcxGridDBBandedColumn;
    gvwViewMutationBANKACCNO: TcxGridDBBandedColumn;
    gvwViewMutationBANKACCNAME: TcxGridDBBandedColumn;
    gvwViewMutationCCY: TcxGridDBBandedColumn;
    gvwViewMutationDC: TcxGridDBBandedColumn;
    gvwViewMutationAMOUNT: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    CancelMutation1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure CancelMutation1Click(Sender: TObject);
  private
    FTransDate: TDate;
    { Private declarations }
  public
    { Public declarations }
    property TransDate: TDate read FTransDate write FTransDate;
  end;

var
  frmViewMutation: TfrmViewMutation;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmViewMutation.CancelMutation1Click(Sender: TObject);
var
  sMessage, sTrType: string;
  iRefID: Int64;
  i: integer;
begin
  if MessageDlg('Cancel mutation ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    for i := 0 to gvwViewMutation.Controller.SelectedRecordCount -1 do
    begin
      sTrType := gvwViewMutation.Controller.SelectedRecords[i].Values[gvwViewMutationTRANSTYPE.Index];
      iRefID  := gvwViewMutation.Controller.SelectedRecords[i].Values[gvwViewMutationREFID.Index];
      sMessage := dmGlobal.RemoteServer.CashReconciliationCancel(TransDate, sTrType, iRefID);
    end;
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    ModalResult := mrOk;
  end;
end;

procedure TfrmViewMutation.FormShow(Sender: TObject);
begin
  cdsViewMutation.Close;
  cdsViewMutation.Params[0].AsDate := TransDate;
  cdsViewMutation.Open;
end;

end.
