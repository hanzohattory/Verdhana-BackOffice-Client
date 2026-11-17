unit FormStockRecon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, NDatasetAction,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControl, NActionPermission,
  Datasnap.DBClient, NClientDataset, cxPCdxBarPopupMenu, cxPC, Vcl.ExtCtrls,
  cxGridDBTableView, XLSSheetData5, XLSReadWriteII5, Vcl.Grids, Vcl.DBGrids,
  cxCheckBox, System.DateUtils, dxBarBuiltInMenu, System.Actions, ComObj,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockRecon = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    txtStockRecon: TcxButtonEdit;
    txtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    aclStockRecon: TActionList;
    actViewData: TNAction;
    actUploadData: TNAction;
    cdsStockRec: TNClientDataset;
    dsStockRec: TDataSource;
    ImportFilesDialog: TOpenDialog;
    cdsStockRecVALUEDATE: TDateField;
    cdsStockRecKSEI_ACC: TStringField;
    cdsStockRecINSTRUMENT_ID: TLargeintField;
    cdsStockRecSTOCKCODE: TStringField;
    cdsStockRecSTOCKNAME: TStringField;
    cdsStockRecSTAT: TStringField;
    cdsStockRecQTY_ONHAND: TFloatField;
    cdsStockRecSTK_DIFF: TFloatField;
    PageControl: TcxPageControl;
    pgOrchid: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwStockRecon: TcxGridDBBandedTableView;
    gvwStockReconVALUEDATE: TcxGridDBBandedColumn;
    gvwStockReconKSEI_ACC: TcxGridDBBandedColumn;
    gvwStockReconINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwStockReconSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockReconSTOCKNAME: TcxGridDBBandedColumn;
    gvwStockReconSTAT: TcxGridDBBandedColumn;
    gvwStockReconSTK_POS: TcxGridDBBandedColumn;
    gvwStockReconQTY_ONHAND: TcxGridDBBandedColumn;
    gvwStockReconSTK_DIFF: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    pgCBest: TcxTabSheet;
    pnlProgress: TPanel;
    cdsCBest: TNClientDataset;
    cdsCBestStockCode: TStringField;
    cdsCBestStockName: TStringField;
    cdsCBestStockType: TStringField;
    cdsCBestBalType: TStringField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwCBest: TcxGridDBBandedTableView;
    gvwCBestStockCode: TcxGridDBBandedColumn;
    gvwCBestStockName: TcxGridDBBandedColumn;
    gvwCBestStockType: TcxGridDBBandedColumn;
    gvwCBestBalType: TcxGridDBBandedColumn;
    cdsCBestNayBal: TFloatField;
    cdsCBestCBal: TFloatField;
    cdsCBestBalance: TFloatField;
    gvwCBestNayBal: TcxGridDBBandedColumn;
    gvwCBestCBal: TcxGridDBBandedColumn;
    gvwCBestBalance: TcxGridDBBandedColumn;
    dsCBest: TDataSource;
    cdsSumStockPos: TNClientDataset;
    cdsSumStockPosVALUEDATE: TDateField;
    cdsSumStockPosSTOCKCODE: TStringField;
    cdsSumStockPosSUM_QTY: TFloatField;
    chkDiff: TcxCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsStockRecSTK_POS: TFloatField;
    SaveFile: TSaveDialog;
    cdsCBestSTOCKID: TLargeintField;
    cdsUploadStockRec: TNClientDataset;
    cdsUploadStockRecVALUEDATE: TDateField;
    cdsUploadStockRecKSEI_ACC: TStringField;
    cdsUploadStockRecSTK_POS: TFloatField;
    cdsUploadStockRecSTOCKCODE: TStringField;
    cdsUploadStockRecSTOCKNAME: TStringField;
    cdsUploadStockRecSTAT: TStringField;
    cdsUploadStockRecMODDA: TDateTimeField;
    cdsUploadStockRecMODUI: TStringField;
    cdsUploadStockRecAPPDA: TDateTimeField;
    cdsUploadStockRecAPPUI: TStringField;
    cdsUploadStockRecUNDER4Y: TIntegerField;
    cdsUploadStockRecUNDER4YDA: TDateTimeField;
    cdsUploadStockRecNOTES4Y: TStringField;
    cdsUploadStockRecISDEL: TIntegerField;
    cdsUploadStockRecID: TLargeintField;
    cdsStockRecDetail: TNClientDataset;
    dsStockRecDetail: TDataSource;
    cdsStockRecDetailKSEI_ACC: TStringField;
    cdsStockRecDetailACCCODE: TStringField;
    cdsStockRecDetailACCNAME: TStringField;
    cdsStockRecDetailINSTRUMENT_ID: TLargeintField;
    cdsStockRecDetailSTOCKCODE: TStringField;
    cdsStockRecDetailSTOCKNAME: TStringField;
    cdsStockRecDetailSTK_POS: TFloatField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1KSEI_ACC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ACCCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ACCNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1INSTRUMENT_ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STOCKCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STOCKNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STK_POS: TcxGridDBBandedColumn;
    actUploadDataBal: TNAction;
    cdsUploadStockRecon: TNClientDataset;
    cdsUploadStockReconKSEI_ACC: TStringField;
    cdsUploadStockReconSTK_POS: TFloatField;
    cdsUploadStockReconSTOCKCODE: TStringField;
    cdsUploadStockReconSTOCKNAME: TStringField;
    cdsUploadStockReconSTAT: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actUploadDataExecute(Sender: TObject);
    procedure txtStockReconPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkDiffClick(Sender: TObject);
    procedure actUploadDataBalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockRecon: TfrmStockRecon;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmStockRecon.actUploadDataBalExecute(Sender: TObject);
var
  i, iRows : integer;
  sFileName: string;
  dtSysDate, dtValue: TDateTime;
  oProgress: TfrmProgressBar;
  sFileFormat: string;
  oStockRecon: TStringList;
  oDataRecon: TStringList;
  sMsg: string;
begin
  inherited;
  dtSysDate := txtTransDate.Date;
  sFileName := txtStockRecon.Text;

  if dmGlobal.RemoteServer.DeleteStockReconByDate(dtSysDate) then
  begin
    try
      pnlProgress.Top     := Round((Self.Height / 2) - (pnlProgress.Height / 2));
      pnlProgress.Left    := Round((Self.Width / 2) - (pnlProgress.Width / 2));
      pnlProgress.Visible := True;
      Application.ProcessMessages;

      oStockRecon := TStringList.Create;
      oStockRecon.LoadFromFile(sFileName);

      sMsg := dmGlobal.RemoteServer.UploadStockRecon(txtTransDate.EditValue, oStockRecon.Text, ExtractFileName(sFileName));
      Application.ProcessMessages;
    finally
      FreeAndNil(oStockRecon);
      pnlProgress.Visible := false;
      actViewData.Execute;

      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;
  end;

//  dtSysDate := txtTransDate.Date;
//  sFileName := txtStockRecon.Text;
//
//  oProgress := TfrmProgressBar.Create(Nil);
//  oProgress.Show;
//  oProgress.ChangeBarCaption('Uploading stock reconcile');
//
//  try
//    dmGlobal.RemoteServer.EmptyTable('upload.StockRecon', sMsg);
//
//    cdsUploadStockRecon.Close;
//    cdsUploadStockRecon.Open;
//
//    oStockRecon := TStringList.Create;
//    oStockRecon.LoadFromFile(sFileName);
//
//    iRows := oStockRecon.Count;
//
//    if iRows = 0 then
//    begin
//      MessageDlg('There is no data can be upload', mtError, [mbOk], 0);
//      exit;
//    end;
//
//    for i := 0 to oStockRecon.Count -1 do
//    begin
//      try
//        oDataRecon := TStringList.Create;
//        oDataRecon.StrictDelimiter := True;
//        oDataRecon.Delimiter       := '|';
//        oDataRecon.DelimitedText   := oStockRecon.Strings[i];
//
//        cdsUploadStockRecon.Append;
//        cdsUploadStockReconKSEI_ACC.AsString    := oDataRecon.Strings[0];
//        cdsUploadStockReconSTK_POS.AsFloat      := StrToFloatDef(oDataRecon.Strings[1], 0);
//        cdsUploadStockReconSTOCKCODE.AsString   := oDataRecon.Strings[2];
//        cdsUploadStockReconSTOCKNAME.AsString   := oDataRecon.Strings[3];
//        cdsUploadStockReconSTAT.AsString        := oDataRecon.Strings[4];
//        cdsUploadStockRecon.Post;
//
//        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock reconcile ('+ oDataRecon.Strings[2] +') '+ oDataRecon.Strings[3]);
//      finally
//        FreeAndNil(oDataRecon);
//      end;
//    end;
//  finally
//    oProgress.ChangeBarCaption('Saving data into database...');
//    cdsUploadStockRecon.ApplyUpdates(-1);
//
//    FreeAndNil(oProgress);
//    FreeAndNil(oStockRecon);
//    ShowMessage(FormatFloat('#,##0', iRows) +' data has been uploaded...');
//  end;
end;

procedure TfrmStockRecon.actUploadDataExecute(Sender: TObject);
var
  slStock, oUnKnownStock, oStockRecon: TStringList;
  oExcel, oSheet: OleVariant;
  i, iRows : integer;
  dCBestBal: Double;
  sCBestBal, sStockCode,
  sSaveFileName: string;
  dtSysDate: TDateTime;
  oProgress: TfrmProgressBar;
begin
  inherited;

  oUnKnownStock := TStringList.Create;
//  pnlProgress.Visible := True;
  Cursor    := crSQLWait;

  Try
//    pnlProgress.Top     := Round((Self.Height / 2) - (pnlProgress.Height / 2));
//    pnlProgress.Left    := Round((Self.Width / 2) - (pnlProgress.Width / 2));
//    Application.ProcessMessages;

    oProgress := TfrmProgressBar.Create(Nil);
    oProgress.Show;
    oProgress.ChangeBarCaption('Uploading stock reconcile');

    if PageControl.Properties.ActivePage = pgOrchid then
    begin
      cdsUploadStockRec.Close;
      cdsUploadStockRec.Params[0].AsDate := 0;
      cdsUploadStockRec.Open;

      slStock := TStringList.Create;
      Try
        slStock.LoadFromFile(txtStockRecon.Text);
        if slStock.Count > 0 then
        begin
          if dmGlobal.RemoteServer.DeleteStockReconByDate(txtTransDate.Date) then
          begin
            iRows := slStock.Count;

            for i := 0 to slStock.Count -1 do
            begin
//              try
                oStockRecon := TStringList.Create;
                oStockRecon.StrictDelimiter := True;
                oStockRecon.Delimiter       := '|';
                oStockRecon.DelimitedText   := slStock.Strings[i];

                cdsUploadStockRec.Append;
                cdsUploadStockRecVALUEDATE.AsDateTime := txtTransDate.Date;
                cdsUploadStockRecKSEI_ACC.AsString    := oStockRecon.Strings[0];
                cdsUploadStockRecSTK_POS.AsFloat      := StrToFloatDef(oStockRecon.Strings[1], 0);
                cdsUploadStockRecSTOCKCODE.AsString   := oStockRecon.Strings[2];
                cdsUploadStockRecSTOCKNAME.AsString   := oStockRecon.Strings[3];
                cdsUploadStockRecSTAT.AsString        := oStockRecon.Strings[4];
                cdsUploadStockRecMODDA.AsDateTime     := Now;
                cdsUploadStockRecMODUI.AsString       := dmGlobal.UserID;
                cdsUploadStockRec.Post;

//                cdsUploadStockRec.ApplyUpdates(-1);
                oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock reconcile ('+ oStockRecon.Strings[2] +') '+ oStockRecon.Strings[3]);

                FreeAndNil(oStockRecon);

//              except
//                ShowMessage(slStock.Strings[i]+';'+ IntToStr(i));
//              end;
            end;
          end
          else
            MessageDlg('Can not delete Stock Recon date '+ FormatDateTime('dd mmm yyyy', txtTransDate.Date), mtError, [mbOk], 0);
        end;

      Finally
        oProgress.ChangeBarCaption('Saving into database...');
        cdsStockRec.ApplyUpdates(-1);

          cdsStockRec.Filtered := False;
          if chkDiff.Checked then
          begin
            cdsStockRec.Filter   := 'STK_DIFF <> 0';
            cdsStockRec.Filtered := True;
          end;

      End;
    end
    else if PageControl.Properties.ActivePage = pgCBest then
    begin
      cdsSumStockPos.Close;
      cdsSumStockPos.Params[0].AsDate := txtTransDate.Date;
      cdsSumStockPos.Open;

      cdsCBest.Close;
      cdsCBest.CreateDataSet;
      cdsCBest.DisableControls;

      try
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := False;
        oExcel.WorkBooks.Open(txtStockRecon.EditValue);

        oSheet := oExcel.WorkBooks[1].WorkSheets[1];
        iRows  := oSheet.Usedrange.Rows.Count;

        for i := 2 to iRows do
        begin
          sStockCode := Copy(oSheet.Cells[i, 1].Value, 0, Length(oSheet.Cells[i, 1].Value ) - 1);

          if not dmGlobal.IntDataLookup.cdsLuInstrumentAll.Active then
            dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

          if not dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('LOCALCODE', sStockCode, []) then
          begin
            oUnKnownStock.Add(sStockCode+'|'+oSheet.AsString[1, i]+'|'+oSheet.AsString[2, i]);
          end
          else
          begin
            cdsCBest.Append;
            cdsCBestSTOCKID.AsInteger    := dmGlobal.IntDataLookup.cdsLuInstrumentAllINSTRUMENT_ID.AsInteger;
            cdsCBestStockCode.AsString   := sStockCode;
            cdsCBestStockName.AsString   := oSheet.Cells[i, 2].Value;
            cdsCBestStockType.AsString   := oSheet.Cells[i, 3].Value;
            cdsCBestBalType.AsString     := oSheet.Cells[i, 4].Value;

            if cdsSumStockPos.Locate('STOCKCODE', sStockCode, []) then
              cdsCBestNayBal.AsFloat := cdsSumStockPosSUM_QTY.AsFloat
            else
              cdsCBestNayBal.AsFloat := 0;

            sCBestBal := Trim(oSheet.Cells[i, 5].Value);
            sCBestBal := StringReplace(sCBestBal, ',', '', [rfIgnoreCase, rfReplaceAll]);
            sCBestBal := Copy(sCBestBal, 0, Length(sCBestBal) - 1);
            dCBestBal := StrToFloatDef(sCBestBal, 0);

            cdsCBestCBal.AsFloat    := dCBestBal;
            cdsCBestBalance.AsFloat := cdsCBestNayBal.AsFloat - dCBestBal;

            cdsCBest.Post;
          end;

          oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock reconcile (' + sStockCode +') '+ oSheet.Cells[i, 2].Value);
        end;

        if oUnKnownStock.Count > 0 then
        begin
          if MessageDlg('There are Unregistered Stock, Save file?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            SaveFile.Execute(Application.Handle);
            sSaveFileName := SaveFile.FileName;
            if sSaveFileName <> '' then
            begin
              oUnKnownStock.SaveToFile(sSaveFileName);
              MessageDlg('Save unregistered stock code has done, File name : '+ sSaveFileName, mtInformation, [mbOk], 0);
            end;
          end;
        end;

        cdsCBest.Filtered    := False;
        if chkDiff.Checked then
        begin
          cdsCBest.Filter   := 'Balance <> 0';
          cdsCBest.Filtered := True;
        end;
      finally
        oExcel.Quit;

        oExcel := Unassigned;
        oSheet := Unassigned;

        cdsCBest.EnableControls;
      end;
    end;

  Finally
    Cursor := crDefault;
//    pnlProgress.Visible := False;
    FreeAndNil(oProgress);
    FreeAndNil(oUnKnownStock);
    ShowMessage('Finished Upload Stock Reconcile');
    actViewData.Execute;
  End;

end;

procedure TfrmStockRecon.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsStockRec.Close;
  cdsStockRec.Params[0].AsDate := DateOf(txtTransDate.Date);
  cdsStockRec.Open;

  cdsStockRecDetail.Close;
  cdsStockRecDetail.Params[0].AsDate := DateOf(txtTransDate.Date);
  cdsStockRecDetail.Open;

  if PageControl.Properties.ActivePage = pgOrchid then
  begin
    cdsStockRec.Filtered := False;
    if chkDiff.Checked then
    begin
      cdsStockRec.Filter   := 'STK_DIFF <> 0';
      cdsStockRec.Filtered := True;
    end;
  end
  else if PageControl.Properties.ActivePage = pgCBest then
  begin
    cdsCBest.Filtered    := False;
    if chkDiff.Checked then
    begin
      cdsCBest.Filter   := 'Balance <> 0';
      cdsCBest.Filtered := True;
    end;
  end;
end;

procedure TfrmStockRecon.chkDiffClick(Sender: TObject);
begin
  inherited;
  if PageControl.Properties.ActivePage = pgOrchid then
  begin
    cdsStockRec.Filtered := False;
    if chkDiff.Checked then
    begin
      cdsStockRec.Filter   := 'STK_DIFF <> 0';
      cdsStockRec.Filtered := True;
    end;
  end
  else if PageControl.Properties.ActivePage = pgCBest then
  begin
    cdsCBest.Filtered    := False;
    if chkDiff.Checked then
    begin
      cdsCBest.Filter   := 'Balance <> 0';
      cdsCBest.Filtered := True;
    end;
  end;
end;

procedure TfrmStockRecon.FormCreate(Sender: TObject);
begin
  inherited;
  txtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
//  actViewData.Execute;
end;

procedure TfrmStockRecon.txtStockReconPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    txtStockRecon.Text := sFileName;
end;

Initialization
  RegisterClass(TfrmStockRecon);

end.
