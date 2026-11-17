unit FormIPOBooks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, cxLabel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ActnList, NDatasetAction, FormIPOList,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit;

type
  TfrmIPOBooks = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsSubject: TDataSource;
    lblIPODesc: TcxLabel;
    popMaster: TPopupMenu;
    aclIPOBook: TActionList;
    actNew: TNAction;
    actEdit: TNAction;
    AddIPOBook1: TMenuItem;
    EditIPOBook1: TMenuItem;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterBOOKID: TcxGridDBBandedColumn;
    gvwMasterBOOKCODE: TcxGridDBBandedColumn;
    gvwMasterBOOKDATE: TcxGridDBBandedColumn;
    gvwMasterBOOKDESC: TcxGridDBBandedColumn;
    gvwMasterBOOKTYPE: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn;
    gvwMasterCUST_PHONE: TcxGridDBBandedColumn;
    gvwMasterCUST_FAX: TcxGridDBBandedColumn;
    gvwMasterCUST_MAIL: TcxGridDBBandedColumn;
    gvwMasterORDERTYPE: TcxGridDBBandedColumn;
    gvwMasterORDERCCY: TcxGridDBBandedColumn;
    gvwMasterORDERMAXPRICE: TcxGridDBBandedColumn;
    gvwMasterORDERVALUE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterDIST_TYPE: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    actDelete: TNAction;
    actReload: TNAction;
    Delete1: TMenuItem;
    Reload1: TMenuItem;
    dsBooking: TDataSource;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actNewUpdate(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
    procedure Run(ADesc: String; AFormBrowse: TfrmIPOList);
  end;

var
  frmIPOBooks: TfrmIPOBooks;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOBook;

{ TfrmIPOBooks }

procedure TfrmIPOBooks.actNewExecute(Sender: TObject);
begin
  frmIPOBook.Run(-1, FFormBrowse);
  dsBooking.DataSet.Refresh;
end;

procedure TfrmIPOBooks.actNewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not ReadOnly;
end;

procedure TfrmIPOBooks.actReloadExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPO.Close;
    cdsIPO.Open;

    cdsIPOBookByIPO.Close;
    cdsIPOBookByIPO.Open;
  end;
end;

procedure TfrmIPOBooks.actEditExecute(Sender: TObject);
begin
  frmIPOBook.Run(dsBooking.DataSet.FieldByName('BOOKID').AsInteger, FFormBrowse);
  dsBooking.DataSet.Refresh;
end;

procedure TfrmIPOBooks.Run(ADesc: String; AFormBrowse: TfrmIPOList);
var
  oForm: TfrmIPOBooks;
begin
  oForm := TfrmIPOBooks.Create(nil);
  Try
    oForm.FFormBrowse := AFormBrowse;
//    oForm.lblIPODesc.Caption := 'IPO Book List for ' + QuotedStr(ADesc);
    oForm.ShowModal;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
