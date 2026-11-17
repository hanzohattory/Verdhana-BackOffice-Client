unit FormMarket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxPCdxBarPopupMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxSpinEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, cxImageComboBox, NClientDataset,
  dxBarBuiltInMenu, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels;

type
  TfrmMarket = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    tabDetails: TcxTabSheet;
    tabCharges: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    tabDueDays: TcxTabSheet;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item10: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    grdMarketBoard: TcxGrid;
    grdMarketBoardLevel1: TcxGridLevel;
    dsMarketBoard: TDataSource;
    gvwMarketBoard: TcxGridDBBandedTableView;
    gvwMarketBoardBOARDCODE: TcxGridDBBandedColumn;
    gvwMarketBoardBOARDDESC: TcxGridDBBandedColumn;
    gvwMarketBoardDUEBUYSTOCK: TcxGridDBBandedColumn;
    gvwMarketBoardDUESELLSTOCK: TcxGridDBBandedColumn;
    gvwMarketBoardDUEBUYCASH: TcxGridDBBandedColumn;
    gvwMarketBoardDUESELLCASH: TcxGridDBBandedColumn;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutControl4Item7: TdxLayoutItem;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutControl4Item8: TdxLayoutItem;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    dxLayoutControl4Item9: TdxLayoutItem;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    dxLayoutControl4Item11: TdxLayoutItem;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    dxLayoutControl4Item12: TdxLayoutItem;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    dxLayoutControl4Item13: TdxLayoutItem;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    dxLayoutControl4Item14: TdxLayoutItem;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    dxLayoutControl4Item15: TdxLayoutItem;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    dxLayoutControl4Item16: TdxLayoutItem;
    dxLayoutControl4Group9: TdxLayoutGroup;
    tabGeneral: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxDBLookupComboBox18: TcxDBLookupComboBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxDBLookupComboBox19: TcxDBLookupComboBox;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    cxDBLookupComboBox20: TcxDBLookupComboBox;
    dxLayoutControl5Item4: TdxLayoutItem;
    cxDBLookupComboBox21: TcxDBLookupComboBox;
    dxLayoutControl5Item5: TdxLayoutItem;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    dxLayoutControl5Item6: TdxLayoutItem;
    dsSettleConfig: TDataSource;
    cxButton1: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    tabBankSettlement: TcxTabSheet;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwCompCashSettle: TcxGridDBBandedTableView;
    gvwCompCashSettleBNCODE: TcxGridDBBandedColumn;
    gvwCompCashSettleCCY: TcxGridDBBandedColumn;
    gvwCompCashSettleTYPE: TcxGridDBBandedColumn;
    gvwCompCashSettleACCBANKID: TcxGridDBBandedColumn;
    gvwCompCashSettleBANKACCNAME: TcxGridDBBandedColumn;
    gvwCompCashSettleBANKBRANCH: TcxGridDBBandedColumn;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Item7: TdxLayoutItem;
    cxDBLookupComboBox23: TcxDBLookupComboBox;
    dxLayoutControl5Group3: TdxLayoutGroup;
    cdsMarket: TNClientDataset;
    cdsMarketMARKETCODE: TStringField;
    cdsMarketINITCODE: TStringField;
    cdsMarketMARKETDESC: TStringField;
    cdsMarketADDRESS1: TStringField;
    cdsMarketADDRESS2: TStringField;
    cdsMarketADDRESS3: TStringField;
    cdsMarketPOSTCODE: TStringField;
    cdsMarketCOUNTRYCODE: TStringField;
    cdsMarketPHONE: TStringField;
    cdsMarketFAX: TStringField;
    cdsMarketCONTACTPERSON: TStringField;
    cdsMarketCP_POSITION: TStringField;
    cdsMarketCCY: TStringField;
    cdsMarketCCYTRANS: TStringField;
    cdsMarketCCYSETTLE: TStringField;
    cdsMarketVATPCT: TFloatField;
    cdsMarketWHTPCT: TFloatField;
    cdsMarketOTCAMOUNT: TFloatField;
    cdsMarketMODDA: TDateTimeField;
    cdsMarketMODUI: TStringField;
    cdsMarketAPPDA: TDateTimeField;
    cdsMarketAPPUI: TStringField;
    cdsMarketUNDER4Y: TIntegerField;
    cdsMarketUNDER4YDA: TDateTimeField;
    cdsMarketNOTES4Y: TStringField;
    cdsMarketISDEL: TIntegerField;
    cdsMarketID: TLargeintField;
    cdsMarketqryMarketBoard: TDataSetField;
    cdsMarketSELLTAX: TFloatField;
    cdsMarketVAT_ACCID: TIntegerField;
    cdsMarketVAT_ALTYPE: TStringField;
    cdsMarketWHT_ACCID: TIntegerField;
    cdsMarketWHT_ALTYPE: TStringField;
    cdsMarketSELLTAX_ACCID: TIntegerField;
    cdsMarketSELLTAX_ALTYPE: TStringField;
    cdsMarketBUY_ALTYPE: TStringField;
    cdsMarketSELL_ALTYPE: TStringField;
    cdsMarketBFEE_ACCID: TIntegerField;
    cdsMarketBFEE_ALTYPE: TStringField;
    cdsMarketSREC_ALTYPE: TStringField;
    cdsMarketSDEL_ALTYPE: TStringField;
    cdsMarketFACILITATION_BOARD: TLargeintField;
    cdsMarketWAREHOUSE_BOARD: TLargeintField;
    cdsMarketCROSSTOM_BOARD: TLargeintField;
    cdsMarketHOLDTAX: TFloatField;
    cdsMarketCAPGAINTAX: TFloatField;
    cdsMarketINV_BANK_ALTYPE: TStringField;
    cdsMarketSTOCK_SETTLE_ALTYPE: TStringField;
    cdsMarketCASH_SETTLE_ALTYPE: TStringField;
    cdsMarketNEGOTOM_BOARD: TLargeintField;
    cdsMarketBoard: TNClientDataset;
    cdsMarketBoardBOARDID: TLargeintField;
    cdsMarketBoardBOARDCODE: TStringField;
    cdsMarketBoardMARKETCODE: TStringField;
    cdsMarketBoardBOARDDESC: TStringField;
    cdsMarketBoardGLCD: TStringField;
    cdsMarketBoardMARKET: TStringField;
    cdsMarketBoardCPTYPE: TStringField;
    cdsMarketBoardDUEBUYSTOCK: TIntegerField;
    cdsMarketBoardDUESELLSTOCK: TIntegerField;
    cdsMarketBoardDUEBUYCASH: TIntegerField;
    cdsMarketBoardDUESELLCASH: TIntegerField;
    cdsMarketBoardMODDA: TDateTimeField;
    cdsMarketBoardMODUI: TStringField;
    cdsMarketBoardAPPDA: TDateTimeField;
    cdsMarketBoardAPPUI: TStringField;
    cdsMarketBoardISDEL: TIntegerField;
    cdsMarketBoardID: TLargeintField;
    cdsMarketBoardCPVALUE: TIntegerField;
    cdsMarketSettleConfig: TNClientDataset;
    cdsMarketSettleConfigTRANS_TYPE_CODE: TStringField;
    cdsMarketSettleConfigSEQNO: TLargeintField;
    cdsMarketSettleConfigTRANS_MODE: TStringField;
    cdsMarketSettleConfigMARKETCODE: TStringField;
    cdsMarketSettleConfigCCYCODE: TStringField;
    cdsMarketSettleConfigBOARDID: TIntegerField;
    cdsMarketSettleConfigACCTYPE: TStringField;
    cdsMarketSettleConfigPRDCODE: TStringField;
    cdsMarketSettleConfigBS: TStringField;
    cdsMarketSettleConfigSAVEKEEP: TStringField;
    cdsMarketSettleConfigACCSIDE: TStringField;
    cdsMarketSettleConfigSETTLESIDE: TStringField;
    cdsMarketSettleConfigCASH_STOCK: TStringField;
    cdsMarketSettleConfigMULTI_TRANS: TStringField;
    cdsMarketSettleConfigTRF_PRIVATEBANK: TStringField;
    cdsMarketSettleConfigUSE_CLIENTSIDE_ACC: TStringField;
    cdsMarketSettleConfigSOURCE_SETTLETYPE_CODE: TStringField;
    cdsMarketSettleConfigTARGET_SETTLETYPE_CODE: TStringField;
    cdsMarketSettleConfigINSTR_BASE: TStringField;
    cdsMarketSettleConfigINSTR_DEFAULT: TStringField;
    cdsMarketSettleConfigMODDA: TDateTimeField;
    cdsMarketSettleConfigMODUI: TStringField;
    cdsMarketSettleConfigAPPDA: TDateTimeField;
    cdsMarketSettleConfigAPPUI: TStringField;
    cdsMarketSettleConfigUNDER4Y: TIntegerField;
    cdsMarketSettleConfigUNDER4YDA: TDateTimeField;
    cdsMarketSettleConfigNOTES4Y: TStringField;
    cdsMarketSettleConfigISDEL: TIntegerField;
    cdsMarketSettleConfigID: TLargeintField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure gvwCompCashSettleCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetAllDatasetName(oCds: TDataset): String;
    function ChangeCountAll(oCds: TClientDataSet): Int64;
  end;

var
  frmMarket: TfrmMarket;

implementation

{$R *.dfm}

uses FormMarkets, DataGlobal, Datasnap.DSintf, ClassGeneral, DataLookup;

function TfrmMarket.ChangeCountAll(oCds: TClientDataSet): Int64;
var
  i: Integer;
begin
  oCds.CheckBrowseMode;
  Result := oCds.ChangeCount;
  for i := 0 to oCds.FieldCount - 1 do
  begin
    if oCds.Fields[i].DataType = ftDataSet then
    begin
      if (TDataSetField(oCds.Fields[i]).NestedDataSet <> nil) and (TDataSetField(oCds.Fields[i]).NestedDataSet is TClientDataSet) then
        Result := Result + ChangeCountAll(TClientDataSet(TDataSetField(oCds.Fields[i]).NestedDataSet));
    end;
  end;
end;

procedure TfrmMarket.cxButton1Click(Sender: TObject);
var
//  sFileName: String;
  sMsg: String;
//  i: Integer;
begin
  inherited;
//  sFileName := dmGlobal.AppPath + 'Temp\Market.xml';
//  TClientDataSet(dsSubject.DataSet).SaveToFile(sFileName, dfXMLUTF8);

//  sMsg := 'DataSet: ' + TClientDataSet(dsSubject.DataSet).Name;
//
//  for i := 0 to dsSubject.DataSet.FieldCount - 1 do
//  begin
//    if dsSubject.DataSet.Fields[i].DataType = ftDataSet then
//    begin
//      sMsg := sMsg + #13#10 + 'DataSet: ' + TDataSetField(dsSubject.DataSet.Fields[i]).NestedDataSet.Name;
//    end;
//  end;

//  sMsg := TClientDataSet(dsSubject.DataSet).XMLData;

//  sMsg := GetAllDatasetName(dsSubject.DataSet);
  sMsg := 'IP Address: ' + GetIPAddressAsString;
  ShowMessage(sMsg);

end;

procedure TfrmMarket.cxButton2Click(Sender: TObject);
var
  sFileName, sMsg: String;
  oCds: TClientDataSet;
//  i: Integer;
begin
  inherited;
  if ChangeCountAll(TClientDataSet(dsSubject.DataSet)) > 0 then
  begin
    oCds := TClientDataSet.Create(nil);
    Try
      with oCds do
      begin
        Data := TClientDataSet(dsSubject.DataSet).Delta;

        dsMarketBoard.DataSet := TDataSetField(oCds.FieldByName('qryMarketBoard')).NestedDataSet;
        sMsg := XMLData;
      end;
    Finally
//      FreeAndNil(oCds);
    End;
  end;

//  sMsg := 'Change Count All: ' + IntToStr(ChangeCountAll(TClientDataSet(dsSubject.DataSet)));

//  TClientDataSet(dsSubject.DataSet).CheckBrowseMode;
//  sMsg := 'Change Count: ' + IntToStr(TClientDataSet(dsSubject.DataSet).ChangeCount);

//  sMsg := UTF8ToString(VariantArrayToString(TClientDataSet(dsSubject.DataSet).Delta));

  ShowMessage(sMsg);

//  sFileName := dmGlobal.AppPath + 'Temp\Market.xml';
//  oCds := TClientDataSet.Create(Self);
//  Try
//    oCds.LoadFromFile(sFileName);
//    sMsg := '';
//    for i := 0 to oCds.FieldCount - 1 do
//    begin
//      sMsg := sMsg + oCds.Fields[i].FieldName + '; ' + #13#10;
//
//      if oCds.Fields[i].DataType = ftDataSet then
//      begin
//        sMsg := sMsg + 'Field Count: ' + IntToStr(TDataSetField(oCds.Fields[i]).NestedDataSet.FieldCount) + #13#10;
//        sMsg := sMsg + 'Record Count: ' + IntToStr(TDataSetField(oCds.Fields[i]).NestedDataSet.RecordCount) + #13#10;
//
//        if oCds.Fields[i].FieldName = 'qryMarketBoard' then
//          dsMarketBoard.DataSet := TDataSetField(oCds.Fields[i]).NestedDataSet
//        else if oCds.Fields[i].FieldName = 'qryMarketSettleConfig' then
//          dsSettleConfig.DataSet := TDataSetField(oCds.Fields[i]).NestedDataSet
//      end;
//    end;
//
//    ShowMessage(sMsg);
//  Finally
//    FreeAndNil(oCds);
//  End;
//  TClientDataSet(dsSubject.DataSet).LoadFromFile(sFileName);
//  if TClientDataSet(dsSubject.DataSet).State in dsEditModes then
//    ShowMessage('Edit Mode')
//  else if TClientDataSet(dsSubject.DataSet).State in [dsBrowse] then
//    ShowMessage('Browse Mode')
//  else
//    ShowMessage('Others Mode');
end;

procedure TfrmMarket.cxButton3Click(Sender: TObject);
var
  sFileName: String;
  oCds: TClientDataSet;
  i: Integer;
  oForm: TfrmMarket;
//  oFormContainer: TForm;
begin
  inherited;
  sFileName := dmGlobal.AppPath + 'Temp\Market.xml';
  oCds := TClientDataSet.Create(Self);
  Try
    oCds.LoadFromFile(sFileName);

//    oFormContainer := TForm.Create(nil);
    Try


      oForm := TfrmMarket.Create(Self);
      with oForm do
      begin
        DataContainer := Self.DataContainer;
        BrowserForm := Self.BrowserForm;
        Show;

        dsSubject.DataSet := oCds;

        for i := 0 to oCds.FieldCount - 1 do
        begin
          if oCds.Fields[i].DataType = ftDataSet then
          begin
            if oCds.Fields[i].FieldName = 'qryMarketBoard' then
              dsMarketBoard.DataSet := TDataSetField(oCds.Fields[i]).NestedDataSet
            else if oCds.Fields[i].FieldName = 'qryMarketSettleConfig' then
              dsSettleConfig.DataSet := TDataSetField(oCds.Fields[i]).NestedDataSet
          end;
        end;

      end;

//      with oFormContainer do
//      begin
//        Width := oForm.Width * 2 + 1;
//        Height := oForm.Height + 2;
//        Self.Parent := oFormContainer;
//        Self.Left := 0;
//        Self.Top := 1;
//        Self.Align := alLeft;
//        oForm.Parent := oFormContainer;
//        oForm.Left := oForm.Width + 1;
//        oForm.Top := 1;
//        oForm.Align := alClient;
//
//        BorderStyle := bsDialog;
//      end;
//
//      oFormContainer.ShowModal;
//
//      Self.Parent := nil;

    Finally
//      FreeAndNil(oFormContainer);
    End;

  Finally
//    FreeAndNil(oCds);
  End;
end;

procedure TfrmMarket.FormShow(Sender: TObject);
begin
  inherited;

  tabCharges.TabVisible := False;

  dxLayoutControl4Group6.Visible  := False;  // Cash Ledger Type (Buy, Sell, Settlement)
  dxLayoutControl4Group9.Visible  := False;  // Stock Ledger Type (Receive, Deliver, Settlement)
  dxLayoutControl5Item4.Visible   := False;  // Inv. Bank Ledger Type

  with dmGlobal.IntDataLookup do
  begin
//    cdsLuBankAccount.Close;
//    cdsLuBankAccount.Params[0].AsInteger := 1;
//    cdsLuBankAccount.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;
end;

function TfrmMarket.GetAllDatasetName(oCds: TDataset): String;
var
  i: Integer;
begin
  Result := 'DataSet: ' + oCds.Name + #13#10;
  for i := 0 to oCds.FieldCount - 1 do
  begin
    if oCds.Fields[i].DataType = ftDataSet then
    begin
      if (TDataSetField(oCds.Fields[i]).NestedDataSet <> nil) then
        Result := Result + GetAllDatasetName(TDataSetField(oCds.Fields[i]).NestedDataSet);
    end;
  end;
end;

procedure TfrmMarket.gvwCompCashSettleCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

Initialization
  RegisterClass(TfrmMarket);

end.
