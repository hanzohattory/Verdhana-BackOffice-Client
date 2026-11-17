unit FormDataGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset;

type
  TfrmDataGroup = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
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
    gvwSourceData: TcxGridDBBandedTableView;
    grdSourceLevel1: TcxGridLevel;
    grdTarget: TcxGrid;
    gvwTargetData: TcxGridDBBandedTableView;
    grdTargetLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsData: TNClientDataset;
    cdsDataAccount: TNClientDataset;
    cdsDataDATAID: TIntegerField;
    cdsDataDATACODE: TStringField;
    cdsDataDATADESC: TStringField;
    cdsDataqryDataAccount: TDataSetField;
    dsData: TDataSource;
    dsDataAccount: TDataSource;
    cdsDataAccountDATAID: TIntegerField;
    cdsDataAccountACCID: TIntegerField;
    cdsAvailableAccount: TNClientDataset;
    dsAvailableAccount: TDataSource;
    cdsAvailableAccountACCID: TIntegerField;
    cdsAvailableAccountACCCODE: TStringField;
    cdsAvailableAccountACCNAME: TStringField;
    gvwSourceDataACCID: TcxGridDBBandedColumn;
    gvwSourceDataACCCODE: TcxGridDBBandedColumn;
    gvwSourceDataACCNAME: TcxGridDBBandedColumn;
    cdsDataAccountACCCODE: TStringField;
    cdsDataAccountACCNAME: TStringField;
    gvwTargetDataDATAID: TcxGridDBBandedColumn;
    gvwTargetDataACCID: TcxGridDBBandedColumn;
    gvwTargetDataMODDA: TcxGridDBBandedColumn;
    gvwTargetDataMODUI: TcxGridDBBandedColumn;
    gvwTargetDataACCCODE: TcxGridDBBandedColumn;
    gvwTargetDataACCNAME: TcxGridDBBandedColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
  private
    { Private declarations }
    procedure RedrawDataAccount;
  public
    { Public declarations }
    function Run(ADataID: Integer): TModalResult;
  end;

var
  frmDataGroup: TfrmDataGroup;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmDataGroup }

procedure TfrmDataGroup.btnAddAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataAccount.DataSet;
  if oDataset <> nil then
  begin
    cdsAvailableAccount.DisableControls;
    oDataset.DisableControls;

    if not cdsAvailableAccount.IsEmpty then
    begin
      cdsAvailableAccount.First;

      while not cdsAvailableAccount.IsEmpty do
      begin
        oDataset.Append;
        oDataset.FieldByName('ACCID').AsInteger := cdsAvailableAccountACCID.AsInteger;
        oDataset.FieldByName('ACCCODE').AsString := cdsAvailableAccountACCCODE.AsString;
        oDataset.FieldByName('ACCNAME').AsString := cdsAvailableAccountACCNAME.AsString;
        oDataset.Post;

        cdsAvailableAccount.Delete;
      end;
    end;

    oDataset.EnableControls;
    cdsAvailableAccount.EnableControls;
  end;

end;

procedure TfrmDataGroup.btnAddClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataAccount.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableAccount.DisableControls;
//    oDataset.DisableControls;

    if not cdsAvailableAccount.IsEmpty then
    begin
      oDataset.Append;
      oDataset.FieldByName('ACCID').AsInteger := cdsAvailableAccountACCID.AsInteger;
      oDataset.FieldByName('ACCCODE').AsString := cdsAvailableAccountACCCODE.AsString;
      oDataset.FieldByName('ACCNAME').AsString := cdsAvailableAccountACCNAME.AsString;
      oDataset.Post;

      cdsAvailableAccount.Delete;
    end;

//    oDataset.EnableControls;
//    cdsAvailableAccount.EnableControls;
  end;

end;

procedure TfrmDataGroup.btnRemoveAllClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataAccount.DataSet;
  if oDataset <> nil then
  begin
    cdsAvailableAccount.DisableControls;
    oDataset.DisableControls;

    if not oDataset.IsEmpty then
    begin
      oDataset.First;

      while not oDataset.IsEmpty do
      begin
        cdsAvailableAccount.Append;
        cdsAvailableAccountACCID.AsInteger := oDataset.FieldByName('ACCID').AsInteger;
        cdsAvailableAccountACCCODE.AsString := oDataset.FieldByName('ACCCODE').AsString;
        cdsAvailableAccountACCNAME.AsString := oDataset.FieldByName('ACCNAME').AsString;
        cdsAvailableAccount.Post;

        oDataset.Delete;
      end;
    end;

    oDataset.EnableControls;
    cdsAvailableAccount.EnableControls;
  end;

end;

procedure TfrmDataGroup.btnRemoveClick(Sender: TObject);
var
  oDataset: TDataset;
begin
  oDataset := dsDataAccount.DataSet;
  if oDataset <> nil then
  begin
//    cdsAvailableAccount.DisableControls;
//    oDataset.DisableControls;

    if not oDataset.IsEmpty then
    begin
      cdsAvailableAccount.Append;
      cdsAvailableAccountACCID.AsInteger := oDataset.FieldByName('ACCID').AsInteger;
      cdsAvailableAccountACCCODE.AsString := oDataset.FieldByName('ACCCODE').AsString;
      cdsAvailableAccountACCNAME.AsString := oDataset.FieldByName('ACCNAME').AsString;
      cdsAvailableAccount.Post;

      oDataset.Delete;
    end;

//    oDataset.EnableControls;
//    cdsAvailableAccount.EnableControls;
  end;

end;

procedure TfrmDataGroup.RedrawDataAccount;
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsAvailableAccount.DisableControls;
    cdsDataAccount.DisableControls;

    Try
      cdsAvailableAccount.Close;
      cdsAvailableAccount.CreateDataSet;

      if cdsDataAccount.IsEmpty then
      begin
        cdsLuAccount.First;
        while not cdsLuAccount.Eof do
        begin
          cdsAvailableAccount.Append;
          cdsAvailableAccountACCID.AsInteger := cdsLuAccountACCID.AsInteger;
          cdsAvailableAccountACCCODE.AsString := cdsLuAccountACCCODE.AsString;
          cdsAvailableAccountACCNAME.AsString := cdsLuAccountACCNAME.AsString;
          cdsAvailableAccount.Post;

          cdsLuAccount.Next;
        end;
      end
      else
      begin
        cdsLuAccount.First;
        while not cdsLuAccount.Eof do
        begin
          if not cdsDataAccount.Locate('ACCID', cdsLuAccountACCID.Value, []) then
          begin
            cdsAvailableAccount.Append;
            cdsAvailableAccountACCID.AsInteger := cdsLuAccountACCID.AsInteger;
            cdsAvailableAccountACCCODE.AsString := cdsLuAccountACCCODE.AsString;
            cdsAvailableAccountACCNAME.AsString := cdsLuAccountACCNAME.AsString;
            cdsAvailableAccount.Post;
          end;

          cdsLuAccount.Next;
        end;
      end;
    Finally
      cdsDataAccount.EnableControls;
      cdsAvailableAccount.EnableControls;
    End;

  end;
end;

function TfrmDataGroup.Run(ADataID: Integer): TModalResult;
var
  oForm: TfrmDataGroup;
  isNew: Boolean;
begin
  Result := mrNone;
  oForm := TfrmDataGroup.Create(nil);
  Try
    isNew := False;

//    with dmGlobal.IntDataLookup do
//    begin
//      cdsLuAccount.Close;
//      cdsLuAccount.Open;
//    end;

    with oForm do
    begin
      cdsData.Close;
      cdsData.Params[0].AsInteger := ADataID;
      cdsData.Open;

      if cdsData.IsEmpty then
      begin
        isNew := True;
        cdsData.Append;
        cdsDataDATAID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_N_DATA');
      end
      else
      begin
        cdsData.Edit;
      end;

      cdsAvailableAccount.Close;
      cdsAvailableAccount.Params[0].AsInteger := cdsDataDATAID.AsInteger;
      cdsAvailableAccount.Open;

//      RedrawDataAccount;

      if ShowModal = mrOK then
      begin
        cdsAvailableAccount.CancelUpdates;
        cdsAvailableAccount.Close;
        cdsData.ApplyUpdates(-1);
        Result := mrOk
      end
      else
      begin
        cdsAvailableAccount.CancelUpdates;
        cdsAvailableAccount.Close;
        if isNew then
          dmGlobal.RemoteServer.CancelSeq('TBL_N_DATA', cdsDataDATAID.AsInteger);
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
