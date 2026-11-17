unit FormGLInterfaces;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxPropertiesStore,
  cxClasses, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Vcl.ImgList, Datasnap.DBClient,
  Vcl.ActnList, NDatasetAction,
  FormBasic, NClientDataset;

type
  TfrmGLInterfaces = class(TfrmBrowseNoEdit)
    dxLayoutControl1: TdxLayoutControl;
    dtReport: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    SaveDialog: TSaveDialog;
    PopupMenu: TPopupMenu;
    GenerateGlinter1: TMenuItem;
    cdsGlinter: TNClientDataset;
    cdsGlinterBROKERCODE: TStringField;
    cdsGlinterBRCOMPANY: TStringField;
    cdsGlinterTRTYPE1: TStringField;
    cdsGlinterGLACCOUNTNAME: TStringField;
    cdsGlinterGLACCOUNTCODE: TStringField;
    cdsGlinterCPCODE: TStringField;
    cdsGlinterDEALERCODE: TStringField;
    cdsGlinterPRODUCTCODE: TStringField;
    cdsGlinterPROJECTCODE: TStringField;
    cdsGlinterENTRYDATE: TStringField;
    cdsGlinterVALUEDATE: TStringField;
    cdsGlinterDBAMT: TStringField;
    cdsGlinterCRAMT: TStringField;
    cdsGlinterCOLNONE1: TFloatField;
    cdsGlinterCOLNONE2: TFloatField;
    cdsGlinterCCY: TStringField;
    cdsGlinterEXRATE: TStringField;
    cdsGlinterTRTYPE2: TStringField;
    cdsGlinterCOLNONE3: TStringField;
    cdsGlinterCOLNONE4: TStringField;
    cdsGlinterFXDBAMT: TStringField;
    cdsGlinterFXCRAMT: TStringField;
    cdsSelectDataGL: TNClientDataset;
    cdsSelectDataGLBROKERCODE: TStringField;
    cdsSelectDataGLBRCOMPANY: TStringField;
    cdsSelectDataGLTRTYPE1: TStringField;
    cdsSelectDataGLGLACCOUNTNAME: TStringField;
    cdsSelectDataGLGLACCOUNTCODE: TStringField;
    cdsSelectDataGLCPCODE: TStringField;
    cdsSelectDataGLDEALERCODE: TStringField;
    cdsSelectDataGLPRODUCTCODE: TStringField;
    cdsSelectDataGLPROJECTCODE: TStringField;
    cdsSelectDataGLENTRYDATE: TDateField;
    cdsSelectDataGLVALUEDATE: TDateField;
    cdsSelectDataGLDBAMT: TFloatField;
    cdsSelectDataGLCRAMT: TFloatField;
    cdsSelectDataGLCOLNONE1: TFloatField;
    cdsSelectDataGLCOLNONE2: TFloatField;
    cdsSelectDataGLCCY: TStringField;
    cdsSelectDataGLEXRATE: TFloatField;
    cdsSelectDataGLTRTYPE2: TStringField;
    cdsSelectDataGLCOLNONE3: TStringField;
    cdsSelectDataGLCOLNONE4: TStringField;
    cdsSelectDataGLFXDBAMT: TFloatField;
    cdsSelectDataGLFXCRAMT: TFloatField;
    dsSelectDataGL: TDataSource;
    actView: TNAction;
    actGenerateGlinter: TNAction;
    gvwMasterBROKERCODE: TcxGridDBBandedColumn;
    gvwMasterBRCOMPANY: TcxGridDBBandedColumn;
    gvwMasterTRTYPE1: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterCPCODE: TcxGridDBBandedColumn;
    gvwMasterDEALERCODE: TcxGridDBBandedColumn;
    gvwMasterPRODUCTCODE: TcxGridDBBandedColumn;
    gvwMasterPROJECTCODE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterDBAMT: TcxGridDBBandedColumn;
    gvwMasterCRAMT: TcxGridDBBandedColumn;
    gvwMasterCOLNONE1: TcxGridDBBandedColumn;
    gvwMasterCOLNONE2: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterTRTYPE2: TcxGridDBBandedColumn;
    gvwMasterCOLNONE3: TcxGridDBBandedColumn;
    gvwMasterCOLNONE4: TcxGridDBBandedColumn;
    gvwMasterFXDBAMT: TcxGridDBBandedColumn;
    gvwMasterFXCRAMT: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actGenerateGlinterExecute(Sender: TObject);
    procedure actGenerateGlinterUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLInterfaces: TfrmGLInterfaces;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGLInterfaces.actGenerateGlinterExecute(Sender: TObject);
var
  sFileName: string;
  oGlinter: TStringList;
  sData: string;
  i: Integer;
begin
  inherited;

  cdsGlinter.Close;
  cdsGlinter.Params[0].AsDate := dtReport.Date;
  cdsGlinter.Open;

  if not cdsGlinter.IsEmpty then
  begin
    cdsGlinter.DisableControls;

    SaveDialog.FileName := 'Glinter_'+FormatDateTime('ddmmyyyy', dtReport.Date);
    oGlinter            := TStringList.Create;
    if SaveDialog.Execute then
    begin
      sFileName := SaveDialog.FileName;

      if sFileName <> '' then
      begin
        cdsGlinter.First;
        while not cdsGlinter.Eof do
        begin
          sData := '';
          for i := 0 to cdsGlinter.FieldCount -2 do
            sData := sData + cdsGlinter.Fields[i].AsString + ';';
          sData := sData + cdsGlinter.Fields[i].AsString;

          oGlinter.Add(sData);
          cdsGlinter.Next;
        end;
       oGlinter.SaveToFile(sFileName);
      end;
      cdsGlinter.EnableControls;

      MessageDlg('Generate glinter has been done', mtInformation, [mbOk], 0);
    end;
  end
  else
    MessageDlg('There is no data can be generated', mtError, [mbOk], 0);
end;

procedure TfrmGLInterfaces.actGenerateGlinterUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not cdsSelectDataGL.IsEmpty;
end;

procedure TfrmGLInterfaces.actViewExecute(Sender: TObject);
begin
  inherited;
  cdsSelectDataGL.Close;
  cdsSelectDataGL.Params[0].AsDate := dtReport.Date;
  cdsSelectDataGL.Open;
end;

procedure TfrmGLInterfaces.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
