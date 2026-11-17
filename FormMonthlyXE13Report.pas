unit FormMonthlyXE13Report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmMonthlyXE13Report = class(TfrmEditorData)
    cdsSubject: TNClientDataset;
    cdsSubjectID: TLargeintField;
    cdsSubjectPERIOD: TStringField;
    cdsSubjectNO: TIntegerField;
    cdsSubjectLNUM: TStringField;
    cdsSubjectCOL1: TStringField;
    cdsSubjectCOL2: TStringField;
    cdsSubjectCOL3: TStringField;
    cdsSubjectCOL4: TStringField;
    cdsSubjectCOL5: TStringField;
    cdsSubjectCOL6: TStringField;
    cdsSubjectENTRYDATE: TDateField;
    cdsSubjectVALUEDATE: TDateField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edCol2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edCol3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edCol4: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edCol5: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edCol6: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cdsSubjectAfterOpen(DataSet: TDataSet);
    procedure cdsSubjectBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyXE13Report: TfrmMonthlyXE13Report;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMonthlyXE13Report.cdsSubjectAfterOpen(DataSet: TDataSet);
begin
  inherited;
  edCol2.Properties.ReadOnly := (cdsSubjectNO.AsInteger = 7) or (cdsSubjectNO.AsInteger = 8) or (cdsSubjectNO.AsInteger = 9)
    or (cdsSubjectNO.AsInteger = 10) or (cdsSubjectNO.AsInteger = 11) or (cdsSubjectNO.AsInteger = 12)
    or (cdsSubjectNO.AsInteger = 13) or (cdsSubjectNO.AsInteger = 14) or (cdsSubjectNO.AsInteger = 15)
    or (cdsSubjectNO.AsInteger = 16) or (cdsSubjectNO.AsInteger = 17) or (cdsSubjectNO.AsInteger = 18)
    or (cdsSubjectNO.AsInteger = 19) or (cdsSubjectNO.AsInteger = 20) or (cdsSubjectNO.AsInteger = 21)
    or (cdsSubjectNO.AsInteger = 22) or (cdsSubjectNO.AsInteger = 23) or (cdsSubjectNO.AsInteger = 24)
    or (cdsSubjectNO.AsInteger = 26) or (cdsSubjectNO.AsInteger = 27) or (cdsSubjectNO.AsInteger = 28)
    or (cdsSubjectNO.AsInteger = 29) or (cdsSubjectNO.AsInteger = 30) or (cdsSubjectNO.AsInteger = 31)
    or (cdsSubjectNO.AsInteger = 32) or (cdsSubjectNO.AsInteger = 33) or (cdsSubjectNO.AsInteger = 34)
    or (cdsSubjectNO.AsInteger = 35) or (cdsSubjectNO.AsInteger = 37) or (cdsSubjectNO.AsInteger = 38)
    or (cdsSubjectNO.AsInteger = 39);
  edCol2.ParentColor := edCol2.Properties.ReadOnly = True;
  edCol2.TabStop     := edCol2.Properties.ReadOnly = False;

  edCol3.Properties.ReadOnly := (cdsSubjectNO.AsInteger = 26) or (cdsSubjectNO.AsInteger = 27) or (cdsSubjectNO.AsInteger = 28)
    or (cdsSubjectNO.AsInteger = 29) or (cdsSubjectNO.AsInteger = 30) or (cdsSubjectNO.AsInteger = 31)
    or (cdsSubjectNO.AsInteger = 32) or (cdsSubjectNO.AsInteger = 33) or (cdsSubjectNO.AsInteger = 34)
    or (cdsSubjectNO.AsInteger = 35) or (cdsSubjectNO.AsInteger = 37) or (cdsSubjectNO.AsInteger = 38)
    or (cdsSubjectNO.AsInteger = 39) or (cdsSubjectNO.AsInteger = 41)
    or (cdsSubjectNO.AsInteger = 42) or (cdsSubjectNO.AsInteger = 43) or (cdsSubjectNO.AsInteger = 44);
  edCol3.ParentColor := edCol3.Properties.ReadOnly = True;
  edCol3.TabStop     := edCol3.Properties.ReadOnly = False;

  edCol4.Properties.ReadOnly := (cdsSubjectNO.AsInteger = 41) or (cdsSubjectNO.AsInteger = 42)
    or (cdsSubjectNO.AsInteger = 43) or (cdsSubjectNO.AsInteger = 44);
  edCol4.ParentColor         := edCol4.Properties.ReadOnly = True;
  edCol4.TabStop             := edCol4.Properties.ReadOnly = False;

  edCol5.Properties.ReadOnly := (cdsSubjectNO.AsInteger = 26) or (cdsSubjectNO.AsInteger = 27) or (cdsSubjectNO.AsInteger = 28)
    or (cdsSubjectNO.AsInteger = 29) or (cdsSubjectNO.AsInteger = 30) or (cdsSubjectNO.AsInteger = 31)
    or (cdsSubjectNO.AsInteger = 32) or (cdsSubjectNO.AsInteger = 33) or (cdsSubjectNO.AsInteger = 34)
    or (cdsSubjectNO.AsInteger = 35) or (cdsSubjectNO.AsInteger = 37) or (cdsSubjectNO.AsInteger = 38)
    or (cdsSubjectNO.AsInteger = 39) or (cdsSubjectNO.AsInteger = 41) or (cdsSubjectNO.AsInteger = 42)
    or (cdsSubjectNO.AsInteger = 43) or (cdsSubjectNO.AsInteger = 44);
  edCol5.ParentColor         := edCol5.Properties.ReadOnly = True;
  edCol5.TabStop             := edCol5.Properties.ReadOnly = False;

  edCol6.Properties.ReadOnly := (cdsSubjectNO.AsInteger = 41) or (cdsSubjectNO.AsInteger = 42) or (cdsSubjectNO.AsInteger = 43) or (cdsSubjectNO.AsInteger = 44);
  edCol6.ParentColor         := edCol6.Properties.ReadOnly = True;
  edCol6.TabStop             := edCol6.Properties.ReadOnly = False;
end;

procedure TfrmMonthlyXE13Report.cdsSubjectBeforePost(DataSet: TDataSet);
var
  iCol3, iCol4, iCol5, iCol6: double;
begin
  inherited;
  iCol3 := StrToFloatDef(cdsSubjectCOL3.AsString, 0);
  iCol4 := StrToFloatDef(cdsSubjectCOL4.AsString, 0);
  iCol5 := StrToFloatDef(cdsSubjectCOL5.AsString, 0);
  iCol6 := StrToFloatDef(cdsSubjectCOL6.AsString, 0);

  if (cdsSubjectNO.AsInteger <> 37) and (cdsSubjectNO.AsInteger <> 38) and (cdsSubjectNO.AsInteger <> 39) and (cdsSubjectNO.AsInteger <> 41) and (cdsSubjectNO.AsInteger <> 42)
    and (cdsSubjectNO.AsInteger <> 43) and (cdsSubjectNO.AsInteger <> 44) then
  begin
    if (cdsSubjectNO.AsInteger = 16) or (cdsSubjectNO.AsInteger = 17) or (cdsSubjectNO.AsInteger = 18)
      or (cdsSubjectNO.AsInteger = 19) or (cdsSubjectNO.AsInteger = 20) or (cdsSubjectNO.AsInteger = 26)
      or (cdsSubjectNO.AsInteger = 27) or (cdsSubjectNO.AsInteger = 28)
      or (cdsSubjectNO.AsInteger = 29) or (cdsSubjectNO.AsInteger = 30) or (cdsSubjectNO.AsInteger = 31)
      or (cdsSubjectNO.AsInteger = 32) or (cdsSubjectNO.AsInteger = 33) or (cdsSubjectNO.AsInteger = 34)
      or (cdsSubjectNO.AsInteger = 35) or (cdsSubjectNO.AsInteger = 37) or (cdsSubjectNO.AsInteger = 38)
      or (cdsSubjectNO.AsInteger = 39)
    then
      cdsSubjectCOL2.AsString := FormatFloat('##0', iCol3 + iCol4 + iCol5 + iCol6)
    else
    begin
      cdsSubjectCOL3.AsString := FormatFloat('##0.00', iCol3);
      cdsSubjectCOL4.AsString := FormatFloat('##0.00', iCol4);
      cdsSubjectCOL5.AsString := FormatFloat('##0.00', iCol5);
      cdsSubjectCOL6.AsString := FormatFloat('##0.00', iCol6);
      cdsSubjectCOL2.AsString := FormatFloat('##0.00', iCol3 + iCol4 + iCol5 + iCol6);
    end;
  end;
end;

end.
