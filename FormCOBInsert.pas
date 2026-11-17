unit FormCOBInsert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxDBLabel, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCOBInsert = class(TfrmEditor)
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem1: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    lyRDN: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlItem4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem5: TdxLayoutItem;
    lySubRek: TdxLayoutGroup;
    lySID: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem6: TdxLayoutItem;
    lySales: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    LayoutControlItem7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    LayoutControlItem9: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }

    FAction: Integer;
  public
    { Public declarations }

    property Action : Integer read FAction write FAction;
  end;

var
  frmCOBInsert: TfrmCOBInsert;

implementation

{$R *.dfm}

uses DataGlobal, FormClientOnBoardingList, DataLookup;

procedure TfrmCOBInsert.btnOKClick(Sender: TObject);
begin
//  inherited;
//    if FAction = 1 then
//    begin
//      if lyRDN.Visible then
//      begin
//        if (Trim(dsSubject.DataSet.FieldByName('BNINVCODE').AsString) <> '') or
//      end
//      else if lySubRek.Visible then
//      begin
//
//      end
//      else if lySID.Visible then
//      begin
//
//      end
//      else if lySales.Visible then
//      begin
//
//      end;
//    end
//    else
      ModalResult := mrOk;
end;

procedure TfrmCOBInsert.FormShow(Sender: TObject);
begin
  inherited;
  if FAction = 1 then
  begin
    btnOk.Caption     := 'Done';
    btnCancel.Caption := 'Not Complete';
  end
  else if FAction = 2 then
  begin
    btnOk.Caption     := 'Verified';
    btnCancel.Caption := 'Not Verified';
  end
  else
  begin
    btnOk.Caption     := 'Ok';
    btnCancel.Caption := 'Cancel';
  end;
end;

end.
