unit FormLuAccountExisting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxImageComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, Vcl.ActnList, System.Actions, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmLuAccountExisting = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lcCustomFilter: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsSubject: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    chkCustType: TcxCheckBox;
    lcCustomFilterItem1: TdxLayoutItem;
    chkAccStatus: TcxCheckBox;
    lcCustomFilterItem4: TdxLayoutItem;
    lcCustomFilterGroup3: TdxLayoutGroup;
    cbCustType: TcxImageComboBox;
    lcCustomerType: TdxLayoutItem;
    cbAccStatus: TcxImageComboBox;
    lcAccountStatus: TdxLayoutItem;
    btnViewData: TcxButton;
    lcCustomFilterItem5: TdxLayoutItem;
    lcCustomFilterGroup2: TdxLayoutGroup;
    lcCustomFilterGroup5: TdxLayoutGroup;
    lcCustomFilterGroup6: TdxLayoutGroup;
    ActionList1: TActionList;
    actFilterByCustomerType: TAction;
    actFilterByEntity: TAction;
    acrFilterByBusinessType: TAction;
    ActFilterByAccountSubType: TAction;
    lcCustomFilterGroup4: TdxLayoutGroup;
    lcCustomFilterGroup9: TdxLayoutGroup;
    lcCustomFilterGroup7: TdxLayoutGroup;
    lcCustomFilterGroup1: TdxLayoutGroup;
    lcCustomFilterGroup8: TdxLayoutGroup;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    Refresh: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    procedure btnViewDataClick(Sender: TObject);
    procedure chkAccStatusClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actFilterByCustomerTypeExecute(Sender: TObject);
    procedure cbCustTypeKeyPress(Sender: TObject; var Key: Char);
    procedure cbEntityKeyPress(Sender: TObject; var Key: Char);
    procedure cbBusTypeKeyPress(Sender: TObject; var Key: Char);
    procedure cbAccStatusKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure chkCustTypeClick(Sender: TObject);
  private
    FTrdAccOnly: Boolean;
    { Private declarations }
  public
    { Public declarations }
    function Run(AccountID: Integer; ISTRDACC_ONLY: Boolean = False): TModalResult;
    function RunByEntity(AccountID, EntityID: Integer): TModalResult;
    property TrdAccOnly: Boolean read FTrdAccOnly write FTrdAccOnly;
  end;

var
   frmLuAccountExisting: TfrmLuAccountExisting;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmLuAccountExisting.actFilterByCustomerTypeExecute(Sender: TObject);
begin
  if chkCustType.Checked then
    chkCustType.Checked := False
  else
  begin
    chkCustType.Checked := True;
    cbCustType.SetFocus;
  end;
end;

procedure TfrmLuAccountExisting.btnViewDataClick(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsLuOpeningAccountFilter.close;
    cdsLuOpeningAccountFilter.Params[0].AsInteger := chkCustType.EditValue;
    cdsLuOpeningAccountFilter.Params[1].AsInteger := cbCustType.EditValue;
    cdsLuOpeningAccountFilter.Params[2].AsInteger := chkAccStatus.EditValue;
    cdsLuOpeningAccountFilter.Params[3].AsString  := cbAccStatus.EditValue;
    cdsLuOpeningAccountFilter.Open;
  end;
end;

procedure TfrmLuAccountExisting.cbBusTypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccountExisting.cbCustTypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccountExisting.cbEntityKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccountExisting.cbAccStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccountExisting.chkAccStatusClick(Sender: TObject);
begin
  lcAccountStatus.Visible := chkAccStatus.Checked;
end;

procedure TfrmLuAccountExisting.chkCustTypeClick(Sender: TObject);
begin
  lcCustomerType.Visible := chkCustType.Checked;
end;

procedure TfrmLuAccountExisting.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    chkCustType.EditValue  := 0;
    chkAccStatus.EditValue := 0;

    if not cdsLuProduct.Active then
      cdsLuProduct.Open;
  end;
end;

procedure TfrmLuAccountExisting.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel
  else if Key = #13 then
    ModalResult := mrOk;
end;

function TfrmLuAccountExisting.Run(AccountID: Integer; ISTRDACC_ONLY: Boolean = False): TModalResult;
var
  oForm: TfrmLuAccountExisting;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuAccountExisting.Create(nil);
  Try

    with dmGlobal.IntDataLookup, oForm do
    begin
      if cdsLuOpeningAccountFilter.Active then
      begin
        chkCustType.EditValue  := cdsLuOpeningAccountFilter.Params[0].AsInteger;
        cbCustType.EditValue   := cdsLuOpeningAccountFilter.Params[1].AsInteger;
        chkAccStatus.EditValue := cdsLuOpeningAccountFilter.Params[2].AsInteger;
        cbAccStatus.EditValue  := cdsLuOpeningAccountFilter.Params[3].AsInteger;

        cdsLuAccountMultiFilter.Locate('ACCID', AccountID, []);
      end
      else
      begin
        chkCustType.EditValue := 0;
        cbCustType.EditValue := 0;
        chkAccStatus.EditValue := 0;
        cbAccStatus.EditValue := 0;
      end;

      lcCustomerType.Visible  := chkCustType.Checked;
      lcAccountStatus.Visible := chkAccStatus.Checked;

      begin
        oForm.Caption := 'Account';
      end;

      if oForm.ShowModal = mrOK then
      begin
        if (cdsLuOpeningAccountFilter.Active) and (not cdsLuOpeningAccountFilter.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

function TfrmLuAccountExisting.RunByEntity(AccountID, EntityID: Integer): TModalResult;
var
  oForm: TfrmLuAccountExisting;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuAccountExisting.Create(nil);
  Try

    with dmGlobal.IntDataLookup, oForm do
    begin
      if not cdsLuEntity.Active then
      begin
        cdsLuEntity.Close;
        cdsLuEntity.Open;
      end;

      chkCustType.EditValue := 0;
      cbCustType.EditValue := 0;
      chkAccStatus.EditValue := 0;
      cbAccStatus.EditValue := 0;

      btnViewData.Click;
      cdsLuOpeningAccountFilter.Locate('ACCID', AccountID, []);

      if oForm.ShowModal = mrOK then
      begin
        if (cdsLuOpeningAccountFilter.Active) and (not cdsLuOpeningAccountFilter.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

end.
