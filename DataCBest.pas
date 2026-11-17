unit DataCBest;

interface

uses
  System.SysUtils, System.Classes, XLSSheetData5, XLSReadWriteII5, Dialogs,
  Winapi.ShellAPI, Vcl.Forms, Winapi.Windows, ActiveX, XMLIntf, XMLDoc, ComObj,
  Variants;

type
  TdmCBest = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GenerateCOL(AFileName: string; AListData: TStringList; ASheetName: string = ''; AXML: Boolean = False);
    procedure GenerateRD(AFilename: string; AListData: TStringList; AOP: string = '');
    procedure GenerateCDSFile(AFileName: string; AListData: TStringList);
  end;

var
  dmCBest: TdmCBest;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses DataGlobal;

{$R *.dfm}

{ TdmCBest }

procedure TdmCBest.GenerateCDSFile(AFileName: string; AListData: TStringList);
var
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  i, j: Integer;
  oCOLList: TStringList;
  sFileName, sExt: string;
  aStrings: array of string;
begin
  try
    SetLength(aStrings, 10);

    aStrings[0]  := 'externalReference';
    aStrings[1]  := 'participantCode';
    aStrings[2]  := 'sourceAccount';
    aStrings[3]  := 'targetAccount';
    aStrings[4]  := 'currencyCode';
    aStrings[5]  := 'securityCodeType';
    aStrings[6]  := 'securityCode';
    aStrings[7]  := 'instrumentQuantity';
    aStrings[8]  := 'settlementDate';
    aStrings[9]  := 'description';

    oXML := NewXMLDocument;
    oXML.Options := [doNodeAutoIndent];
    oRootNode := oXML.AddChild('Message');

    for i := 0 to AListData.Count -1 do
    begin
      oCOLList := TStringList.Create;
      oCOLList.StrictDelimiter := True;
      oCOLList.Delimiter       := '|';
      oCOLList.DelimitedText   := AListData.Strings[i];

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';
      for j := 0 to oCOLList.Count -1 do
      begin
        oCNode := oNode.AddChild('Field');
        oCNode.Attributes['name'] := aStrings[j];
        oCNode.Text := oCOLList.Strings[j];
      end;

      oCOLList.Free;
    end;
  finally
    sExt      := ExtractFileExt(AFileName);
    sFileName := StringReplace(AFileName, sExt, '.cds', [rfReplaceAll, rfIgnoreCase]);
    oXML.SaveToFile(sFileName);
  end;
end;

procedure TdmCBest.GenerateCOL(AFileName: string; AListData: TStringList; ASheetName: string; AXML: Boolean);
var
  i, j: Integer;
  oCOLList: TStringList;
  oExcel, oSheet: OleVariant;
  iCol: Integer;
  aStrings: array of string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  sFileName, sExt: string;
  sAccountCustodyBroker: string;
begin
  try
    iCol := 1;

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oExcel.WorkBooks[1].WorkSheets[1].Name := ASheetName;
    oSheet := oExcel.WorkBooks[1].WorkSheets[ASheetName];

    oSheet.Cells[1, 1]  := 'External Reference';
    oSheet.Cells[1, 2]  := 'Participant Code';
    oSheet.Cells[1, 3]  := 'Source Account';
    oSheet.Cells[1, 4]  := 'Target Account';
    oSheet.Cells[1, 5]  := 'Currency Code';
    oSheet.Cells[1, 6]  := 'Security Code Type';
    oSheet.Cells[1, 7]  := 'Security Code';
    oSheet.Cells[1, 8]  := 'Instrument Quantity';
    oSheet.Cells[1, 9]  := 'Settlement Date';
    oSheet.Cells[1, 10] := 'Description';

    for i := 0 to AListData.Count -1 do
    begin
      Inc(iCol);

      oCOLList := TStringList.Create;
      oCOLList.StrictDelimiter := True;
      oCOLList.Delimiter       := '|';
      oCOLList.DelimitedText   := AListData.Strings[i];

      oSheet.Cells[iCol, 1]  := oCOLList.Strings[0];
      oSheet.Cells[iCol, 2]  := oCOLList.Strings[1];
      oSheet.Cells[iCol, 3]  := oCOLList.Strings[2];
      oSheet.Cells[iCol, 4]  := oCOLList.Strings[3];
      oSheet.Cells[iCol, 5]  := oCOLList.Strings[4];
      oSheet.Cells[iCol, 6]  := oCOLList.Strings[5];
      oSheet.Cells[iCol, 7]  := oCOLList.Strings[6];
      oSheet.Cells[iCol, 8]  := oCOLList.Strings[7];
      oSheet.Cells[iCol, 9]  := oCOLList.Strings[8];
      oSheet.Cells[iCol, 10] := oCOLList.Strings[9];

      oCOLList.Free;
    end;

    if AXML then
      GenerateCDSFile(AFileName, AListData);

  finally
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(AFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

procedure TdmCBest.GenerateRD(AFilename: string; AListData: TStringList;
  AOP: string);
var
  i, j: Integer;
  oRDList: TStringList;
  sSheetName: string;
  iCol: Integer;
  oExcel, oSheet: OleVariant;
  aStrings: array of string;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  sFileName, sExt: string;
begin
  try
    SetLength(aStrings, 16);

    aStrings[0]  := 'externalReference';
    aStrings[1]  := 'instructionType';
    aStrings[2]  := 'participantCode';
    aStrings[3]  := 'participantAccount';
    aStrings[4]  := 'counterpartCode';
    aStrings[5]  := 'securityCodeType';
    aStrings[6]  := 'securityCode';
    aStrings[7]  := 'numberOfSecurities';
    aStrings[8]  := 'tradeDate';
    aStrings[9]  := 'currencyCode';
    aStrings[10] := 'settlementAmount';
    aStrings[11] := 'settlementDate';
    aStrings[12] := 'description';
    aStrings[13] := 'purpose';
    aStrings[14] := 'tradingReference';
    aStrings[15] := 'settlementReason';

    oXML := NewXMLDocument;
    oXML.Options := [doNodeAutoIndent];
    oRootNode := oXML.AddChild('Message');

    for i := 0 to AListData.Count -1 do
    begin
      oRDList := TStringList.Create;
      oRDList.StrictDelimiter := True;
      oRDList.Delimiter       := '|';
      oRDList.DelimitedText   := AListData.Strings[i];

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';
      for j := 0 to oRDList.Count -1 do
      begin
        oCNode := oNode.AddChild('Field');
        oCNode.Attributes['name'] := aStrings[j];
        oCNode.Text := oRDList.Strings[j];
      end;

      oRDList.Free;
    end;
  finally
    sExt      := ExtractFileExt(AFileName);
    sFileName := StringReplace(AFileName, sExt, '.otc', [rfReplaceAll, rfIgnoreCase]);
    oXML.SaveToFile(sFileName);

  end;

//  ganti menjadi format xml karena menggunakan next-g [2019.02.01]
//  try
//    iCol := 1;
//
//    oExcel := CreateOleObject('Excel.Application');
//    oExcel.DisplayAlerts := false;
//    oExcel.WorkBooks.Add;
//
//    oExcel.WorkBooks[1].WorkSheets[1].Name := 'Sheet1';
//    oSheet := oExcel.WorkBooks[1].WorkSheets['Sheet1'];
//
//    oSheet.Cells[1, 1]  := 'External Reference';
//    oSheet.Cells[1, 2]  := 'Instruction Type';
//    oSheet.Cells[1, 3]  := 'Participant Code';
//    oSheet.Cells[1, 4]  := 'Participant Account';
//    oSheet.Cells[1, 5]  := 'Counter Part Code';
//    oSheet.Cells[1, 6]  := 'Security Code Type';
//    oSheet.Cells[1, 7]  := 'Security Code';
//    oSheet.Cells[1, 8]  := 'Number Of Securities';
//    oSheet.Cells[1, 9]  := 'Trade Date';
//    oSheet.Cells[1, 10] := 'Currency Code';
//    oSheet.Cells[1, 11] := 'Settlement Account';
//    oSheet.Cells[1, 12] := 'Settlement Date';
//    oSheet.Cells[1, 13] := 'Description';
//    oSheet.Cells[1, 14] := 'Purpose';
//    oSheet.Cells[1, 15] := 'Trading Reference';
//    oSheet.Cells[1, 16] := 'Remark';
//
//    for i := 0 to AListData.Count -1 do
//    begin
//      Inc(iCol);
//
//      oRDList := TStringList.Create;
//      oRDList.StrictDelimiter := True;
//      oRDList.Delimiter       := '|';
//      oRDList.DelimitedText   := AListData.Strings[i];
//      sSheetName              := oRDList.Strings[1];
//
//      oSheet.Cells[iCol, 1]  := oRDList.Strings[0];
//      oSheet.Cells[iCol, 2]  := oRDList.Strings[1];
//      oSheet.Cells[iCol, 3]  := oRDList.Strings[2];
//      oSheet.Cells[iCol, 4]  := oRDList.Strings[3];
//      oSheet.Cells[iCol, 5]  := oRDList.Strings[4];
//      oSheet.Cells[iCol, 6]  := oRDList.Strings[5];
//      oSheet.Cells[iCol, 7]  := oRDList.Strings[6];
//      oSheet.Cells[iCol, 8]  := oRDList.Strings[7];
//      oSheet.Cells[iCol, 9]  := oRDList.Strings[8];
//      oSheet.Cells[iCol, 10] := oRDList.Strings[9];
//      oSheet.Cells[iCol, 11] := oRDList.Strings[10];
//      oSheet.Cells[iCol, 12] := oRDList.Strings[11];
//      oSheet.Cells[iCol, 13] := oRDList.Strings[12];
//      oSheet.Cells[iCol, 14] := oRDList.Strings[13];
//      oSheet.Cells[iCol, 15] := oRDList.Strings[14];
//      oSheet.Cells[iCol, 16] := oRDList.Strings[15];
//
//      oRDList.Free;
//    end;
//
//  finally
//    oExcel.Visible := False;
//    oExcel.Workbooks[1].SaveAs(AFileName);
//
//    oExcel.Quit;
//    oExcel := Unassigned;
//    oSheet := Unassigned;
//  end;
end;

end.
