unit FormCompanyBankRecons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  cxCalendar, cxCurrencyEdit, cxContainer, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, dxLayoutControlAdapters, Vcl.ActnList, NDatasetAction,
  Vcl.StdCtrls, cxButtons, XLSSheetData5, XLSReadWriteII5, StrUtils, System.DateUtils,
  System.Actions, ComObj, dxDateRanges;

type
  TfrmCompanyBankRecons = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBankRecon: TcxGridDBBandedTableView;
    cdsBankRecon: TNClientDataset;
    cdsBankReconTRDATE: TDateField;
    cdsBankReconACCID: TLargeintField;
    cdsBankReconALTYPE: TStringField;
    cdsBankReconLDGACC: TStringField;
    cdsBankReconBNACC: TStringField;
    cdsBankReconBNACCNO: TStringField;
    cdsBankReconCCY: TStringField;
    cdsBankReconRDNAMT: TFloatField;
    cdsBankReconRDNBNK_AMT: TFloatField;
    cdsBankReconDIFFAMT: TFloatField;
    cdsBankReconREF: TStringField;
    cdsBankReconATRNS: TStringField;
    cdsBankReconCDID: TLargeintField;
    cdsBankReconV_TRNAMT: TFloatField;
    cdsBankReconACCNO: TStringField;
    dsBankRecon: TDataSource;
    txtBankRecon: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    Post1: TMenuItem;
    txtTransDate: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    PostAll1: TMenuItem;
    cdsBankReconcile: TClientDataSet;
    dsBankReconcile: TDataSource;
    aclBankRecon: TActionList;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    actViewData: TNAction;
    actUploadData: TNAction;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsCompanyBankPosition: TNClientDataset;
    cbBank: TcxImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsCompanyBankPositionUPLOADID: TIntegerField;
    cdsCompanyBankPositionTRDATE: TDateField;
    cdsCompanyBankPositionBNCODE: TStringField;
    cdsCompanyBankPositionBNACCNO: TStringField;
    cdsCompanyBankPositionCCY: TStringField;
    cdsCompanyBankPositionSALDO: TFloatField;
    cdsCompanyBankPositionMODDA: TDateTimeField;
    cdsCompanyBankPositionMODUI: TStringField;
    cdsCompanyBankPositionAPPDA: TDateTimeField;
    cdsCompanyBankPositionAPPUI: TStringField;
    cdsCompanyBankPositionUNDER4Y: TIntegerField;
    cdsCompanyBankPositionUNDER4YDA: TDateTimeField;
    cdsCompanyBankPositionNOTES4Y: TStringField;
    cdsCompanyBankPositionISDEL: TIntegerField;
    cdsCompanyBankPositionID: TLargeintField;
    popGrid: TPopupMenu;
    actCreateMutation: TNAction;
    actCreateMutationAll: TNAction;
    CreateCashDeposit1: TMenuItem;
    CreateCashDepositAll1: TMenuItem;
    cdsCashMutation: TNClientDataset;
    cdsCashMutationACCNAME: TStringField;
    cdsCashMutationBNCODE: TStringField;
    cdsCashMutationBNACCNO: TStringField;
    cdsCashMutationBNACCNAME: TStringField;
    cdsCashMutationBNBRANCH: TStringField;
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
    ImportFilesDialog: TOpenDialog;
    cdsBankReconcileTRDATE: TDateField;
    cdsBankReconcileACCID: TIntegerField;
    cdsBankReconcileACCCODE: TStringField;
    cdsBankReconcileACCNAME: TStringField;
    cdsBankReconcileACCINIT: TStringField;
    cdsBankReconcileACCBANKID: TIntegerField;
    cdsBankReconcileBNCODE: TStringField;
    cdsBankReconcileBNACCNO: TStringField;
    cdsBankReconcileCCY: TStringField;
    cdsBankReconcileSALDO: TFloatField;
    cdsBankReconcileRDNPOS: TFloatField;
    cdsBankReconcileDIFF_AMOUNT: TFloatField;
    gvwBankReconTRDATE: TcxGridDBBandedColumn;
    gvwBankReconACCID: TcxGridDBBandedColumn;
    gvwBankReconACCCODE: TcxGridDBBandedColumn;
    gvwBankReconACCNAME: TcxGridDBBandedColumn;
    gvwBankReconACCINIT: TcxGridDBBandedColumn;
    gvwBankReconACCBANKID: TcxGridDBBandedColumn;
    gvwBankReconBNCODE: TcxGridDBBandedColumn;
    gvwBankReconBNACCNO: TcxGridDBBandedColumn;
    gvwBankReconCCY: TcxGridDBBandedColumn;
    gvwBankReconSALDO: TcxGridDBBandedColumn;
    gvwBankReconRDNPOS: TcxGridDBBandedColumn;
    gvwBankReconDIFF_AMOUNT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtTransDatePropertiesEditValueChanged(Sender: TObject);
    procedure PostAll1Click(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actUploadDataExecute(Sender: TObject);
    procedure actCreateMutationExecute(Sender: TObject);
    procedure actCreateMutationAllExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ImportBankData(ABank, AFileName: String);
    procedure ImportBankCIMB(ASheet: OleVariant);
    procedure ImportBankPermata(ASheet: OleVariant);
    procedure ImportBankBNI(ASheet: OleVariant);
    procedure ImportBankBCA(AFileName: String);
    procedure ImportBankMandiri(AFileName: String);

    procedure ImportFileBank(ABankName: string; AFileName: string);
    procedure BankCIMB(AFileName: string);
    procedure BankBNI(AFileName: string);
    procedure BankPermata(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmCompanyBankRecons: TfrmCompanyBankRecons;

implementation

{$R *.dfm}

uses DataGlobal, FormBankReconPostAll, FormCashMutation;

procedure TfrmCompanyBankRecons.actCreateMutationAllExecute(Sender: TObject);
var
  oForm: TForm;
  dtProcess: TDateTime;
begin
  inherited;
  if (cdsBankReconcile.Active) and (not cdsBankReconcile.IsEmpty) then
  begin
    cdsCashMutation.Close;
    cdsCashMutation.Params[0].AsInteger := 0;
    cdsCashMutation.Open;

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    cdsBankReconcile.First;

    while not cdsBankReconcile.Eof do
    begin
      if (not cdsBankReconcileACCID.IsNull) and (not cdsBankReconcileACCBANKID.IsNull)
        and (cdsBankReconcileDIFF_AMOUNT.AsFloat > 0) then
      begin
        cdsCashMutation.Append;
        cdsCashMutationCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION');
        cdsCashMutationCMCODE.AsString := '<AUTO>';
        cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date; //dtProcess;
        cdsCashMutationCMDESC.AsString := 'Cash Mutation From Bank Reconcile';
        cdsCashMutationACCID.AsInteger := cdsBankReconcileACCID.AsInteger;
        cdsCashMutationACCNO.AsString := cdsBankReconcileACCCODE.AsString;
        cdsCashMutationACCBANKID.AsInteger := cdsBankReconcileACCBANKID.AsInteger;
        cdsCashMutationCCY.AsString := cdsBankReconcileCCY.AsString;
        cdsCashMutationCMAMT.AsFloat := cdsBankReconcileDIFF_AMOUNT.AsFloat;
        cdsCashMutationCMTYPE.AsString := 'C';
        if cdsCashMutationCMAMT.AsFloat >= 0 then
          cdsCashMutationDC.AsString := 'C'
        else
        begin
          cdsCashMutationDC.AsString := 'D';
          cdsCashMutationCMAMT.AsFloat := cdsCashMutationCMAMT.AsFloat * -1;
        end;
        cdsCashMutationMODDA.AsDateTime := dtProcess;
        cdsCashMutationMODUI.AsString := dmGlobal.UserID;
        cdsCashMutationISDEL.AsInteger := 0;
        cdsCashMutation.Post;
      end;

      cdsBankReconcile.Next;
    end;

    if not cdsCashMutation.IsEmpty then
    begin
      oForm := TfrmCashMutation.Create(nil);
      Try
        if oForm.ShowModal = mrOk then
        begin
          cdsCashMutation.First;
          while not cdsCashMutation.Eof do
          begin
            cdsCashMutation.Edit;
            cdsCashMutationCMCODE.AsString := 'CM-' +
              FormatDateTime('YYYYMM', cdsCashMutationCMDATE.AsDateTime) +
              Format('%.6d', [cdsCashmutationCMID.AsLargeInt]);
            cdsCashMutation.Post;
            cdsCashMutation.Next;
          end;

          cdsCashMutation.ApplyUpdates(-1);
        end
        else
        begin
          cdsCashMutation.First;
          while not cdsCashMutation.Eof do
          begin
            dmGlobal.RemoteServer.CancelSeq('TBL_B_CASH_MUTATION', cdsCashMutationCMID.AsLargeInt);
            cdsCashMutation.Next;
          end;

          cdsCashMutation.CancelUpdates;
        end;
      Finally
        FreeAndNil(oForm);
      End;
    end;

  end;
end;

procedure TfrmCompanyBankRecons.actCreateMutationExecute(Sender: TObject);
var
  oForm: TForm;
  dtProcess: TDateTime;
begin
  inherited;
  if (cdsBankReconcile.Active) and (not cdsBankReconcile.IsEmpty) then
  begin
    if (not cdsBankReconcileACCID.IsNull) and (not cdsBankReconcileACCBANKID.IsNull)
      and (cdsBankReconcileDIFF_AMOUNT.AsFloat > 0) then
    begin
      cdsCashMutation.Close;
      cdsCashMutation.Params[0].AsInteger := 0;
      cdsCashMutation.Open;

      cdsCashMutation.Append;
      cdsCashMutationCMCODE.AsString := '<AUTO>';
      cdsCashMutationCMDATE.AsDateTime := txtTransDate.Date; //FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
      cdsCashMutationCMDESC.AsString := 'Cash Mutation From Bank Reconcile';
      cdsCashMutationACCID.AsInteger := cdsBankReconcileACCID.AsInteger;
      cdsCashMutationACCNO.AsString := cdsBankReconcileACCCODE.AsString;
      cdsCashMutationACCBANKID.AsInteger := cdsBankReconcileACCBANKID.AsInteger;
      cdsCashMutationCCY.AsString := cdsBankReconcileCCY.AsString;
      cdsCashMutationCMAMT.AsFloat := cdsBankReconcileDIFF_AMOUNT.AsFloat;
      cdsCashMutationCMTYPE.AsString := 'C';
      if cdsCashMutationCMAMT.AsFloat >= 0 then
        cdsCashMutationDC.AsString := 'C'
      else
      begin
        cdsCashMutationDC.AsString := 'D';
        cdsCashMutationCMAMT.AsFloat := cdsCashMutationCMAMT.AsFloat * -1;
      end;
      oForm := TfrmCashMutation.Create(nil);
      Try
        TfrmCashMutation(oForm).lcNav.Visible := False;
        if oForm.ShowModal = mrOk then
        begin
          dtProcess := txtTransDate.Date;// FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
          cdsCashMutationMODDA.AsDateTime := dtProcess;
          cdsCashMutationMODUI.AsString := dmGlobal.UserID;
          cdsCashMutationISDEL.AsInteger := 0;
          cdsCashMutationCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION');
          cdsCashMutationCMCODE.AsString := 'CM-' +
            FormatDateTime('YYYYMM', cdsCashMutationCMDATE.AsDateTime) +
            Format('%.6d', [cdsCashmutationCMID.AsLargeInt]);
          cdsCashMutation.Post;
          cdsCashMutation.ApplyUpdates(-1);
        end
        else
          cdsCashMutation.Cancel;
      Finally
        FreeAndNil(oForm);
      End;
    end;

  end;
end;

procedure TfrmCompanyBankRecons.actUploadDataExecute(Sender: TObject);
begin
  inherited;
  if FileExists(txtBankRecon.Text) then
  begin
//    ImportBankData(cbBank.EditValue, txtBankRecon.Text);
    ImportFileBank(cbBank.EditValue, txtBankRecon.Text);
    actViewData.Execute;
  end;
end;

procedure TfrmCompanyBankRecons.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCompanyBankPosition.Close;
  cdsCompanyBankPosition.Params[0].AsDate := DateOf(txtTransDate.Date);
  cdsCompanyBankPosition.Open;

  cdsBankReconcile.Close;
  cdsBankReconcile.Params[0].AsDate := DateOf(txtTransDate.Date);
  cdsBankReconcile.Open;

  gvwBankRecon.ApplyBestFit();
end;

procedure TfrmCompanyBankRecons.BankBNI(AFileName: string);
var
  sFileName, sFileExt: string;
  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList, oData: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg: string;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankBNI(oSheet);
    finally
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData               := oFileList.Strings[i];
        oData               := TStringList.Create;
        oData.Delimiter     := '|';
        oData.DelimitedText := sData;

        sBankAccount   := oData.Strings[0];
        sBankAccountNo := oData.Strings[3];
        sBalance       := oData.Strings[4];
        sTanggal       := oData.Strings[6];
        sCCY           := oData.Strings[8];
        sDate          := Copy(sTanggal, 5, 2)+'/'+Copy(sTanggal, 7, 2)+'/'+Copy(sTanggal, 0, 4);

        FreeAndNil(oData);
        fBalance := StrToFloatDef(sBalance, 0);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := sBankAccount;
          vFind[1] := sBankAccountNo;

          if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
              cdsCompanyBankPosition.Edit
            else
              Continue;
          end
          else
            cdsCompanyBankPosition.Append;

          cdsCompanyBankPositionTRDATE.AsDateTime := StrToDate(sDate);
          cdsCompanyBankPositionBNCODE.AsString   := sBankAccount;
          cdsCompanyBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsCompanyBankPositionCCY.AsString      := sCCY;
          cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
          cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
          cdsCompanyBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsCompanyBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsCompanyBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmCompanyBankRecons.BankCIMB(AFileName: string);
var
  sFileName, sFileExt: string;
  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg: string;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankCIMB(oSheet);
    finally
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData := oFileList.Strings[i];

        sBankAccount   := Copy(sData, 0, 13);
        sBankAccountNo := Copy(sData, 29, 14);
        sBalance       := Copy(sData, 83, 13);
        sBalancePoin   := Copy(sData, 96, 2);
        sTanggal       := Copy(sData, 104, 10);
        sCCY           := Copy(sData, 130, 4);
        sDate          := Copy(sTanggal, 6, 2)+'/'+Copy(sTanggal, 9, 2)+'/'+Copy(sTanggal, 0, 4);

        fBalance := StrToFloatDef(sBalance, 0) + (StrToFloatDef(sBalancePoin, 0) / 100);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := sBankAccount;
          vFind[1] := sBankAccountNo;

          if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
              cdsCompanyBankPosition.Edit
            else
              Continue;
          end
          else
            cdsCompanyBankPosition.Append;

          cdsCompanyBankPositionTRDATE.AsDateTime := StrToDate(sDate);
          cdsCompanyBankPositionBNCODE.AsString   := sBankAccount;
          cdsCompanyBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsCompanyBankPositionCCY.AsString      := sCCY;
          cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
          cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
          cdsCompanyBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsCompanyBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsCompanyBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmCompanyBankRecons.BankPermata(AFileName: string);
var
  sFileName, sFileExt: string;
  oExcel, oSheet: OleVariant;

  sBankAccount, sBankAccountNo, sTanggal,
  sBalance, sBalancePoin, sCCY, sDate: string;

  i: integer;
  oFileList, oData: TStringList;
  sData, sKey: string;
  vFind: Variant;
  fBalance: Double;
  dtProcess: TDateTime;
  sErrorMsg: string;
begin
  sFileName := AFileName;
  sFileExt  := ExtractFileExt(sFileName);
  sErrorMsg := '';

  if LowerCase(sFileExt) = '.xls' then
  begin
   try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      ImportBankPermata(oSheet);
    finally
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end
  else
  begin
    oFileList := TStringList.Create;
    oFileList.LoadFromFile(sFileName);

    sKey  := 'BNCODE;BNACCNO';
    vFind := VarArrayCreate([0, 1], varVariant);

    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    try
      for i := 0 to oFileList.Count -1 do
      begin
        sData               := oFileList.Strings[i];
        oData               := TStringList.Create;
        oData.Delimiter     := '|';
        oData.DelimitedText := sData;

        sBankAccount   := oData.Strings[0];
        sBankAccountNo := oData.Strings[2];
        sBalance       := oData.Strings[5];
        sTanggal       := oData.Strings[6];
        sCCY           := oData.Strings[8];
        sDate          := Copy(sTanggal, 5, 2)+'/'+Copy(sTanggal, 7, 2)+'/'+Copy(sTanggal, 0, 4);

        FreeAndNil(oData);
        fBalance := StrToFloatDef(sBalance, 0);

        if (sBankAccountNo <> '') and (sCCY <> '') and (fBalance <> 0) then
        begin
          vFind[0] := sBankAccount;
          vFind[1] := sBankAccountNo;

          if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
          begin
            if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
              cdsCompanyBankPosition.Edit
            else
              Continue;
          end
          else
            cdsCompanyBankPosition.Append;

          cdsCompanyBankPositionTRDATE.AsDateTime := StrToDate(sDate);
          cdsCompanyBankPositionBNCODE.AsString   := sBankAccount;
          cdsCompanyBankPositionBNACCNO.AsString  := sBankAccountNo;
          cdsCompanyBankPositionCCY.AsString      := sCCY;
          cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
          cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
          cdsCompanyBankPositionMODUI.AsString    := dmGlobal.UserID;
          cdsCompanyBankPosition.Post;
        end;
      end;
    except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    end;

    if sErrorMsg = '' then
    begin
      cdsCompanyBankPosition.ApplyUpdates(-1);
      ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
    end
    else
      MessageDlg(sErrorMsg, mtError, [mbOK], 0);
  end;
end;

procedure TfrmCompanyBankRecons.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  ImportFilesDialog.Filter := 'All Supported Files|*.csv;*.xls;*.txt|CSV Files|*.csv|Excel Files|*.xls|Text Files|*.txt';


  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    txtBankRecon.Text := sFileName;
end;

procedure TfrmCompanyBankRecons.FormCreate(Sender: TObject);
begin
  inherited;
  txtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbBank.EditValue := cbBank.Properties.Items.Items[0].Value;
  actViewData.Execute;
  
//  cdsBankRecon.Close;
//  cdsBankRecon.Params[0].AsDate := txtTransDate.Date;
//  cdsBankRecon.Open;
end;

procedure TfrmCompanyBankRecons.ImportBankBCA(AFileName: String);
var
  slFile, slFileRow: TStringList;
  i: Integer;
  sBankCode, sUser, sBankAccNo, sCcy: String;
  fBalance: Extended;
  dtProcess, dtBalance: TDateTime;
  iYear, iMonth, iDay: Word;
  sKey: String;
  vFind: Variant;
label
  Finish;
begin
  sBankCode := 'BBCA';

  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  slFile := TStringList.Create;
  slFileRow := TStringList.Create;
  Try
    slFile.LoadFromFile(AFileName);
    for i := 0 to slFile.Count - 1 do
    begin
      dmGlobal.ParseDelimited(slFileRow, slFile[i], ';');

      sBankAccNo := Trim(slFileRow[2]);
      sCcy := Trim(slFileRow[6]);
      fBalance := StrToFloatDef(slFileRow[7], -1);
      if Length(slFileRow[8]) = 8 then
      begin
        iYear := StrToIntDef(Copy(slFileRow[8], 1, 4), 1);
        iMonth := StrToIntDef(Copy(slFileRow[8], 5, 2), 1);
        iDay := StrToIntDef(Copy(slFileRow[8], 7, 2), 1);

        dtBalance := EncodeDate(iYear, iMonth, iDay);
      end
      else
        Continue;

      if (DateOf(dtBalance) <> DateOf(cdsCompanyBankPosition.Params[0].AsDate)) then
      begin
        MessageDlg('Your Data Upload Date Different with Trans Date. Cancel Upload!', mtInformation, [mbOK], 0);
        cdsCompanyBankPosition.CancelUpdates;
        cdsCompanyBankPosition.Refresh;
        Goto Finish;
      end;

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := sBankCode;
        vFind[1] := sBankAccNo;

        if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
            cdsCompanyBankPosition.Edit
          else
            Continue;
        end
        else
          cdsCompanyBankPosition.Append;

        cdsCompanyBankPositionTRDATE.AsDateTime := dtBalance;
        cdsCompanyBankPositionBNCODE.AsString := sBankCode;
        cdsCompanyBankPositionBNACCNO.AsString := sBankAccNo;
        cdsCompanyBankPositionCCY.AsString := sCcy;
        cdsCompanyBankPositionSALDO.AsFloat := fBalance;
        cdsCompanyBankPositionMODDA.AsDateTime := dtProcess;
        cdsCompanyBankPositionMODUI.AsString := sUser;
        cdsCompanyBankPosition.Post;
      end;
    end;

    cdsCompanyBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(
       cdsCompanyBankPosition.RecordCount));

    Finish:

  Finally
    FreeAndNil(slFileRow);
    FreeAndNil(slFile);
  End;
end;

procedure TfrmCompanyBankRecons.ImportBankBNI(ASheet: OleVariant);
var
  i, sPos: Integer;
  sTemp, sBankCode, sBankAccNo, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sBankCode := 'BBNI';
  sErrorMsg := '';

  sUser     := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey  := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  for i := 0 to ASheet.LastRow - 1 do
  begin
    Try
      sBankAccNo := '';
      sTemp := ASheet.Cells[i, 2].Value;
      if sTemp <> '' then
      begin
        sBankAccNo := LeftStr(sTemp, 9);
      end;
      sCcy     := ASheet.Cells[i, 4].Value;
      sBalance := ASheet.Cells[i, 7].Value;
      sBalance := ReplaceStr(sBalance, ',', '');
      fBalance := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := sBankCode;
        vFind[1] := sBankAccNo;

        if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
            cdsCompanyBankPosition.Edit
          else
            Continue;
        end
        else
          cdsCompanyBankPosition.Append;

        cdsCompanyBankPositionTRDATE.AsDateTime := cdsCompanyBankPosition.Params[0].AsDate;
        cdsCompanyBankPositionBNCODE.AsString   := sBankCode;
        cdsCompanyBankPositionBNACCNO.AsString  := sBankAccNo;
        cdsCompanyBankPositionCCY.AsString      := sCcy;
        cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
        cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
        cdsCompanyBankPositionMODUI.AsString    := sUser;
        cdsCompanyBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;
  end;

  if sErrorMsg = '' then
  begin
    cdsCompanyBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmCompanyBankRecons.ImportBankCIMB(ASheet: OleVariant);
var
  i, iRows: Integer;
  sBankCode, sBankAccNo, sBankAccName, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sBankCode := 'BNGA';
  sErrorMsg := '';

  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  iRows := ASheet.Usedrange.Rows.Count;
  for i := 1 to iRows do
  begin
    Try
      sBankAccNo := ASheet.Cells[i, 1].Value;
      sCcy       := ASheet.Cells[i, 2].Value;
      sBalance   := ASheet.Cells[i, 3].Value;
      fBalance   := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := sBankCode;
        vFind[1] := sBankAccNo;

        if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
            cdsCompanyBankPosition.Edit
          else
            Continue;
        end
        else
          cdsCompanyBankPosition.Append;

        cdsCompanyBankPositionTRDATE.AsDateTime := cdsCompanyBankPosition.Params[0].AsDate;
        cdsCompanyBankPositionBNCODE.AsString   := sBankCode;
        cdsCompanyBankPositionBNACCNO.AsString  := sBankAccNo;
        cdsCompanyBankPositionCCY.AsString      := sCcy;
        cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
        cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
        cdsCompanyBankPositionMODUI.AsString    := sUser;
        cdsCompanyBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;
  end;

  if sErrorMsg = '' then
  begin
    cdsCompanyBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmCompanyBankRecons.ImportBankData(ABank, AFileName: String);
var
  i: Integer;
  oExcel, oSheet: OleVariant;
  sBankCode, sBankAccNo, sBankAccName, sCcy: String;
  fBalance: Extended;
begin
  if ABank = 'BBCA' then ImportBankBCA(AFileName)
  else if ABank = 'BMRI' then ImportBankMandiri(AFileName)
  else if ABank = 'BNGA' then BankCIMB(AFileName)
  else if ABank = 'BBNI' then BankBNI(AFileName)
  else
  begin
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBook.Open(AFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheet[1];
      if ABank = 'BNLI' then
        ImportBankPermata(oSheet);
    finally
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := UnAssigned;
    end;
  end;

end;

procedure TfrmCompanyBankRecons.ImportBankMandiri(AFileName: String);
var
  slFile, slFileRow: TStringList;
  i: Integer;
  sBankCode, sUser, sBankAccNo, sCcy: String;
  fBalance: Extended;
  dtProcess, dtBalance: TDateTime;
  iYear, iMonth, iDay: Word;
  sKey: String;
  vFind: Variant;
label
  Finish;
begin
  sBankCode := 'BMRI';

  sUser := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  slFile := TStringList.Create;
  slFileRow := TStringList.Create;
  Try
    slFile.LoadFromFile(AFileName);
    for i := 0 to slFile.Count - 1 do
    begin
      dmGlobal.ParseDelimited(slFileRow, slFile[i], '||');

      if slFileRow.Count < 6 then
        Continue;

      sBankAccNo := Trim(slFileRow[2]);
      sCcy := Trim(slFileRow[3]);
      fBalance := StrToFloatDef(slFileRow[4], -1);
      if Length(slFileRow[5]) = 8 then
      begin
        iYear := StrToIntDef(Copy(slFileRow[5], 1, 4), 1);
        iMonth := StrToIntDef(Copy(slFileRow[5], 5, 2), 1);
        iDay := StrToIntDef(Copy(slFileRow[5], 7, 2), 1);

        dtBalance := EncodeDate(iYear, iMonth, iDay);
      end
      else
        Continue;

      if (DateOf(dtBalance) <> DateOf(cdsCompanyBankPosition.Params[0].AsDate)) then
      begin
        Continue;
//        MessageDlg('Your Data Upload Date Different with Trans Date. Cancel Upload!', mtInformation, [mbOK], 0);
//        cdsCompanyBankPosition.CancelUpdates;
//        cdsCompanyBankPosition.Refresh;
//        Goto Finish;
      end;

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := sBankCode;
        vFind[1] := sBankAccNo;

        if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
            cdsCompanyBankPosition.Edit
          else
            Continue;
        end
        else
          cdsCompanyBankPosition.Append;

        cdsCompanyBankPositionTRDATE.AsDateTime := dtBalance;
        cdsCompanyBankPositionBNCODE.AsString := sBankCode;
        cdsCompanyBankPositionBNACCNO.AsString := sBankAccNo;
        cdsCompanyBankPositionCCY.AsString := sCcy;
        cdsCompanyBankPositionSALDO.AsFloat := fBalance;
        cdsCompanyBankPositionMODDA.AsDateTime := dtProcess;
        cdsCompanyBankPositionMODUI.AsString := sUser;
        cdsCompanyBankPosition.Post;
      end;
    end;

    cdsCompanyBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(
       cdsCompanyBankPosition.RecordCount));

    Finish:

  Finally
    FreeAndNil(slFileRow);
    FreeAndNil(slFile);
  End;
end;

procedure TfrmCompanyBankRecons.ImportBankPermata(ASheet: OleVariant);
var
  i, iRows: Integer;
  sBankCode, sBankAccNo, sCcy, sBalance: String;
  fBalance: Extended;
  sErrorMsg: String;
  sUser: String;
  dtProcess: TDateTime;
  sKey: String;
  vFind: Variant;
begin
  sBankCode := 'BNLI';
  sErrorMsg := '';

  sUser     := dmGlobal.UserID;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  sKey  := 'BNCODE;BNACCNO';
  vFind := VarArrayCreate([0, 1], varVariant);

  iRows := ASheet.Usedrange.Rows.Count;
  for i := 1 to iRows do
  begin
    Try
      sBankAccNo := ASheet.Cells[i, 1].Value;
      sCcy       := ASheet.Cells[i, 9].Value;
      sBalance   := ASheet.Cells[i, 10].Value;
      fBalance   := StrToFloatDef(sBalance, -1);

      if (sBankAccNo <> '') and (sCcy <> '') and (fBalance <> -1) then
      begin
        vFind[0] := sBankCode;
        vFind[1] := sBankAccNo;

        if cdsCompanyBankPosition.Locate(sKey, vFind, []) then
        begin
          if (cdsCompanyBankPositionSALDO.AsFloat <> fBalance) then
            cdsCompanyBankPosition.Edit
          else
            Continue;
        end
        else
          cdsCompanyBankPosition.Append;

        cdsCompanyBankPositionTRDATE.AsDateTime := cdsCompanyBankPosition.Params[0].AsDate;
        cdsCompanyBankPositionBNCODE.AsString   := sBankCode;
        cdsCompanyBankPositionBNACCNO.AsString  := sBankAccNo;
        cdsCompanyBankPositionCCY.AsString      := sCcy;
        cdsCompanyBankPositionSALDO.AsFloat     := fBalance;
        cdsCompanyBankPositionMODDA.AsDateTime  := dtProcess;
        cdsCompanyBankPositionMODUI.AsString    := sUser;
        cdsCompanyBankPosition.Post;
      end;

    Except
      on E: Exception do
      begin
        sErrorMsg := sErrorMsg + 'Data Row ' + IntToStr(i) + ' error with message: ' + QuotedStr(E.Message) + #13;
      end;
    End;
  end;

  if sErrorMsg = '' then
  begin
    cdsCompanyBankPosition.ApplyUpdates(-1);
    ShowMessage('Data ready to compare!'#13'Total Data Record: ' + IntToStr(cdsCompanyBankPosition.RecordCount));
  end
  else
    MessageDlg(sErrorMsg, mtError, [mbOK], 0);

end;

procedure TfrmCompanyBankRecons.ImportFileBank(ABankName, AFileName: string);
begin
  if ABankName = 'BBCA' then ImportBankBCA(AFileName)
  else if ABankName = 'BMRI' then ImportBankMandiri(AFileName)
  else if ABankName = 'BNGA' then BankCIMB(AFileName)
  else if ABankName = 'BNLI' then BankPermata(AFileName)
  else if ABankName = 'BBNI' then BankBNI(AFileName);
end;

procedure TfrmCompanyBankRecons.PostAll1Click(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  oForm := TfrmBankReconPostAll.Create(nil);
  TfrmBankReconPostAll(oForm).TransDate := txtTransDate.Date;

  oForm.Show;
end;

procedure TfrmCompanyBankRecons.txtTransDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cdsBankRecon.Close;
  cdsBankRecon.Params[0].AsDate := txtTransDate.Date;
  cdsBankRecon.Open;
end;

Initialization
  RegisterClass(TfrmCompanyBankRecons);

end.
