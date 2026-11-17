unit MTIObjects;
interface

uses
  SysUtils, Classes, MTIGlobalConst, NDataMemNonVisual, RxMemDS, DB, StrUtils, DBClient;

type
 TMTIGroupField = class;
 TColType = (ct_Numeric = 0, ct_Alphabet = 1, ct_Date = 2);
 TLogMsgType = (lmtInfo=0, lmtError=1, lmtDebug=2);

  TTradeData = class(TObject)
  private
    FClientID : string;
    FBS : string;
    FStockID : string;
    FQty: string;
    FPrice: string;
    FDueDeliver: string;
    FDueReceive: string;
    FFeeClass: string;
   public
    function Valid:boolean;
    property AccNo: string read FClientID write FClientID;
    property BS: string read FBS write FBS;
    property StockCode: string read FStockID write FStockID;
    property Qty: string read FQty write FQty;
    property Price: string read FPrice write FPrice;
    property DueDeliver: string read FDueDeliver write FDueDeliver;
    property DueReceive: string read FDueReceive write FDueReceive;
    property FeeClass: string read FFeeClass write FFeeClass;
  end;

  TReport = class(TObject)
  private
    FName : string;
    FTableName  : string;
    FFileName : string;
    FFileExt : string;
    FSheetName : string;
    FRowHeader : integer;
    FColumnsDate : string;
    FColumns : TStringList;
    FAutoDelete : string;
    FFirstRowContent : integer;
    FArrDate: Array of string;
    function GetArrDate(AIndex: integer): string;
    function GetArrDateCount:integer;
    procedure SetArrDate(AIndex: integer;ADateCol: string);
  public
    procedure ExcelColConfig(ADataSet: TDataSet);
    property Name : string read FName write FName;
    property TableName : string read FTablename write FTableName;
    property FileName : string read FFileName write FFileName;
    property FileExt : string read FFileExt write FFileExt;
    property SheetName : string read FSheetName write FSheetName;
    property RowHeader : integer read FRowHeader write FRowHeader;
    property ColumnsDate : string read FColumnsDate write FColumnsDate;
    property Columns : TStringList read FColumns write FColumns;
    property AutoDelete : string read FAutoDelete write FAutoDelete;
    property FirstRowContent : integer read FFirstRowContent write FFirstRowContent;
    property ArrColDate[AIndex: integer]: string read GetArrDate write SetArrDate;
    property ArrColDateCount: integer read GetArrDateCount;
  end;

 TXLSColumn = class(TObject)
  private
    FPosition: string;
    FPosAlpha: string;
    FHeaderCaption: string;
    FCellTypeIdx: word;
    FCellType: TColType;
    FValidate: boolean;
    FListError: TStringList;
    FRowHeader: integer;
  public
    property Position: string read FPosition write FPosition;
    property HeaderCaption: string read FHeaderCaption write FHeaderCaption;
    property CellTypeIdx: word read FCellTypeIdx write FCellTypeIdx;
    property CellType: TColType read FCellType write FCellType;
    property Validate: boolean read FValidate write FValidate;
    property PosAlpha: string read FPosAlpha write FPosAlpha;
    property RowHeader: integer read FRowHeader write FRowHeader;
    property ListError: TStringList read FListError write FListError;
end;

  TMsg = class(TObject)
  private
    FMsgType: TLogMsgType;
    FMsg: string;
  public
    property MsgType: TLogMsgType read FMsgType write FMsgType;
    property Msg: string read FMsg write FMsg;
  end;

  TXLSMsg = class(TMsg)
  private
    FRow: string;
    FColumn: string;
    FValue: string;
  public
    property Row: string read FRow write FRow;
    property Column: string read FColumn write FColumn;
    property Value: string read FValue write FValue;
  end;

  TAllocMsg = class(TMsg)
  private
    FTRDID: string;
    FACCNO: string;
  public
    property TRDID: string read FTRDID write FTRDID;
    property ACCNO: string read FACCNO write FACCNO;
  end;

  TLog = class(TObject)
  private
    FListMessage: TStringList;
  public
    constructor Create;
    destructor  Destroy; override;
    property ListMessage: TStringList read FListMessage write FListMessage;
  end;

  TXLSLog = class(TLog)
  public
    procedure Add(AMsg:TXLSMsg);
  end;

  TAllocLog = class(TLog)
  public
    procedure Add(AMsg:TAllocMsg);
  end;

 TMTIField = class(TCollectionItem)
  private
    FFieldName: string;
    FValue: string;
    FIsnull: boolean;
    procedure SetFieldName(const AValue: string);
  protected
    function GetDisplayName : String; override;
  public
    procedure Assign(Source: TPersistent); override;
    property FieldName: string read FFieldName write SetFieldName;
    property Value: string read FValue write FValue;
    property Isnull: boolean read FIsnull write FIsnull;
  end;

  TMTIFields = class(TCollection)
  private
    FOwner: TComponent;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(AIndex: Integer): TMTIField;
    procedure SetItem(AIndex: Integer; AValue: TMTIField);
    procedure Update(AItem: TMTIField);
  public
    constructor Create(AOwner: TComponent; AGroupField: TMTIGroupField);
    property Items[AIndex: Integer] : TMTIField read GetItem write SetItem;
    function Add : TMTIField;
    function Insert(AIndex: Integer): TMTIField;
    function ByName(AFieldName: string) : TMTIField;
    procedure Delete(AIndex: Integer);
  end;

  TMTIRecord = class(TCollectionItem)
  private
    FRecordName: string;
    FFieldCount: integer;
    FRequiredField: integer;
    FFields: TMTIFields;
    FDisable: boolean;
    procedure SetFields(const AFields: TMTIFields);
  protected
    function GetFieldCount: integer;
  public
    procedure Assign(Source: TPersistent); override;
    property RecordName: string read FRecordName write FRecordName;
    property FieldCount: integer read GetFieldCount;
    property RequiredField: integer read FRequiredField;
    property Fields: TMTIFields read FFields write SetFields;
    property Disable: boolean read FDisable write FDisable;
  end;

  TMTIRecords = class(TCollection)
  private
    FOwner: TComponent;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(AIndex: Integer): TMTIRecord;
    procedure SetItem(AIndex: Integer; AValue: TMTIRecord);
    procedure Update(AItem: TMTIRecord);
  public
    constructor Create(AOwner: TComponent);
    property Items[AIndex: Integer] : TMTIRecord read GetItem write SetItem;
    function Add : TMTIRecord;
    function Insert(AIndex: Integer): TMTIRecord;
    function ByName(ARecordName: string) : TMTIRecord;
    procedure Delete(AIndex: Integer);
  end;

  TRec_import_eb_block = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_import_response = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_export_allocation = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_export_event_notification = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_export_match_agreed_trade = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_import_contract = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TRec_import_cancel = class(TMTIRecords)
  public
    constructor Create(AOwner: TComponent);
  end;

  TTable_commissions = class(TRxMemoryData)
  public
    constructor Create(AOwner: TComponent);
  end;

  TTable_charges_taxes = class(TRxMemoryData)
  public
    constructor Create(AOwner: TComponent);
  end;

  TTable_contract_commissions = class(TRxMemoryData)
  public
    constructor Create(AOwner: TComponent);
  end;

  TTable_contract_charges_taxes = class(TRxMemoryData)
  public
    constructor Create(AOwner: TComponent);
  end;

  TMTIGroupField = class(TCollectionItem)
  private
    FName: string;
    FFields: TStringList;
  public
    procedure SetFields(ArrField: array of string);
    procedure Assign(Source: TPersistent); override;
    property Name: string read FName write FName;
    property Fields: TStringList read FFields;
  end;

  TMTIGroupRecord = class(TCollection)
  private
    FOwner: TComponent;
  protected
    function GetOwner: TPersistent; override;
    function GetItem(AIndex: Integer): TMTIGroupField;
    procedure SetItem(AIndex: Integer; AValue: TMTIGroupField);
    procedure Update(AItem: TMTIRecord);
  public
    constructor Create(AOwner: TComponent);
    property Items[AIndex: Integer] : TMTIGroupField read GetItem write SetItem;
    function Add : TMTIGroupField;
    function Insert(AIndex: Integer): TMTIGroupField;
    function ByName(AName: string) : TMTIGroupField;
    procedure Delete(AIndex: Integer);
  end;

  TMTITransaction = class(TObject)
  private
    FName: string;
    FRecords: TMTIRecords;
  public
    property Name: string read FName write FName;
    property Records: TMTIRecords read FRecords write FRecords;
  end;

  TMTIimport = class(TMTITransaction)
  public
    procedure CreateFile(AFileName: string);
  end;

  TMTIresponse = class(TMTITransaction)
  public
    constructor Create;
    procedure ReadResponseFile(AList: TStringList);
  end;

  TMTIexport_allocation = class(TMTITransaction)
  private
    FCommissions: TStringList;
    FChargeTaxes: TStringList;
    FDirectedcommissions: TStringList;
  public
    constructor Create;
    procedure ReadExportFile(AList: TStringList);
    property Commissions: TStringList read FCommissions;
    property ChargeTaxes: TStringList read FChargeTaxes;
    property Directedcommissions: TStringList read FDirectedcommissions;
  end;

  TMTIexport_event_notification = class(TMTITransaction)
  public
    constructor Create;
    procedure ReadExportFile(AList: TStringList);
  end;

  TMTIexport_match_agreed_trade = class(TMTITransaction)
  public
    constructor Create;
    procedure ReadExportFile(AList: TStringList);
  end;

  TMTIimport_eb_block = class(TMTITransaction)
  private
    FCommissions: TStringList;
    FChargeTaxes: TStringList;
    FTableCommission: TTable_commissions;
    FTableChargesTaxes: TTable_charges_taxes;
  public
    constructor Create;
    procedure CreateFile(AFileName: string);overload;
    property Commissions: TStringList read FCommissions;
    property ChargeTaxes: TStringList read FChargeTaxes;
    property TableCommission: TTable_commissions read FTableCommission;
    property TableChargesTaxes: TTable_charges_taxes read FTableChargesTaxes;
  end;

  TMTIImport_contract = class(TMTITransaction)
  private
    FTableCommission: TTable_contract_commissions;
    FTableChargesTaxes: TTable_contract_charges_taxes;
  public
    constructor Create;
    procedure CreateFile(AFileName: string);overload;
    property TableCommission: TTable_contract_commissions read FTableCommission;
    property TableChargesTaxes: TTable_contract_charges_taxes read FTableChargesTaxes;
  end;

  TMTIImport_cancel = class(TMTIimport)
  public
    constructor Create;
  end;

  function LocateField(Value: string; Strings: array of string): Boolean;
  function LocateSuffixFile(Value: string; Strings: array of string): Boolean;

implementation

function LocateField(Value: string; Strings: array of string): Boolean;
var I: Integer;
begin
  Result := False;
  for I := Low(Strings) to High(Strings) do
  Result := Result or (Value = Strings[I]);
end;

function LocateSuffixFile(Value: string; Strings: array of string): Boolean;
var I: Integer;
    sValue, sString : string;
begin
  Result := False;
  for I := Low(Strings) to High(Strings) do
  begin
    sValue := copy(Value,1,Length(Strings[I]));
    sString := Strings[I];
    Result := Result or (sValue = sString);
  end;
end;


{ TMTIField }

procedure TMTIField.Assign(Source: TPersistent);
begin
  inherited;
  if Source is TMTIField then
  begin
    FFieldName:= TMTIField(Source).FieldName;
    FValue:= TMTIField(Source).Value;
    FIsnull:= TMTIField(Source).Isnull;
  end
  else
  begin
    inherited;
  end;
end;

function TMTIField.GetDisplayName: String;
begin
  Result := TComponent(Collection.Owner).Name + '::' + FFieldName;
end;

procedure TMTIField.SetFieldName(const AValue: string);
begin
  FFieldName := AValue;
end;

{ TMTIFields }

function TMTIFields.Add: TMTIField;
begin
  Result := TMTIField(Inherited Add);
end;

function TMTIFields.ByName(AFieldName: string): TMTIField;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    if Items[i].FieldName = AFieldName then
    begin
      Result := Items[i];
      Exit;
    end;
  end;
end;


constructor TMTIFields.Create(AOwner: TComponent; AGroupField: TMTIGroupField);
var
  i: integer;
  oField: TMTIField;
begin
  inherited Create(TMTIField);
  FOwner := AOwner;

  for i := 0 to AGroupField.Fields.Count - 1 do
  begin
    oField := Self.Add;
    oField.FFieldName := AGroupField.Fields.Strings[i];
  end;

end;

procedure TMTIFields.Delete(AIndex: Integer);
begin
  inherited Delete(AIndex);
end;

function TMTIFields.GetItem(AIndex: Integer): TMTIField;
begin
  Result := TMTIField(inherited GetItem(AIndex));
end;

function TMTIFields.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TMTIFields.Insert(AIndex: Integer): TMTIField;
begin
  Result := TMTIField(inherited Insert(AIndex));
end;

procedure TMTIFields.SetItem(AIndex: Integer; AValue: TMTIField);
begin
  inherited SetItem(AIndex, AValue);
end;

procedure TMTIFields.Update(AItem: TMTIField);
begin
  inherited Update(AItem);
end;

{ TMTIRecord }

procedure TMTIRecord.Assign(Source: TPersistent);
begin
  inherited;
  if Source is TMTIRecord then
  begin
    FRecordName:= TMTIRecord(Source).RecordName;
    FFieldCount:= TMTIRecord(Source).FieldCount;
    FRequiredField:= TMTIRecord(Source).RequiredField;
    FFields:= TMTIRecord(Source).Fields;
  end
  else
  begin
    inherited;
  end;

end;

function TMTIRecord.GetFieldCount: integer;
begin
  Result := FFields.Count;
end;

procedure TMTIRecord.SetFields(const AFields: TMTIFields);
begin
  FFields := AFields;
end;

{ TMTIRecords }

function TMTIRecords.Add: TMTIRecord;
begin
  Result := TMTIRecord(Inherited Add);
end;

function TMTIRecords.ByName(ARecordName: string): TMTIRecord;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    if Items[i].FRecordName = ARecordName then
    begin
      Result := Items[i];
      Exit;
    end;
  end;

end;

constructor TMTIRecords.Create(AOwner: TComponent);
begin
  inherited Create(TMTIRecord);
  FOwner := AOwner;
end;

procedure TMTIRecords.Delete(AIndex: Integer);
begin
  inherited Delete(AIndex);
end;

function TMTIRecords.GetItem(AIndex: Integer): TMTIRecord;
begin
  Result := TMTIRecord(inherited GetItem(AIndex));
end;

function TMTIRecords.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TMTIRecords.Insert(AIndex: Integer): TMTIRecord;
begin
  Result := TMTIRecord(inherited Insert(AIndex));
end;

procedure TMTIRecords.SetItem(AIndex: Integer; AValue: TMTIRecord);
begin
  inherited SetItem(AIndex, AValue);
end;

procedure TMTIRecords.Update(AItem: TMTIRecord);
begin
  inherited Update(AItem);
end;

{ TRec_import_eb_block }

constructor TRec_import_eb_block.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;

  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_block_keys);
  oGroupField.Name := block_keys;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_security_id);
  oGroupField.Name := trade_security_id;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_info);
  oGroupField.Name := trade_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_block_ssi_keys);
  oGroupField.Name := block_ssi_keys;

//  oGroupField := oGroupRecord.Add;
//  oGroupField.SetFields(Arr_fields_block_ssi_data_1);
//  oGroupField.Name := block_ssi_data_1;
//
//  oGroupField := oGroupRecord.Add;
//  oGroupField.SetFields(Arr_fields_block_ssi_data_2);
//  oGroupField.Name := block_ssi_data_2;
//
//  oGroupField := oGroupRecord.Add;
//  oGroupField.SetFields(Arr_fields_block_ssi_data_3);
//  oGroupField.Name := block_ssi_data_3;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;
end;

{ MTI_import_eb_block }

constructor TMTIimport_eb_block.Create;
var
  oRecs: TRec_import_eb_block;
begin
  FTableCommission := TTable_commissions.Create(nil);
  FTableChargesTaxes := TTable_charges_taxes.Create(nil);

  oRecs := TRec_import_eb_block.Create(nil);
  Self.FName := import_eb_block;
  Self.FRecords := oRecs;
end;


{ TMTIGroupField }

procedure TMTIGroupField.Assign(Source: TPersistent);
begin
  inherited;
  if Source is TMTIGroupField then
  begin
    FName := TMTIGroupField(Source).Name;
    FFields := TMTIGroupField(Source).Fields;
  end else
  begin
    inherited;
  end;
end;

procedure TMTIGroupField.SetFields(ArrField: array of string);
var
  i: integer;
begin
  FFields := TStringList.Create;
  for i := 0 to high(ArrField) do
    FFields.Add(ArrField[i])
end;

{ TMTIGroupRecord }

function TMTIGroupRecord.Add: TMTIGroupField;
begin
  Result := TMTIGroupField(Inherited Add);
end;

function TMTIGroupRecord.ByName(AName: string): TMTIGroupField;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    if Items[i].FName = AName then
    begin
      Result := Items[i];
      Exit;
    end;
  end;
end;

constructor TMTIGroupRecord.Create(AOwner: TComponent);
begin
  inherited Create(TMTIGroupField);
  FOwner := AOwner;
end;

procedure TMTIGroupRecord.Delete(AIndex: Integer);
begin
  inherited Delete(AIndex);
end;

function TMTIGroupRecord.GetItem(AIndex: Integer): TMTIGroupField;
begin
  Result := TMTIGroupField(inherited GetItem(AIndex));
end;

function TMTIGroupRecord.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TMTIGroupRecord.Insert(AIndex: Integer): TMTIGroupField;
begin
Result := TMTIGroupField(inherited Insert(AIndex));
end;

procedure TMTIGroupRecord.SetItem(AIndex: Integer; AValue: TMTIGroupField);
begin
  inherited SetItem(AIndex, AValue);
end;

procedure TMTIGroupRecord.Update(AItem: TMTIRecord);
begin
  inherited Update(AItem);
end;

{ TMTIimport }

procedure TMTIimport.CreateFile(AFileName: string);
  procedure RemoveBlankList(AList: TStringList);
  const
    CR = #13;
    LF = #10;
  var
    iLength : integer;
    sText : string;
  begin
    iLength := Length(AList.Text);
    if (AList.Text[iLength - 1] = CR) and (AList.Text[iLength] = LF) then
    begin
      sText := Copy(AList.Text, 1, iLength - 2);
      AList.LineBreak := '';
      AList.Text := sText;
    end;
  end;
var
  oFile: TStringList;
  i, j: integer;
  Teks: string;
const
  Delimiter = ',';
begin
  oFile := TStringList.Create;
  oFile.LineBreak := #13#10;
  oFile.Add(Self.Name);
   for i := 0 to Records.Count - 1 do
   begin
    Teks := Records.Items[i].RecordName + Delimiter;
    for j := 0 to Records.Items[i].Fields.Count - 1 do
      begin
        Teks := Teks + Records.Items[i].Fields.Items[j].Value;
        if j < (Records.Items[i].Fields.Count - 1) then Teks := Teks + Delimiter;
      end;
     oFile.Add(Teks);
   end;

   RemoveBlankList(oFile);
   oFile.SaveToFile(AFileName);
end;

{ TMTIresponse }

constructor TMTIresponse.Create;
var
  oRecs: TRec_import_response;
begin
  oRecs := TRec_import_response.Create(nil);
  Self.FName := import_response;
  Self.FRecords := oRecs;
end;

procedure TMTIresponse.ReadResponseFile(AList: TStringList);
var
  oContentField: TStringList;
  oRec, oNewRec: TMTIRecord;
  i, j: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  oGroupRecord := TMTIGroupRecord.Create(nil);

    {Assign Text File into MTI Object}
  for i := 0 to AList.Count - 1 do
    begin
      oContentField := TStringList.Create;
      oContentField.StrictDelimiter := True;
      oContentField.Delimiter := ',';
      oContentField.DelimitedText := AList.Strings[i];

      oRec := Records.ByName(oContentField.Strings[0]);
      if (not (oRec = nil)) and (not (oRec.RecordName = synch_errors)) then
      begin
        for j := 1 to oContentField.Count -1 do
        begin
          oRec.Fields.Items[j-1].Value := oContentField.Strings[j];
        end;
      end
      else if oContentField.Strings[0] = synch_errors then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_synch_errors);
        oGroupField.Name := synch_errors;
        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);

        for j := 1 to oContentField.Count -1 do
        begin
            oNewRec.Fields.Items[j - 1].Value := oContentField.Strings[j];
        end;
      end;
      oContentField.Free;
    end;
end;

{ TRec_import_response }

constructor TRec_import_response.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_response_keys);
  oGroupField.Name := response_keys;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;
end;

{ TMtIexport_allocation }

constructor TMTIexport_allocation.Create;
var
  oRecs: TRec_export_allocation;
begin
  oRecs := TRec_export_allocation.Create(nil);
  Self.FName := export_allocation;
  Self.FRecords := oRecs;
end;

procedure TMTIexport_allocation.ReadExportFile(AList: TStringList);
var
  i, j: integer;
  oContentField: TStringList;
  oRec, oNewRec: TMTIRecord;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
  oFieldName: string;
begin
  oGroupRecord := TMTIGroupRecord.Create(nil);
  FCommissions := TStringList.Create;
  FChargeTaxes := TStringList.Create;
  FDirectedcommissions := TStringList.Create;

  for i := 0 to AList.Count - 1 do
  begin
    oContentField := TStringList.Create;
    oContentField.StrictDelimiter := True;
    oContentField.Delimiter := ',';
    oContentField.DelimitedText := AList.Strings[i];
    oFieldName := oContentField.Strings[0];
    oRec := Records.ByName(oFieldName);
    if (not (oRec = nil)) and (not (LocateField(oFieldName, Arr_Allocation_Repeating_Record))) then
    begin
      for j := 1 to oContentField.Count -1 do
      begin
          oRec.Fields.Items[j-1].Value := oContentField.Strings[j];
      end;
    end
    else if LocateField(oFieldName, Arr_Allocation_Repeating_Record) then
    begin
      if oFieldName = allocation_commissions then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_allocation_commissions);
        oGroupField.Name := allocation_commissions;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = allocation_charges_taxes then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_allocation_charges_taxes);
        oGroupField.Name := allocation_charges_taxes;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = allocation_directed_commissions then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_allocation_directed_commissions);
        oGroupField.Name := allocation_directed_commissions;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end;

      for j := 1 to oContentField.Count -1 do
      begin
        if oContentField.Strings[j] = '-' then oNewRec.Fields.Items[j - 1].Value := ''
        else oNewRec.Fields.Items[j - 1].Value := oContentField.Strings[j];
      end;

      {Insert New Record into TStringList}
      if oFieldName = allocation_commissions then
      begin
        FCommissions.AddObject(oFieldName, oNewRec);
      end else
      if oFieldName = allocation_charges_taxes then
      begin
        FChargeTaxes.AddObject(oFieldName, oNewRec);
      end else
      if oFieldName = allocation_directed_commissions then
      begin
        FDirectedcommissions.AddObject(oFieldName, oNewRec);
      end;

    end;

    oContentField.Free;
  end;
end;

{ TRec_export_allocation }

constructor TRec_export_allocation.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_eb_allocation_keys);
  oGroupField.Name := eb_allocation_keys;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_security_id);
  oGroupField.Name := trade_security_id;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_info);
  oGroupField.Name := trade_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_allocation_status);
  oGroupField.Name := allocation_status;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_allocation_info);
  oGroupField.Name := allocation_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_allocation_additional_data);
  oGroupField.Name := allocation_additional_data;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_ip_allocation_ssi_keys);
  oGroupField.Name := ip_allocation_ssi_keys;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;
end;

{ TRec_export_event_notification }

constructor TRec_export_event_notification.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_block_event_notification_info);
  oGroupField.Name := block_event_notification_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_allocation_event_notification_info);
  oGroupField.Name := allocation_event_notification_info;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;
end;

{ TMTIexport_event_notification }

constructor TMTIexport_event_notification.Create;
var
  oRecs: TRec_export_event_notification;
begin
  oRecs := TRec_export_event_notification.Create(nil);
  Self.FName := export_event_notification;
  Self.FRecords := oRecs;
end;

procedure TMTIexport_event_notification.ReadExportFile(AList: TStringList);
var
  i, j: integer;
  oContentField: TStringList;
  oRec: TMTIRecord;
  oFieldName: string;
begin
  for i := 0 to AList.Count - 1 do
  begin
    oContentField := TStringList.Create;
    oContentField.StrictDelimiter := True;
    oContentField.Delimiter := ',';
    oContentField.DelimitedText := AList.Strings[i];
    oFieldName := oContentField.Strings[0];
    oRec := Records.ByName(oFieldName);
    if not (oRec = nil) then
    begin
      for j := 1 to oContentField.Count -1 do
      begin
          oRec.Fields.Items[j-1].Value := oContentField.Strings[j];
      end;
    end;
    oContentField.Free;
  end;
end;

{ TRec_export_match_agreed_trade }

constructor TRec_export_match_agreed_trade.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_keys_status);
  oGroupField.Name := trade_keys_status;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_eb_security_id);
  oGroupField.Name := eb_security_id;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_common_view_block_info);
  oGroupField.Name := common_view_block_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_common_view_contract_info);
  oGroupField.Name := common_view_contract_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_ip_additional_data);
  oGroupField.Name := ip_additional_data;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_ip_allocation_ssi_keys);
  oGroupField.Name := ip_allocation_ssi_keys;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;

end;

{ TMTIexport_match_agreed_trade }

constructor TMTIexport_match_agreed_trade.Create;
var
  oRecs: TRec_export_match_agreed_trade;
begin
  oRecs := TRec_export_match_agreed_trade.Create(nil);
  Self.FName := export_match_agreed_trade;
  Self.FRecords := oRecs;
end;

procedure TMTIexport_match_agreed_trade.ReadExportFile(AList: TStringList);
var
  i, j: integer;
  oContentField: TStringList;
  oRec, oNewRec: TMTIRecord;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
  oFieldName: string;
begin
  oGroupRecord := TMTIGroupRecord.Create(nil);

  for i := 0 to AList.Count - 1 do
  begin
    oContentField := TStringList.Create;
    oContentField.StrictDelimiter := True;
    oContentField.Delimiter := ',';
    oContentField.DelimitedText := AList.Strings[i];
    oFieldName := oContentField.Strings[0];
    oRec := Records.ByName(oFieldName);
    if (not (oRec = nil)) and (not (LocateField(oFieldName, Arr_Match_Agreed_Repeating_Record))) then
    begin
      for j := 1 to oContentField.Count -1 do
      begin
          oRec.Fields.Items[j-1].Value := oContentField.Strings[j];
      end;
    end
    else if LocateField(oFieldName, Arr_Match_Agreed_Repeating_Record) then
    begin
      if oFieldName = trade_additional_security_ids then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_trade_additional_security_ids);
        oGroupField.Name := trade_additional_security_ids;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = common_view_block_commissions then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_common_view_block_commissions);
        oGroupField.Name := common_view_block_commissions;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = common_view_block_charges_taxes then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_common_view_block_charges_taxes);
        oGroupField.Name := common_view_block_charges_taxes;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = common_view_contract_commissions then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_common_view_contract_commissions);
        oGroupField.Name := common_view_contract_commissions;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = common_view_contract_charges_taxes then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_common_view_contract_charges_taxes);
        oGroupField.Name := common_view_contract_charges_taxes;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end else
      if oFieldName = common_view_contract_directed_commissions then
      begin
        oGroupField := oGroupRecord.Add;
        oGroupField.SetFields(Arr_fields_common_view_contract_directed_commissions);
        oGroupField.Name := common_view_contract_directed_commissions;

        oNewRec := Records.Add;
        oNewRec.RecordName := oGroupField.Name;
        oNewRec.Fields := TMTIFields.Create(nil, oGroupField);
      end;

      for j := 1 to oContentField.Count -1 do
      begin
          oNewRec.Fields.Items[j - 1].Value := oContentField.Strings[j];
      end;
    end;
    oContentField.Free;
  end;

end;

{ TRec_import_contract }

constructor TRec_import_contract.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_contract_keys);
  oGroupField.Name := contract_keys;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_security_id);
  oGroupField.Name := trade_security_id;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_trade_info);
  oGroupField.Name := trade_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_contract_info);
  oGroupField.Name := contract_info;

  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_eb_contract_ssi_keys);
  oGroupField.Name := eb_contract_ssi_keys;

  for i := 0 to oGroupRecord.Count - 1 do
    begin
      oRec := Self.Add;
      oRec.RecordName := oGroupRecord.Items[i].Name;
      oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
    end;
end;

{ TMTIImport_contract }

constructor TMTIImport_contract.Create;
var
  oRecs: TRec_import_contract;
begin
  FTableCommission := TTable_contract_commissions.Create(nil);
  FTableChargesTaxes := TTable_contract_charges_taxes.Create(nil);

  oRecs := TRec_import_contract.Create(nil);
  Self.FName := import_contract;
  Self.FRecords := oRecs;
end;

procedure TMTIImport_contract.CreateFile(AFileName: string);
  function FindMatchText(Strings: TStrings; const SubStr: string): Integer;
  begin
    for Result := 0 to Strings.Count-1 do
      if ContainsText(Strings[Result], SubStr) then
        exit;
    Result := -1;
  end;

  procedure RemoveBlankList(AList: TStringList);
  const
    CR = #13;
    LF = #10;
  var
    iLength : integer;
    sText : string;
  begin
    iLength := Length(AList.Text);
    if (AList.Text[iLength - 1] = CR) and (AList.Text[iLength] = LF) then
    begin
      sText := Copy(AList.Text, 1, iLength - 2);
      AList.LineBreak := '';
      AList.Text := sText;
    end;
  end;
var
  oFile: TStringList;
  i, j, iSSIRes: integer;
  Teks, SSIText: string;
  iTotComm, iTotCharge, iValue: Double;
const
  Delimiter = ',';
begin
  oFile := TStringList.Create;
  oFile.LineBreak := #13#10;
  oFile.Add(Self.Name);
   for i := 0 to Records.Count - 1 do
   begin
    Teks := Records.Items[i].RecordName + Delimiter;
    for j := 0 to Records.Items[i].Fields.Count - 1 do
      begin
        Teks := Teks + Records.Items[i].Fields.Items[j].Value;
        if j < (Records.Items[i].Fields.Count - 1) then Teks := Teks + Delimiter;
      end;
     oFile.Add(Teks);
   end;

   {Commission}
   if not FTableCommission.IsEmpty then
   begin
    FTableCommission.First;
    while not TableCommission.Eof do
    begin
      Teks := contract_commissions + Delimiter;
      for i := 0 to FTableCommission.FieldCount - 1 do
      begin
        Teks := Teks + FTableCommission.Fields[i].AsString;
        if i < (FTableCommission.FieldCount - 1) then Teks := Teks + Delimiter;
      end;
      if FTableCommission.FieldByName(CommissionAmount).Value = '' then iValue := 0
      else iValue := StrToFloat(FTableCommission.FieldByName(CommissionAmount).Value) ;

      iTotComm := iTotComm + iValue;
      oFile.Add(Teks);

      FTableCommission.Next;
    end;
    Teks := contract_commissions + Delimiter + 'FLAT' + Delimiter + 'TCOM' + Delimiter + FloatToStr(iTotComm);
    oFile.Add(Teks);
   end;

   {Charges}
   if not TableChargesTaxes.IsEmpty then
   begin
    FTableChargesTaxes.First;
    while not FTableChargesTaxes.Eof do
    begin
      Teks := contract_charges_taxes + Delimiter;
      for i := 0 to FTableChargesTaxes.FieldCount - 1 do
      begin
        Teks := Teks + FTableChargesTaxes.Fields[i].AsString;
        if i < (FTableChargesTaxes.FieldCount - 1) then Teks := Teks + Delimiter;
      end;
      if FTableChargesTaxes.FieldByName(ChargeAmount).Value = '' then iValue := 0
      else iValue := StrToFloat(FTableChargesTaxes.FieldByName(ChargeAmount).Value) ;

      iTotCharge := iTotCharge + iValue;
      oFile.Add(Teks);
      FTableChargesTaxes.Next;
    end;
    Teks := contract_charges_taxes + Delimiter + 'TFEE' + Delimiter + FloatToStr(iTotCharge);
    oFile.Add(Teks);
   end;

   iSSIRes := FindMatchText(oFile, 'eb_contract_ssi_keys');
   if iSSIRes <> -1 then
   begin
    SSIText := oFile.Strings[iSSIRes];
    oFile.Delete(iSSIRes);
    oFile.Add(SSIText);
   end;

   RemoveBlankList(oFile);
   oFile.SaveToFile(AFileName);
end;

{ TRec_import_cancel }

constructor TRec_import_cancel.Create(AOwner: TComponent);
var
  oRec: TMTIRecord;
  i: integer;
  oGroupField: TMTIGroupField;
  oGroupRecord: TMTIGroupRecord;
begin
  inherited;
  oGroupRecord := TMTIGroupRecord.Create(nil);
  oGroupField := oGroupRecord.Add;
  oGroupField.SetFields(Arr_fields_cancel_keys);
  oGroupField.Name := cancel_keys;

  for i := 0 to oGroupRecord.Count - 1 do
  begin
    oRec := Self.Add;
    oRec.RecordName := oGroupRecord.Items[i].Name;
    oRec.Fields := TMTIFields.Create(nil, oGroupRecord.Items[i]);
  end;
end;

{ TMTIImport_cancel }

constructor TMTIImport_cancel.Create;
var
  oRecs: TRec_import_cancel;
begin
  oRecs := TRec_import_cancel.Create(nil);
  Self.FName := import_cancel;
  Self.FRecords := oRecs;
end;

{ TTable_block_commissions }

constructor TTable_commissions.Create(AOwner: TComponent);
var
  oFieldDef: TFieldDef;
  i: integer;
begin
  inherited Create(nil);
  if Self.Active then Self.Close;
  for i := 0 to high(Arr_fields_block_commissions) do
  begin
    oFieldDef := FieldDefs.AddFieldDef;
    oFieldDef.Name := 'F'+Arr_fields_block_commissions[i];
    oFieldDef.DataType := ftString;
    oFieldDef.Size := 50;

    oFieldDef.CreateField(Self, nil, Arr_fields_block_commissions[i], False);
  end;

end;

{ TTable_block_charges_taxes }

constructor TTable_charges_taxes.Create(AOwner: TComponent);
var
  oFieldDef: TFieldDef;
  i: integer;
begin
  inherited Create(nil);
  if Self.Active then Self.Close;
  for i := 0 to high(Arr_fields_block_charges_taxes) do
  begin
    oFieldDef := FieldDefs.AddFieldDef;
    oFieldDef.Name := 'F'+Arr_fields_block_charges_taxes[i];
    oFieldDef.DataType := ftString;
    oFieldDef.Size := 50;

    oFieldDef.CreateField(Self, nil, Arr_fields_block_charges_taxes[i], False);
  end;
end;

procedure TMTIimport_eb_block.CreateFile(AFileName: string);
  procedure RemoveBlankList(AList: TStringList);
  const
    CR = #13;
    LF = #10;
  var
    iLength : integer;
    sText : string;
  begin
    iLength := Length(AList.Text);
    if (AList.Text[iLength - 1] = CR) and (AList.Text[iLength] = LF) then
    begin
      sText := Copy(AList.Text, 1, iLength - 2);
      AList.LineBreak := '';
      AList.Text := sText;
    end;
  end;
var
  oFile: TStringList;
  i, j: integer;
  Teks: string;
  iTotComm, iTotCharge: Double;
const
  Delimiter = ',';
begin
  oFile := TStringList.Create;
  oFile.LineBreak := #13#10;
  oFile.Add(Self.Name);
   for i := 0 to Records.Count - 1 do
   begin
    Teks := Records.Items[i].RecordName + Delimiter;
    if not LocateField(Records.Items[i].RecordName, Arr_SSI) then
    begin
      for j := 0 to Records.Items[i].Fields.Count - 1 do
        begin
          Teks := Teks + Records.Items[i].Fields.Items[j].Value;
          if j < (Records.Items[i].Fields.Count - 1) then Teks := Teks + Delimiter;
        end;
       oFile.Add(Teks);
    end;
   end;

   {Commission}
   if not FTableCommission.IsEmpty then
   begin
    FTableCommission.First;
    while not TableCommission.Eof do
    begin
      Teks := block_commissions + Delimiter;
      for i := 0 to FTableCommission.FieldCount - 1 do
      begin
        Teks := Teks + FTableCommission.Fields[i].AsString;
        if i < (FTableCommission.FieldCount - 1) then Teks := Teks + Delimiter;
      end;
      iTotComm := iTotComm + StrToFloat(FTableCommission.FieldByName(CommissionAmount).Value);
      oFile.Add(Teks);

      FTableCommission.Next;
    end;
    Teks := block_commissions + Delimiter + 'FLAT' + Delimiter + 'TCOM' + Delimiter + FloatToStr(iTotComm);
    oFile.Add(Teks);
   end;

   {Charges}
   if not TableChargesTaxes.IsEmpty then
   begin
    FTableChargesTaxes.First;
    while not FTableChargesTaxes.Eof do
    begin
      Teks := block_charges_taxes + Delimiter;
      for i := 0 to FTableChargesTaxes.FieldCount - 1 do
      begin
        Teks := Teks + FTableChargesTaxes.Fields[i].AsString;
        if i < (FTableChargesTaxes.FieldCount - 1) then Teks := Teks + Delimiter;
      end;
      iTotCharge := iTotCharge + StrToFloat(FTableChargesTaxes.FieldByName(ChargeAmount).Value);
      oFile.Add(Teks);
      FTableChargesTaxes.Next;
    end;
    Teks := block_charges_taxes + Delimiter + 'TFEE' + Delimiter + FloatToStr(iTotCharge);
    oFile.Add(Teks);
   end;

   for i := 0 to Records.Count - 1 do
   begin
    Teks := Records.Items[i].RecordName + Delimiter;
    if LocateField(Records.Items[i].RecordName, Arr_SSI) then
    begin
      for j := 0 to Records.Items[i].Fields.Count - 1 do
        begin
          Teks := Teks + Records.Items[i].Fields.Items[j].Value;
          if j < (Records.Items[i].Fields.Count - 1) then Teks := Teks + Delimiter;
        end;
       oFile.Add(Teks);
    end;
   end;

   RemoveBlankList(oFile);
   oFile.SaveToFile(AFileName);
end;

{ TTable_contract_commissions }

constructor TTable_contract_commissions.Create(AOwner: TComponent);
var
  oFieldDef: TFieldDef;
  i: integer;
begin
  inherited Create(nil);
  if Self.Active then Self.Close;
  for i := 0 to high(Arr_fields_contract_commissions) do
  begin
    oFieldDef := FieldDefs.AddFieldDef;
    oFieldDef.Name := 'F'+Arr_fields_contract_commissions[i];
    oFieldDef.DataType := ftString;
    oFieldDef.Size := 50;

    oFieldDef.CreateField(Self, nil, Arr_fields_contract_commissions[i], False);
  end;
end;

{ TTable_contract_charges_taxes }

constructor TTable_contract_charges_taxes.Create(AOwner: TComponent);
var
  oFieldDef: TFieldDef;
  i: integer;
begin
  inherited Create(nil);
  if Self.Active then Self.Close;
  for i := 0 to high(Arr_fields_contract_charges_taxes) do
  begin
    oFieldDef := FieldDefs.AddFieldDef;
    oFieldDef.Name := 'F'+Arr_fields_contract_charges_taxes[i];
    oFieldDef.DataType := ftString;
    oFieldDef.Size := 50;

    oFieldDef.CreateField(Self, nil, Arr_fields_contract_charges_taxes[i], False);
  end;
end;

{ TReport }

function GetColNumber(ACol: string): string;
const
  iStart = 65;
  iMax = 26;
var
  i, len, iCol : integer;
begin
  len := Length(ACol);
  iCol := 0;
  for i := 1 to len - 1 do
    begin
      iCol := iCol + ((Ord(ACol[i]) -(iStart - 1))  * iMax);
    end;
  iCol := iCol + (Ord(ACol[Len]) - iStart);
  Result := IntToStr(iCol);
end;

procedure TReport.ExcelColConfig(ADataSet: TDataSet);
var
  oColumn : TXLSColumn;
begin
  if (ADataSet is TClientDataSet) then
  begin
    with (ADataSet as TClientDataSet) do
    begin
      Close;
      Params[0].Value := Self.Name;
      Open;

      if not IsEmpty then
      begin
        while not Eof do
        begin
          oColumn := TXLSColumn.Create;
          oColumn.FPosition := GetColNumber(FieldByName('ColumnExcel').AsString);
          oColumn.FHeaderCaption := FieldByName('ColumnName').AsString;
          oColumn.FRowHeader := FieldByName('RowHeader').AsInteger - 1;
          oColumn.FPosAlpha := FieldByName('ColumnExcel').AsString;
          oColumn.FCellTypeIdx := FieldByName('CellType').AsInteger;
          oColumn.FCellType := TColType(oColumn.FCellTypeIdx);
          Self.Columns.AddObject(oColumn.HeaderCaption, oColumn);
          Next;
        end;
      end;
    end;
  end;
end;

function TReport.GetArrDate(AIndex: integer): string;
begin
  Result := FArrDate[AIndex];
end;

function TReport.GetArrDateCount: integer;
begin
  Result := High(FArrDate);
end;

procedure TReport.SetArrDate(AIndex: integer; ADateCol: string);
var
  oSL : TStringList;
  i : integer;

  procedure Split(const Delimiter: Char;Input: string;const Strings: TStrings) ;
  begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
  end;
begin
  oSL := TStringList.Create;
  try
    Split(';',ADateCol,oSL);
  finally
    SetLength(FArrDate,oSL.Count);
    for i := 0 to oSL.Count - 1 do
    begin
      FArrDate[i] := GetColNumber(oSL.Strings[i]);
    end;
    oSL.Free;
  end;
end;

{ TTradeData }

function TTradeData.Valid: boolean;
begin
  Result := true;

   if (FQty =  '')
   or (FClientID = '')
   or (FBS = '')
   or (FStockID = '')
   or (FPrice = '') then Result := False;
end;

{ TXLSLog }

procedure TXLSLog.Add(AMsg:TXLSMsg);
var
  MsgType: string;
begin
  case AMsg.MsgType of
    lmtInfo  : MsgType := 'INFO';
    lmtError : MsgType := 'ERROR';
    lmtDebug : MsgType := 'DEBUG';
  end;

  FListMessage.AddObject(MsgType, AMsg);
end;

{ TLog }
constructor TLog.Create;
begin
  inherited;
  FListMessage := TStringList.Create;
end;

destructor TLog.Destroy;
begin
  FListMessage.Free;
  inherited;
end;


{ TAllocLog }

procedure TAllocLog.Add(AMsg: TAllocMsg);
var
  MsgType: string;
begin
  case AMsg.MsgType of
    lmtInfo  : MsgType := 'INFO';
    lmtError : MsgType := 'ERROR';
    lmtDebug : MsgType := 'DEBUG';
  end;

  FListMessage.AddObject(MsgType, AMsg);
end;

end.
