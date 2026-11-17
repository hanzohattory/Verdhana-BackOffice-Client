unit FormLuAccount;

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
  TfrmLuAccount = class(TForm)
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
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    chkCustType: TcxCheckBox;
    lcCustomFilterItem1: TdxLayoutItem;
    chkEntity: TcxCheckBox;
    lcCustomFilterItem2: TdxLayoutItem;
    chkBusType: TcxCheckBox;
    lcCustomFilterItem3: TdxLayoutItem;
    chkSubType: TcxCheckBox;
    lcCustomFilterItem4: TdxLayoutItem;
    cbEntity: TcxLookupComboBox;
    lcEntity: TdxLayoutItem;
    lcCustomFilterGroup3: TdxLayoutGroup;
    cbBusType: TcxLookupComboBox;
    lcBusinessType: TdxLayoutItem;
    cbCustType: TcxImageComboBox;
    lcCustomerType: TdxLayoutItem;
    cbSubType: TcxImageComboBox;
    lcAccountSubType: TdxLayoutItem;
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
    chkProduct: TcxCheckBox;
    lcCustomFilterItem6: TdxLayoutItem;
    lcCustomFilterGroup4: TdxLayoutGroup;
    cbProduct: TcxLookupComboBox;
    lcProduct: TdxLayoutItem;
    lcCustomFilterGroup9: TdxLayoutGroup;
    lcCustomFilterGroup7: TdxLayoutGroup;
    chkBranch: TcxCheckBox;
    lcCustomFilterItem7: TdxLayoutItem;
    luBranch: TcxLookupComboBox;
    lcBranch: TdxLayoutItem;
    lcCustomFilterGroup1: TdxLayoutGroup;
    chkSales: TcxCheckBox;
    lcCustomFilterItem8: TdxLayoutItem;
    luSales: TcxLookupComboBox;
    lcSales: TdxLayoutItem;
    lcCustomFilterGroup8: TdxLayoutGroup;
    procedure btnViewDataClick(Sender: TObject);
    procedure chkCustTypeClick(Sender: TObject);
    procedure chkEntityClick(Sender: TObject);
    procedure chkBusTypeClick(Sender: TObject);
    procedure chkSubTypeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actFilterByCustomerTypeExecute(Sender: TObject);
    procedure cbCustTypeKeyPress(Sender: TObject; var Key: Char);
    procedure actFilterByEntityExecute(Sender: TObject);
    procedure acrFilterByBusinessTypeExecute(Sender: TObject);
    procedure ActFilterByAccountSubTypeExecute(Sender: TObject);
    procedure cbEntityKeyPress(Sender: TObject; var Key: Char);
    procedure cbBusTypeKeyPress(Sender: TObject; var Key: Char);
    procedure cbSubTypeKeyPress(Sender: TObject; var Key: Char);
    procedure chkProductClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkBranchClick(Sender: TObject);
    procedure chkSalesClick(Sender: TObject);
    procedure luBranchPropertiesCloseUp(Sender: TObject);
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
   frmLuAccount: TfrmLuAccount;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmLuAccount.acrFilterByBusinessTypeExecute(Sender: TObject);
begin
  if chkBusType.Checked then
    chkBusType.Checked := False
  else
  begin
    chkBusType.Checked := True;
    cbBusType.SetFocus;
  end;
end;

procedure TfrmLuAccount.ActFilterByAccountSubTypeExecute(Sender: TObject);
begin
  if chkSubType.Checked then
    chkSubType.Checked := False
  else
  begin
    chkSubType.Checked := True;
    cbSubType.SetFocus;
  end;
end;

procedure TfrmLuAccount.actFilterByCustomerTypeExecute(Sender: TObject);
begin
  if chkCustType.Checked then
    chkCustType.Checked := False
  else
  begin
    chkCustType.Checked := True;
    cbCustType.SetFocus;
  end;
end;

procedure TfrmLuAccount.actFilterByEntityExecute(Sender: TObject);
begin
  if chkEntity.Checked then
    chkEntity.Checked := false
  else
  begin
    chkEntity.Checked := True;
    cbEntity.SetFocus;
  end;
end;

procedure TfrmLuAccount.btnViewDataClick(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountMultiFilter.Close;
    cdsLuAccountMultiFilter.Params[0].AsInteger := chkEntity.EditValue;
    cdsLuAccountMultiFilter.Params[1].AsInteger := cbEntity.EditValue;
    cdsLuAccountMultiFilter.Params[2].AsInteger := chkBusType.EditValue;
    cdsLuAccountMultiFilter.Params[3].AsInteger := cbBusType.EditValue;
    cdsLuAccountMultiFilter.Params[4].AsInteger := chkSubType.EditValue;
    cdsLuAccountMultiFilter.Params[5].AsString := cbSubType.EditValue;
    cdsLuAccountMultiFilter.Params[6].AsInteger := chkCustType.EditValue;
    cdsLuAccountMultiFilter.Params[7].AsInteger := cbCustType.EditValue;
//    if TrdAccOnly then
//      cdsLuAccountMultiFilter.Params[8].AsInteger := 1
//    else
      cdsLuAccountMultiFilter.Params[8].AsInteger := 0;
    cdsLuAccountMultiFilter.Params[9].AsInteger := chkProduct.EditValue;
    cdsLuAccountMultiFilter.Params[10].AsString := VarToStrDef(cbProduct.EditValue, '');
    cdsLuAccountMultiFilter.Params[11].AsInteger := chkBranch.EditValue;
    cdsLuAccountMultiFilter.Params[12].AsInteger := luBranch.EditValue;
    cdsLuAccountMultiFilter.Params[13].AsInteger := chkSales.EditValue;
    cdsLuAccountMultiFilter.Params[14].AsInteger := luSales.EditValue;
    cdsLuAccountMultiFilter.Open;
  end;
end;

procedure TfrmLuAccount.cbBusTypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccount.cbCustTypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccount.cbEntityKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccount.cbSubTypeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
  begin
    btnViewData.Click;
    grdMaster.SetFocus;
  end;
end;

procedure TfrmLuAccount.chkBranchClick(Sender: TObject);
begin
  lcBranch.Visible := chkBranch.Checked;

  if not chkBranch.Checked then
  begin
    if chkSales.Checked then
    begin
//      luSales.Clear;
      with dmGlobal.IntDataLookup do
      begin
        cdsLuSalesByBranch.Close;
        cdsLuSalesByBranch.Params[0].AsInteger := chkBranch.EditingValue;
        cdsLuSalesByBranch.Open;

      end;
    end;
  end;
end;

procedure TfrmLuAccount.chkBusTypeClick(Sender: TObject);
begin
  lcBusinessType.Visible := chkBusType.Checked;
end;

procedure TfrmLuAccount.chkCustTypeClick(Sender: TObject);
begin
  lcCustomerType.Visible := chkCustType.Checked;
end;

procedure TfrmLuAccount.chkEntityClick(Sender: TObject);
begin
  lcEntity.Visible := chkEntity.Checked;
end;

procedure TfrmLuAccount.chkProductClick(Sender: TObject);
begin
  lcProduct.Visible := chkProduct.Checked;
end;

procedure TfrmLuAccount.chkSubTypeClick(Sender: TObject);
begin
  lcAccountSubType.Visible := chkSubType.Checked;
end;

procedure TfrmLuAccount.chkSalesClick(Sender: TObject);
begin
  lcSales.Visible := chkSales.Checked;
  if chkSales.Checked then
  begin
    if chkBranch.Checked then
    begin
      luSales.Clear;

      with dmGlobal.IntDataLookup do
      begin
        cdsLuSalesByBranch.Close;
        cdsLuSalesByBranch.Params[0].AsInteger := chkBranch.EditingValue;
        cdsLuSalesByBranch.Params[1].AsInteger := luBranch.EditValue;
        cdsLuSalesByBranch.Open;

      end;

    end
    else
    begin
      with dmGlobal.IntDataLookup do
      begin
        cdsLuSalesByBranch.Close;
        cdsLuSalesByBranch.Params[0].AsInteger := chkBranch.EditingValue;
        cdsLuSalesByBranch.Open;
      end;
    end;
  end;
end;

procedure TfrmLuAccount.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuProduct.Active then
      cdsLuProduct.Open;
  end;
end;

procedure TfrmLuAccount.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel
  else if Key = #13 then
    ModalResult := mrOk;
end;

procedure TfrmLuAccount.luBranchPropertiesCloseUp(Sender: TObject);
begin
  if chkSales.Checked then
  begin
    luSales.Clear;

    with dmGlobal.IntDataLookup do
    begin
      cdsLuSalesByBranch.Close;
      cdsLuSalesByBranch.Params[0].AsInteger := chkBranch.EditingValue;
      cdsLuSalesByBranch.Params[1].AsInteger := luBranch.EditValue;
      cdsLuSalesByBranch.Open;
    end;
  end;

end;

function TfrmLuAccount.Run(AccountID: Integer; ISTRDACC_ONLY: Boolean = False): TModalResult;
var
  oForm: TfrmLuAccount;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuAccount.Create(nil);
  Try

    with dmGlobal.IntDataLookup, oForm do
    begin
      if not cdsLuEntity.Active then
      begin
        cdsLuEntity.Close;
        cdsLuEntity.Open;
      end;

      if not cdsLuBussCat.Active then
      begin
        cdsLuBussCat.Close;
        cdsLuBussCat.Open;
      end;

      if not cdsLuBranch2.Active then
      begin
        cdsLuBranch2.Close;
        cdsLuBranch2.Open;
      end;


      if cdsLuAccountMultiFilter.Active then
      begin
        chkEntity.EditValue := cdsLuAccountMultiFilter.Params[0].AsInteger;
        cbEntity.EditValue := cdsLuAccountMultiFilter.Params[1].AsInteger;
        chkBusType.EditValue := cdsLuAccountMultiFilter.Params[2].AsInteger;
        cbBusType.EditValue := cdsLuAccountMultiFilter.Params[3].AsInteger;
        chkSubType.EditValue := cdsLuAccountMultiFilter.Params[4].AsInteger;
        cbSubType.EditValue := cdsLuAccountMultiFilter.Params[5].AsString;
        chkCustType.EditValue := cdsLuAccountMultiFilter.Params[6].AsInteger;
        cbCustType.EditValue := cdsLuAccountMultiFilter.Params[7].AsInteger;
        chkProduct.EditValue := cdsLuAccountMultiFilter.Params[9].AsInteger;
        cbProduct.EditValue := cdsLuAccountMultiFilter.Params[10].AsString;
        chkBranch.EditValue := cdsLuAccountMultiFilter.Params[11].AsInteger;
        luBranch.EditValue := cdsLuAccountMultiFilter.Params[12].AsInteger;
        chkSales.EditValue := cdsLuAccountMultiFilter.Params[13].AsInteger;
        luSales.EditValue := cdsLuAccountMultiFilter.Params[14].AsInteger;

//        bTRDACC := cdsLuAccountMultiFilter.Params[8].AsInteger = 1;
//        bTRDACC := cdsLuAccountMultiFilter.Params[8].AsInteger = 0;
//        if (ISTRDACC_ONLY = bTRDACC) then
//        begin
          cdsLuAccountMultiFilter.Locate('ACCID', AccountID, []);
//        end
//        else
//        begin
//          cdsLuAccountMultiFilter.Close;
//        end;
      end
      else
      begin
        chkEntity.EditValue := 0;
        cbEntity.EditValue := 0;
        chkBusType.EditValue := 0;
        cbBusType.EditValue := 0;
        chkSubType.EditValue := 0;
        cbSubType.EditValue := 'M';
        chkCustType.EditValue := 0;
        cbCustType.EditValue := 1;
        chkProduct.EditValue := 0;
        cbProduct.EditValue := '';
        chkBranch.EditValue := 0;
        chkSales.EditValue := 0;
        luBranch.EditValue := 0;
        luSales.EditValue := 0;
      end;

      lcEntity.Visible := chkEntity.Checked;
      lcBusinessType.Visible := chkBusType.Checked;
      lcAccountSubType.Visible := chkSubType.Checked;
      lcCustomerType.Visible := chkCustType.Checked;
      lcProduct.Visible := chkProduct.Checked;
      lcBranch.Visible := chkBranch.Checked;
      lcSales.Visible := chkSales.Checked;
//
//      oForm.TrdAccOnly := ISTRDACC_ONLY;
//
//      if oForm.TrdAccOnly then
//      begin
//        oForm.Caption := 'Trading Account';
//      end
//      else
      begin
        oForm.Caption := 'Account';
      end;

      if oForm.ShowModal = mrOK then
      begin
        if (cdsLuAccountMultiFilter.Active) and (not cdsLuAccountMultiFilter.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

function TfrmLuAccount.RunByEntity(AccountID, EntityID: Integer): TModalResult;
var
  oForm: TfrmLuAccount;
  bTRDACC: Boolean;
begin
  Result := mrCancel;

  oForm := TfrmLuAccount.Create(nil);
  Try

    with dmGlobal.IntDataLookup, oForm do
    begin
      if not cdsLuEntity.Active then
      begin
        cdsLuEntity.Close;
        cdsLuEntity.Open;
      end;

      chkEntity.EditValue := 1;
      cbEntity.EditValue := EntityID;
      chkBusType.EditValue := 0;
      cbBusType.EditValue := 0;
      chkSubType.EditValue := 0;
      cbSubType.EditValue := 'M';
      chkCustType.EditValue := 0;
      cbCustType.EditValue := 1;
      chkProduct.EditValue := 0;
      cbProduct.EditValue := '';

      luBranch.EditValue := 0;
      luSales.EditValue := 0;

      lcEntity.Visible := chkEntity.Checked;
      lcBusinessType.Visible := chkBusType.Checked;
      lcAccountSubType.Visible := chkSubType.Checked;
      lcCustomerType.Visible := chkCustType.Checked;
      lcProduct.Visible := chkProduct.Checked;
      lcCustomFilter.Visible := False;
      btnViewData.Click;
      cdsLuAccountMultiFilter.Locate('ACCID', AccountID, []);

      if oForm.ShowModal = mrOK then
      begin
        if (cdsLuAccountMultiFilter.Active) and (not cdsLuAccountMultiFilter.IsEmpty) then
          Result := mrOK;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

end.
