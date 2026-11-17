unit FormLuAccountList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, NDatasetAction, System.Actions, Vcl.ActnList, cxCheckGroup,
  dxBar, cxBarEditItem, cxImageComboBox;

type
  TfrmLuAccountList = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    gvwAccounts: TcxGridDBTableView;
    glvAccounts: TcxGridLevel;
    grdAccounts: TcxGrid;
    dsLuAccounts: TDataSource;
    popGrid: TPopupMenu;
    aclData: TActionList;
    Action1: TAction;
    actCheckAll: TNAction;
    actCheckSelected: TNAction;
    actUncheckAll: TNAction;
    actUncheckSelected: TNAction;
    CheckAll1: TMenuItem;
    CheckSelected1: TMenuItem;
    N1: TMenuItem;
    UncheckAll1: TMenuItem;
    UncheckSelected1: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar2: TdxBar;
    gvwAccountsACCID: TcxGridDBColumn;
    gvwAccountsACCCODE: TcxGridDBColumn;
    gvwAccountsACCNAME: TcxGridDBColumn;
    gvwAccountsACCTYPE: TcxGridDBColumn;
    gvwAccountsPRDCODE: TcxGridDBColumn;
    gvwAccountscheck: TcxGridDBColumn;
    procedure cxButton3Click(Sender: TObject);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actCheckSelectedExecute(Sender: TObject);
    procedure actUncheckAllExecute(Sender: TObject);
    procedure actUncheckSelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function RunSelected(var AccountID: TArray<Integer>): TModalResult;
  end;

var
  frmLuAccountList: TfrmLuAccountList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmLuAccountList.actCheckAllExecute(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsLuAccounts.DataSet;
  if oDataSet.FindField('check') <> nil then
  begin
    oDataSet.DisableControls;
    try
      oDataSet.First;
      while not oDataSet.Eof do
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('check').AsString := '1';
        oDataSet.Post;

        oDataSet.Next;
      end;
    finally
      oDataSet.EnableControls;
    end;
  end;
end;

procedure TfrmLuAccountList.actCheckSelectedExecute(Sender: TObject);
var
  i, recIdx: integer;
  oDataSet: TDataSet;
begin
  oDataSet := dsLuAccounts.DataSet;
  if oDataSet.FindField('cehck') <> nil then
  begin
    gvwAccounts.BeginUpdate();
    try
      for i := 0 to gvwAccounts.Controller.SelectedRecordCount -1 do
      begin
        recIdx := gvwAccounts.Controller.SelectedRecords[i].RecordIndex;
        gvwAccounts.DataController.FocusedRecordIndex := recIdx;

        oDataSet.Edit;
        oDataSet.FieldByName('check').AsString := '1';
        oDataSet.Post;
      end;
    finally
      gvwAccounts.EndUpdate;
    end;
  end;
end;

procedure TfrmLuAccountList.actUncheckAllExecute(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsLuAccounts.DataSet;
  if oDataSet.FindField('check') <> nil then
  begin
    oDataSet.DisableControls;
    try
      oDataSet.First;
      while not oDataSet.Eof do
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('check').AsString := '0';
        oDataSet.Post;

        oDataSet.Next;
      end;
    finally
      oDataSet.EnableControls;
    end;
  end;
end;

procedure TfrmLuAccountList.actUncheckSelectedExecute(Sender: TObject);
var
  i, recIdx: integer;
  oDataSet: TDataSet;
begin
  oDataSet := dsLuAccounts.DataSet;
  if oDataSet.FindField('cehck') <> nil then
  begin
    gvwAccounts.BeginUpdate();
    try
      for i := 0 to gvwAccounts.Controller.SelectedRecordCount -1 do
      begin
        recIdx := gvwAccounts.Controller.SelectedRecords[i].RecordIndex;
        gvwAccounts.DataController.FocusedRecordIndex := recIdx;

        oDataSet.Edit;
        oDataSet.FieldByName('check').AsString := '0';
        oDataSet.Post;
      end;
    finally
      gvwAccounts.EndUpdate;
    end;
  end;
end;

procedure TfrmLuAccountList.cxButton3Click(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsLuAccounts.DataSet;

  oDataSet.Close;
  oDataSet.Open;
end;

function TfrmLuAccountList.RunSelected(
  var AccountID: TArray<Integer>): TModalResult;
var
  i, iAccID, iIndex: Integer;
  sCheck: string;
  oDataSet: TDataSet;
begin
  Result := mrNone;

  frmLuAccountList := TfrmLuAccountList.Create(nil);
  try
    with frmLuAccountList do
    begin
      oDataSet := dsLuAccounts.DataSet;

      if not oDataSet.Active then
        oDataSet.Open;

      oDataSet.DisableControls;
      try
        oDataSet.First;
        while not oDataSet.Eof do
        begin
          oDataSet.Edit;
          if dmGlobal.IsIntegerInArray(oDataSet.FieldByName('ACCID').AsInteger, AccountID) then
            oDataSet.FieldByName('check').AsString := '1'
          else
            oDataSet.FieldByName('check').AsString := '0';
          oDataSet.Post;

          oDataSet.Next;
        end;
      finally
        oDataSet.EnableControls;
      end;

      gvwAccounts.PopupMenu    := popGrid;
      gvwAccountscheck.Visible := True;
      Result := ShowModal;

      if (Result = mrOk) and (not oDataSet.IsEmpty) then
      begin
        iIndex := 0;
        SetLength(AccountID, iIndex);

        for i := 0 to gvwAccounts.DataController.RecordCount -1 do
        begin
          sCheck := VarToStr(gvwAccounts.DataController.Values[i, gvwAccountscheck.Index]);
          if sCheck = '1' then
          begin
            Inc(iIndex);
            iAccID := gvwAccounts.DataController.Values[i, gvwAccountsACCID.Index];

            SetLength(AccountID, iIndex);
            AccountID[iIndex -1] := iAccID;
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(frmLuAccountList);
  end;
end;

end.
