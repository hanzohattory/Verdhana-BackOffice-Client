unit FormInternetBankChecking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmInternetBankChecking = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsSubject: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    btnCopyDataToClipboard: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    procedure btnCopyDataToClipboardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInternetBankChecking: TfrmInternetBankChecking;

implementation

{$R *.dfm}

uses FormCOBList;

procedure TfrmInternetBankChecking.btnCopyDataToClipboardClick(Sender: TObject);
var
  mmData: TMemo;
  sLine: String;
  oDataset: TDataSet;
begin
  oDataset := dsSubject.DataSet;

  if not oDataset.IsEmpty then
  begin
    Screen.Cursor := crHourGlass;
    mmData := TMemo.Create(Self);
    Try
      mmData.Visible := False;
      mmData.Parent := Self;
      mmData.Lines.Clear;

      sLine := oDataset.FieldByName('ACCCODE').AsString + #9
        + oDataset.FieldByName('ACCINIT').AsString + #9
        + oDataset.FieldByName('ACCNAME').AsString + #9
        + oDataset.FieldByName('BUS_CAT_CODE').AsString + #9
        + oDataset.FieldByName('BUS_CAT_DESC').AsString + #9
        + oDataset.FieldByName('SIDNO').AsString + #9
        + oDataset.FieldByName('RDNBANKCODE').AsString + #9
        + oDataset.FieldByName('RDNBANKACCNO').AsString + #9
        + oDataset.FieldByName('RDNBANKACCNAME').AsString;

      mmData.Lines.Add(sLine);
      mmData.SelectAll;
      mmData.CopyToClipboard;
    Finally
      FreeAndNil(mmData);
      Screen.Cursor := crDefault;
    End;
  end;
end;

end.
