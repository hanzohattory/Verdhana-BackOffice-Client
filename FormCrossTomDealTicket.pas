unit FormCrossTomDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, Vcl.Tabs, dxStatusBar, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ExtCtrls, Vcl.DBCtrls, dxLayoutLookAndFeels;

type
  TfrmCrossTomDealTicket = class(TfrmEditorData)
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dsDealTicketExec: TDataSource;
    dxLayoutControl3Item1: TdxLayoutItem;
    grdDealTicketExec: TcxGrid;
    gvwDealTicketExec: TcxGridDBTableView;
    gvwDealTicketExecBOARDID: TcxGridDBColumn;
    gvwDealTicketExecEXQTY: TcxGridDBColumn;
    gvwDealTicketExecEXPRICE: TcxGridDBColumn;
    gvwDealTicketExecEXVALUE: TcxGridDBColumn;
    gvwDealTicketExecEXTIME: TcxGridDBColumn;
    gvwDealTicketExecBROKERCODE: TcxGridDBColumn;
    gvwDealTicketExecCPACCID: TcxGridDBColumn;
    grdDealTicketExecLevel1: TcxGridLevel;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dsDealTicketExecTemp: TDataSource;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    dsSubjectTemp: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrossTomDealTicket: TfrmCrossTomDealTicket;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets;

procedure TfrmCrossTomDealTicket.FormShow(Sender: TObject);
begin
  inherited;
  StatusBar.Panels[0].Text := 'Crossing Tomorrow';
end;

end.
