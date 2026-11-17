unit FormEntityCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxMRUEdit, cxButtonEdit, cxDropDownEdit,
  cxCheckBox, cxMaskEdit, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridCardView, cxGridDBCardView, cxClasses, cxGridCustomView,
  cxGridCustomLayoutView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxLabel,
  cxImageComboBox;

type
  TfrmEntityCheck = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsSubject: TDataSource;
    cdsCOBRetailEntityCheck: TNClientDataset;
    dxLayoutControl1Item1: TdxLayoutItem;
    Grid: TcxGrid;
    cvEntityRetail: TcxGridDBCardView;
    lvEntityRetail: TcxGridLevel;
    lblHeader: TcxLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsCOBRetailEntityCheckENTTID: TIntegerField;
    cdsCOBRetailEntityCheckENTTCODE: TStringField;
    cdsCOBRetailEntityCheckCUST_TYPE: TIntegerField;
    cdsCOBRetailEntityCheckSIDNO: TStringField;
    cdsCOBRetailEntityCheckFIRSTNAME: TStringField;
    cdsCOBRetailEntityCheckMIDDLENAME: TStringField;
    cdsCOBRetailEntityCheckLASTNAME: TStringField;
    cdsCOBRetailEntityCheckRET_BIRTHPLACE: TStringField;
    cdsCOBRetailEntityCheckRET_BIRTDATE: TDateField;
    cdsCOBRetailEntityCheckRET_GENDER: TStringField;
    cdsCOBRetailEntityCheckCNTREST: TStringField;
    cdsCOBRetailEntityCheckMOTHER_NAME: TStringField;
    cdsCOBRetailEntityCheckTAXID: TStringField;
    cdsCOBRetailEntityCheckTAXPAYER_STATUS: TIntegerField;
    cdsCOBRetailEntityCheckNPWP: TStringField;
    cdsCOBRetailEntityCheckNPWP_REGDATE: TDateField;
    cdsCOBRetailEntityCheckKTP: TStringField;
    cdsCOBRetailEntityCheckKTP_EXPDATE: TDateField;
    cdsCOBRetailEntityCheckKTP_LIFETIME: TStringField;
    cdsCOBRetailEntityCheckACCID: TIntegerField;
    cdsCOBRetailEntityCheckACCCODE: TStringField;
    cdsCOBRetailEntityCheckACCNAME: TStringField;
    cdsCOBRetailEntityCheckACCINIT: TStringField;
    cdsCOBRetailEntityCheckACC_STS: TStringField;
    cdsCOBRetailEntityCheckPRDCODE: TStringField;
    cvEntityRetailENTTID: TcxGridDBCardViewRow;
    cvEntityRetailENTTCODE: TcxGridDBCardViewRow;
    cvEntityRetailCUST_TYPE: TcxGridDBCardViewRow;
    cvEntityRetailSIDNO: TcxGridDBCardViewRow;
    cvEntityRetailFIRSTNAME: TcxGridDBCardViewRow;
    cvEntityRetailMIDDLENAME: TcxGridDBCardViewRow;
    cvEntityRetailLASTNAME: TcxGridDBCardViewRow;
    cvEntityRetailRET_BIRTHPLACE: TcxGridDBCardViewRow;
    cvEntityRetailRET_BIRTDATE: TcxGridDBCardViewRow;
    cvEntityRetailRET_GENDER: TcxGridDBCardViewRow;
    cvEntityRetailCNTREST: TcxGridDBCardViewRow;
    cvEntityRetailMOTHER_NAME: TcxGridDBCardViewRow;
    cvEntityRetailTAXID: TcxGridDBCardViewRow;
    cvEntityRetailTAXPAYER_STATUS: TcxGridDBCardViewRow;
    cvEntityRetailNPWP: TcxGridDBCardViewRow;
    cvEntityRetailNPWP_REGDATE: TcxGridDBCardViewRow;
    cvEntityRetailKTP: TcxGridDBCardViewRow;
    cvEntityRetailKTP_EXPDATE: TcxGridDBCardViewRow;
    cvEntityRetailKTP_LIFETIME: TcxGridDBCardViewRow;
    cvEntityRetailACCID: TcxGridDBCardViewRow;
    cvEntityRetailACCCODE: TcxGridDBCardViewRow;
    cvEntityRetailACCNAME: TcxGridDBCardViewRow;
    cvEntityRetailACCINIT: TcxGridDBCardViewRow;
    cvEntityRetailACC_STS: TcxGridDBCardViewRow;
    cvEntityRetailPRDCODE: TcxGridDBCardViewRow;
    lvEntityInstitution: TcxGridLevel;
    cvEntityInstitution: TcxGridDBCardView;
    dsInsti: TDataSource;
    cdsCOBInstitutionEntityCheck: TNClientDataset;
    cdsCOBInstitutionEntityCheckENTTID: TIntegerField;
    cdsCOBInstitutionEntityCheckENTTCODE: TStringField;
    cdsCOBInstitutionEntityCheckCUST_TYPE: TIntegerField;
    cdsCOBInstitutionEntityCheckSIDNO: TStringField;
    cdsCOBInstitutionEntityCheckENTNAME: TStringField;
    cdsCOBInstitutionEntityCheckENTDESC: TStringField;
    cdsCOBInstitutionEntityCheckBICCODE: TStringField;
    cdsCOBInstitutionEntityCheckCNTREST: TStringField;
    cdsCOBInstitutionEntityCheckCNTCITIZEN: TStringField;
    cdsCOBInstitutionEntityCheckINS_DATEOFESTABLIZED: TDateField;
    cdsCOBInstitutionEntityCheckINS_BUSSTYPE: TStringField;
    cdsCOBInstitutionEntityCheckINS_COMPTYPE: TStringField;
    cdsCOBInstitutionEntityCheckINS_NOOFGAZETTE: TStringField;
    cdsCOBInstitutionEntityCheckINS_DATEOFGAZETTE: TDateField;
    cdsCOBInstitutionEntityCheckTAXID: TStringField;
    cdsCOBInstitutionEntityCheckNPWP: TStringField;
    cdsCOBInstitutionEntityCheckNPWP_REGDATE: TDateField;
    cdsCOBInstitutionEntityCheckKITAS: TStringField;
    cdsCOBInstitutionEntityCheckKITAS_EXPDATE: TDateField;
    cdsCOBInstitutionEntityCheckACCID: TIntegerField;
    cdsCOBInstitutionEntityCheckACCCODE: TStringField;
    cdsCOBInstitutionEntityCheckACCNAME: TStringField;
    cdsCOBInstitutionEntityCheckACCINIT: TStringField;
    cdsCOBInstitutionEntityCheckACC_STS: TStringField;
    cdsCOBInstitutionEntityCheckPRDCODE: TStringField;
    cvEntityInstitutionENTTID: TcxGridDBCardViewRow;
    cvEntityInstitutionENTTCODE: TcxGridDBCardViewRow;
    cvEntityInstitutionCUST_TYPE: TcxGridDBCardViewRow;
    cvEntityInstitutionSIDNO: TcxGridDBCardViewRow;
    cvEntityInstitutionENTNAME: TcxGridDBCardViewRow;
    cvEntityInstitutionENTDESC: TcxGridDBCardViewRow;
    cvEntityInstitutionBICCODE: TcxGridDBCardViewRow;
    cvEntityInstitutionCNTREST: TcxGridDBCardViewRow;
    cvEntityInstitutionCNTCITIZEN: TcxGridDBCardViewRow;
    cvEntityInstitutionINS_DATEOFESTABLIZED: TcxGridDBCardViewRow;
    cvEntityInstitutionINS_BUSSTYPE: TcxGridDBCardViewRow;
    cvEntityInstitutionINS_COMPTYPE: TcxGridDBCardViewRow;
    cvEntityInstitutionINS_NOOFGAZETTE: TcxGridDBCardViewRow;
    cvEntityInstitutionINS_DATEOFGAZETTE: TcxGridDBCardViewRow;
    cvEntityInstitutionTAXID: TcxGridDBCardViewRow;
    cvEntityInstitutionNPWP: TcxGridDBCardViewRow;
    cvEntityInstitutionNPWP_REGDATE: TcxGridDBCardViewRow;
    cvEntityInstitutionKITAS: TcxGridDBCardViewRow;
    cvEntityInstitutionKITAS_EXPDATE: TcxGridDBCardViewRow;
    cvEntityInstitutionACCID: TcxGridDBCardViewRow;
    cvEntityInstitutionACCCODE: TcxGridDBCardViewRow;
    cvEntityInstitutionACCNAME: TcxGridDBCardViewRow;
    cvEntityInstitutionACCINIT: TcxGridDBCardViewRow;
    cvEntityInstitutionACC_STS: TcxGridDBCardViewRow;
    cvEntityInstitutionPRDCODE: TcxGridDBCardViewRow;
    procedure cvEntityRetailRET_BIRTDATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailNPWPCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailKTPCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailFIRSTNAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailMIDDLENAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailLASTNAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityRetailMOTHER_NAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cvEntityInstitutionNPWPCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cvEntityInstitutionENTNAMECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cvEntityInstitutionINS_DATEOFESTABLIZEDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckRetail(AFirstName, AMiddleName, ALastName, AMotherName, ANPWP, AKTP: String; ABIRTHDATE: TDate; out ACCID: Integer): Boolean;
    function CheckInstitution(AEntName, ANPWP: String; AEstablishDate: TDate; out ACCID: Integer): Boolean;
  end;

var
  frmEntityCheck: TfrmEntityCheck;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmEntityCheck }

function TfrmEntityCheck.CheckInstitution(AEntName, ANPWP: String;
  AEstablishDate: TDate; out ACCID: Integer): Boolean;
var
  oForm: TfrmEntityCheck;
begin
  Result := False;

  oForm := TfrmEntityCheck.Create(nil);
  Try
    with oForm do
    begin
      Try
        cdsCOBInstitutionEntityCheck.Close;
        if AEntName = '' then
          cdsCOBInstitutionEntityCheck.Params[0].Clear
        else
          cdsCOBInstitutionEntityCheck.Params[0].AsString := AEntName;

        cdsCOBInstitutionEntityCheck.Params[1].AsDate := AEstablishDate;

        if ANPWP = '' then
          cdsCOBInstitutionEntityCheck.Params[2].Clear
        else
          cdsCOBInstitutionEntityCheck.Params[2].AsString := ANPWP;
        cdsCOBInstitutionEntityCheck.Open;

        if not cdsCOBInstitutionEntityCheck.IsEmpty then
        begin
          lblHeader.Caption := 'Your new account request maybe same with existing CIF (' +
            IntToStr(cdsCOBInstitutionEntityCheck.RecordCount) + ' records).';

          grid.ActiveLevel := lvEntityInstitution;
          if ShowModal = mrOk then
          begin
            Result := True;
            ACCID := cdsCOBInstitutionEntityCheckACCID.AsInteger;
          end;
        end;
      Except
        on E:Exception do
        begin
          dmGlobal.ErrorMessage(E.ClassName + ': ' + E.Message);
        end;
      End;
    end;
  Finally
    FreeAndNil(oForm);
  End;

end;

function TfrmEntityCheck.CheckRetail(AFirstName, AMiddleName, ALastName, AMotherName, ANPWP, AKTP: String;
  ABIRTHDATE: TDate; out ACCID: Integer): Boolean;
var
  oForm: TfrmEntityCheck;
begin
  Result := False;

  oForm := TfrmEntityCheck.Create(nil);
  Try
    with oForm do
    begin
      Try
        cdsCOBRetailEntityCheck.Close;
        if AFirstName = '' then
          cdsCOBRetailEntityCheck.Params[0].Clear
        else
          cdsCOBRetailEntityCheck.Params[0].AsString := AFirstName;

        if AMiddleName = '' then
          cdsCOBRetailEntityCheck.Params[1].Clear
        else
          cdsCOBRetailEntityCheck.Params[1].AsString := AMiddleName;

        if ALastName = '' then
          cdsCOBRetailEntityCheck.Params[2].Clear
        else
          cdsCOBRetailEntityCheck.Params[2].AsString := ALastName;

        cdsCOBRetailEntityCheck.Params[3].AsDate := ABIRTHDATE;

        if AMotherName = '' then
          cdsCOBRetailEntityCheck.Params[4].Clear
        else
          cdsCOBRetailEntityCheck.Params[4].AsString := AMotherName;

        if ANPWP = '' then
          cdsCOBRetailEntityCheck.Params[5].Clear
        else
          cdsCOBRetailEntityCheck.Params[5].AsString := ANPWP;

        if AKTP = ''  then
          cdsCOBRetailEntityCheck.Params[6].Clear
        else
          cdsCOBRetailEntityCheck.Params[6].AsString := AKTP;
        cdsCOBRetailEntityCheck.Open;

        if not cdsCOBRetailEntityCheck.IsEmpty then
        begin
          lblHeader.Caption := 'Your new account request maybe same with existing CIF (' +
            IntToStr(cdsCOBRetailEntityCheck.RecordCount) + ' records).';

          grid.ActiveLevel := lvEntityRetail;
          if ShowModal = mrOk then
          begin
            Result := True;
            ACCID := cdsCOBRetailEntityCheckACCID.AsInteger;
          end;
        end;
      Except
        on E:Exception do
        begin
          dmGlobal.ErrorMessage(E.ClassName + ': ' + E.Message);
        end;
      End;
    end;
  Finally
    FreeAndNil(oForm);
  End;

end;

procedure TfrmEntityCheck.cvEntityInstitutionENTNAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityInstitutionENTNAME.Index] = TClientDataSet(dsInsti.DataSet).Params[0].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityInstitutionINS_DATEOFESTABLIZEDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityInstitutionINS_DATEOFESTABLIZED.Index] = TClientDataSet(dsInsti.DataSet).Params[1].AsDate) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityInstitutionNPWPCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityInstitutionNPWP.Index] = TClientDataSet(dsInsti.DataSet).Params[2].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailFIRSTNAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailFIRSTNAME.Index] = TClientDataSet(dsSubject.DataSet).Params[0].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailKTPCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailKTP.Index] = TClientDataSet(dsSubject.DataSet).Params[6].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailLASTNAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailLASTNAME.Index] = TClientDataSet(dsSubject.DataSet).Params[2].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailMIDDLENAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailMIDDLENAME.Index] = TClientDataSet(dsSubject.DataSet).Params[1].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailMOTHER_NAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailMOTHER_NAME.Index] = TClientDataSet(dsSubject.DataSet).Params[4].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailNPWPCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailNPWP.Index] = TClientDataSet(dsSubject.DataSet).Params[5].AsString) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TfrmEntityCheck.cvEntityRetailRET_BIRTDATECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cvEntityRetailRET_BIRTDATE.Index] = TClientDataSet(dsSubject.DataSet).Params[3].AsDate) then
  begin
    ACanvas.Brush.Color := clRed;
  end;
end;

end.
