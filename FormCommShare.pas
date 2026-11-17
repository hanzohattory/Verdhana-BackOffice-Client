unit FormCommShare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxDBEdit,
  cxCheckBox, cxTextEdit, Data.DB, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCommShare = class(TfrmEditorData)
    cdsCommShare: TNClientDataset;
    cdsCommShareCOMM_SHARE_ID: TIntegerField;
    cdsCommShareCOMM_SHARE_CODE: TStringField;
    cdsCommShareCOMM_SHARE_DESC: TStringField;
    cdsCommShareMONTH_PERIOD1: TIntegerField;
    cdsCommShareSALES_COMM_PERIOD1: TFloatField;
    cdsCommShareCOMP_COMM_PERIOD1: TFloatField;
    cdsCommShareEXT_REFERRAL_COMM_PERIOD1: TFloatField;
    cdsCommShareINT_REFERRAL_COMM_PERIOD1: TFloatField;
    cdsCommShareEXPIRED_PERIOD1: TStringField;
    cdsCommShareMONTH_PERIOD2: TIntegerField;
    cdsCommShareSALES_COMM_PERIOD2: TFloatField;
    cdsCommShareCOMP_COMM_PERIOD2: TFloatField;
    cdsCommShareEXT_REFERRAL_COMM_PERIOD2: TFloatField;
    cdsCommShareINT_REFERRAL_COMM_PERIOD2: TFloatField;
    cdsCommShareEXPIRED_PERIOD2: TStringField;
    cdsCommShareMONTH_PERIOD3: TIntegerField;
    cdsCommShareSALES_COMM_PERIOD3: TFloatField;
    cdsCommShareCOMP_COMM_PERIOD3: TFloatField;
    cdsCommShareEXT_REFERRAL_COMM_PERIOD3: TFloatField;
    cdsCommShareINT_REFERRAL_COMM_PERIOD3: TFloatField;
    cdsCommShareEXPIRED_PERIOD3: TStringField;
    cdsCommShareMODDA: TDateTimeField;
    cdsCommShareMODUI: TStringField;
    cdsCommShareAPPDA: TDateTimeField;
    cdsCommShareAPPUI: TStringField;
    cdsCommShareUNDER4Y: TIntegerField;
    cdsCommShareUNDER4YDA: TDateTimeField;
    cdsCommShareNOTES4Y: TStringField;
    cdsCommShareISDEL: TIntegerField;
    cdsCommShareID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcMonth1: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBSpinEdit4: TcxDBSpinEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBSpinEdit5: TcxDBSpinEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    lcPeriod1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBSpinEdit6: TcxDBSpinEdit;
    lcMonth2: TdxLayoutItem;
    cxDBSpinEdit7: TcxDBSpinEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBSpinEdit8: TcxDBSpinEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBSpinEdit9: TcxDBSpinEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    lcPeriod2: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBSpinEdit10: TcxDBSpinEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBSpinEdit11: TcxDBSpinEdit;
    lcMonth3: TdxLayoutItem;
    cxDBSpinEdit12: TcxDBSpinEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBSpinEdit13: TcxDBSpinEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    lcPeriod3: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBSpinEdit14: TcxDBSpinEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBSpinEdit15: TcxDBSpinEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cdsCommShareMONTH_PERIOD4: TIntegerField;
    cdsCommShareSALES_COMM_PERIOD4: TFloatField;
    cdsCommShareCOMP_COMM_PERIOD4: TFloatField;
    cdsCommShareEXT_REFERRAL_COMM_PERIOD4: TFloatField;
    cdsCommShareINT_REFERRAL_COMM_PERIOD4: TFloatField;
    cdsCommShareEXPIRED_PERIOD4: TStringField;
    cdsCommShareMONTH_PERIOD5: TIntegerField;
    cdsCommShareSALES_COMM_PERIOD5: TFloatField;
    cdsCommShareCOMP_COMM_PERIOD5: TFloatField;
    cdsCommShareEXT_REFERRAL_COMM_PERIOD5: TFloatField;
    cdsCommShareINT_REFERRAL_COMM_PERIOD5: TFloatField;
    cdsCommShareEXPIRED_PERIOD5: TStringField;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBSpinEdit16: TcxDBSpinEdit;
    lcMonth4: TdxLayoutItem;
    lcPeriod4: TdxLayoutGroup;
    cxDBSpinEdit17: TcxDBSpinEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBSpinEdit18: TcxDBSpinEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBSpinEdit19: TcxDBSpinEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBSpinEdit20: TcxDBSpinEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBSpinEdit21: TcxDBSpinEdit;
    lcMonth5: TdxLayoutItem;
    lcPeriod5: TdxLayoutGroup;
    cxDBSpinEdit22: TcxDBSpinEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBSpinEdit23: TcxDBSpinEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    cxDBSpinEdit24: TcxDBSpinEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxDBSpinEdit25: TcxDBSpinEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    procedure cdsCommShareNewRecord(DataSet: TDataSet);
    procedure cdsCommShareBeforePost(DataSet: TDataSet);
    procedure cdsCommShareEXPIRED_PERIOD1Change(Sender: TField);
    procedure cdsCommShareEXPIRED_PERIOD2Change(Sender: TField);
    procedure cdsCommShareEXPIRED_PERIOD3Change(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCommShareAfterOpen(DataSet: TDataSet);
    procedure cdsCommShareEXPIRED_PERIOD4Change(Sender: TField);
    procedure cdsCommShareEXPIRED_PERIOD5Change(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommShare: TfrmCommShare;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCommShare.btnOKClick(Sender: TObject);
begin
  //Period Protection
  if (cdsCommShareEXPIRED_PERIOD1.AsString <> '1') then
  begin
    if (cdsCommShareMONTH_PERIOD1.AsInteger <= 0) then
    begin
      dmGlobal.ErrorMessage('1st Month Period must be more than 0');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD2.AsString <> '1') then
  begin
    if (cdsCommShareMONTH_PERIOD2.AsInteger <= 0) then
    begin
      dmGlobal.ErrorMessage('2nd Month Period must be more than 0');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD3.AsString <> '1') then
  begin
    if (cdsCommShareMONTH_PERIOD3.AsInteger <= 0) then
    begin
      dmGlobal.ErrorMessage('3rd Month Period must be more than 0');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD4.AsString <> '1') then
  begin
    if (cdsCommShareMONTH_PERIOD4.AsInteger <= 0) then
    begin
      dmGlobal.ErrorMessage('4th Month Period must be more than 0');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD5.AsString <> '1') then
  begin
    if (cdsCommShareMONTH_PERIOD5.AsInteger <= 0) then
    begin
      dmGlobal.ErrorMessage('5th Month Period must be more than 0');
      Abort;
    end;
  end;

  //Percentage Protection
  if (cdsCommShareSALES_COMM_PERIOD1.AsFloat
    + cdsCommShareCOMP_COMM_PERIOD1.AsFloat
    + cdsCommShareEXT_REFERRAL_COMM_PERIOD1.AsFloat
    + cdsCommShareINT_REFERRAL_COMM_PERIOD1.AsFloat <> 100) then
  begin
    dmGlobal.ErrorMessage('1st Period Commission Total Must Be 100%.');
    Abort;
  end;

  if (cdsCommShareEXPIRED_PERIOD1.AsString <> '1') then
  begin
    if (cdsCommShareSALES_COMM_PERIOD2.AsFloat
      + cdsCommShareCOMP_COMM_PERIOD2.AsFloat
      + cdsCommShareEXT_REFERRAL_COMM_PERIOD2.AsFloat
      + cdsCommShareINT_REFERRAL_COMM_PERIOD2.AsFloat <> 100) then
    begin
      dmGlobal.ErrorMessage('2nd Period Commission Total Must Be 100%.');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD2.AsString <> '1') then
  begin
    if (cdsCommShareSALES_COMM_PERIOD3.AsFloat
      + cdsCommShareCOMP_COMM_PERIOD3.AsFloat
      + cdsCommShareEXT_REFERRAL_COMM_PERIOD3.AsFloat
      + cdsCommShareINT_REFERRAL_COMM_PERIOD3.AsFloat <> 100) then
    begin
      dmGlobal.ErrorMessage('3rd Period Commission Total Must Be 100%.');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD3.AsString <> '1') then
  begin
    if (cdsCommShareSALES_COMM_PERIOD4.AsFloat
      + cdsCommShareCOMP_COMM_PERIOD4.AsFloat
      + cdsCommShareEXT_REFERRAL_COMM_PERIOD4.AsFloat
      + cdsCommShareINT_REFERRAL_COMM_PERIOD4.AsFloat <> 100) then
    begin
      dmGlobal.ErrorMessage('4th Period Commission Total Must Be 100%.');
      Abort;
    end;
  end;

  if (cdsCommShareEXPIRED_PERIOD4.AsString <> '1') then
  begin
    if (cdsCommShareSALES_COMM_PERIOD5.AsFloat
      + cdsCommShareCOMP_COMM_PERIOD5.AsFloat
      + cdsCommShareEXT_REFERRAL_COMM_PERIOD5.AsFloat
      + cdsCommShareINT_REFERRAL_COMM_PERIOD5.AsFloat <> 100) then
    begin
      dmGlobal.ErrorMessage('5th Period Commission Total Must Be 100%.');
      Abort;
    end;
  end;

  inherited;
end;

procedure TfrmCommShare.cdsCommShareAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lcMonth1.Enabled := cdsCommShareEXPIRED_PERIOD1.AsString <> '1';
  lcMonth2.Enabled := cdsCommShareEXPIRED_PERIOD2.AsString <> '1';
  lcMonth3.Enabled := cdsCommShareEXPIRED_PERIOD3.AsString <> '1';
  lcMonth4.Enabled := cdsCommShareEXPIRED_PERIOD4.AsString <> '1';
  lcMonth5.Enabled := cdsCommShareEXPIRED_PERIOD5.AsString <> '1';

  lcPeriod2.Enabled := lcMonth1.Enabled;
  lcPeriod3.Enabled := lcMonth2.Enabled;
  lcPeriod4.Enabled := lcMonth3.Enabled;
  lcPeriod5.Enabled := lcMonth4.Enabled;
end;

procedure TfrmCommShare.cdsCommShareBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCommShare.State = dsInsert then
  begin
    cdsCommShareCOMM_SHARE_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_COMM_SHARE');
  end;
end;

procedure TfrmCommShare.cdsCommShareEXPIRED_PERIOD1Change(Sender: TField);
begin
  inherited;
  lcMonth1.Enabled := cdsCommShareEXPIRED_PERIOD1.AsString <> '1';
  lcPeriod2.Enabled := lcMonth1.Enabled;
  lcMonth2.Enabled := cdsCommShareEXPIRED_PERIOD2.AsString <> '1';
end;

procedure TfrmCommShare.cdsCommShareEXPIRED_PERIOD2Change(Sender: TField);
begin
  inherited;
  lcMonth2.Enabled := cdsCommShareEXPIRED_PERIOD2.AsString <> '1';
  lcPeriod3.Enabled := lcMonth2.Enabled;
  lcMonth3.Enabled := cdsCommShareEXPIRED_PERIOD3.AsString <> '1';
end;

procedure TfrmCommShare.cdsCommShareEXPIRED_PERIOD3Change(Sender: TField);
begin
  inherited;
  lcMonth3.Enabled := cdsCommShareEXPIRED_PERIOD3.AsString <> '1';
  lcPeriod4.Enabled := lcMonth3.Enabled;
  lcMonth4.Enabled := cdsCommShareEXPIRED_PERIOD4.AsString <> '1';
end;

procedure TfrmCommShare.cdsCommShareEXPIRED_PERIOD4Change(Sender: TField);
begin
  inherited;
  lcMonth4.Enabled := cdsCommShareEXPIRED_PERIOD4.AsString <> '1';
  lcPeriod5.Enabled := lcMonth4.Enabled;
  lcMonth5.Enabled := cdsCommShareEXPIRED_PERIOD5.AsString <> '1';
end;

procedure TfrmCommShare.cdsCommShareEXPIRED_PERIOD5Change(Sender: TField);
begin
  inherited;
  lcMonth5.Enabled := cdsCommShareEXPIRED_PERIOD5.AsString <> '1';
end;

procedure TfrmCommShare.cdsCommShareNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCommShareCOMM_SHARE_ID.AsInteger := -1;

  //Period 1
  cdsCommShareMONTH_PERIOD1.AsInteger := 0;
  cdsCommShareSALES_COMM_PERIOD1.AsFloat := 0;
  cdsCommShareCOMP_COMM_PERIOD1.AsFloat := 100;
  cdsCommShareEXT_REFERRAL_COMM_PERIOD1.AsFloat := 0;
  cdsCommShareINT_REFERRAL_COMM_PERIOD1.AsFloat := 0;
  cdsCommShareEXPIRED_PERIOD1.AsString := '1';

  //Period 2
  cdsCommShareMONTH_PERIOD2.AsInteger := 0;
  cdsCommShareSALES_COMM_PERIOD2.AsFloat := 0;
  cdsCommShareCOMP_COMM_PERIOD2.AsFloat := 100;
  cdsCommShareEXT_REFERRAL_COMM_PERIOD2.AsFloat := 0;
  cdsCommShareINT_REFERRAL_COMM_PERIOD2.AsFloat := 0;
  cdsCommShareEXPIRED_PERIOD2.AsString := '1';

  //Period 3
  cdsCommShareMONTH_PERIOD3.AsInteger := 0;
  cdsCommShareSALES_COMM_PERIOD3.AsFloat := 0;
  cdsCommShareCOMP_COMM_PERIOD3.AsFloat := 100;
  cdsCommShareEXT_REFERRAL_COMM_PERIOD3.AsFloat := 0;
  cdsCommShareINT_REFERRAL_COMM_PERIOD3.AsFloat := 0;
  cdsCommShareEXPIRED_PERIOD3.AsString := '1';

  //Period 4
  cdsCommShareMONTH_PERIOD4.AsInteger := 0;
  cdsCommShareSALES_COMM_PERIOD4.AsFloat := 0;
  cdsCommShareCOMP_COMM_PERIOD4.AsFloat := 100;
  cdsCommShareEXT_REFERRAL_COMM_PERIOD4.AsFloat := 0;
  cdsCommShareINT_REFERRAL_COMM_PERIOD4.AsFloat := 0;
  cdsCommShareEXPIRED_PERIOD4.AsString := '1';

  //Period 5
  cdsCommShareMONTH_PERIOD5.AsInteger := 0;
  cdsCommShareSALES_COMM_PERIOD5.AsFloat := 0;
  cdsCommShareCOMP_COMM_PERIOD5.AsFloat := 100;
  cdsCommShareEXT_REFERRAL_COMM_PERIOD5.AsFloat := 0;
  cdsCommShareINT_REFERRAL_COMM_PERIOD5.AsFloat := 0;
  cdsCommShareEXPIRED_PERIOD5.AsString := '1';
end;

Initialization
  RegisterClass(TfrmCommShare);

end.
