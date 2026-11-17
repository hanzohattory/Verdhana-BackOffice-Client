unit FormDHKCash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, NDatasetAction,
  Datasnap.DBClient, NClientDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, XLSSheetData5, XLSReadWriteII5, Winapi.ShellAPI,
  System.DateUtils, System.Actions, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmDHKCash = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsDHKCashInstr: TDataSource;
    cdsDHKCashInstr: TNClientDataset;
    aclDHK: TActionList;
    actViewData: TNAction;
    actCreateCashCOLW: TNAction;
    gvwMasterDHKID: TcxGridDBBandedColumn;
    gvwMasterDAY: TcxGridDBBandedColumn;
    gvwMasterSID_CODE: TcxGridDBBandedColumn;
    gvwMasterCBEST_ACC_01: TcxGridDBBandedColumn;
    gvwMasterCBEST_ACC_04: TcxGridDBBandedColumn;
    gvwMasterSECURITY_CODE: TcxGridDBBandedColumn;
    gvwMasterRIGHTS: TcxGridDBBandedColumn;
    gvwMasterOBLIGATION: TcxGridDBBandedColumn;
    XLS: TXLSReadWriteII5;
    popGrid: TPopupMenu;
    CreateCashCOLW: TMenuItem;
    CreateCashCOLDS: TMenuItem;
    actCreateCashCOLDS: TNAction;
    actGenerateWT: TNAction;
    cdsBankBeneficiary: TNClientDataset;
    GenerateWT: TMenuItem;
    cdsBankBeneficiaryACCBANKID: TIntegerField;
    cdsBankBeneficiaryACCBANKCODE: TStringField;
    cdsBankBeneficiaryCCYCODE: TStringField;
    cdsBankBeneficiaryACCID: TIntegerField;
    cdsBankBeneficiaryBNCODE: TStringField;
    cdsBankBeneficiaryBANKACCNO: TStringField;
    cdsBankBeneficiaryBANKACCNAME: TStringField;
    cdsBankBeneficiaryBANKBRANCH: TStringField;
    cdsBankBeneficiaryISRDN: TStringField;
    cdsBankBeneficiaryBANKTYPE: TStringField;
    cdsBankBeneficiaryBNCHGSTYPE: TStringField;
    cdsBankBeneficiaryACTLED_SEQID: TIntegerField;
    cdsBankBeneficiaryCBEST_CODE: TStringField;
    cdsBankBeneficiaryBANK_DEFAULT: TStringField;
    cdsBankBeneficiarySTAT: TStringField;
    cdsBankBeneficiaryMODDA: TDateTimeField;
    cdsBankBeneficiaryMODUI: TStringField;
    cdsBankBeneficiaryAPPDA: TDateTimeField;
    cdsBankBeneficiaryAPPUI: TStringField;
    cdsBankBeneficiaryUNDER4Y: TIntegerField;
    cdsBankBeneficiaryUNDER4YDA: TDateTimeField;
    cdsBankBeneficiaryNOTES4Y: TStringField;
    cdsBankBeneficiaryISDEL: TIntegerField;
    cdsBankBeneficiaryID: TLargeintField;
    cdsBankBeneficiaryBNCODE_1: TStringField;
    cdsBankBeneficiaryBNNAME: TStringField;
    cdsBankBeneficiaryINITIAL_NAME: TStringField;
    cdsBankBeneficiaryBICODE: TStringField;
    cdsBankBeneficiarySWIFT_CODE: TStringField;
    cdsBankBeneficiaryISRDN_1: TStringField;
    cdsBankBeneficiaryMODDA_1: TDateTimeField;
    cdsBankBeneficiaryMODUI_1: TStringField;
    cdsBankBeneficiaryAPPDA_1: TDateTimeField;
    cdsBankBeneficiaryAPPUI_1: TStringField;
    cdsBankBeneficiaryISDEL_1: TIntegerField;
    cdsBankBeneficiaryID_1: TLargeintField;
    cdsDHKCashXLS: TNClientDataset;
    cdsDHKCashXLSENTTCODE: TStringField;
    cdsDHKCashXLSCUST_TYPE: TIntegerField;
    cdsDHKCashXLSDHKNO: TStringField;
    cdsDHKCashXLSDAY: TDateField;
    cdsDHKCashXLSSID_CODE: TStringField;
    cdsDHKCashXLSCBEST_ACC_01: TStringField;
    cdsDHKCashXLSCBEST_ACC_04: TStringField;
    cdsDHKCashXLSSECURITY_CODE: TStringField;
    cdsDHKCashXLSRIGHTS: TFloatField;
    cdsDHKCashXLSOBLIGATION: TFloatField;
    cdsDHKCashXLSMEMBER_ID: TStringField;
    cdsDHKCashXLSWTNO: TStringField;
    cdsDHKCashInstrDHKID: TLargeintField;
    cdsDHKCashInstrDHKNO: TStringField;
    cdsDHKCashInstrDAY: TDateField;
    cdsDHKCashInstrSID_CODE: TStringField;
    cdsDHKCashInstrCBEST_ACC_01: TStringField;
    cdsDHKCashInstrCBEST_ACC_04: TStringField;
    cdsDHKCashInstrSECURITY_CODE: TStringField;
    cdsDHKCashInstrRIGHTS: TFloatField;
    cdsDHKCashInstrOBLIGATION: TFloatField;
    cdsDHKCashInstrMEMBER_ID: TStringField;
    cdsDHKCashInstrWTNO: TStringField;
    procedure actCreateCashCOLWExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCreateCashCOLDSExecute(Sender: TObject);
    procedure actGenerateWTExecute(Sender: TObject);
    procedure UpdateWTNO();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDHKCash: TfrmDHKCash;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDHKCash.actCreateCashCOLDSExecute(Sender: TObject);
var
  bMark: TBookmark;
  oXLSCOLD: TXLSReadWriteII5;
  oSheetCOLD: TXLSWorksheet;
  sFileCOLD: String;
  iCOLD: Integer;
begin
  inherited;
  if not cdsDHKCashInstr.IsEmpty then
  begin
    cdsDHKCashInstr.DisableControls;
    bMark := cdsDHKCashInstr.GetBookmark;
    oXLSCOLD := TXLSReadWriteII5.Create(Self);

    Try
      sFileCOLD := dmGlobal.AppPath + 'Temp\CASH_COLD_' + FormatDateTime('YYYYMMDD', cdsDHKCashInstr.Params[0].AsDate) + '.xls';
      oXLSCOLD.Filename := sFileCOLD;
      oXLSCOLD.Version := XLS.Version;
      oSheetCOLD := oXLSCOLD.Sheets[0];
      oSheetCOLD.Clear;
      oSheetCOLD.Name := 'COLD';

      oSheetCOLD.AsString[0, 0] := 'External Reference';
      oSheetCOLD.AsString[1, 0] := 'Participant Code';
      oSheetCOLD.AsString[2, 0] := 'Source Account';
      oSheetCOLD.AsString[3, 0] := 'Target Account';
      oSheetCOLD.AsString[4, 0] := 'Currency Code';
      oSheetCOLD.AsString[5, 0] := 'Security Code Type';
      oSheetCOLD.AsString[6, 0] := 'Security Code';
      oSheetCOLD.AsString[7, 0] := 'Instrument Quantity';
      oSheetCOLD.AsString[8, 0] := 'Settlement Date';
      oSheetCOLD.AsString[9, 0] := 'Description';

      iCOLD := 1;

      cdsDHKCashInstr.First;
      while not cdsDHKCashInstr.Eof do
      begin
        if cdsDHKCashInstrOBLIGATION.AsFloat > 0 then
        begin
          oSheetCOLD.AsString[0, iCOLD] := cdsDHKCashInstrDHKNO.AsString;
          oSheetCOLD.AsString[1, iCOLD] := cdsDHKCashInstrMEMBER_ID.AsString;
          oSheetCOLD.AsString[2, iCOLD] := cdsDHKCashInstrCBEST_ACC_01.AsString;
          oSheetCOLD.AsString[3, iCOLD] := cdsDHKCashInstrCBEST_ACC_04.AsString;
          oSheetCOLD.AsString[4, iCOLD] := cdsDHKCashInstrSECURITY_CODE.AsString;
          oSheetCOLD.AsString[5, iCOLD] := '';
          oSheetCOLD.AsString[6, iCOLD] := '';
          oSheetCOLD.AsFloat[7, iCOLD] := cdsDHKCashInstrOBLIGATION.AsFloat;
          oSheetCOLD.AsString[8, iCOLD] := FormatDateTime('YYYYMMDD', cdsDHKCashInstrDAY.AsDateTime);
          oSheetCOLD.AsString[9, iCOLD] := cdsDHKCashInstrSID_CODE.AsString;

          Inc(iCOLD);
        end;

        cdsDHKCashInstr.Next;
      end;

      oXLSCOLD.Write;

    Finally
      FreeAndNil(oXLSCOLD);
      cdsDHKCashInstr.GotoBookmark(bMark);
      cdsDHKCashInstr.EnableControls;
    End;

    if FileExists(sFileCOLD) then
      ShellExecute(Application.Handle, 'open', PChar(sFileCOLD), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfrmDHKCash.actCreateCashCOLWExecute(Sender: TObject);
var
  bMark: TBookmark;
  oXLSCOLW: TXLSReadWriteII5;
  oSheetCOLW: TXLSWorksheet;
  sFileCOLW: String;
  iCOLW: Integer;
begin
  inherited;
  if not cdsDHKCashInstr.IsEmpty then
  begin
    cdsDHKCashInstr.DisableControls;
    bMark := cdsDHKCashInstr.GetBookmark;
    oXLSCOLW := TXLSReadWriteII5.Create(Self);

    Try
      sFileCOLW := dmGlobal.AppPath + 'Temp\CASH_COLW_' + FormatDateTime('YYYYMMDD', cdsDHKCashInstr.Params[0].AsDate) + '.xls';
      oXLSCOLW.Filename := sFileCOLW;
      oXLSCOLW.Version := XLS.Version;
      oSheetCOLW := oXLSCOLW.Sheets[0];
      oSheetCOLW.Clear;
      oSheetCOLW.Name := 'COLW';

      oSheetCOLW.AsString[0, 0] := 'External Reference';
      oSheetCOLW.AsString[1, 0] := 'Participant Code';
      oSheetCOLW.AsString[2, 0] := 'Source Account';
      oSheetCOLW.AsString[3, 0] := 'Target Account';
      oSheetCOLW.AsString[4, 0] := 'Currency Code';
      oSheetCOLW.AsString[5, 0] := 'Security Code Type';
      oSheetCOLW.AsString[6, 0] := 'Security Code';
      oSheetCOLW.AsString[7, 0] := 'Instrument Quantity';
      oSheetCOLW.AsString[8, 0] := 'Settlement Date';
      oSheetCOLW.AsString[9, 0] := 'Description';

      iCOLW := 1;

      cdsDHKCashInstr.First;
      while not cdsDHKCashInstr.Eof do
      begin
        if cdsDHKCashInstrRIGHTS.AsFloat > 0 then
        begin
          oSheetCOLW.AsString[0, iCOLW] := cdsDHKCashInstrDHKNO.AsString;
          oSheetCOLW.AsString[1, iCOLW] := cdsDHKCashInstrMEMBER_ID.AsString;
          oSheetCOLW.AsString[2, iCOLW] := cdsDHKCashInstrCBEST_ACC_04.AsString;
          oSheetCOLW.AsString[3, iCOLW] := cdsDHKCashInstrCBEST_ACC_01.AsString;
          oSheetCOLW.AsString[4, iCOLW] := cdsDHKCashInstrSECURITY_CODE.AsString;
          oSheetCOLW.AsString[5, iCOLW] := '';
          oSheetCOLW.AsString[6, iCOLW] := '';
          oSheetCOLW.AsFloat[7, iCOLW] := cdsDHKCashInstrRIGHTS.AsFloat;
          oSheetCOLW.AsString[8, iCOLW] := FormatDateTime('YYYYMMDD', cdsDHKCashInstrDAY.AsDateTime);
          oSheetCOLW.AsString[9, iCOLW] := cdsDHKCashInstrSID_CODE.AsString;

          Inc(iCOLW);
        end;

        cdsDHKCashInstr.Next;
      end;

      oXLSCOLW.Write;

    Finally
      FreeAndNil(oXLSCOLW);
      cdsDHKCashInstr.GotoBookmark(bMark);
      cdsDHKCashInstr.EnableControls;
    End;

    if FileExists(sFileCOLW) then
      ShellExecute(Application.Handle, 'open', PChar(sFileCOLW), nil, nil, SW_SHOWNORMAL);

  end;

end;

procedure TfrmDHKCash.actGenerateWTExecute(Sender: TObject);
var
  bMark: TBookmark;
  oXLSWT: TXLSReadWriteII5;
  oSheetWT: TXLSWorksheet;
  sFileWT: String;
  iWT: Integer;
  WTNO : String;
  WTNORITEL : STRING;
  CBEST_ACC_01 : String;
  RIGHTS, OBLIGATION : int64;
  Day : TDateTime;
begin
  inherited;
  UpdateWTNO;
  RIGHTS      := 0;
  OBLIGATION  := 0;

  cdsDHKCashXLS.Close;
  cdsDHKCashXLS.Params[0].AsInteger := 0;
  cdsDHKCashXLS.Params[1].AsString := '';
  cdsDHKCashXLS.Params[2].AsDate := DateOf(dtDueDate.Date);
  cdsDHKCashXLS.Open;

  if not cdsDHKCashXLS.IsEmpty then
  begin
      cdsDHKCashXLS.DisableControls;
      cdsBankBeneficiary.DisableControls;

      bMark := cdsDHKCashXLS.GetBookmark;
      oXLSWT := TXLSReadWriteII5.Create(Self);
      Try
      sFileWT := dmGlobal.AppPath + 'Temp\WT_' + FormatDateTime('YYMMDD', cdsDHKCashXLS.Params[0].AsDate) + '.xls';
      oXLSWT.Filename := sFileWT;
      oXLSWT.Version := XLS.Version;
      oSheetWT := oXLSWT.Sheets[0];
      oSheetWT.Clear;
      oSheetWT.Name := 'WT_'+FormatDateTime('YYMMDD', cdsDHKCashXLS.Params[0].AsDate);

      oSheetWT.AsString[0, 0] := 'externalReference';
      oSheetWT.AsString[1, 0] := 'participantCode';
      oSheetWT.AsString[2, 0] := 'participantAccount';
      oSheetWT.AsString[3, 0] := 'beneficiaryAccount';
      oSheetWT.AsString[4, 0] := 'beneficiaryInstitution';
      oSheetWT.AsString[5, 0] := 'valueDate';
      oSheetWT.AsString[6, 0] := 'currencyCode';
      oSheetWT.AsString[7, 0] := 'cashAmount';
      oSheetWT.AsString[8, 0] := 'description';

      iWT := 1;

      cdsDHKCashXLS.First;
      cdsBankBeneficiary.First;
      while not cdsDHKCashXLS.Eof do
      begin
        if cdsDHKCashXLSRIGHTS.AsFloat > 0 then
        begin

          WTNO := cdsDHKCashXLSWTNO.AsString;

          if cdsDHKCashXLSCUST_TYPE.AsInteger = 2 then
            //INSERT DATA FOR WIRED TRANSFER WITH ACCTYPE = INSITUTION
            begin
            oSheetWT.AsString[0, iWT] := WTNO;
            oSheetWT.AsString[1, iWT] := dmGlobal.RemoteServer.GetGlobalParamString('009');
            oSheetWT.AsString[2, iWT] := cdsDHKCashXLSCBEST_ACC_01.AsString;
            oSheetWT.AsString[3, iWT] := cdsBankBeneficiaryBANKACCNO.AsString;
            oSheetWT.AsString[4, iWT] := cdsBankBeneficiaryINITIAL_NAME.AsString;
            oSheetWT.AsString[5, iWT] := FormatDateTime('YYYYMMDD', cdsDHKCashXLSDAY.AsDateTime);
            oSheetWT.AsString[6, iWT] := cdsDHKCashXLSSECURITY_CODE.AsString;
            oSheetWT.AsFloat[7, iWT]  := cdsDHKCashXLSRIGHTS.AsFloat;
            oSheetWT.AsString[8, iWT] := cdsDHKCashXLSENTTCODE.AsString;

            Inc(iWT);
            end
          else if cdsDHKCashXLSCUST_TYPE.AsInteger = 1 then

          begin
            WTNORITEL := cdsDHKCashXLSWTNO.AsString;
            RIGHTS := RIGHTS + round(cdsDHKCashXLSRIGHTS.AsFloat);
            Day :=  cdsDHKCashXLSDAY.AsDateTime;
          end;

        end;

        cdsDHKCashXLS.Next;
      end;

      //INSERT DATA FOR WIRED TRANSFER WITH ACCTYPE = RETAIL
      if RIGHTS > 0 then
      begin
      oSheetWT.AsString[0, iWT] := WTNORITEL;
      oSheetWT.AsString[1, iWT] := dmGlobal.RemoteServer.GetGlobalParamString('009');
      oSheetWT.AsString[2, iWT] := dmGlobal.RemoteServer.GetGlobalParamString('072');
      oSheetWT.AsString[3, iWT] := cdsBankBeneficiaryBANKACCNO.AsString;
      oSheetWT.AsString[4, iWT] := cdsBankBeneficiaryINITIAL_NAME.AsString;
      oSheetWT.AsString[5, iWT] := FormatDateTime('YYYYMMDD', Day);
      oSheetWT.AsString[6, iWT] := 'IDR';
      oSheetWT.AsFloat[7, iWT]  := RIGHTS;
      oSheetWT.AsString[8, iWT] := 'Retail';
      end;

      cdsBankBeneficiary.Next;
      oXLSWT.Write;
    Finally
      FreeAndNil(oXLSWT);
      cdsDHKCashXLS.GotoBookmark(bMark);
      cdsDHKCashXLS.EnableControls;
      cdsBankBeneficiary.EnableControls;
    End;

    cdsDHKCashXLS.Refresh;
    if FileExists(sFileWT) then
      ShellExecute(Application.Handle, 'open', PChar(sFileWT), nil, nil, SW_SHOWNORMAL);

  end;
end;

procedure TfrmDHKCash.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsDHKCashInstr.Close;
  cdsDHKCashInstr.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsDHKCashInstr.Open;

  cdsBankBeneficiary.Close;
  cdsBankBeneficiary.Open;

  cdsDHKCashXLS.Close;
  cdsDHKCashXLS.Params[0].AsInteger := 0;
  cdsDHKCashXLS.Params[1].AsString := '';
  cdsDHKCashXLS.Params[2].AsDate := DateOf(dtDueDate.Date);
  cdsDHKCashXLS.Open;

  gvwMaster.ApplyBestFit();
end;

procedure TfrmDHKCash.FormCreate(Sender: TObject);
begin
  inherited;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewData.Execute;
end;

procedure TfrmDHKCash.UpdateWTNO;
var
bMark: TBookmark;
WTNO,WTNORITEL : String;
begin
  cdsDHKCashInstr.Close;
  cdsDHKCashInstr.Params[0].AsDate := DateOf(dtDueDate.Date);
  cdsDHKCashInstr.Open;

  WTNORITEL := '';
  if not cdsDHKCashInstr.IsEmpty then
  begin
    cdsDHKCashInstr.DisableControls;
    bMark := cdsDHKCashInstr.GetBookmark;
    Try
      while not cdsDHKCashInstr.Eof do
      begin
        if cdsDHKCashInstrRIGHTS.AsFloat > 0 then
        BEGIN
            if cdsDHKCashInstrWTNO.IsNull then
            begin
              WTNO := '';

              cdsDHKCashXLS.Close;
              cdsDHKCashXLS.Params[0].AsInteger := 1;
              cdsDHKCashXLS.Params[1].AsString := cdsDHKCashInstrDHKNO.AsString;
              cdsDHKCashXLS.Params[2].AsDate := DateOf(dtDueDate.Date);
              cdsDHKCashXLS.Open;

              while not cdsDHKCashXLS.Eof do
              begin
              if cdsDHKCashXLSCUST_TYPE.AsInteger = 1 then
              begin
                  if WTNORITEL = '' then
                  WTNORITEL := dmGlobal.RemoteServer.GenerateCustdInstrNo(cdsDHKCashInstrDAY.AsDateTime,'WT','TBL_B_DHKWT');
                  WTNO := WTNORITEL;
              end
              else if cdsDHKCashXLSCUST_TYPE.AsInteger = 2 then
                   WTNO := dmGlobal.RemoteServer.GenerateCustdInstrNo(cdsDHKCashInstrDAY.AsDateTime,'WT','TBL_B_DHKWT');

              cdsDHKCashXLS.Next;
              end;

              cdsDHKCashInstr.Edit;
              cdsDHKCashInstrWTNO.AsString := WTNO;
              cdsDHKCashInstr.Post;
            end;
        END;
        cdsDHKCashInstr.Next;
      end;
      //showmessage(IntToStr(cdsDHKCashInstr.ChangeCount));
      if cdsDHKCashInstr.ChangeCount > 0 then
      cdsDHKCashInstr.ApplyUpdates(-1);
    Finally
      cdsDHKCashInstr.GotoBookmark(bMark);
      cdsDHKCashInstr.EnableControls;
    End;
  end;
end;

Initialization
  RegisterClass(TfrmDHKCash);

end.
