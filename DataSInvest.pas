unit DataSInvest;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, NClientDataset, Variants;

type
  TdmSInvest = class(TDataModule)
    cdsSInvGenerateFormat: TNClientDataset;
    cdsTradeDetailUpload: TNClientDataset;
    cdsSInvGenerateFormatSIP_ID: TLargeintField;
    cdsSInvGenerateFormatGENERATEFOLDER: TStringField;
    cdsSInvGenerateFormatDELIMITERCHAR: TStringField;
    cdsSInvGenerateFormatFORMAT1: TStringField;
    cdsSInvGenerateFormatFORMAT2: TStringField;
    cdsSInvGenerateFormatFORMAT3: TStringField;
    cdsSInvGenerateFormatSEQ: TIntegerField;
    cdsSInvGenerateFormatFIELDNAME: TStringField;
    cdsSInvGenerateFormatFORMATFIELD: TStringField;
    cdsSInvGenerateFormatMOC: TStringField;
    cdsTradeConfirmationUpload: TNClientDataset;
    cdsSInvestConfirm: TNClientDataset;
    cdsSInvestDetail: TNClientDataset;
    cdsSInvestDetailCONID: TLargeintField;
    cdsSInvestDetailDEALTICKETID: TLargeintField;
    cdsSInvestDetailDealticketNo: TStringField;
    cdsSInvestDetailTransactionStatus: TStringField;
    cdsSInvestDetailTDReferenceID: TStringField;
    cdsSInvestDetailTradeDate: TDateField;
    cdsSInvestDetailSettlementDate: TDateField;
    cdsSInvestDetailBRCode: TStringField;
    cdsSInvestDetailBRName: TStringField;
    cdsSInvestDetailIMCode: TStringField;
    cdsSInvestDetailIMName: TStringField;
    cdsSInvestDetailSecurityCode: TStringField;
    cdsSInvestDetailSecurityName: TStringField;
    cdsSInvestDetailBuySell: TIntegerField;
    cdsSInvestDetailPrice: TFloatField;
    cdsSInvestDetailQuantity: TFloatField;
    cdsSInvestDetailTDReferenceNo: TStringField;
    cdsSInvestConfirmTransactionStatus: TStringField;
    cdsSInvestConfirmTCReferenceID: TStringField;
    cdsSInvestConfirmTradeDate: TDateField;
    cdsSInvestConfirmSettlementDate: TDateField;
    cdsSInvestConfirmBRCode: TStringField;
    cdsSInvestConfirmIMCode: TStringField;
    cdsSInvestConfirmFundCode: TStringField;
    cdsSInvestConfirmSecurityCode: TStringField;
    cdsSInvestConfirmBuySell: TIntegerField;
    cdsSInvestConfirmPrice: TFloatField;
    cdsSInvestConfirmQuantity: TFloatField;
    cdsSInvestConfirmTradeAmount: TFloatField;
    cdsSInvestConfirmCommission: TFloatField;
    cdsSInvestConfirmSalesTax: TFloatField;
    cdsSInvestConfirmLevy: TFloatField;
    cdsSInvestConfirmVAT: TFloatField;
    cdsSInvestConfirmOtherCharges: TFloatField;
    cdsSInvestConfirmGrossSettlementAmount: TFloatField;
    cdsSInvestConfirmWHTonCommission: TFloatField;
    cdsSInvestConfirmNetSettlementAmount: TFloatField;
    cdsSInvestConfirmTCReferenceNo: TStringField;
    cdsSInvestConfirmSecuritiesAccountNo: TStringField;
    cdsSInvestConfirmAdditionalInformationifany: TStringField;
    cdsSInvestConfirmAuthorizedPersonName: TStringField;
    cdsSInvestConfirmAuthorizedPersonPosition: TStringField;
    cdsSInvestConfirmPlaceofTradeType: TStringField;
    cdsSInvestConfirmRepoTriPartyAgent: TStringField;
    cdsSInvestConfirmCalculationAgent: TStringField;
    cdsSInvestConfirmRepoRate: TStringField;
    cdsSInvestConfirmPurchaseLendingBorrowingDate: TStringField;
    cdsSInvestConfirmRePurchaseReturnDate: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function GenerateTradeDetailEquityUpload(ATradeDate: TDate; AFormatFile: string; out AMsg: string): Boolean;
    function GenerateTradeConfirmationEquityUpload(ATradeDate: TDate; AFormatFile: string; out AMsg: string): Boolean;

    function GenerateSInvestTradeDetailBySelected(AConID: string; ADealTicketID: string; AFormatFile: string; out AMsg: string): Boolean;
    function GenerateSInvestTradeConfirmBySelected(AConID: string; ADealTicketID: string; AFormatFile: string; out AMsg: string): Boolean;
  end;

var
  dmSInvest: TdmSInvest;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DataGlobal;

{$R *.dfm}

function TdmSInvest.GenerateSInvestTradeConfirmBySelected(AConID,
  ADealTicketID, AFormatFile: string; out AMsg: string): Boolean;
var
  sFieldName: string;
  sSeparator: string;
  oDataList: TStringList;
  sSInv, sFormatFied: string;
  i, j, iSeqNo: Integer;
  sDirName, sFileName: string;
begin
  try
    try
      oDataList := TStringList.Create;

      cdsSInvGenerateFormat.Close;
      cdsSInvGenerateFormat.Params[0].AsInteger := 4;
      cdsSInvGenerateFormat.Open;

      cdsSInvestConfirm.Close;
      cdsSInvestConfirm.Params[0].AsString := AConID;
      cdsSInvestConfirm.Params[1].AsString := ADealTicketID;
      cdsSInvestConfirm.Open;

      if AFormatFile = 'csv' then
        sSeparator := ','
      else
        sSeparator := cdsSInvGenerateFormatDELIMITERCHAR.AsString;

      for i := 0 to cdsSInvGenerateFormat.RecordCount -2 do
      begin
        sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString + sSeparator;
        cdsSInvGenerateFormat.Next;
      end;
      sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString;
      oDataList.Add(sSInv);

      cdsSInvestConfirm.First;
      while not cdsSInvestConfirm.EOF do
      begin
        sSInv := '';

        cdsSInvGenerateFormat.First;
        while not cdsSInvGenerateFormat.EOF do
        begin
          sFieldName  := cdsSInvGenerateFormatFIELDNAME.AsString;
          sFormatFied := cdsSInvGenerateFormatFORMATFIELD.AsString;

          if (cdsSInvestConfirm.FieldByName(sFieldName).DataType = ftDate) or
            (cdsSInvestConfirm.FieldByName(sFieldName).DataType = ftDateTime) then
          begin
            if sFormatFied <> '' then
              sSInv := sSInv + FormatDateTime(sFormatFied, cdsSInvestConfirm.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + FloatToStr(cdsSInvestConfirm.FieldByName(sFieldName).Value) + sSeparator;
          end
          else if (cdsSInvestConfirm.FieldByName(sFieldName).DataType = ftFloat) or
            (cdsSInvestConfirm.FieldByName(sFieldName).DataType = ftInteger) or
            (cdsSInvestConfirm.FieldByName(sFieldName).DataType = ftLargeint) then
          begin
            if (sFormatFied <> '') and (cdsSInvestConfirm.FieldByName(sFieldName).Value <> 0) then
              sSInv := sSInv + FormatFloat(sFormatFied, cdsSInvestConfirm.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + IntToStr(cdsSInvestConfirm.FieldByName(sFieldName).Value) + sSeparator;
          end
          else
          begin
            if VarIsNull(cdsSInvestConfirm.FieldByName(sFieldName).Value) then
              sSInv := sSInv + '' + sSeparator
            else
              sSInv := sSInv + cdsSInvestConfirm.FieldByName(sFieldName).Value + sSeparator;
          end;

          cdsSInvGenerateFormat.Next;
        end;
        Delete(sSInv, Length(sSInv), 1);

        oDataList.Add(sSInv);
        cdsSInvestConfirm.Next;
      end;
    finally
      sDirName := dmGlobal.SInvestGenerateFolder+cdsSInvGenerateFormatGENERATEFOLDER.AsString;

      if not DirectoryExists(sDirName) then
        CreateDir(sDirName);

      iSeqNo := dmGlobal.RemoteServer.GetSeq(cdsSInvGenerateFormatFORMAT1.AsString+FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetServerTimeStamp));

      sFileName := sDirName+'\'+cdsSInvGenerateFormatFORMAT1.AsString+'-'+
        FormatDateTime(cdsSInvGenerateFormatFORMAT2.AsString, dmGlobal.RemoteServer.GetServerTimeStamp)+'-'+
        FormatFloat(cdsSInvGenerateFormatFORMAT3.AsString, iSeqNo)+'.'+AFormatFile;

      oDataList.SaveToFile(sFileName);
      FreeAndNil(oDataList);

      AMsg   := 'Generate data S-Invest Trade Confirmation has been success';
      Result := True;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      AMsg   := E.Message;
    end;
  end;
end;

function TdmSInvest.GenerateSInvestTradeDetailBySelected(AConID,
  ADealTicketID, AFormatFile: string; out AMsg: string): Boolean;
var
  sFieldName: string;
  sSeparator: string;
  oDataList: TStringList;
  sSInv, sFormatFied: string;
  i, j, iSeqNo: Integer;
  sDirName, sFileName: string;
begin
  try
    try
      oDataList := TStringList.Create;

      cdsSInvGenerateFormat.Close;
      cdsSInvGenerateFormat.Params[0].AsInteger := 1;
      cdsSInvGenerateFormat.Open;

      cdsSInvestDetail.Close;
      cdsSInvestDetail.Params[0].AsString := AConID;
      cdsSInvestDetail.Params[1].AsString := ADealTicketID;
      cdsSInvestDetail.Open;

      if AFormatFile = 'csv' then
        sSeparator := ','
      else
        sSeparator := cdsSInvGenerateFormatDELIMITERCHAR.AsString;

      for i := 0 to cdsSInvGenerateFormat.RecordCount -2 do
      begin
        sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString + sSeparator;
        cdsSInvGenerateFormat.Next;
      end;
      sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString;
      oDataList.Add(sSInv);

      cdsSInvestDetail.First;
      while not cdsSInvestDetail.EOF do
      begin
        sSInv := '';

        cdsSInvGenerateFormat.First;
        while not cdsSInvGenerateFormat.EOF do
        begin
          sFieldName  := cdsSInvGenerateFormatFIELDNAME.AsString;
          sFormatFied := cdsSInvGenerateFormatFORMATFIELD.AsString;

          if (cdsSInvestDetail.FieldByName(sFieldName).DataType = ftDate) or
            (cdsSInvestDetail.FieldByName(sFieldName).DataType = ftDateTime) then
          begin
            if sFormatFied <> '' then
              sSInv := sSInv + FormatDateTime(sFormatFied, cdsSInvestDetail.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + FloatToStr(cdsSInvestDetail.FieldByName(sFieldName).Value) + sSeparator;
          end
          else if (cdsSInvestDetail.FieldByName(sFieldName).DataType = ftFloat) or
            (cdsSInvestDetail.FieldByName(sFieldName).DataType = ftInteger) or
            (cdsSInvestDetail.FieldByName(sFieldName).DataType = ftLargeint) then
          begin
            if (sFormatFied <> '') and (cdsSInvestDetail.FieldByName(sFieldName).Value <> 0)  then
              sSInv := sSInv + FormatFloat(sFormatFied, cdsSInvestDetail.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + IntToStr(cdsSInvestDetail.FieldByName(sFieldName).Value) + sSeparator;
          end
          else
          begin
            if VarIsNull(cdsSInvestDetail.FieldByName(sFieldName).Value) then
              sSInv := sSInv + '' + sSeparator
            else
              sSInv := sSInv + cdsSInvestDetail.FieldByName(sFieldName).Value + sSeparator;
          end;

          cdsSInvGenerateFormat.Next;
        end;
        Delete(sSInv, Length(sSInv), 1);

        oDataList.Add(sSInv);
        cdsSInvestDetail.Next;
      end;
    finally
      sDirName := dmGlobal.SInvestGenerateFolder+cdsSInvGenerateFormatGENERATEFOLDER.AsString;

      if not DirectoryExists(sDirName) then
        CreateDir(sDirName);

      iSeqNo := dmGlobal.RemoteServer.GetSeq(cdsSInvGenerateFormatFORMAT1.AsString+FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetServerTimeStamp));

      sFileName := sDirName+'\'+cdsSInvGenerateFormatFORMAT1.AsString+'-'+
        FormatDateTime(cdsSInvGenerateFormatFORMAT2.AsString, dmGlobal.RemoteServer.GetServerTimeStamp)+'-'+
        FormatFloat(cdsSInvGenerateFormatFORMAT3.AsString, iSeqNo)+'.'+AFormatFile;

      oDataList.SaveToFile(sFileName);
      FreeAndNil(oDataList);

      AMsg   := 'Generate data S-Invest Trade Detail has been success';
      Result := True;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      AMsg   := E.Message;
    end;
  end;
end;

function TdmSInvest.GenerateTradeConfirmationEquityUpload(ATradeDate: TDate;
  AFormatFile: string; out AMsg: string): Boolean;
var
  sFieldName: string;
  sSeparator: string;
  oDataList: TStringList;
  sSInv, sFormatFied: string;
  i, j, iSeqNo: Integer;
  sDirName, sFileName: string;
begin
  try
    try
      oDataList := TStringList.Create;

      cdsSInvGenerateFormat.Close;
      cdsSInvGenerateFormat.Params[0].AsInteger := 4;
      cdsSInvGenerateFormat.Open;

      cdsTradeConfirmationUpload.Close;
      cdsTradeConfirmationUpload.Params[0].AsDate   := ATradeDate;
      cdsTradeConfirmationUpload.Params[1].AsString := 'NEWM';
      cdsTradeConfirmationUpload.Open;

      if AFormatFile = 'csv' then
        sSeparator := ','
      else
        sSeparator := cdsSInvGenerateFormatDELIMITERCHAR.AsString;

      for i := 0 to cdsSInvGenerateFormat.RecordCount -2 do
      begin
        sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString + sSeparator;
        cdsSInvGenerateFormat.Next;
      end;
      sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString;
      oDataList.Add(sSInv);

      cdsTradeConfirmationUpload.First;
      while not cdsTradeConfirmationUpload.EOF do
      begin
        sSInv := '';

        cdsSInvGenerateFormat.First;
        while not cdsSInvGenerateFormat.EOF do
        begin
          sFieldName  := cdsSInvGenerateFormatFIELDNAME.AsString;
          sFormatFied := cdsSInvGenerateFormatFORMATFIELD.AsString;

          if (cdsTradeConfirmationUpload.FieldByName(sFieldName).DataType = ftDate) or
            (cdsTradeConfirmationUpload.FieldByName(sFieldName).DataType = ftDateTime) then
          begin
            if sFormatFied <> '' then
              sSInv := sSInv + FormatDateTime(sFormatFied, cdsTradeConfirmationUpload.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + FloatToStr(cdsTradeConfirmationUpload.FieldByName(sFieldName).Value) + sSeparator;
          end
          else if (cdsTradeConfirmationUpload.FieldByName(sFieldName).DataType = ftFloat) or
            (cdsTradeConfirmationUpload.FieldByName(sFieldName).DataType = ftInteger) or
            (cdsTradeConfirmationUpload.FieldByName(sFieldName).DataType = ftLargeint) then
          begin
            if (sFormatFied <> '') and (cdsTradeConfirmationUpload.FieldByName(sFieldName).Value <> 0) then
              sSInv := sSInv + FormatFloat(sFormatFied, cdsTradeConfirmationUpload.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + IntToStr(cdsTradeConfirmationUpload.FieldByName(sFieldName).Value) + sSeparator;
          end
          else
          begin
            if VarIsNull(cdsTradeConfirmationUpload.FieldByName(sFieldName).Value) then
              sSInv := sSInv + '' + sSeparator
            else
              sSInv := sSInv + cdsTradeConfirmationUpload.FieldByName(sFieldName).Value + sSeparator;
          end;

          cdsSInvGenerateFormat.Next;
        end;
        Delete(sSInv, Length(sSInv), 1);

        oDataList.Add(sSInv);
        cdsTradeConfirmationUpload.Next;
      end;
    finally
      sDirName := dmGlobal.SInvestGenerateFolder+cdsSInvGenerateFormatGENERATEFOLDER.AsString;

      if not DirectoryExists(sDirName) then
        CreateDir(sDirName);

      iSeqNo := dmGlobal.RemoteServer.GetSeq(cdsSInvGenerateFormatFORMAT1.AsString+FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetServerTimeStamp));

      sFileName := sDirName+'\'+cdsSInvGenerateFormatFORMAT1.AsString+'-'+
        FormatDateTime(cdsSInvGenerateFormatFORMAT2.AsString, dmGlobal.RemoteServer.GetServerTimeStamp)+'-'+
        FormatFloat(cdsSInvGenerateFormatFORMAT3.AsString, iSeqNo)+'.'+AFormatFile;

      oDataList.SaveToFile(sFileName);
      FreeAndNil(oDataList);

      AMsg   := 'Generate data S-Invest Trade Confirmation has been success';
      Result := True;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      AMsg   := E.Message;
    end;
  end;
end;

function TdmSInvest.GenerateTradeDetailEquityUpload(ATradeDate: TDate; AFormatFile: string;
  out AMsg: string): Boolean;
var
  sFieldName: string;
  sSeparator: string;
  oDataList: TStringList;
  sSInv, sFormatFied: string;
  i, j, iSeqNo: Integer;
  sDirName, sFileName: string;
begin
  try
    try
      oDataList := TStringList.Create;

      cdsSInvGenerateFormat.Close;
      cdsSInvGenerateFormat.Params[0].AsInteger := 1;
      cdsSInvGenerateFormat.Open;

      cdsTradeDetailUpload.Close;
      cdsTradeDetailUpload.Params[0].AsDate   := ATradeDate;
      cdsTradeDetailUpload.Params[1].AsString := 'NEWM';
      cdsTradeDetailUpload.Open;

      if AFormatFile = 'csv' then
        sSeparator := ','
      else
        sSeparator := cdsSInvGenerateFormatDELIMITERCHAR.AsString;

      for i := 0 to cdsSInvGenerateFormat.RecordCount -2 do
      begin
        sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString + sSeparator;
        cdsSInvGenerateFormat.Next;
      end;
      sSInv := sSInv + cdsSInvGenerateFormatFIELDNAME.AsString;
      oDataList.Add(sSInv);

      cdsTradeDetailUpload.First;
      while not cdsTradeDetailUpload.EOF do
      begin
        sSInv := '';

        cdsSInvGenerateFormat.First;
        while not cdsSInvGenerateFormat.EOF do
        begin
          sFieldName  := cdsSInvGenerateFormatFIELDNAME.AsString;
          sFormatFied := cdsSInvGenerateFormatFORMATFIELD.AsString;

          if (cdsTradeDetailUpload.FieldByName(sFieldName).DataType = ftDate) or
            (cdsTradeDetailUpload.FieldByName(sFieldName).DataType = ftDateTime) then
          begin
            if sFormatFied <> '' then
              sSInv := sSInv + FormatDateTime(sFormatFied, cdsTradeDetailUpload.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + FloatToStr(cdsTradeDetailUpload.FieldByName(sFieldName).Value) + sSeparator;
          end
          else if (cdsTradeDetailUpload.FieldByName(sFieldName).DataType = ftFloat) or
            (cdsTradeDetailUpload.FieldByName(sFieldName).DataType = ftInteger) or
            (cdsTradeDetailUpload.FieldByName(sFieldName).DataType = ftLargeint) then
          begin
            if (sFormatFied <> '') and (cdsTradeDetailUpload.FieldByName(sFieldName).Value <> 0)  then
              sSInv := sSInv + FormatFloat(sFormatFied, cdsTradeDetailUpload.FieldByName(sFieldName).Value) + sSeparator
            else
              sSInv := sSInv + IntToStr(cdsTradeDetailUpload.FieldByName(sFieldName).Value) + sSeparator;
          end
          else
          begin
            if VarIsNull(cdsTradeDetailUpload.FieldByName(sFieldName).Value) then
              sSInv := sSInv + '' + sSeparator
            else
              sSInv := sSInv + cdsTradeDetailUpload.FieldByName(sFieldName).Value + sSeparator;
          end;

          cdsSInvGenerateFormat.Next;
        end;
        Delete(sSInv, Length(sSInv), 1);

        oDataList.Add(sSInv);
        cdsTradeDetailUpload.Next;
      end;
    finally
      sDirName := dmGlobal.SInvestGenerateFolder+cdsSInvGenerateFormatGENERATEFOLDER.AsString;

      if not DirectoryExists(sDirName) then
        CreateDir(sDirName);

      iSeqNo := dmGlobal.RemoteServer.GetSeq(cdsSInvGenerateFormatFORMAT1.AsString+FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetServerTimeStamp));

      sFileName := sDirName+'\'+cdsSInvGenerateFormatFORMAT1.AsString+'-'+
        FormatDateTime(cdsSInvGenerateFormatFORMAT2.AsString, dmGlobal.RemoteServer.GetServerTimeStamp)+'-'+
        FormatFloat(cdsSInvGenerateFormatFORMAT3.AsString, iSeqNo)+'.'+AFormatFile;

      oDataList.SaveToFile(sFileName);
      FreeAndNil(oDataList);

      AMsg   := 'Generate data S-Invest Trade Detail has been success';
      Result := True;
    end;
  except
    on E: Exception do
    begin
      Result := False;
      AMsg   := E.Message;
    end;
  end;
end;

end.
