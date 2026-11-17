unit FormVD5ConfigEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid;

type
  TfrmVD5ConfigEditor = class(TForm)
    cdsVD5: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    lbVD5: TcxDBLabel;
    lbxVD5: TdxLayoutItem;
    lbBaris: TcxDBLabel;
    dxLayoutItem4: TdxLayoutItem;
    lbKeterangan: TcxDBLabel;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsHeader: TClientDataSet;
    dsHeader: TDataSource;
    cdsHeaderVD5: TStringField;
    cdsHeaderBaris: TIntegerField;
    cdsHeaderKeterangan: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    gvwVD5Config: TcxGridDBBandedTableView;
    dsVD5: TDataSource;
    cdsVD5ID: TLargeintField;
    cdsVD5VD5: TStringField;
    cdsVD5BARIS: TIntegerField;
    cdsVD5COACODE: TStringField;
    gvwVD5ConfigID: TcxGridDBBandedColumn;
    gvwVD5ConfigVD5: TcxGridDBBandedColumn;
    gvwVD5ConfigBARIS: TcxGridDBBandedColumn;
    gvwVD5ConfigCOACODE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsVD5NewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    FKeyBaris: integer;
    FKeyVD5: string;
    FDataSet: TDataSource;
    FBaris: integer;
    FVD5: string;
    FKeterangan: string;
    FVDState: TDataSetState;
    { Private declarations }
  public
    { Public declarations }
    property KeyVD5: string read FKeyVD5 write fKeyVD5;
    property KeyBaris: integer read FKeyBaris write FKeyBaris;

    property VD5: string read FVD5 write FVD5;
    property Baris: integer read FBaris write FBaris;
    property Keterangan: string read FKeterangan write FKeterangan;

    property VDState: TDataSetState read FVDState write FVDState;
  end;

var
  frmVD5ConfigEditor: TfrmVD5ConfigEditor;

implementation

{$R *.dfm}

uses DataGlobal, FormVD5Config;

procedure TfrmVD5ConfigEditor.cdsVD5NewRecord(DataSet: TDataSet);
begin
  cdsVD5VD5.asString    := VD5;
  cdsVD5BARIS.AsInteger := Baris;
end;

procedure TfrmVD5ConfigEditor.cxButton1Click(Sender: TObject);
begin
  if VDState in [dsEdit] then
  begin
    if MessageDlg('Save data ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdsVD5.ApplyUpdates(-1);
      ModalResult := mrOk;
    end;
  end
  else
    ModalResult := mrCancel;
end;

procedure TfrmVD5ConfigEditor.FormCreate(Sender: TObject);
begin
  cdsHeader.Close;
  cdsHeader.createDataSet;
end;

procedure TfrmVD5ConfigEditor.FormShow(Sender: TObject);
begin
  cdsHeader.Append;
  cdsHeaderVD5.asString        := VD5;
  cdsHeaderBaris.asInteger     := Baris;
  cdsHeaderKeterangan.AsString := Keterangan;
  cdsHeader.Post;

  cdsVD5.Close;
  cdsVD5.Params[0].asString  := KeyVD5;
  cdsVD5.Params[1].AsInteger := KeyBaris;
  cdsVD5.Open;

  cdsVD5.ReadOnly := not (VDState in [dsEdit]);

  gvwVD5Config.Navigator.Visible := (VDState in [dsEdit]);
end;

end.
