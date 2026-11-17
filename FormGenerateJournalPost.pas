unit FormGenerateJournalPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, dxDateRanges,Clipbrd, System.Actions, Vcl.ActnList,
  NDatasetAction;

type
  TfrmGeneralLedgerJournalPost = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    gvwGLJournal_D: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dsGLJournal_D: TDataSource;
    gvwBrowseJOUTYPE: TcxGridDBBandedColumn;
    gvwBrowseGL_JRNTYPE: TcxGridDBBandedColumn;
    gvwBrowseJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwBrowseCPID: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseEXRATE: TcxGridDBBandedColumn;
    gvwBrowseDEBET: TcxGridDBBandedColumn;
    gvwBrowseCREDIT: TcxGridDBBandedColumn;
    gvwBrowseFXDEBET: TcxGridDBBandedColumn;
    gvwBrowseFXCREDIT: TcxGridDBBandedColumn;
    gvwBrowseCPCODE: TcxGridDBBandedColumn;
    cdsGLJournal_D: TNClientDataset;
    cdsGLJournal_DJOUTYPE: TStringField;
    cdsGLJournal_DGL_JRNTYPE: TStringField;
    cdsGLJournal_DJRNTYPEDESC: TStringField;
    cdsGLJournal_DCPID: TIntegerField;
    cdsGLJournal_DCCY: TStringField;
    cdsGLJournal_DEXRATE: TFloatField;
    cdsGLJournal_DDEBET: TFloatField;
    cdsGLJournal_DCREDIT: TFloatField;
    cdsGLJournal_DFXDEBET: TFloatField;
    cdsGLJournal_DFXCREDIT: TFloatField;
    cdsGLJournal_DCPCODE: TStringField;
    cdsGLJournal_DLINKTYPE: TStringField;
    cdsGLJournal_DLINKNO: TStringField;
    gvwBrowseLINKTYPE: TcxGridDBBandedColumn;
    gvwBrowseLINKNO: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    ViewDetail1: TMenuItem;
    ViewSource: TMenuItem;
    cdsGLJournal_DLINKID: TLargeintField;
    gvwBrowseLINKID: TcxGridDBBandedColumn;
    aclEditor: TActionList;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure gvwBrowseCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewDetail1Click(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeneralLedgerJournalPost: TfrmGeneralLedgerJournalPost;

implementation

{$R *.dfm}

uses FormGeneralLedgerJournal, DataGlobal, FormLedgerDetail;

procedure TfrmGeneralLedgerJournalPost.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(cxGrid1.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmGeneralLedgerJournalPost.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGLJournal_D.Close;
  cdsGLJournal_D.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime;
  cdsGLJournal_D.Params[1].AsString   := dsSubject.DataSet.FieldByName('JOUTYPE').AsString;
  cdsGLJournal_D.Params[2].AsString   := dsSubject.DataSet.FieldByName('POSTED').AsString;
  cdsGLJournal_D.Params[3].AsString   := '';
  cdsGLJournal_D.Params[4].AsInteger  := 1;
  cdsGLJournal_D.Open;
end;

procedure TfrmGeneralLedgerJournalPost.gvwBrowseCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwBrowseDEBET.Index] <> AViewInfo.GridRecord.Values[gvwBrowseCREDIT.Index] then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmGeneralLedgerJournalPost.ViewDetail1Click(Sender: TObject);
var
  iLinkID: Int64;
  sLinkType: string;
  sCCY : string;
  iCPID : Integer;
  dExrate : double;
begin
  inherited;
//  sLinkType := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKTYPE.Index];
//  iLinkID   := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKID.Index];
  sLinkType := cdsGLJournal_DLINKTYPE.AsString;
  iLinkID   := cdsGLJournal_DLINKID.AsInteger;
  sCCY      := cdsGLJournal_DCCY.AsString;
  iCPID     := cdsGLJournal_DCPID.AsInteger;
  dExrate   := cdsGLJournal_DEXRATE.asFloat;

  frmLedgerDetail.Run(sLinkType,sCCY, iLinkID,iCPID,dExrate);
end;

end.
