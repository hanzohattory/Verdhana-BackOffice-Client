unit FormCorpactSubAccList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmCorpactSubAccList = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCorpactSubList: TcxGridDBBandedTableView;
    dsSubject: TDataSource;
    cdsSubject: TNClientDataset;
    cdsSubjectNAME: TStringField;
    cdsSubjectCAID: TLargeintField;
    cdsSubjectACCID: TLargeintField;
    cdsSubjectSUB_ACCID: TLargeintField;
    cdsSubjectAV_QTY: TFloatField;
    cdsSubjectCA_QTY: TFloatField;
    cdsSubjectCCYCODE: TStringField;
    cdsSubjectCA_AMT: TFloatField;
    cdsSubjectTAXRATE: TFloatField;
    cdsSubjectTAXAMT: TFloatField;
    cdsSubjectCA_NETAMT: TFloatField;
    cdsSubjectEXCH_CA_NETAMT: TFloatField;
    cdsSubjectCDIV_PAYDATE: TDateField;
    gvwCorpactSubListNAME: TcxGridDBBandedColumn;
    gvwCorpactSubListCAID: TcxGridDBBandedColumn;
    gvwCorpactSubListACCID: TcxGridDBBandedColumn;
    gvwCorpactSubListSUB_ACCID: TcxGridDBBandedColumn;
    gvwCorpactSubListAV_QTY: TcxGridDBBandedColumn;
    gvwCorpactSubListCA_QTY: TcxGridDBBandedColumn;
    gvwCorpactSubListCCYCODE: TcxGridDBBandedColumn;
    gvwCorpactSubListCA_AMT: TcxGridDBBandedColumn;
    gvwCorpactSubListTAXRATE: TcxGridDBBandedColumn;
    gvwCorpactSubListTAXAMT: TcxGridDBBandedColumn;
    gvwCorpactSubListCA_NETAMT: TcxGridDBBandedColumn;
    gvwCorpactSubListEXCH_CA_NETAMT: TcxGridDBBandedColumn;
    gvwCorpactSubListCDIV_PAYDATE: TcxGridDBBandedColumn;
    aGroup_Root: TdxLayoutGroup;
    a: TdxLayoutControl;
    cxButton1: TcxButton;
    aItem1: TdxLayoutItem;
    aGroup1: TdxLayoutGroup;
    PopupMenu1: TPopupMenu;
    EditTax1: TMenuItem;
    cdsSubAcc: TNClientDataset;
    cdsSubAccCA_AMT: TFloatField;
    cdsSubAccTAXRATE: TFloatField;
    cdsSubAccTAXAMT: TFloatField;
    cdsSubAccCA_NETAMT: TFloatField;
    EditTaxAmount1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure EditTax1Click(Sender: TObject);
    procedure EditTaxAmount1Click(Sender: TObject);
  private
    FAccSubID: Integer;
    { Private declarations }
  public
    { Public declarations }
    property AccSubId: Integer read FAccSubID write FAccSubID;
  end;

var
  frmCorpactSubAccList: TfrmCorpactSubAccList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCorpactSubAccList.EditTax1Click(Sender: TObject);
var
  sTax : string;
  iAccID: Integer;
begin
  sTax   := FloatToStr(gvwCorpactSubList.Controller.SelectedRecords[0].Values[gvwCorpactSubListTAXRATE.Index]);
  iAccID := gvwCorpactSubList.Controller.SelectedRecords[0].Values[gvwCorpactSubListSUB_ACCID.Index];
  if InputQuery('Change sub account tax', 'Insert New Tax : ', sTax) then
  begin
    try
      cdsSubAcc.Close;
      cdsSubAcc.Params[0].AsInteger := iAccID;
      cdsSubAcc.Open;

      if not cdsSubAcc.IsEmpty then
      begin
        cdsSubAcc.Edit;
        cdsSubAccTAXRATE.AsFloat   := StrToFloat(sTax);
        cdsSubAccTAXAMT.AsFloat    := cdsSubAccCA_AMT.AsFloat * (cdsSubAccTAXRATE.AsFloat / 100);
        cdsSubAccCA_NETAMT.AsFloat := cdsSubAccCA_AMT.AsFloat - cdsSubAccTAXAMT.AsFloat;
        cdsSubAcc.Post;

        cdsSubAcc.ApplyUpdates(-1);
      end;

      cdsSubject.Refresh;
    except
      on e: exception do MessageDlg('Error : '+ e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmCorpactSubAccList.EditTaxAmount1Click(Sender: TObject);
var
  sTaxAmount : string;
  iAccID: Integer;
begin
  sTaxAmount := FloatToStr(gvwCorpactSubList.Controller.SelectedRecords[0].Values[gvwCorpactSubListTAXRATE.Index]);
  iAccID     := gvwCorpactSubList.Controller.SelectedRecords[0].Values[gvwCorpactSubListSUB_ACCID.Index];
  if InputQuery('Password needed', 'Enter the password:', sTaxAmount) then
  begin
    try
      cdsSubAcc.Close;
      cdsSubAcc.Params[0].AsInteger := iAccID;
      cdsSubAcc.Open;

      if not cdsSubAcc.IsEmpty then
      begin
        cdsSubAcc.Edit;
        cdsSubAccTAXAMT.AsFloat    := StrToFloat(sTaxAmount);
        cdsSubAccCA_NETAMT.AsFloat := cdsSubAccCA_AMT.AsFloat - cdsSubAccTAXAMT.AsFloat;
        cdsSubAcc.Post;

        cdsSubAcc.ApplyUpdates(-1);
      end;

      cdsSubject.Refresh;
    except
      on e: exception do MessageDlg('Error : '+ e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmCorpactSubAccList.FormShow(Sender: TObject);
begin
//  cdsSubject.Close;
//  cdsSubject.Params[0].AsInteger := FAccSubID;
//  cdsSubject.Open;
end;

end.
