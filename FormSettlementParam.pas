unit FormSettlementParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxDBLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, cxDBEdit;

type
  TfrmSettlementParam = class(TfrmEditor)
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    LayoutControlItem2: TdxLayoutItem;
    cxLabel2: TcxLabel;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlGroup4: TdxLayoutGroup;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem8: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    LayoutControlItem4: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    LayoutControlItem5: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    LayoutControlItem6: TdxLayoutItem;
  private
    FAction: Integer;
    { Private declarations }
  public
    { Public declarations }
    property Action : Integer read FAction write FAction;
  end;

var
  frmSettlementParam: TfrmSettlementParam;

implementation

{$R *.dfm}

uses DataGlobal, FormClientOnBoardingList;

end.
