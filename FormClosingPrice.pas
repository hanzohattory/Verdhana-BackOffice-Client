unit FormClosingPrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, NDatasetAction,
  Datasnap.DBClient, NClientDataset, dbf, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, cxButtonEdit, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, DateUtils, System.Actions;

type
  TfrmClosingPrice = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    txtSSFile: TcxButtonEdit;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    grdClosingPrice: TcxGrid;
    gvwClosingPrice: TcxGridDBBandedTableView;
    grdClosingPriceLevel1: TcxGridLevel;
    dbfClosingPrice: TDbf;
    cdsClosingPrice: TNClientDataset;
    popDTE: TPopupMenu;
    ImportDTE1: TMenuItem;
    dsClosingPrice: TDataSource;
    OpenDialog: TOpenDialog;
    aclClosingPrice: TActionList;
    actViewData: TNAction;
    actImportSS: TNAction;
    dbfClosingPriceSTK_DATE: TDateField;
    dbfClosingPriceSTK_CODE: TStringField;
    dbfClosingPriceSTK_NAME: TStringField;
    dbfClosingPriceSTK_PREV: TFloatField;
    dbfClosingPriceSTK_HIGH: TFloatField;
    dbfClosingPriceSTK_LOW: TFloatField;
    dbfClosingPriceSTK_CLOS: TFloatField;
    dbfClosingPriceSTK_VOLM: TLargeintField;
    dbfClosingPriceSTK_AMNT: TFloatField;
    dbfClosingPriceSTK_INDX: TFloatField;
    dbfClosingPriceSTK_PIDX: TFloatField;
    dbfClosingPriceSTK_ASKP: TFloatField;
    dbfClosingPriceSTK_ASKV: TLargeintField;
    dbfClosingPriceSTK_ASKF: TStringField;
    dbfClosingPriceSTK_BIDP: TFloatField;
    dbfClosingPriceSTK_BIDV: TLargeintField;
    dbfClosingPriceSTK_BIDF: TStringField;
    dbfClosingPriceSTK_FHIG: TFloatField;
    dbfClosingPriceSTK_FLOW: TFloatField;
    dbfClosingPriceSTK_FCLO: TFloatField;
    dbfClosingPriceSTK_OPEN: TFloatField;
    cdsClosingPriceSTK_DATE: TDateField;
    cdsClosingPriceSTK_CODE: TStringField;
    cdsClosingPriceSTK_NAME: TStringField;
    cdsClosingPriceSTK_PREV: TFloatField;
    cdsClosingPriceSTK_HIGH: TFloatField;
    cdsClosingPriceSTK_LOW: TFloatField;
    cdsClosingPriceSTK_CLOS: TFloatField;
    cdsClosingPriceSTK_VOLM: TFloatField;
    cdsClosingPriceSTK_AMNT: TFloatField;
    cdsClosingPriceSTK_INDX: TFloatField;
    cdsClosingPriceSTK_PIDX: TFloatField;
    cdsClosingPriceSTK_ASKP: TFloatField;
    cdsClosingPriceSTK_ASKV: TFloatField;
    cdsClosingPriceSTK_ASKF: TStringField;
    cdsClosingPriceSTK_BIDP: TFloatField;
    cdsClosingPriceSTK_BIDV: TFloatField;
    cdsClosingPriceSTK_BIDF: TStringField;
    cdsClosingPriceSTK_FHIG: TFloatField;
    cdsClosingPriceSTK_FLOW: TFloatField;
    cdsClosingPriceSTK_FCLO: TFloatField;
    cdsClosingPriceSTK_OPEN: TFloatField;
    cdsClosingPriceMODDA: TDateTimeField;
    cdsClosingPriceMODUI: TStringField;
    gvwClosingPriceSTK_DATE: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_CODE: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_NAME: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_PREV: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_HIGH: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_LOW: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_CLOS: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_VOLM: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_AMNT: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_INDX: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_PIDX: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_ASKP: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_ASKV: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_ASKF: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_BIDP: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_BIDV: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_BIDF: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_FHIG: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_FLOW: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_FCLO: TcxGridDBBandedColumn;
    gvwClosingPriceSTK_OPEN: TcxGridDBBandedColumn;
    gvwClosingPriceMODDA: TcxGridDBBandedColumn;
    gvwClosingPriceMODUI: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure txtSSFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actImportSSUpdate(Sender: TObject);
    procedure actImportSSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingPrice: TfrmClosingPrice;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmClosingPrice.actImportSSExecute(Sender: TObject);
var
  bContinue: Boolean;
  sMessage: String;
  oTargetField: TField;
  i: Integer;
  sUser: String;
  dtProcessDateTime: TDateTime;
begin
  inherited;
  bContinue := False;

  sMessage := 'System detect that Closing Price file already uploaded to Database' + #13 + #10 +
    'Do you want to update existing Closing Price file?';

  if dbfClosingPrice.IsEmpty then
  begin
    ShowMessage('Choose another Closing Price File! This Closing Price File is empty.');
    Exit;
  end
  else
  begin
    if DateOf(dbfClosingPriceSTK_DATE.AsDateTime) <> DateOf(dtTransDate.Date) then
    begin
      ShowMessage('This Closing Price date different with your transaction date choosed.' + #13 +
        'Choose another Closing Price File with same transaction date!');
        Exit;
    end;
  end;

  if (dbfClosingPriceSTK_DATE.AsDateTime = cdsClosingPriceSTK_DATE.AsDateTime) then
  begin
    if MessageDlg(sMessage, mtConfirmation, mbYesNo, 0) = mrYes then
      bContinue := True;
  end
  else
    bContinue := True;

  if bContinue then
  begin
    dbfClosingPrice.DisableControls;
    dbfClosingPrice.First;
    cdsClosingPrice.DisableControls;

    Try
      sUser := dmGlobal.UserID;
      dtProcessDateTime := dmGlobal.RemoteServer.GetServerTimeStamp;

      if cdsClosingPrice.IsEmpty then
      begin
        while not dbfClosingPrice.Eof do
        begin
          cdsClosingPrice.Append;

          for i := 0 to dbfClosingPrice.FieldCount - 1 do
          begin
            oTargetField := cdsClosingPrice.FindField(dbfClosingPrice.Fields[i].FieldName);
            if oTargetField <> nil then
            begin
              oTargetField.Value := dbfClosingPrice.Fields[i].Value;
            end;
          end;

          cdsClosingPriceMODDA.AsDateTime := dtProcessDateTime;
          cdsClosingPriceMODUI.AsString := sUser;

          cdsClosingPrice.Post;

          dbfClosingPrice.Next;
        end;
      end
      else
      begin
        while not dbfClosingPrice.Eof do
        begin
          if cdsClosingPrice.Locate('STK_CODE', dbfClosingPriceSTK_CODE.Value, []) then
            cdsClosingPrice.Edit
          else
            cdsClosingPrice.Append;

          for i := 0 to dbfClosingPrice.FieldCount - 1 do
          begin
            oTargetField := cdsClosingPrice.FindField(dbfClosingPrice.Fields[i].FieldName);
            if oTargetField <> nil then
            begin
              oTargetField.Value := dbfClosingPrice.Fields[i].Value;
            end;
          end;

          cdsClosingPriceMODDA.AsDateTime := dtProcessDateTime;
          cdsClosingPriceMODUI.AsString := sUser;

          cdsClosingPrice.Post;

          dbfClosingPrice.Next;
        end;
      end;

      cdsClosingPrice.ApplyUpdates(-1);
      actViewData.Execute;
    Finally
      dbfClosingPrice.EnableControls;
      cdsClosingPrice.EnableControls;
    End;
  end;
end;

procedure TfrmClosingPrice.actImportSSUpdate(Sender: TObject);
begin
  inherited;
  actImportSS.Enabled := cdsClosingPrice.Active;
end;

procedure TfrmClosingPrice.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsClosingPrice.Close;
  cdsClosingPrice.Params[0].AsDate := dtTransDate.Date;
  cdsClosingPrice.Open;
end;

procedure TfrmClosingPrice.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmClosingPrice.txtSSFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    txtSSFile.Text := OpenDialog.FileName;
    dbfClosingPrice.Close;
    dbfClosingPrice.TableName := txtSSFile.Text;
    dbfClosingPrice.Open;
  end;
end;

Initialization
  RegisterClass(TfrmClosingPrice);

end.
