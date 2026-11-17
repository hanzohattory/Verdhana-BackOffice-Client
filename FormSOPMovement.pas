unit FormSOPMovement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, dxStatusBar, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxImageComboBox, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  dxLayoutControl, Data.DB, Datasnap.DBClient, NClientDataset;

type
  TfrmSOPMovement = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsSOPMov: TNClientDataset;
    cdsSOPMovREQID: TIntegerField;
    cdsSOPMovREQCODE: TStringField;
    cdsSOPMovREQDATE: TDateField;
    cdsSOPMovSOPID: TIntegerField;
    cdsSOPMovACCSOPID: TIntegerField;
    cdsSOPMovACCID: TIntegerField;
    cdsSOPMovSTATUS: TStringField;
    cdsSOPMovMODDA: TDateTimeField;
    cdsSOPMovMODUI: TStringField;
    cdsSOPMovAPPDA: TDateTimeField;
    cdsSOPMovAPPUI: TStringField;
    cdsSOPMovUNDER4Y: TIntegerField;
    cdsSOPMovUNDER4YDA: TDateTimeField;
    cdsSOPMovNOTES4Y: TStringField;
    cdsSOPMovISDEL: TIntegerField;
    cdsSOPMovID: TLargeintField;
    cdsSOP: TNClientDataset;
    cdsSOPSOPID: TIntegerField;
    cdsSOPSOPCODE: TStringField;
    cdsSOPSOPTYPE: TStringField;
    cdsSOPSOPDESC: TStringField;
    cdsSOPSTOCKID: TLargeintField;
    cdsSOPACCID: TIntegerField;
    cdsSOPREGDATE: TDateField;
    cdsSOPSTARTDATE: TDateField;
    cdsSOPENDDATE: TDateField;
    cdsSOPMODDA: TDateTimeField;
    cdsSOPMODUI: TStringField;
    cdsSOPAPPDA: TDateTimeField;
    cdsSOPAPPUI: TStringField;
    cdsSOPUNDER4Y: TIntegerField;
    cdsSOPUNDER4YDA: TDateTimeField;
    cdsSOPNOTES4Y: TStringField;
    cdsSOPISDEL: TIntegerField;
    cdsSOPID: TLargeintField;
    cdsSOPACCOCDE: TStringField;
    cdsSOPACCNAME: TStringField;
    cdsSOPSTOCKCODE: TStringField;
    cdsSOPSTOCKNAME: TStringField;
    cdsSOPMember: TNClientDataset;
    cdsSOPMemberACCSOPID: TIntegerField;
    cdsSOPMemberSOPID: TIntegerField;
    cdsSOPMemberNIK: TStringField;
    cdsSOPMemberNAME: TStringField;
    cdsSOPMemberBNCODE: TStringField;
    cdsSOPMemberBANKACCNO: TStringField;
    cdsSOPMemberBANKACCNAME: TStringField;
    cdsSOPMemberMODDA: TDateTimeField;
    cdsSOPMemberMODUI: TStringField;
    cdsSOPMemberAPPDA: TDateTimeField;
    cdsSOPMemberAPPUI: TStringField;
    cdsSOPMemberUNDER4Y: TIntegerField;
    cdsSOPMemberUNDER4YDA: TDateTimeField;
    cdsSOPMemberNOTES4Y: TStringField;
    cdsSOPMemberISDEL: TIntegerField;
    cdsSOPMemberID: TLargeintField;
    cdsSOPMemberBANKBRANCH: TStringField;
    cdsSOPMemberACC_CUSTCODE: TStringField;
    cdsSOPMemberSEQ: TIntegerField;
    cdsSOPMemberBIRTH_PLACE: TStringField;
    cdsSOPMemberBIRTH_DATE: TDateTimeField;
    cdsSOPMemberIDNO: TStringField;
    cdsSOPMemberNPWPNO: TStringField;
    cdsSOPMemberDEPOSIT_QTY: TIntegerField;
    cdsSOPMemberREG_ACCID: TIntegerField;
    cdsSOPMemberREG_ACCCODE: TStringField;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dsSubject: TDataSource;
    dsSOP: TDataSource;
    dsSOPMember: TDataSource;
    cdsSOPMovSOPNAME: TStringField;
    cdsSOPMovACCNAME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure View(AReqID, ASOPID: Integer);
    procedure Insert(ASOPID: Integer);
  end;

var
  frmSOPMovement: TfrmSOPMovement;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmSOPMovement }

procedure TfrmSOPMovement.Insert(ASOPID: Integer);
var
  oForm: TfrmSOPMovement;
begin
  oForm := TfrmSOPMovement.Create(Nil);
  Try
    with oForm do
    begin
      cdsSOP.Close;
      cdsSOP.Params[0].AsInteger := ASOPID;
      cdsSOP.Open;

      cdsSOPMember.Close;
      cdsSOPMember.Params[0].AsInteger := ASOPID;
      cdsSOPMember.Open;

      if not cdsSOP.IsEmpty then
      begin
        cdsSOPMov.Close;
        cdsSOPMov.Params[0].AsInteger := -1;
        cdsSOPMov.Open;

        cdsSOPMov.Append;
        cdsSOPMovSOPID.AsInteger := ASOPID;
        cdsSOPMovREQCODE.AsString := '<AUTO>';
        cdsSOPMovREQDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;

        if ShowModal = mrOk then
        begin
          if cdsSOPMov.State in dsEditModes then
          begin
            cdsSOPMovREQID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_SOPMOVEMENT');
            cdsSOPMovREQCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
              cdsSOPMovREQDATE.AsDateTime, 'RM', 'TBL_B_SOPMOVEMENT');
            cdsSOPMovSTATUS.AsString := 'O';
            cdsSOPMov.Post;
          end;

          cdsSOPMov.ApplyUpdates(0);
        end;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmSOPMovement.View(AReqID, ASOPID: Integer);
var
  oForm: TfrmSOPMovement;
begin
  oForm := TfrmSOPMovement.Create(Nil);
  Try
    with oForm do
    begin
      cdsSOP.Close;
      cdsSOP.Params[0].AsInteger := ASOPID;
      cdsSOP.Open;

      cdsSOPMember.Close;
      cdsSOPMember.Params[0].AsInteger := ASOPID;
      cdsSOPMember.Open;

      cdsSOPMov.Close;
      cdsSOPMov.Params[0].AsInteger := AReqID;
      cdsSOPMov.Open;

      if not cdsSOPMov.IsEmpty then
      begin
        ShowModal;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
