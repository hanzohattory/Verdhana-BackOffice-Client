unit FormBankMovement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutControl, NActionPermission, Vcl.Menus, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ActnList, NDatasetAction, Data.DB,
  Datasnap.DBClient, cxDropDownEdit, cxImageComboBox, Vcl.StdCtrls,
  cxButtons, cxCalendar, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, DateUtils, NClientDataset, cxGridDBTableView;

type
  TfrmBankMovement = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    txtBankMutation: TcxButtonEdit;
    txtTransDate: TcxDateEdit;
    cxButton2: TcxButton;
    cbBank: TcxImageComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    ActionList1: TActionList;
    actUploadData: TNAction;
    ImportFilesDialog: TOpenDialog;
    dsBankMutation: TDataSource;
    cdsBankMutation: TClientDataSet;
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
    cxGrid1: TcxGrid;
    gvwBankMutation: TcxGridDBBandedTableView;
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
    cxGrid1Level1: TcxGridLevel;
    procedure actUploadDataExecute(Sender: TObject);
    procedure txtBankMutationPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BankPermata(AFileName: string);
    procedure BankBNI(AFileName: string);
    procedure BankBMRI(AFileName: string);
    procedure BankNiaga(AFileName: string);
  end;

var
  frmBankMovement: TfrmBankMovement;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBankMovement.actUploadDataExecute(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  sFileName     := txtBankMutation.Text;

  if FileExists(sFileName) then
  begin
    if cbBank.EditValue = 'BNLI' then
      BankPermata(sFileName)
    else if cbBank.EditValue = 'BNGA' then
      BankNiaga(sFileName)
    else if cbBank.EditValue = 'BMRI' then
      BankBMRI(sFileName)
    else if cbBank.EditValue = 'BBNI' then
      BankBNI(sFileName);
  end;
//  gvwBankMutation.ApplyBestFit();
  Screen.Cursor := crDefault;
end;

procedure TfrmBankMovement.BankBMRI(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
begin
  oBankList := TStringList.Create;

  cdsBankMutation.Close;
  cdsBankMutation.CreateDataSet;
  cdsBankMutation.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -2 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      oBankData := TStringList.Create;
      dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '||' );

      sDateTime := oBankData.Strings[4];
      iYear     := StrToIntDef(Copy(sDateTime, 1, 4), 0);
      iMonth    := StrToIntDef(Copy(sDateTime, 5, 2), 0);
      iDay      := StrToIntDef(Copy(sDateTime, 7, 2), 0);
      dDate     := EncodeDate(iYear, iMonth, iDay);

      if txtTransDate.Date = dDate then
      begin
        cdsBankMutation.Append;
        cdsBankMutationTRDATE.AsDateTime     := dDate;
        cdsBankMutationTRDATETIME.AsDateTime := dDate;
        cdsBankMutationSID.AsString          := ''; //oBankData.Strings[];
        cdsBankMutationSUBREK01.AsString     := ''; //oBankData.Strings[];
        cdsBankMutationBNCODE.AsString       := 'BMRI';
        cdsBankMutationBNACCNO.AsString      := oBankData.Strings[2];
        cdsBankMutationBNACCNAME.AsString    := ''; //oBankData.Strings[2];
        cdsBankMutationCCY.AsString          := oBankData.Strings[3];
        cdsBankMutationDC.AsString           := oBankData.Strings[8];
        cdsBankMutationSALDOAWAL.AsFloat     := StrToFloatDef(oBankData.Strings[5], 0);
        cdsBankMutationMUTASI.AsFloat        := StrToFloatDef(oBankData.Strings[9], 0);
        cdsBankMutationSALDOAKHIR.AsFloat    := StrToFloatDef(oBankData.Strings[11], 0);
        cdsBankMutationDESCRIPTION.AsString  := oBankData.Strings[10];
        cdsBankMutation.Post;
      end;

      FreeAndNil(oBankData);
    end;
  end;
  cdsBankMutation.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankMovement.BankBNI(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
begin
  oBankList := TStringList.Create;

  cdsBankMutation.Close;
  cdsBankMutation.CreateDataSet;
  cdsBankMutation.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 1 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
    begin
      oBankData := TStringList.Create;
      dmGlobal.ParseDelimited(oBankData, oBankList.Strings[i], '|' );

      sDateTime := oBankData.Strings[4];
      iYear     := StrToIntDef(Copy(sDateTime, 7, 4), 0);
      iMonth    := StrToIntDef(Copy(sDateTime, 4, 2), 0);
      iDay      := StrToIntDef(Copy(sDateTime, 1, 2), 0);
      dDate     := EncodeDate(iYear, iMonth, iDay);

      if txtTransDate.Date = dDate then
      begin
        cdsBankMutation.Append;
        cdsBankMutationTRDATE.AsDateTime     := dDate;
        cdsBankMutationTRDATETIME.AsDateTime := dDate;
        cdsBankMutationSID.AsString          := oBankData.Strings[2];
        cdsBankMutationSUBREK01.AsString     := oBankData.Strings[3];
        cdsBankMutationBNCODE.AsString       := 'BBNI';
        cdsBankMutationBNACCNO.AsString      := oBankData.Strings[0];
        cdsBankMutationBNACCNAME.AsString    := '';
        cdsBankMutationCCY.AsString          := oBankData.Strings[15];
        cdsBankMutationDC.AsString           := oBankData.Strings[7];
        cdsBankMutationSALDOAWAL.AsFloat     := StrToFloatDef(oBankData.Strings[6], 0);
        cdsBankMutationMUTASI.AsFloat        := StrToFloatDef(oBankData.Strings[7], 0);
        cdsBankMutationSALDOAKHIR.AsFloat    := StrToFloatDef(oBankData.Strings[8], 0);
        cdsBankMutationDESCRIPTION.AsString  := oBankData.Strings[16];
        cdsBankMutation.Post;
      end;

      FreeAndNil(oBankData);
    end;
  end;
  cdsBankMutation.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankMovement.BankNiaga(AFileName: string);
var
  oBankList: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond, iMili: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
  sData: string;
begin
  oBankList := TStringList.Create;

  cdsBankMutation.Close;
  cdsBankMutation.CreateDataSet;
  cdsBankMutation.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
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

      if txtTransDate.Date = dDate then
      begin
        cdsBankMutation.Append;
        cdsBankMutationTRDATE.AsDateTime     := dDate;
        cdsBankMutationTRDATETIME.AsDateTime := dDateTime;
        cdsBankMutationSID.AsString          := Copy(sData, 14, 15);
        cdsBankMutationSUBREK01.AsString     := Copy(sData, 29, 14);
        cdsBankMutationBNCODE.AsString       := 'BNGA';
        cdsBankMutationBNACCNO.AsString      := Copy(sData, 1, 13);
        cdsBankMutationBNACCNAME.AsString    := Copy(sData, 51, 40);
        cdsBankMutationCCY.AsString          := Copy(sData, 125, 3);
        cdsBankMutationDC.AsString           := Copy(sData, 148, 1);
        cdsBankMutationSALDOAWAL.AsFloat     := StrToFloatDef(Copy(sData, 133, 15), 0);
        cdsBankMutationMUTASI.AsFloat        := StrToFloatDef(Copy(sData, 149, 15), 0);
        cdsBankMutationSALDOAKHIR.AsFloat    := StrToFloatDef(Copy(sData, 169, 15), 0);
        cdsBankMutationDESCRIPTION.AsString  := Copy(sData, 284, 140);
        cdsBankMutation.Post;
      end;
    end;
  end;
  cdsBankMutation.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankMovement.BankPermata(AFileName: string);
var
  oBankList, oBankData: TStringList;
  i: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dDateTime, dDate: TDateTime;
  sDateTime: string;
begin
  oBankList := TStringList.Create;

  cdsBankMutation.Close;
  cdsBankMutation.CreateDataSet;
  cdsBankMutation.DisableControls;

  oBankList.LoadFromFile(AFilename);
  for i := 0 to oBankList.Count -1 do
  begin
    if oBankList.Strings[i] <> '' then
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

      if txtTransDate.Date = dDate then
      begin
        cdsBankMutation.Append;
        cdsBankMutationTRDATE.AsDateTime     := dDate;
        cdsBankMutationTRDATETIME.AsDateTime := dDateTime;
        cdsBankMutationSID.AsString          := oBankData.Strings[1];
        cdsBankMutationSUBREK01.AsString     := oBankData.Strings[2];
        cdsBankMutationBNCODE.AsString       := 'BNLI';
        cdsBankMutationBNACCNO.AsString      := oBankData.Strings[0];
        cdsBankMutationBNACCNAME.AsString    := oBankData.Strings[5];
        cdsBankMutationCCY.AsString          := oBankData.Strings[8];
        cdsBankMutationDC.AsString           := oBankData.Strings[11];
        cdsBankMutationSALDOAWAL.AsFloat     := StrToFloatDef(oBankData.Strings[10], 0);
        cdsBankMutationMUTASI.AsFloat        := StrToFloatDef(oBankData.Strings[12], 0);
        cdsBankMutationSALDOAKHIR.AsFloat    := StrToFloatDef(oBankData.Strings[14], 0);
        cdsBankMutationDESCRIPTION.AsString  := oBankData.Strings[18];
        cdsBankMutation.Post;
      end;

      FreeAndNil(oBankData);
    end;
  end;
  cdsBankMutation.EnableControls;
  FreeAndNil(oBankList);
end;

procedure TfrmBankMovement.FormCreate(Sender: TObject);
begin
  inherited;
  txtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbBank.EditValue  := cbBank.Properties.Items.Items[0].Value;
end;

procedure TfrmBankMovement.txtBankMutationPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ImportFilesDialog.Execute(Handle);
  txtBankMutation.Text := ImportFilesDialog.FileName;
end;

Initialization
  RegisterClass(TfrmBankMovement);

end.
