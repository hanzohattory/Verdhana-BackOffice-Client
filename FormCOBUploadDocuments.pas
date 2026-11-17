unit FormCOBUploadDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxLabel, cxDBLabel,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, cxImageComboBox, cxButtonEdit,
  ShellApi, cxCalendar, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCOBUploadDocuments = class(TfrmEditor)
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem1: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwUploadDocs: TcxGridDBBandedTableView;
    dsBrowse: TDataSource;
    gvwUploadDocsDOC_TYPE: TcxGridDBBandedColumn;
    gvwUploadDocsNOTES: TcxGridDBBandedColumn;
    gvwUploadDocsTOKEN: TcxGridDBBandedColumn;
    gvwUploadDocsIMAGE_NAME: TcxGridDBBandedColumn;
    gvwUploadDocsUPLOADEDON: TcxGridDBBandedColumn;
    gvwUploadDocsUPLOADEDBY: TcxGridDBBandedColumn;
    gvwUploadDocsCID: TcxGridDBBandedColumn;
    gvwUploadDocsDOC_ATTACH: TcxGridDBBandedColumn;
    gvwUploadDocsCUST_REG_NO: TcxGridDBBandedColumn;
    actList: TActionList;
    actAddDocs: TAction;
    actEditDocs: TAction;
    actViewDocs: TAction;
    popDocs: TPopupMenu;
    AddDocument1: TMenuItem;
    EditDocument1: TMenuItem;
    actViewDocs1: TMenuItem;
    odDocs: TOpenDialog;
    gvwUploadDocsDOCEXPIRE: TcxGridDBBandedColumn;
    gvwUploadDocsDOCEXPIREDATE: TcxGridDBBandedColumn;
    cdsCOBUploadDocs: TNClientDataset;
    cdsCOBUploadDocsDOC_TYPE: TStringField;
    cdsCOBUploadDocsNOTES: TStringField;
    cdsCOBUploadDocsTOKEN: TStringField;
    cdsCOBUploadDocsIMAGE_NAME: TStringField;
    cdsCOBUploadDocsUPLOADEDON: TDateTimeField;
    cdsCOBUploadDocsUPLOADEDBY: TStringField;
    cdsCOBUploadDocsCID: TIntegerField;
    cdsCOBUploadDocsDOC_ATTACH: TBlobField;
    cdsCOBUploadDocsCUST_REG_NO: TStringField;
    cdsCOBUploadDocsDOCEXPIRE: TStringField;
    cdsCOBUploadDocsDOCEXPIREDATE: TDateTimeField;
    cdsCOBUploadDocsDID: TLargeintField;
    cdsCOBUploadDocsMODDA: TDateTimeField;
    cdsCOBUploadDocsMODUI: TStringField;
    cdsCOBUploadDocsAPPDA: TDateTimeField;
    cdsCOBUploadDocsAPPUI: TStringField;
    cdsCOBUploadDocsUNDER4Y: TIntegerField;
    cdsCOBUploadDocsUNDER4YDA: TDateTimeField;
    cdsCOBUploadDocsNOTES4Y: TStringField;
    cdsCOBUploadDocsISDEL: TIntegerField;
    cdsCOBUploadDocsID: TLargeintField;
    procedure actAddDocsExecute(Sender: TObject);
    procedure gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actViewDocsExecute(Sender: TObject);
    procedure actEditDocsExecute(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCOBUploadDocsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FRegNo: string;
    FAction: Integer;
    FCID: Integer;
    FBUpdate: Boolean;
    procedure UploadDocs(AFileName: string);
  public
    { Public declarations }
    property Action : Integer read FAction write FAction;
    procedure PrepareData(ACID: Integer; ARegNo, AName: string; AUpdate: Boolean);
  end;

var
  frmCOBUploadDocuments: TfrmCOBUploadDocuments;

implementation

{$R *.dfm}

uses DataGlobal, FormClientOnBoardingList;

procedure TfrmCOBUploadDocuments.actAddDocsExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Append;
end;

procedure TfrmCOBUploadDocuments.actEditDocsExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Edit;
end;

procedure TfrmCOBUploadDocuments.actViewDocsExecute(Sender: TObject);
var
  oStream: TStream;
  sFileName: string;
  aFileName: array[0..255] of WideChar;
  oDataSet : TDataSet;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;

  sFileName := oDataSet.FieldByName('IMAGE_NAME').AsString;
  sFileName := GetCurrentDir+'\'+sFileName;
  oStream   := oDataSet.CreateBlobStream(oDataSet.FieldByName('DOC_ATTACH'), bmRead);
  try
    oStream.Seek(0, soFromBeginning);
    with TFileStream.Create(sFileName, fmCreate) do
      try
        CopyFrom(oStream, oStream.Size);
      finally
        Free;
      end;
  finally
    oStream.Free;
  end;

  if FileExists(sFileName) then
    ShellExecute(Handle, 'Open', StringToWideChar(sFilename, aFileName, 255), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmCOBUploadDocuments.btnOKClick(Sender: TObject);
begin
//  Request 20160111 By Larry Bahana can skip upload document
//  if FAction = 1 then
//  begin
//    if dsBrowse.DataSet.RecordCount > 0 then
//      ModalResult := mrOk
//    else
//    begin
//      MessageDlg('Please upload suported documents', mtWarning, [mbYes], 0);
//      ModalResult := mrCancel;
//    end;
//  end
//  else
    ModalResult := mrOk;
end;

procedure TfrmCOBUploadDocuments.cdsCOBUploadDocsNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBUploadDocsCID.AsInteger := FCID;
  cdsCOBUploadDocsDID.AsInteger        := dmGlobal.RemoteServer.GetSeq('DOCID');
  cdsCOBUploadDocsCUST_REG_NO.AsString := FRegNo;
end;

procedure TfrmCOBUploadDocuments.FormShow(Sender: TObject);
begin
  inherited;
  if FAction = 1 then
  begin
    btnOk.Caption     := 'Done';
    btnCancel.Caption := 'Not Complete';

//     dsBrowse.DataSet.ReadOnly := True;
  end
  else
  begin
    btnOk.Caption     := 'Ok';
    btnCancel.Caption := 'Cancel';

//     dsBrowse.DataSet.ReadOnly := False;
  end;
end;

procedure TfrmCOBUploadDocuments.gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  inherited;
  try
    if FBUpdate then
    begin
      if odDocs.Execute then
      begin
        if FileExists(odDocs.FileName) then
          UploadDocs(odDocs.FileName);
      end;
    end;
  finally
//    cdsCOBUploadDocs.Post;
  end;
end;

procedure TfrmCOBUploadDocuments.PrepareData(ACID: Integer; ARegNo, AName: string; AUpdate: Boolean);
begin
  FBUpdate := AUpdate;

  dsBrowse.AutoEdit := FBUpdate;

  if FBUpdate then
  begin
    gvwUploadDocs.Navigator.Visible := True;
  end
  else
  begin
    gvwUploadDocs.Navigator.Visible := False;
  end;

  cdsCOBUploadDocs.Close;
  cdsCOBUploadDocs.Params[0].AsInteger := ACID;
  cdsCOBUploadDocs.Open;

  FCID := ACID;

end;

procedure TfrmCOBUploadDocuments.UploadDocs(AFileName: string);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  oDataSet    := dsBrowse.DataSet;
  if not (oDataSet.State in dsEditModes) then
    oDataSet.Edit;

  oFileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    oFileStream.Seek(0, soFromBeginning);
    TblobField(oDataSet.FieldByName('DOC_ATTACH')).LoadFromStream(oFileStream);
    oDataSet.FieldByName('IMAGE_NAME').Value := ExtractFileName(AFileName);
  finally
    oFileStream.Free;
  end;
end;

end.

