unit FormAccountEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset;

type
  TfrmCustomerEditor = class(TfrmEditor)
    cxDBButtonEdit1: TcxDBButtonEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomerEditor: TfrmCustomerEditor;

implementation

{$R *.dfm}

uses FormIPOAllotmentUpload, DataGlobal, DataLookup, FormLuAccount;

procedure TfrmCustomerEditor.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCCODE').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        dsSubject.DataSet.FieldByName('ACCINIT').AsString := cdsLuAccountMultiFilterACCINIT.AsString;
      end;
    end;
  end;
end;

end.
