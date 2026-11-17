unit FormDataSetOffByAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoEdit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  dxLayoutControl, cxPropertiesStore, cxClasses, NActionPermission,
  Vcl.Menus, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxImageComboBox, cxCheckBox, Vcl.ActnList, NDatasetAction;

type
  TfrmDataSetOffByAccount = class(TfrmBrowseNoEdit)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsDataSetOffList: TNClientDataset;
    txtAccountCode: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccountName: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsDataSetOffListACCID: TLargeintField;
    cdsDataSetOffListACCNO: TStringField;
    cdsDataSetOffListACCNAME: TStringField;
    cdsDataSetOffListTRXTYPE: TStringField;
    cdsDataSetOffListTRDDATE: TDateField;
    cdsDataSetOffListDUEDATE: TDateField;
    cdsDataSetOffListCCYCODE: TStringField;
    cdsDataSetOffListEXRATE: TFloatField;
    cdsDataSetOffListAMOUNT: TFloatField;
    cdsDataSetOffListPROCESSDATE: TDateField;
    cdsDataSetOffListLEDGERACC: TStringField;
    cdsDataSetOffListLEDGERNAME: TStringField;
    cdsDataSetOffListSETOFF_DESC: TStringField;
    cdsDataSetOffListDC: TStringField;
    cdsDataSetOffListSETTOFF_AMT: TFloatField;
    cdsDataSetOffListREMARKS: TStringField;
    cdsDataSetOffListLINKID: TLargeintField;
    cdsDataSetOffListLINKTYPE: TStringField;
    cdsDataSetOffListLINKNO: TStringField;
    cdsDataSetOffListVOUCHERID: TLargeintField;
    dsDataSetOffList: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRXTYPE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterPROCESSDATE: TcxGridDBBandedColumn;
    gvwMasterLEDGERACC: TcxGridDBBandedColumn;
    gvwMasterLEDGERNAME: TcxGridDBBandedColumn;
    gvwMasterSETOFF_DESC: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterSETTOFF_AMT: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    actSetOff: TNAction;
    PopupMenu: TPopupMenu;
    SetOff1: TMenuItem;
    procedure txtAccountCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataSetOffByAccount: TfrmDataSetOffByAccount;

implementation

{$R *.dfm}

uses FormLuAccount, DataLookup, DataGlobal;

procedure TfrmDataSetOffByAccount.txtAccountCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  iAccID: Integer;
begin
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(-1, True) = mrOK then
    begin
      iAccID              := cdsLuAccountMultiFilterACCID.AsInteger;
      txtAccountCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccountName.Text := cdsLuAccountMultiFilterACCNAME.AsString;

      cdsDataSetOffList.Close;
      cdsDataSetOffList.Params[0].AsInteger := iAccID;
      cdsDataSetOffList.Open;
    end;
  end;
end;

end.
