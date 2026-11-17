unit FormReportClientDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TfrmReportClientDetail = class(TfrmReport)
    edAccCodeFrom: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    lcParameterGroup1: TdxLayoutGroup;
    lcParameterGroup4: TdxLayoutGroup;
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAccIDFrom: Integer;
    FAccIDTo: Integer;
  public
    { Public declarations }
  end;

var
  frmReportClientDetail: TfrmReportClientDetail;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportClientDetail.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccIDFrom;
  Report.Params[1].AsInteger := FAccIDTo;
  inherited;
end;

procedure TfrmReportClientDetail.edAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeFrom.EditValue := FAccIDFrom;
      edAccCodeFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientDetail.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDFrom;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientDetail.FormCreate(Sender: TObject);
begin
  inherited;
  FAccIdFrom := 0;
  FAccIdTo := 0;
end;

end.
