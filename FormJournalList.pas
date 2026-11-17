unit FormJournalList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, dxBar, Vcl.ImgList, Vcl.ActnList,
  NDatasetAction, cxClasses, cxGridLevel, cxGridCustomView, cxGrid,
  dxLayoutContainer, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, dxLayoutControl,
  NActionPermission, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, System.DateUtils,
  System.ImageList, System.Actions, dxDateRanges;

type
  TfrmJournalList = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    chkEDate: TcxCheckBox;
    chkJrnType: TcxCheckBox;
    luJrnType: TcxLookupComboBox;
    chkValueDate: TcxCheckBox;
    VDateFrom: TcxDateEdit;
    VDateTo: TcxDateEdit;
    EDateTo: TcxDateEdit;
    EDateFrom: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    lcJrnType: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    lgEntryDate: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    lgValueDate: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    aclJournal: TActionList;
    actLoadData: TNAction;
    imlBrowse: TImageList;
    dxBarButton1: TdxBarButton;
    cdsJRNList: TNClientDataset;
    cdsJRNListJRNID: TLargeintField;
    cdsJRNListJRNCD: TStringField;
    cdsJRNListVDATE: TDateTimeField;
    cdsJRNListEDATE: TDateTimeField;
    cdsJRNListREFFID: TLargeintField;
    cdsJRNListACCID: TLargeintField;
    cdsJRNListACCCODE: TStringField;
    cdsJRNListACCNAME: TStringField;
    cdsJRNListVPERIODID: TLargeintField;
    cdsJRNListVPERIODCODE: TStringField;
    cdsJRNListEPERIODID: TLargeintField;
    cdsJRNListEPERIODCODE: TStringField;
    cdsJRNListJRNTYPE: TStringField;
    cdsJRNListHDESC: TStringField;
    cdsJRNListTOTALDB: TFloatField;
    cdsJRNListTOTALCR: TFloatField;
    cdsJRNListCCYCODE: TStringField;
    cdsJRNListEXRATE: TFloatField;
    cdsJRNListMODDA: TDateTimeField;
    cdsJRNListMODUI: TStringField;
    cdsJRNListAPPDA: TDateTimeField;
    cdsJRNListAPPUI: TStringField;
    cdsJRNListUNDER4Y: TIntegerField;
    cdsJRNListUNDER4YDA: TDateTimeField;
    cdsJRNListNOTES4Y: TStringField;
    cdsJRNListISDEL: TIntegerField;
    cdsJRNListID: TLargeintField;
    dsJRNList: TDataSource;
    cdsJRNListPOSTED: TStringField;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterJRNCD: TcxGridDBBandedColumn;
    gvwMasterVDATE: TcxGridDBBandedColumn;
    gvwMasterEDATE: TcxGridDBBandedColumn;
    gvwMasterREFFID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterVPERIODID: TcxGridDBBandedColumn;
    gvwMasterVPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterEPERIODID: TcxGridDBBandedColumn;
    gvwMasterEPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterTOTALDB: TcxGridDBBandedColumn;
    gvwMasterTOTALCR: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    popGrid: TPopupMenu;
    LoadData1: TMenuItem;
    N1: TMenuItem;
    actExpandAll: TNAction;
    actCollapseAll: TNAction;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    actJournalVoucher: TNAction;
    JournalVoucher1: TMenuItem;
    BarMBrowseBar2: TdxBar;
    actExportFile: TNAction;
    dxBarButton2: TdxBarButton;
    cdsGlinterData: TClientDataSet;
    cdsGlinterDataDATA: TStringField;
    cdsJRNListREVERSED: TStringField;
    cdsJRNListREVERSED_JRNID: TLargeintField;
    cdsJRNListJRNMANUAL: TStringField;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_JRNID: TcxGridDBBandedColumn;
    gvwMasterJRNMANUAL: TcxGridDBBandedColumn;
    cdsJRNListPOSTED_DATE: TDateField;
    cdsJRNListREVERSED_DATE: TDateField;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    procedure actLoadDataExecute(Sender: TObject);
    procedure actExpandAllExecute(Sender: TObject);
    procedure actCollapseAllExecute(Sender: TObject);
    procedure actJournalVoucherExecute(Sender: TObject);
    procedure actJournalVoucherUpdate(Sender: TObject);
    procedure chkValueDateClick(Sender: TObject);
    procedure chkEDateClick(Sender: TObject);
    procedure chkJrnTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExportFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJournalList: TfrmJournalList;

implementation

{$R *.dfm}

uses DataGlobal, FormJournalVoucher, DataLookup;

procedure TfrmJournalList.actCollapseAllExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Collapse(True);
end;

procedure TfrmJournalList.actExpandAllExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.ViewData.Expand(True);
end;

procedure TfrmJournalList.actExportFileExecute(Sender: TObject);
var
  bCanNotBeProceed: Boolean;
  oGlinter: TStringList;
  sFileName, sFolderName: string;
begin
  inherited;
  bCanNotBeProceed := True;
  oGlinter := TStringList.Create;

  if cdsJRNList.Active then
  begin
    if not cdsJRNList.IsEmpty then
    begin
      if chkValueDate.Checked then
      begin
        bCanNotBeProceed := False;
        if VDateFrom.Date = VDateTo.Date then
        begin
          cdsGlinterData.Close;
          cdsGlinterData.Params[0].AsDateTime := VDateTo.Date;
          cdsGlinterData.Open;

          cdsGlinterData.First;
          while not cdsGlinterData.Eof do
          begin
            oGlinter.Add(cdsGlinterDataData.AsString);

            cdsGlinterData.Next;
          end;
        end
        else
          MessageDlg('Value date from and date to must be same...', mtError, [mbOk], 0);
      end;
    end
  end;

  if bCanNotBeProceed then
    MessageDlg('There is no data can be exported...', mtError, [mbOk], 0)
  else
  begin
    sFolderName := dmGlobal.FITSJournalListDir;
    if not DirectoryExists(sFolderName) then
      MessageDlg(sFolderName + ' does not exist, please check configuration setting...', mtError, [mbOk], 0)
    else
    begin
      sFileName := 'GLJournal-'+FormatDateTime('dd.mmm.yyyy', dmGlobal.RemoteServer.GetTransDate)+'.txt';

      oGlinter.SaveToFile(sFolderName+sFileName);
      MessageDlg('Generate data glinter to '+sFolderName+sFileName+' has done...', mtInformation, [mbOk], 0);
    end;
  end;

  FreeAndNil(oGlinter);
end;

procedure TfrmJournalList.actJournalVoucherExecute(Sender: TObject);
begin
  inherited;
  frmJournalVoucher.Run(cdsJRNListJRNID.AsInteger);
end;

procedure TfrmJournalList.actJournalVoucherUpdate(Sender: TObject);
begin
  inherited;
  actJournalVoucher.Enabled := (cdsJRNList.Active) and (not cdsJRNList.IsEmpty);
end;

procedure TfrmJournalList.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  if chkEDate.Checked or chkJrnType.Checked or chkValueDate.Checked then
  begin
    cdsJRNList.Close;
    if chkValueDate.Checked then
      cdsJRNList.Params[0].AsInteger := 1
    else
      cdsJRNList.Params[0].AsInteger := 0;

    cdsJRNList.Params[1].AsDate := DateOf(VDateFrom.Date);
    cdsJRNList.Params[2].AsDate := DateOf(VDateTo.Date);

    if chkEDate.Checked then
      cdsJRNList.Params[3].AsInteger := 1
    else
      cdsJRNList.Params[3].AsInteger := 0;

    cdsJRNList.Params[4].AsDate := DateOf(EDateFrom.Date);
    cdsJRNList.Params[5].AsDate := DateOf(EDateTo.Date);

    if chkJrnType.Checked then
      cdsJRNList.Params[6].AsInteger := 1
    else
      cdsJRNList.Params[6].AsInteger := 0;

    if VarIsNull(luJrnType.EditValue) then
      cdsJRNList.Params[7].AsString := EmptyStr
    else
      cdsJRNList.Params[7].AsString := luJrnType.EditValue;
    cdsJRNList.Open;
  end
  else
  begin
    ShowMessage('You must filter minimal by 1 criteria to open data!');
  end;
end;

procedure TfrmJournalList.chkEDateClick(Sender: TObject);
begin
  inherited;
  lgEntryDate.Visible := chkEDate.Checked;
end;

procedure TfrmJournalList.chkJrnTypeClick(Sender: TObject);
begin
  inherited;
  lcJrnType.Visible := chkJrnType.Checked;
end;

procedure TfrmJournalList.chkValueDateClick(Sender: TObject);
begin
  inherited;
  lgValueDate.Visible := chkValueDate.Checked;
end;

procedure TfrmJournalList.FormCreate(Sender: TObject);
begin
  inherited;
  EDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  EDateTo.Date := EDateFrom.Date;
  VDateFrom.Date := EDateFrom.Date;
  VDateTo.Date := EDateFrom.Date;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAllJrnType.Close;
    cdsLuAllJrnType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmJournalList);

end.
