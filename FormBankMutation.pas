unit FormBankMutation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, cxDropDownEdit, cxImageComboBox, Vcl.StdCtrls,
  cxButtons, cxCalendar, cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControl,
  Vcl.ActnList, NDatasetAction, XLSSheetData5, XLSReadWriteII5,
  NActionPermission, StrUtils, DateUtils, cxGridDBTableView, System.Actions;

type
  TfrmBankMutation = class(TfrmBasic)
    XLS: TXLSReadWriteII5;
    aclBankMutation: TActionList;
    actViewData: TNAction;
    actUploadData: TNAction;
    ImportFilesDialog_: TFileOpenDialog;
    popGrid: TPopupMenu;
    dxLayoutControl1: TdxLayoutControl;
    txtBankMutation: TcxButtonEdit;
    txtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cbBank: TcxImageComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwBankMutation: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsBankMutation: TNClientDataset;
    dsBankMutation: TDataSource;
    cdsBankMutationMUTATIONID: TIntegerField;
    cdsBankMutationTRDATE: TDateField;
    cdsBankMutationTRDATETIME: TDateTimeField;
    cdsBankMutationSID: TStringField;
    cdsBankMutationSUBREK01: TStringField;
    cdsBankMutationBNCODE: TStringField;
    cdsBankMutationBNACCNO: TStringField;
    cdsBankMutationBNACCNAME: TStringField;
    cdsBankMutationCCY: TStringField;
    cdsBankMutationDC: TStringField;
    cdsBankMutationSALDOAWAL: TFloatField;
    cdsBankMutationMUTASI: TFloatField;
    cdsBankMutationSALDOAKHIR: TFloatField;
    cdsBankMutationDESCRIPTION: TStringField;
    cdsBankMutationMODDA: TDateTimeField;
    cdsBankMutationMODUI: TStringField;
    cdsBankMutationAPPDA: TDateTimeField;
    cdsBankMutationAPPUI: TStringField;
    cdsBankMutationUNDER4Y: TIntegerField;
    cdsBankMutationUNDER4YDA: TDateTimeField;
    cdsBankMutationNOTES4Y: TStringField;
    cdsBankMutationISDEL: TIntegerField;
    cdsBankMutationID: TLargeintField;
    gvwBankMutationMUTATIONID: TcxGridDBBandedColumn;
    gvwBankMutationTRDATE: TcxGridDBBandedColumn;
    gvwBankMutationTRDATETIME: TcxGridDBBandedColumn;
    gvwBankMutationSID: TcxGridDBBandedColumn;
    gvwBankMutationSUBREK01: TcxGridDBBandedColumn;
    gvwBankMutationBNCODE: TcxGridDBBandedColumn;
    gvwBankMutationBNACCNO: TcxGridDBBandedColumn;
    gvwBankMutationBNACCNAME: TcxGridDBBandedColumn;
    gvwBankMutationCCY: TcxGridDBBandedColumn;
    gvwBankMutationDC: TcxGridDBBandedColumn;
    gvwBankMutationSALDOAWAL: TcxGridDBBandedColumn;
    gvwBankMutationMUTASI: TcxGridDBBandedColumn;
    gvwBankMutationSALDOAKHIR: TcxGridDBBandedColumn;
    gvwBankMutationDESCRIPTION: TcxGridDBBandedColumn;
    gvwBankMutationMODDA: TcxGridDBBandedColumn;
    gvwBankMutationMODUI: TcxGridDBBandedColumn;
    gvwBankMutationAPPDA: TcxGridDBBandedColumn;
    gvwBankMutationAPPUI: TcxGridDBBandedColumn;
    gvwBankMutationUNDER4Y: TcxGridDBBandedColumn;
    gvwBankMutationUNDER4YDA: TcxGridDBBandedColumn;
    gvwBankMutationNOTES4Y: TcxGridDBBandedColumn;
    gvwBankMutationISDEL: TcxGridDBBandedColumn;
    gvwBankMutationID: TcxGridDBBandedColumn;
    ImportFilesDialog: TOpenDialog;
    cdsBankMutationISGENERATED: TStringField;
    cdsBankMutationCMID: TLargeintField;
    cdsBankMutationACTLED_SEQID: TIntegerField;
    cdsCashMutation: TNClientDataset;
    cdsCashMutationCMID: TLargeintField;
    cdsCashMutationCMCODE: TStringField;
    cdsCashMutationCMDATE: TDateField;
    cdsCashMutationCMTYPE: TStringField;
    cdsCashMutationCMDESC: TStringField;
    cdsCashMutationACCID: TIntegerField;
    cdsCashMutationACCNO: TStringField;
    cdsCashMutationACCBANKID: TIntegerField;
    cdsCashMutationDC: TStringField;
    cdsCashMutationCCY: TStringField;
    cdsCashMutationCMAMT: TFloatField;
    cdsCashMutationPOSTED: TStringField;
    cdsCashMutationMODDA: TDateTimeField;
    cdsCashMutationMODUI: TStringField;
    cdsCashMutationAPPDA: TDateTimeField;
    cdsCashMutationAPPUI: TStringField;
    cdsCashMutationUNDER4Y: TIntegerField;
    cdsCashMutationUNDER4YDA: TDateTimeField;
    cdsCashMutationNOTES4Y: TStringField;
    cdsCashMutationISDEL: TIntegerField;
    cdsCashMutationID: TLargeintField;
    cdsCashMutationBNBRANCH: TStringField;
    cdsCashMutationBNACCNAME: TStringField;
    cdsCashMutationBNACCNO: TStringField;
    cdsCashMutationBNCODE: TStringField;
    cdsCashMutationACCNAME: TStringField;
    cdsBankMutationACCBANKID: TIntegerField;
    cdsBankMutationACCID: TIntegerField;
    cdsBankMutationACCCODE: TStringField;
    gvwBankMutationISGENERATED: TcxGridDBBandedColumn;
    gvwBankMutationCMID: TcxGridDBBandedColumn;
    gvwBankMutationACCBANKID: TcxGridDBBandedColumn;
    gvwBankMutationACCID: TcxGridDBBandedColumn;
    gvwBankMutationACCCODE: TcxGridDBBandedColumn;
    gvwBankMutationACTLED_SEQID: TcxGridDBBandedColumn;
    actCreateMutation: TNAction;
    actCreateMutationAll: TNAction;
    CreateMutation1: TMenuItem;
    cdsBankMutationTmp: TClientDataSet;
    cdsBankMutationTmpMUTATIONID: TIntegerField;
    cdsBankMutationTmpTRDATE: TDateField;
    cdsBankMutationTmpTRDATETIME: TDateTimeField;
    cdsBankMutationTmpSID: TStringField;
    cdsBankMutationTmpSUBREK01: TStringField;
    cdsBankMutationTmpBNCODE: TStringField;
    cdsBankMutationTmpBNACCNO: TStringField;
    cdsBankMutationTmpBNACCNAME: TStringField;
    cdsBankMutationTmpCCY: TStringField;
    cdsBankMutationTmpDC: TStringField;
    cdsBankMutationTmpSALDOAWAL: TFloatField;
    cdsBankMutationTmpMUTASI: TFloatField;
    cdsBankMutationTmpSALDOAKHIR: TFloatField;
    cdsBankMutationTmpDESCRIPTION: TStringField;
    cdsBankMutationTmpMODDA: TDateTimeField;
    cdsBankMutationTmpMODUI: TStringField;
    cdsBankMutationTmpAPPDA: TDateTimeField;
    cdsBankMutationTmpAPPUI: TStringField;
    cdsBankMutationTmpUNDER4Y: TIntegerField;
    cdsBankMutationTmpUNDER4YDA: TDateTimeField;
    cdsBankMutationTmpNOTES4Y: TStringField;
    cdsBankMutationTmpISDEL: TIntegerField;
    cdsBankMutationTmpID: TLargeintField;
    cdsBankMutationTmpISGENERATED: TStringField;
    cdsBankMutationTmpCMID: TLargeintField;
    cdsBankMutationTmpACCBANKID: TIntegerField;
    cdsBankMutationTmpACCID: TIntegerField;
    cdsBankMutationTmpACCCODE: TStringField;
    cdsBankMutationTmpACTLED_SEQID: TIntegerField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1MUTATIONID: TcxGridDBColumn;
    cxGrid2DBTableView1TRDATE: TcxGridDBColumn;
    cxGrid2DBTableView1TRDATETIME: TcxGridDBColumn;
    cxGrid2DBTableView1SID: TcxGridDBColumn;
    cxGrid2DBTableView1SUBREK01: TcxGridDBColumn;
    cxGrid2DBTableView1BNCODE: TcxGridDBColumn;
    cxGrid2DBTableView1BNACCNO: TcxGridDBColumn;
    cxGrid2DBTableView1BNACCNAME: TcxGridDBColumn;
    cxGrid2DBTableView1CCY: TcxGridDBColumn;
    cxGrid2DBTableView1DC: TcxGridDBColumn;
    cxGrid2DBTableView1SALDOAWAL: TcxGridDBColumn;
    cxGrid2DBTableView1MUTASI: TcxGridDBColumn;
    cxGrid2DBTableView1SALDOAKHIR: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1MODDA: TcxGridDBColumn;
    cxGrid2DBTableView1MODUI: TcxGridDBColumn;
    cxGrid2DBTableView1APPDA: TcxGridDBColumn;
    cxGrid2DBTableView1APPUI: TcxGridDBColumn;
    cxGrid2DBTableView1UNDER4Y: TcxGridDBColumn;
    cxGrid2DBTableView1UNDER4YDA: TcxGridDBColumn;
    cxGrid2DBTableView1NOTES4Y: TcxGridDBColumn;
    cxGrid2DBTableView1ISDEL: TcxGridDBColumn;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1ISGENERATED: TcxGridDBColumn;
    cxGrid2DBTableView1CMID: TcxGridDBColumn;
    cxGrid2DBTableView1ACCBANKID: TcxGridDBColumn;
    cxGrid2DBTableView1ACCID: TcxGridDBColumn;
    cxGrid2DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid2DBTableView1ACTLED_SEQID: TcxGridDBColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actUploadDataExecute(Sender: TObject);
    procedure txtBankReconPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsBankMutationBeforePost(DataSet: TDataSet);
    procedure cdsBankMutationAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actCreateMutationExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ImportBankPermata(AFileName: String);
    procedure ImportBankNiaga(AFileName: String);
    procedure ImportBankMandiri(AFileName: String);

    procedure BankPermataImport(AFileName: string);
    procedure BankNiagaImport(AFileName: string);
    procedure BankMandiriImport(AFileName: string);
  end;

var
  frmBankMutation: TfrmBankMutation;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmBankMutation.actCreateMutationExecute(Sender: TObject);
begin
  inherited;
//  if (cdsBankMutationACTLED_SEQID.IsNull)
//    or (cdsBankMutationACCBANKID.IsNull) then
//  begin
//    dmGlobal.ErrorMessage('This bank account can''t find in Nayaga System or not configured well.' +
//      #10#13 + 'Please check this Bank Account in Nayaga System!');
//
//    Exit;
//  end;
//
//  if cdsBankMutationISGENERATED.AsString = '1' then
//  begin
//    cdsCashMutation.Close;
//    cdsCashMutation.Params[0].AsInteger := cdsBankMutationCMID.AsInteger;
//    cdsCashMutation.Open;
//
//    if cdsCashMutation.IsEmpty then
//    begin
//      cdsCashMutation.Append;
//      cdsCashMutationCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION');
//      cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date;
//      cdsCashMutationCMCODE.AsString := 'CM-' +
//                FormatDateTime('YYYYMM', cdsCashMutationCMDATE.AsDateTime) +
//                Format('%.6d', [cdsCashmutationCMID.AsLargeInt]);;
//      cdsCashMutationCMDESC.AsString := cdsBankMutationDESCRIPTION.AsString;
//      cdsCashMutationACCID.AsInteger := cdsBankMutationACCID.AsInteger;
//      cdsCashMutationACCNO.AsString := cdsBankMutationACCCODE.AsString;
//      cdsCashMutationACCBANKID.AsInteger := cdsBankMutationACCBANKID.AsInteger;
//      cdsCashMutationCCY.AsString := cdsBankMutationCCY.AsString;
//      cdsCashMutationCMAMT.AsFloat := cdsBankMutationMUTASI.AsFloat;
//      cdsCashMutationCMTYPE.AsString := 'B';//Bank Mutation
//      cdsCashMutationDC.AsString := cdsBankMutationDC.AsString;
//      cdsCashMutationMODDA.AsDateTime := cdsBankMutationMODDA.AsDateTime;
//      cdsCashMutationMODUI.AsString := dmGlobal.UserID;
//      cdsCashMutationISDEL.AsInteger := 0;
//      cdsCashMutation.Post;
//
//      cdsBankMutation.Edit;
//      cdsBankMutationCMID.AsLargeInt := cdsCashMutationCMID.AsLargeInt;
//      cdsBankMutation.Post;
//
//      cdsBankMutation.ApplyUpdates(-1);
//
//      MessageDlg('This mutation generated succesfully!', mtInformation, [mbOK], 0);
//    end
//    else
//    begin
//      MessageDlg('This mutation was generated!', mtInformation, [mbOK], 0);
//    end;
//  end
//  else
//  begin
//    cdsCashMutation.Close;
//    cdsCashMutation.Params[0].AsInteger := 0;
//    cdsCashMutation.Open;
//
//    cdsCashMutation.Append;
//    cdsCashMutationCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION');
//    cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date;
//    cdsCashMutationCMCODE.AsString := 'CM-' +
//              FormatDateTime('YYYYMM', cdsCashMutationCMDATE.AsDateTime) +
//              Format('%.6d', [cdsCashmutationCMID.AsLargeInt]);;
//    cdsCashMutationCMDESC.AsString := 'Cash Mutation From Bank Reconcile';
//    cdsCashMutationACCID.AsInteger := cdsBankMutationACCID.AsInteger;
//    cdsCashMutationACCNO.AsString := cdsBankMutationACCCODE.AsString;
//    cdsCashMutationACCBANKID.AsInteger := cdsBankMutationACCBANKID.AsInteger;
//    cdsCashMutationCCY.AsString := cdsBankMutationCCY.AsString;
//    cdsCashMutationCMAMT.AsFloat := cdsBankMutationMUTASI.AsFloat;
//    cdsCashMutationCMTYPE.AsString := 'B';//Bank Mutation
//    cdsCashMutationDC.AsString := cdsBankMutationDC.AsString;
//    cdsCashMutationMODDA.AsDateTime := cdsBankMutationMODDA.AsDateTime;
//    cdsCashMutationMODUI.AsString := dmGlobal.UserID;
//    cdsCashMutationISDEL.AsInteger := 0;
//    cdsCashMutation.Post;
//
//    cdsBankMutation.Edit;
//    cdsBankMutationISGENERATED.AsString := '1';
//    cdsBankMutationCMID.AsLargeInt := cdsCashMutationCMID.AsLargeInt;
//    cdsBankMutation.Post;
//
//    cdsBankMutation.ApplyUpdates(-1);
//
//    MessageDlg('This mutation generated succesfully!', mtInformation, [mbOK], 0);
//  end;
end;

procedure TfrmBankMutation.actUploadDataExecute(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  sFileName := txtBankMutation.Text;

  if FileExists(sFileName) then
  begin
    cdsCashMutation.Close;
    cdsCashMutation.Params[0].AsInteger := 0;
    cdsCashMutation.Open;

    if cbBank.EditValue = 'BNLI' then
      BankPermataImport(sFileName) //ImportBankPermata(sFileName)
    else if cbBank.EditValue = 'BNGA' then
      BankNiagaImport(sFileName)
    else if cbBank.EditValue = 'BMRI' then
      BankMandiriImport(sFileName);

//    actViewData.Execute;
  end;
end;

procedure TfrmBankMutation.actViewDataExecute(Sender: TObject);
begin
  inherited;
//  cdsBankMutation.Close;
//  cdsBankMutation.Params[0].AsDate := DateOf(txtTransDate.Date);
//  cdsBankMutation.Params[1].AsString := cbBank.EditValue;
//  cdsBankMutation.Open;
//
//  gvwBankMutation.ApplyBestFit();
end;

procedure TfrmBankMutation.BankMandiriImport(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
begin
  Screen.Cursor := crHourGlass;
  oBankList     := TStringList.Create;

  cdsBankMutationTmp.Close;
  cdsBankMutationTmp.CreateDataSet;
  cdsBankMutationTmp.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    oBankData     := TStringList.Create;
    dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '||' );

    sDateTime := oBankData.Strings[4];
    iYear     := StrToIntDef(Copy(sDateTime, 2, 4), 0);
    iMonth    := StrToIntDef(Copy(sDateTime, 6, 2), 0);
    iDay      := StrToIntDef(Copy(sDateTime, 8, 2), 0);
    dDate     := EncodeDate(iYear, iMonth, iDay);

    cdsBankMutationTmp.Append;
    cdsBankMutationTmpTRDATE.AsDateTime     := dDate;
    cdsBankMutationTmpTRDATETIME.AsDateTime := dDate;
    cdsBankMutationTmpSID.AsString          := ''; //oBankData.Strings[];
    cdsBankMutationTmpSUBREK01.AsString     := ''; //oBankData.Strings[];
    cdsBankMutationTmpBNCODE.AsString       := 'BMRI';
    cdsBankMutationTmpBNACCNO.AsString      := oBankData.Strings[2];
    cdsBankMutationTmpBNACCNAME.AsString    := ''; //oBankData.Strings[2];
    cdsBankMutationTmpCCY.AsString          := oBankData.Strings[3];
    cdsBankMutationTmpDC.AsString           := oBankData.Strings[8];
    cdsBankMutationTmpSALDOAWAL.AsFloat     := StrToFloatDef(oBankData.Strings[5], 0);
    cdsBankMutationTmpMUTASI.AsFloat        := StrToFloatDef(oBankData.Strings[9], 0);
    cdsBankMutationTmpSALDOAKHIR.AsFloat    := StrToFloatDef(oBankData.Strings[11], 0);
    cdsBankMutationTmpDESCRIPTION.AsString  := oBankData.Strings[10];
    cdsBankMutationTmp.Post;

    FreeAndNil(oBankData);
  end;
  cdsBankMutationTmp.EnableControls;

  FreeAndNil(oBankList);

  Screen.Cursor := crDefault;

end;

procedure TfrmBankMutation.BankNiagaImport(AFileName: string);
var
  oBankList: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond, iMili: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sData: string;
begin
  Screen.Cursor := crHourGlass;
  oBankList     := TStringList.Create;

  cdsBankMutationTmp.Close;
  cdsBankMutationTmp.CreateDataSet;
  cdsBankMutationTmp.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    sData     := oBankList.Strings[i];

    sDateTime := Copy(sData, 91, 12);
    iYear     := StrToIntDef(Copy(sDateTime, 1, 4), 0);
    iMonth    := StrToIntDef(Copy(sDateTime, 5, 2), 0);
    iDay      := StrToIntDef(Copy(sDateTime, 7, 2), 0);
    iHour     := StrToIntDef(Copy(sDateTime, 9, 2), 0);
    iMinute   := StrToIntDef(Copy(sDateTime, 11, 2), 0);
    iSecond   := StrToIntDef(Copy(sDateTime, 13, 2), 0);
    iMili     := StrToIntDef(Copy(sDateTime, 15, 2), 0);
    dDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, iMili);
    dDate     := EncodeDate(iYear, iMonth, iDay);

    cdsBankMutationTmp.Append;
    cdsBankMutationTmpTRDATE.AsDateTime     := dDate;
    cdsBankMutationTmpTRDATETIME.AsDateTime := dDateTime;
    cdsBankMutationTmpSID.AsString          := Copy(sData, 14, 15);
    cdsBankMutationTmpSUBREK01.AsString     := Copy(sData, 29, 14);
    cdsBankMutationTmpBNCODE.AsString       := 'BNGA';
    cdsBankMutationTmpBNACCNO.AsString      := Copy(sData, 1, 13);
    cdsBankMutationTmpBNACCNAME.AsString    := Copy(sData, 51, 40);
    cdsBankMutationTmpCCY.AsString          := Copy(sData, 125, 3);
    cdsBankMutationTmpDC.AsString           := Copy(sData, 148, 1);
    cdsBankMutationTmpSALDOAWAL.AsFloat     := StrToFloatDef(Copy(sData, 133, 15), 0);
    cdsBankMutationTmpMUTASI.AsFloat        := StrToFloatDef(Copy(sData, 149, 15), 0);
    cdsBankMutationTmpSALDOAKHIR.AsFloat    := StrToFloatDef(Copy(sData, 169, 15), 0);
    cdsBankMutationTmpDESCRIPTION.AsString  := Copy(sData, 284, 140);
    cdsBankMutationTmp.Post;
  end;
  cdsBankMutationTmp.EnableControls;

  FreeAndNil(oBankList);
  Screen.Cursor := crDefault;
end;

procedure TfrmBankMutation.BankPermataImport(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
begin
  Screen.Cursor := crHourGlass;
  oBankList     := TStringList.Create;

  cdsBankMutationTmp.Close;
  cdsBankMutationTmp.CreateDataSet;
  cdsBankMutationTmp.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    oBankData     := TStringList.Create;
    dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '|' );

    sDateTime := oBankData.Strings[7];
    iYear     := StrToIntDef(Copy(sDateTime, 1, 4), 0);
    iMonth    := StrToIntDef(Copy(sDateTime, 5, 2), 0);
    iDay      := StrToIntDef(Copy(sDateTime, 7, 2), 0);
    iHour     := StrToIntDef(Copy(sDateTime, 9, 2), 0);
    iMinute   := StrToIntDef(Copy(sDateTime, 11, 2), 0);
    iSecond   := StrToIntDef(Copy(sDateTime, 13, 2), 0);
    dDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, 0);
    dDate     := EncodeDate(iYear, iMonth, iDay);

    cdsBankMutationTmp.Append;
    cdsBankMutationTmpTRDATE.AsDateTime     := dDate;
    cdsBankMutationTmpTRDATETIME.AsDateTime := dDateTime;
    cdsBankMutationTmpSID.AsString          := oBankData.Strings[1];
    cdsBankMutationTmpSUBREK01.AsString     := oBankData.Strings[2];
    cdsBankMutationTmpBNCODE.AsString       := 'BNLI';
    cdsBankMutationTmpBNACCNO.AsString      := oBankData.Strings[0];
    cdsBankMutationTmpBNACCNAME.AsString    := oBankData.Strings[5];
    cdsBankMutationTmpCCY.AsString          := oBankData.Strings[8];
    cdsBankMutationTmpDC.AsString           := oBankData.Strings[11];
    cdsBankMutationTmpSALDOAWAL.AsFloat     := StrToFloatDef(oBankData.Strings[10], 0);
    cdsBankMutationTmpMUTASI.AsFloat        := StrToFloatDef(oBankData.Strings[12], 0);
    cdsBankMutationTmpSALDOAKHIR.AsFloat    := StrToFloatDef(oBankData.Strings[14], 0);
    cdsBankMutationTmpDESCRIPTION.AsString  := oBankData.Strings[18];
    cdsBankMutationTmp.Post;

    FreeAndNil(oBankData);
  end;
  cdsBankMutationTmp.EnableControls;

  FreeAndNil(oBankList);

  Screen.Cursor := crDefault;
end;

procedure TfrmBankMutation.cdsBankMutationAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
//  if cdsCashMutation.ChangeCount > 0 then
//    cdsCashMutation.ApplyUpdates(-1);
end;

procedure TfrmBankMutation.cdsBankMutationBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if DataSet.State = dsInsert then
//  begin
//    if (not cdsBankMutationACTLED_SEQID.IsNull) and (not cdsBankMutationACCBANKID.IsNull) then
//    begin
//      cdsCashMutation.Append;
//      cdsCashMutationCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION');
//      cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date;
//      cdsCashMutationCMCODE.AsString := 'CM-' +
//                FormatDateTime('YYYYMM', cdsCashMutationCMDATE.AsDateTime) +
//                Format('%.6d', [cdsCashmutationCMID.AsLargeInt]);;
//      cdsCashMutationCMDESC.AsString := cdsBankMutationDESCRIPTION.AsString;
//      cdsCashMutationACCID.AsInteger := cdsBankMutationACCID.AsInteger;
//      cdsCashMutationACCNO.AsString := cdsBankMutationACCCODE.AsString;
//      cdsCashMutationACCBANKID.AsInteger := cdsBankMutationACCBANKID.AsInteger;
//      cdsCashMutationCCY.AsString := cdsBankMutationCCY.AsString;
//      cdsCashMutationCMAMT.AsFloat := cdsBankMutationMUTASI.AsFloat;
//      cdsCashMutationCMTYPE.AsString := 'B';//Bank Mutation
//      cdsCashMutationDC.AsString := cdsBankMutationDC.AsString;
//      cdsCashMutationMODDA.AsDateTime := cdsBankMutationMODDA.AsDateTime;
//      cdsCashMutationMODUI.AsString := dmGlobal.UserID;
//      cdsCashMutationISDEL.AsInteger := 0;
//      cdsCashMutation.Post;
//
//      cdsBankMutationISGENERATED.AsString := '1';
//      cdsBankMutationCMID.AsLargeInt := cdsCashMutationCMID.AsLargeInt;
//    end
//    else
//    begin
//      cdsBankMutationISGENERATED.AsString := '0';
//    end;
//  end;
end;

procedure TfrmBankMutation.FormCreate(Sender: TObject);
begin
  inherited;
  txtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbBank.EditValue := cbBank.Properties.Items.Items[0].Value;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountBank.Close;
    cdsLuAccountBank.Open;
  end;
//  actViewData.Execute;
end;

procedure TfrmBankMutation.ImportBankMandiri(AFileName: String);
//var
//  slData, slRecord: TStringList;
//  dtProcess: TDateTime;
//  i: Integer;
//  iYear, iMonth, iDay, iHour, iMinute, iSec, iMSec: Word;
//  dtTrDate, dtTrDateTime: TDateTime;
//  sTrDate, sTrDateTime: String;
//  sSID, sSUBREK01, sBNCODE, sBNACCNO, sBNACCNAME, sCCY, sDC, sDESC: String;
//  fStartBal, fMutation, fEndBal: Extended;
//  sKey: String;
//  vFind: Variant;
//label
//  Finish;
begin
//  slData := TStringList.Create;
//  slRecord := TStringList.Create;
//  cdsBankMutation.DisableControls;
//  Try
//    slData.LoadFromFile(AFileName);
//    if slData.Count > 0 then
//    begin
//      dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
//      sKey := 'BNACCNO;MUTASI;CCY;DC;SALDOAWAL;SALDOAKHIR';
//      vFind := VarArrayCreate([0, 5], varVariant);
//
//      sBNCODE := 'BMRI';
//      if (sBNCODE <> cdsBankMutation.Params[1].AsString) then
//      begin
//        dmGlobal.ErrorMessage('Can''t upload data!');
//        Goto Finish;
//      end;
//
//      for i := 0 to slData.Count - 1 do
//      begin
//        dmGlobal.ParseDelimited(slRecord, slData[i], '||');
//
//        if slRecord.Count < 12 then
//          Continue;
//
////        sTrDateTime := Copy(slRecord[0], 1, 17);
//        sBNACCNO := slRecord[2];
//        sCCY := slRecord[3];
//        sTrDate := slRecord[4];
//        sDC := slRecord[8];
//        sDESC := slRecord[10];
//
//        if Length(sTrDate) <> 8 then Continue;
//        iYear := StrToIntDef(Copy(sTrDate, 1, 4), 0);
//        iMonth := StrToIntDef(Copy(sTrDate, 5, 2), 0);
//        iDay := StrToIntDef(Copy(sTrDate, 7, 2), 0);
//
//        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
//        dtTrDate := EncodeDate(iYear, iMonth, iDay);
//        if (dtTrDate <> cdsBankMutation.Params[0].AsDate) then Continue;
//
////        if Length(sTrDateTime) <> 17 then Continue;
////        iYear := StrToIntDef(Copy(sTrDateTime, 1, 4), 0);
////        iMonth := StrToIntDef(Copy(sTrDateTime, 5, 2), 0);
////        iDay := StrToIntDef(Copy(sTrDateTime, 7, 2), 0);
////        iHour := StrToIntDef(Copy(sTrDateTime, 9, 2), 0);
////        iMinute := StrToIntDef(Copy(sTrDateTime, 11, 2), 0);
////        iSec := StrToIntDef(Copy(sTrDateTime, 13, 2), 0);
////        iMSec := StrToIntDef(Copy(sTrDateTime, 15, 3), 0);
////
////        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
////        dtTrDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSec, iMSec);
//
//        fStartBal := StrToFloatDef(slRecord[5], 0);
//        fMutation := StrToFloatDef(slRecord[9], 0);
//        fEndBal := StrToFloatDef(slRecord[11], 0);
//
//        vFind[0] := sBNACCNO;
//        vFind[1] := fMutation;
//        vFind[2] := sCCY;
//        vFind[3] := sDC;
//        vFind[4] := fStartBal;
//        vFind[5] := fEndBal;
//
//        if not cdsBankMutation.Locate(sKey, vFind, []) then
//        begin
//          cdsBankMutation.Append;
//          cdsBankMutationTRDATE.AsDateTime := dtTrDate;
//          cdsBankMutationTRDATETIME.AsDateTime := dtTrDate;
//          cdsBankMutationSID.AsString := sSID;
//          cdsBankMutationSUBREK01.AsString := sSUBREK01;
//          cdsBankMutationBNCODE.AsString := sBNCODE;
//          cdsBankMutationBNACCNO.AsString := sBNACCNO;
//          cdsBankMutationBNACCNAME.AsString := sBNACCNAME;
//          cdsBankMutationCCY.AsString := sCCY;
//          cdsBankMutationDC.AsString := sDC;
//          cdsBankMutationSALDOAWAL.AsFloat := fStartBal;
//          cdsBankMutationMUTASI.AsFloat := fMutation;
//          cdsBankMutationSALDOAKHIR.AsFloat := fEndBal;
//          cdsBankMutationDESCRIPTION.AsString := sDESC;
//          cdsBankMutationMODDA.AsDateTime := dtProcess;
//          cdsBankMutationMODUI.AsString := dmGlobal.UserID;
//          cdsBankMutation.Post;
//        end;
//      end;
//
//      cdsBankMutation.ApplyUpdates(-1);
//    end;
//
//    Finish:
//
//  Finally
//    cdsBankMutation.EnableControls;
//    FreeAndNil(slRecord);
//    FreeAndNil(slData);
//  End;
end;

procedure TfrmBankMutation.ImportBankNiaga(AFileName: String);
//var
//  slData: TStringList;
//  sRecord: String;
//  dtProcess: TDateTime;
//  i: Integer;
//  iYear, iMonth, iDay, iHour, iMinute, iSec, iMSec: Word;
//  dtTrDate, dtTrDateTime: TDateTime;
//  sTrDate, sTrDateTime: String;
//  sSID, sSUBREK01, sBNCODE, sBNACCNO, sBNACCNAME, sCCY, sDC, sDESC: String;
//  fStartBal, fMutation, fEndBal: Extended;
//  sStartBal, sMutation, sEndBal: String;
//  sKey: String;
//  vFind: Variant;
//  iRecLength: Integer;

begin
//  slData := TStringList.Create;
//  cdsBankMutation.DisableControls;
//  Try
//    slData.LoadFromFile(AFileName);
//    if slData.Count > 0 then
//    begin
//      dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
//
//      //Can locate by TRDATETIME cause Locate Event TClientDataset only Locate until Second (Can't Support with MiliSecond Data)
//      sKey := 'SID;SUBREK01;MUTASI;CCY;DC;SALDOAWAL;SALDOAKHIR';
//      vFind := VarArrayCreate([0, 6], varVariant);
//
//      for i := 0 to slData.Count - 1 do
//      begin
//        sRecord := slData[i];
//        iRecLength := Length(sRecord);
//
//        sBNACCNO := Copy(sRecord, 1, 13);
//        sSID := Copy(sRecord, 14, 15);
//        sSUBREK01 := Copy(sRecord, 29, 14);
//        sTrDate := Copy(sRecord, 43, 8);
//        sBNACCNAME := Trim(Copy(sRecord, 51, 40));
//        sTrDateTime := Copy(sRecord, 99, 23);
//        sCCY := Copy(sRecord, 125, 3);
////        sBNCODE := Copy(sRecord, 128, 4);
//        sBNCODE := 'BNGA';
//        sStartBal := Copy(sRecord, 133, 15);
//        sDC := Copy(sRecord, 148, 1);
//        sMutation := Copy(sRecord, 149, 15);
//        sEndBal := Copy(sRecord, 169, 15);
//        sDesc := Trim(Copy(sRecord, 284, iRecLength - 283 - 3));
//
//        if (sBNCODE <> cdsBankMutation.Params[1].AsString) then Continue;
//
//        if Length(sTrDate) <> 8 then Continue;
//        iYear := StrToIntDef(Copy(sTrDate, 1, 4), 0);
//        iMonth := StrToIntDef(Copy(sTrDate, 5, 2), 0);
//        iDay := StrToIntDef(Copy(sTrDate, 7, 2), 0);
//
//        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
//        dtTrDate := EncodeDate(iYear, iMonth, iDay);
//        if (dtTrDate <> cdsBankMutation.Params[0].AsDate) then Continue;
//
//        if Length(sTrDateTime) <> 23 then Continue;
//        iYear := StrToIntDef(Copy(sTrDateTime, 1, 4), 0);
//        iMonth := StrToIntDef(Copy(sTrDateTime, 6, 2), 0);
//        iDay := StrToIntDef(Copy(sTrDateTime, 9, 2), 0);
//        iHour := StrToIntDef(Copy(sTrDateTime, 12, 2), 0);
//        iMinute := StrToIntDef(Copy(sTrDateTime, 15, 2), 0);
//        iSec := StrToIntDef(Copy(sTrDateTime, 18, 2), 0);
//        iMSec := StrToIntDef(Copy(sTrDateTime, 21, 3), 0);
//
//        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
//        dtTrDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSec, iMSec);
//
//        fStartBal := StrToFloatDef(sStartBal, 0);
//        fMutation := StrToFloatDef(sMutation, 0);
//        fEndBal := StrToFloatDef(sEndBal, 0);
//
//        vFind[0] := sSID;
//        vFind[1] := sSUBREK01;
//        vFind[2] := fMutation;
//        vFind[3] := sCCY;
//        vFind[4] := sDC;
//        vFind[5] := fStartBal;
//        vFind[6] := fEndBal;
//
//        if not cdsBankMutation.Locate(sKey, vFind, []) then
//        begin
//          cdsBankMutation.Append;
//          cdsBankMutationTRDATE.AsDateTime := dtTrDate;
//          cdsBankMutationTRDATETIME.AsDateTime := dtTrDateTime;
//          cdsBankMutationSID.AsString := sSID;
//          cdsBankMutationSUBREK01.AsString := sSUBREK01;
//          cdsBankMutationBNCODE.AsString := sBNCODE;
//          cdsBankMutationBNACCNO.AsString := sBNACCNO;
//          cdsBankMutationBNACCNAME.AsString := sBNACCNAME;
//          cdsBankMutationCCY.AsString := sCCY;
//          cdsBankMutationDC.AsString := sDC;
//          cdsBankMutationSALDOAWAL.AsFloat := fStartBal;
//          cdsBankMutationMUTASI.AsFloat := fMutation;
//          cdsBankMutationSALDOAKHIR.AsFloat := fEndBal;
//          cdsBankMutationDESCRIPTION.AsString := sDESC;
//          cdsBankMutationMODDA.AsDateTime := dtProcess;
//          cdsBankMutationMODUI.AsString := dmGlobal.UserID;
//          cdsBankMutation.Post;
//        end;
//      end;
//
//      cdsBankMutation.ApplyUpdates(-1);
//    end;
//  Finally
//    cdsBankMutation.EnableControls;
//    FreeAndNil(slData);
//  End;
end;

procedure TfrmBankMutation.ImportBankPermata(AFileName: String);
//var
//  slData, slRecord: TStringList;
//  dtProcess: TDateTime;
//  i: Integer;
//  iYear, iMonth, iDay, iHour, iMinute, iSec: Word;
//  dtTrDate, dtTrDateTime: TDateTime;
//  sTrDate, sTrDateTime: String;
//  sSID, sSUBREK01, sBNCODE, sBNACCNO, sBNACCNAME, sCCY, sDC, sDESC: String;
//  fStartBal, fMutation, fEndBal: Extended;
//  sKey: String;
//  vFind: Variant;
begin
//  slData := TStringList.Create;
//  slRecord := TStringList.Create;
//  cdsBankMutation.DisableControls;
//  Try
//    slData.LoadFromFile(AFileName);
//    if slData.Count > 0 then
//    begin
//      dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
//      sKey := 'SID;SUBREK01;TRDATETIME;CCY;DC;SALDOAWAL';
//      vFind := VarArrayCreate([0, 5], varVariant);
//
//      for i := 0 to slData.Count - 1 do
//      begin
//        dmGlobal.ParseDelimited(slRecord, slData[i], '|');
//
//        sTrDate := Trim(slRecord[6]);
//        if Length(sTrDate) <> 8 then Continue;
//        iYear := StrToIntDef(Copy(sTrDate, 1, 4), 0);
//        iMonth := StrToIntDef(Copy(sTrDate, 5, 2), 0);
//        iDay := StrToIntDef(Copy(sTrDate, 7, 2), 0);
//
//        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
//        dtTrDate := EncodeDate(iYear, iMonth, iDay);
//        if (dtTrDate <> cdsBankMutation.Params[0].AsDate) then Continue;
//
//        sTrDateTime := Trim(slRecord[7]);
//        if Length(sTrDateTime) <> 14 then Continue;
//        iYear := StrToIntDef(Copy(sTrDateTime, 1, 4), 0);
//        iMonth := StrToIntDef(Copy(sTrDateTime, 5, 2), 0);
//        iDay := StrToIntDef(Copy(sTrDateTime, 7, 2), 0);
//        iHour := StrToIntDef(Copy(sTrDateTime, 9, 2), 0);
//        iMinute := StrToIntDef(Copy(sTrDateTime, 11, 2), 0);
//        iSec := StrToIntDef(Copy(sTrDateTime, 13, 2), 0);
//
//        if (iYear = 0) or (iMonth = 0) or (iDay = 0) then Continue;
//        dtTrDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSec, 0);
//
//        sSID := Trim(slRecord[1]);
//        sSUBREK01 := Trim(slRecord[2]);
////        sBNCODE := Trim(slRecord[9]);
//        sBNCODE := 'BNLI';
//        sBNACCNO := Trim(slRecord[0]);
//        sBNACCNAME := Trim(slRecord[5]);
//        sCCY := Trim(slRecord[8]);
//        sDC := Trim(slRecord[11]);
//        sDESC := Trim(slRecord[18]);
//
//        if (sBNCODE <> cdsBankMutation.Params[1].AsString) then Continue;
//
//        fStartBal := StrToFloatDef(slRecord[10], 0);
//        fMutation := StrToFloatDef(slRecord[12], 0);
//        fEndBal := StrToFloatDef(slRecord[14], 0);
//
//        vFind[0] := sSID;
//        vFind[1] := sSUBREK01;
//        vFind[2] := dtTrDateTime;
//        vFind[3] := sCCY;
//        vFind[4] := sDC;
//        vFind[5] := fStartBal;
//
//        if not cdsBankMutation.Locate(sKey, vFind, []) then
//        begin
//          cdsBankMutation.Append;
//          cdsBankMutationTRDATE.AsDateTime := dtTrDate;
//          cdsBankMutationTRDATETIME.AsDateTime := dtTrDateTime;
//          cdsBankMutationSID.AsString := sSID;
//          cdsBankMutationSUBREK01.AsString := sSUBREK01;
//          cdsBankMutationBNCODE.AsString := sBNCODE;
//          cdsBankMutationBNACCNO.AsString := sBNACCNO;
//          cdsBankMutationBNACCNAME.AsString := sBNACCNAME;
//          cdsBankMutationCCY.AsString := sCCY;
//          cdsBankMutationDC.AsString := sDC;
//          cdsBankMutationSALDOAWAL.AsFloat := fStartBal;
//          cdsBankMutationMUTASI.AsFloat := fMutation;
//          cdsBankMutationSALDOAKHIR.AsFloat := fEndBal;
//          cdsBankMutationDESCRIPTION.AsString := sDESC;
//          cdsBankMutationMODDA.AsDateTime := dtProcess;
//          cdsBankMutationMODUI.AsString := dmGlobal.UserID;
//          cdsBankMutation.Post;
//        end;
//      end;
//
//      cdsBankMutation.ApplyUpdates(-1);
//    end;
//  Finally
//    cdsBankMutation.EnableControls;
//    FreeAndNil(slRecord);
//    FreeAndNil(slData);
//  End;
end;

procedure TfrmBankMutation.txtBankReconPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if (cbBank.EditValue = 'BNLI') or (cbBank.EditValue = 'BNGA') then
  begin
    ImportFilesDialog.Filter := 'Text Files|*.txt';
  end
  else
  begin
    ImportFilesDialog.Filter := 'CSV Files|*.csv';
  end;

  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if (not VarIsEmpty(sFileName)) or (not VarIsNull(sFileName)) then
    txtBankMutation.Text := sFileName;
end;

Initialization
  RegisterClass(TfrmBankMutation);

end.
