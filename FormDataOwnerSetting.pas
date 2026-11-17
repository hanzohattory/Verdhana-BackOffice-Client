unit FormDataOwnerSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ActnList, NDatasetAction, System.Actions;

type
  TfrmDataOwnerSetting = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    btnAdd: TcxButton;
    btnRemove: TcxButton;
    btnRemoveAll: TcxButton;
    btnAddAll: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    grdSource: TcxGrid;
    grdSourceLevel1: TcxGridLevel;
    grdTarget: TcxGrid;
    grdTargetLevel1: TcxGridLevel;
    grdUser: TcxGrid;
    grdUserLevel1: TcxGridLevel;
    gvwSourceData: TcxGridDBBandedTableView;
    gvwTargetData: TcxGridDBBandedTableView;
    gvwUser: TcxGridDBBandedTableView;
    cdsUserList: TNClientDataset;
    cdsDataOwner: TNClientDataset;
    cdsUserListUSERID: TStringField;
    cdsUserListAPPID: TStringField;
    cdsUserListUSERNAME: TStringField;
    cdsUserListCRETEDATE: TDateTimeField;
    cdsUserListUSERSTATE: TStringField;
    cdsUserListUSERPWD: TStringField;
    cdsUserListLASTCHANGEPWD: TDateTimeField;
    cdsUserListLOCKED: TStringField;
    cdsUserListWRONGPWDCOUNT: TIntegerField;
    cdsUserListHARDLIMIT: TFloatField;
    cdsUserListSOFTLIMIT: TFloatField;
    cdsUserListTEMPLIMIT: TFloatField;
    cdsUserListqryDataOwner: TDataSetField;
    cdsDataOwnerUSERID: TStringField;
    cdsDataOwnerDATAID: TIntegerField;
    cdsDataList: TNClientDataset;
    cdsDataListDATAID: TIntegerField;
    cdsDataListDATACODE: TStringField;
    cdsDataListDATADESC: TStringField;
    dsUserList: TDataSource;
    dsDataOwner: TDataSource;
    gvwUserUSERID: TcxGridDBBandedColumn;
    gvwUserUSERNAME: TcxGridDBBandedColumn;
    gvwUserUSERSTATE: TcxGridDBBandedColumn;
    cdsDataOwnerDATACODE: TStringField;
    cdsDataOwnerDATADESC: TStringField;
    gvwTargetDataUSERID: TcxGridDBBandedColumn;
    gvwTargetDataDATAID: TcxGridDBBandedColumn;
    gvwTargetDataDATACODE: TcxGridDBBandedColumn;
    gvwTargetDataDATADESC: TcxGridDBBandedColumn;
    aclDataOwner: TActionList;
    cdsAvailableData: TNClientDataset;
    cdsAvailableDataDATAID: TIntegerField;
    cdsAvailableDataDATACODE: TStringField;
    cdsAvailableDataDATADESC: TStringField;
    dsAvailableData: TDataSource;
    gvwSourceDataDATAID: TcxGridDBBandedColumn;
    gvwSourceDataDATACODE: TcxGridDBBandedColumn;
    gvwSourceDataDATADESC: TcxGridDBBandedColumn;
    actAddDataGroup: TNAction;
    actEditDataGroup: TNAction;
    popSource: TPopupMenu;
    popTarget: TPopupMenu;
    AddDataGroup1: TMenuItem;
    EditDataGroup1: TMenuItem;
    actEditDataGroupSelected: TNAction;
    EditDataGroup2: TMenuItem;
    cdsUserListMODDA: TDateTimeField;
    cdsUserListMODUI: TStringField;
    cdsUserListAPPDA: TDateTimeField;
    cdsUserListAPPUI: TStringField;
    cdsUserListUNDER4Y: TIntegerField;
    cdsUserListUNDER4YDA: TDateTimeField;
    cdsUserListNOTES4Y: TStringField;
    cdsUserListISDEL: TIntegerField;
    cdsUserListID: TLargeintField;
    procedure actAddDataGroupExecute(Sender: TObject);
    procedure actEditDataGroupExecute(Sender: TObject);
    procedure actEditDataGroupSelectedExecute(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure gvwUserFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure RedrawDataGroup;
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDataOwnerSetting: TfrmDataOwnerSetting;

implementation

{$R *.dfm}

uses DataGlobal, FormDataGroup;

{ TfrmDataOwnerSetting }

procedure TfrmDataOwnerSetting.actAddDataGroupExecute(Sender: TObject);
begin
  if frmDataGroup.Run(-1) = mrOK then
  begin
    cdsDataList.Close;
    cdsDataList.Open;

    RedrawDataGroup;
  end;
end;

procedure TfrmDataOwnerSetting.actEditDataGroupExecute(Sender: TObject);
begin
  if not cdsAvailableData.IsEmpty then
  begin
    if frmDataGroup.Run(cdsAvailableDataDATAID.AsInteger) = mrOk then
    begin
      cdsDataList.Close;
      cdsDataList.Open;

      RedrawDataGroup;
    end;
  end;
end;

procedure TfrmDataOwnerSetting.actEditDataGroupSelectedExecute(Sender: TObject);
begin
  if not cdsDataOwner.IsEmpty then
  begin
    if frmDataGroup.Run(cdsDataOwnerDATAID.AsInteger) = mrOk then
    begin
      cdsDataList.Close;
      cdsDataList.Open;

      RedrawDataGroup;
    end;
  end;
end;

procedure TfrmDataOwnerSetting.btnAddAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataOwner.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableData.DisableControls;
//    oDataset.DisableControls;

    if not cdsAvailableData.IsEmpty then
    begin
      cdsAvailableData.First;

      while not cdsAvailableData.IsEmpty do
      begin
        oDataset.Append;
        oDataset.FieldByName('DATAID').AsInteger := cdsAvailableDataDATAID.AsInteger;
        oDataset.Post;

        cdsAvailableData.Delete;
      end;
    end;

//    oDataset.EnableControls;
//    cdsAvailableData.EnableControls;
  end;

end;

procedure TfrmDataOwnerSetting.btnAddClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataOwner.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableData.DisableControls;
//    oDataset.DisableControls;

    if not cdsAvailableData.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('DATAID').AsInteger := cdsAvailableDataDATAID.AsInteger;
      oDataset.Post;

      cdsAvailableData.Delete;
    end;

//    oDataset.EnableControls;
//    cdsAvailableData.EnableControls;
  end;

end;

procedure TfrmDataOwnerSetting.btnRemoveAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataOwner.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableData.DisableControls;
//    oDataset.DisableControls;

    if not oDataset.IsEmpty then
    begin
      oDataset.First;

      while not oDataset.IsEmpty do
      begin
        cdsAvailableData.Append;
        cdsAvailableDataDATAID.AsInteger := oDataset.FieldByName('DATAID').AsInteger;
        cdsAvailableDataDATACODE.AsString := oDataset.FieldByName('DATACODE').AsString;
        cdsAvailableDataDATADESC.AsString := oDataset.FieldByName('DATADESC').AsString;
        cdsAvailableData.Post;

        oDataset.Delete;
      end;
    end;

//    oDataset.EnableControls;
//    cdsAvailableData.EnableControls;
  end;

end;

procedure TfrmDataOwnerSetting.btnRemoveClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataOwner.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableData.DisableControls;
//    oDataset.DisableControls;

    if not oDataset.IsEmpty then
    begin
      cdsAvailableData.Append;
      cdsAvailableDataDATAID.AsInteger := oDataset.FieldByName('DATAID').AsInteger;
      cdsAvailableDataDATACODE.AsString := oDataset.FieldByName('DATACODE').AsString;
      cdsAvailableDataDATADESC.AsString := oDataset.FieldByName('DATADESC').AsString;
      cdsAvailableData.Post;

      oDataset.Delete;
    end;

//    oDataset.EnableControls;
//    cdsAvailableData.EnableControls;
  end;

end;

procedure TfrmDataOwnerSetting.gvwUserFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  RedrawDataGroup;
end;

procedure TfrmDataOwnerSetting.RedrawDataGroup;
begin

  cdsAvailableData.DisableControls;
  cdsDataOwner.DisableControls;
  Try
    cdsAvailableData.Close;
    cdsAvailableData.CreateDataSet;

    if cdsDataOwner.IsEmpty then
    begin
      cdsDataList.First;
      while not cdsDataList.Eof do
      begin
        cdsAvailableData.Append;
        cdsAvailableDataDATAID.AsInteger := cdsDataListDATAID.AsInteger;
        cdsAvailableDataDATACODE.AsString := cdsDataListDATACODE.AsString;
        cdsAvailableDataDATADESC.AsString := cdsDataListDATADESC.AsString;
        cdsAvailableData.Post;
        cdsDataList.Next;
      end;
    end
    else
    begin
      cdsDataList.First;
      while not cdsDataList.Eof do
      begin
        if not cdsDataOwner.Locate('DATAID', cdsDataListDATAID.Value, []) then
        begin
          cdsAvailableData.Append;
          cdsAvailableDataDATAID.AsInteger := cdsDataListDATAID.AsInteger;
          cdsAvailableDataDATACODE.AsString := cdsDataListDATACODE.AsString;
          cdsAvailableDataDATADESC.AsString := cdsDataListDATADESC.AsString;
          cdsAvailableData.Post;
        end;
        cdsDataList.Next;
      end;
    end;

  Finally
    cdsAvailableData.EnableControls;
    cdsDataOwner.EnableControls;
  End;

end;

procedure TfrmDataOwnerSetting.Run;
var
  oForm: TfrmDataOwnerSetting;
begin
  oForm := TfrmDataOwnerSetting.Create(nil);

  Try
    with oForm do
    begin
      cdsUserList.Close;
      cdsUserList.Open;

      cdsDataList.Close;
      cdsDataList.Open;

      RedrawDataGroup;

      if oForm.ShowModal = mrOk then
      begin
        cdsUserList.ApplyUpdates(-1);
      end;
      
    end;
    
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
