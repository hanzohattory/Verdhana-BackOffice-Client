unit FormIPOPooling;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormIPOList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Data.DB,
  Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxImageComboBox, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, cxMaskEdit, cxCalendar, cxTextEdit, dxLayoutControl,
  FormLuAccount, cxButtonEdit, Datasnap.DBClient;

type
  TfrmIPOPooling = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    txtPoolingCode: TcxDBTextEdit;
    txtPoolingDate: TcxDBDateEdit;
    txtPoolingDesc: TcxDBTextEdit;
    rgPoolingType: TcxDBRadioGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    edMaxPrice: TcxDBTextEdit;
    txtOrderQty: TcxDBTextEdit;
    txtCCY: TcxDBLookupComboBox;
    cbIPO: TcxDBLookupComboBox;
    txtIPO: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    lcMaxPrice: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dsSubject: TDataSource;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edAccount: TcxDBButtonEdit;
    lcCustomer: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    procedure rgPoolingTypeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edAccountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FFormBrowse: TfrmIPOList;
    FAmend: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property Amend: Boolean read FAmend write FAmend;
  end;

var
  frmIPOPooling: TfrmIPOPooling;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOPoolings;

procedure TfrmIPOPooling.edAccountPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('CUST_NAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmIPOPooling.FormShow(Sender: TObject);
begin
  lcCustomer.Visible := rgPoolingType.DataBinding.Field.AsString = 'C';
  Self.Height := 280;

  cbIPO.Properties.ReadOnly := FAmend;
  cbIPO.ParentColor         := FAmend;
  cbIPO.TabStop             := Not FAmend;

  txtIPO.Properties.ReadOnly := FAmend;
  txtIPO.ParentColor         := FAmend;
  txtIPO.TabStop             := Not FAmend;

  txtPoolingCode.Properties.ReadOnly := FAmend;
  txtPoolingCode.ParentColor         := FAmend;
  txtPoolingCode.TabStop             := Not FAmend;

  txtPoolingCode.Properties.ReadOnly := FAmend;
  txtPoolingCode.ParentColor         := FAmend;
  txtPoolingCode.TabStop             := Not FAmend;

  txtPoolingDate.Properties.ReadOnly := FAmend;
  txtPoolingDate.ParentColor         := FAmend;
  txtPoolingDate.TabStop             := Not FAmend;

  txtPoolingDesc.Properties.ReadOnly := FAmend;
  txtPoolingDesc.ParentColor         := FAmend;
  txtPoolingDesc.TabStop             := Not FAmend;

  txtCCY.Properties.ReadOnly := FAmend;
  txtCCY.ParentColor         := FAmend;
  txtCCY.TabStop             := Not FAmend;

  txtOrderQty.Properties.ReadOnly := FAmend;
  txtOrderQty.ParentColor         := FAmend;
  txtOrderQty.TabStop             := Not FAmend;
end;

procedure TfrmIPOPooling.rgPoolingTypeExit(Sender: TObject);
begin
  lcCustomer.Visible := rgPoolingType.DataBinding.Field.AsString = 'C';
end;

end.
