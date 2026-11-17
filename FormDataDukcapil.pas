unit FormDataDukcapil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxClasses,
  dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, Data.DB, dxLayoutcxEditAdapters, cxDBEdit,
  Vcl.ComCtrls;

type
  TfrmDataDukcapil = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnOk: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dsOA: TDataSource;
    dsDukcapil: TDataSource;
    dsAddress: TDataSource;
    mmDukcapil: TRichEdit;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataDukcapil: TfrmDataDukcapil;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDataDukcapil.btnOkClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmDataDukcapil.cxButton1Click(Sender: TObject);
  function GetText(ADataDukcapil: string; AStrinList: TStringList): string;
  var
    iStart, iEnd: Integer;
    sResult: string;
    sFirst, sMiddle, sLast: string;
  begin
    iStart := AnsiPos(':', ADataDukcapil) + 2;
    iEnd   := Length(ADataDukcapil);
    Result := Copy(ADataDukcapil, iStart, iEnd);
  end;

  function GetDate(ADate: string): TDate;
  var
    sDate, sMonth, sYear: Word;
  begin
    sYear  := StrToInt(dmGlobal.GetStringDelimiter(ADate, '-'));
    sMonth := StrToInt(dmGlobal.GetStringDelimiter(ADate, '-'));
    sDate  := StrToInt(dmGlobal.GetStringDelimiter(ADate, '-'));

    Result := EncodeDate(sYear, sMonth, sDate);
  end;

  function GetLastEdu(AEdu: string): string;
  begin
    if UpperCase(AEdu) = 'TIDAK/BLM SEKOLAH' then Result := '1'
    else if UpperCase(AEdu) = 'TAMAT SD/SEDERAJAT' then Result := '2'
    else if UpperCase(AEdu) = 'SLTP/SEDERAJAT' then Result := '3'
    else if UpperCase(AEdu) = 'SLTA/SEDERAJAT' then Result := '4'
    else if UpperCase(AEdu) = 'AKADEMI/DIPLOMA III/SARJANA MUDA' then Result := '5'
    else if UpperCase(AEdu) = 'DIPLOMA IV/STRATA I' then Result := '6'
    else if UpperCase(AEdu) = 'STRATA-II' then Result := '7'
    else if UpperCase(AEdu) = 'STRATA-III' then Result := '8';
  end;

  function GetOccupation(AOcu: string): string;
  begin
    if UpperCase(AOcu) = 'KARYAWAN SWASTA' then Result := '2'
    else if UpperCase(AOcu) = 'PEGAWAI NEGERI SIPIL (PNS)' then Result := '3'
    else if UpperCase(AOcu) = 'MENGURUS RUMAH TANGGA' then Result := '4'
    else if UpperCase(AOcu) = 'WIRASWASTA' then Result := '5'
    else if UpperCase(AOcu) = 'PELAJAR/MAHASISWA' then Result := '6'
    else if UpperCase(AOcu) = 'TNI/POLISI' then Result := '7'
    else if UpperCase(AOcu) = 'PENSIUN' then Result := '8'
    else if UpperCase(AOcu) = 'GURU/DOSEN' then Result := '9'
    else Result := '1';
  end;

  function GetGender(AGender: string): string;
  begin
    if AGender = 'Laki-Laki' then Result := '1'
    else if AGender = 'Perempuan' then Result := '2';
  end;

  function GetMaritalStatus(AStatus, AGender: string): string;
  begin
    if AStatus = 'BELUM KAWIN' then Result := '1'
    else if AStatus = 'KAWIN' then Result := '2'
    else if ((AStatus = 'CERAI MATI') or (AStatus = 'CERAI HIDUP')) and (AGender = 'Laki-Laki') then Result := '3'
    else if ((AStatus = 'CERAI MATI') or (AStatus = 'CERAI HIDUP')) and (AGender = 'Perempuan') then Result := '4'
  end;

  function GetProvince(AProv: string): string;
  begin
    if not dmGlobal.IntDataLookup.cdsLuProvince.Active then
      dmGlobal.IntDataLookup.cdsLuProvince.Open;

    if dmGlobal.IntDataLookup.cdsLuProvince.Locate('PROVNAME', AProv, [loCaseInsensitive]) then
      Result := dmGlobal.IntDataLookup.cdsLuProvincePROVCODE.AsString
    else
      Result := '';
  end;

  function GetCity(ACity: string): string;
  var
    sCity, sCityDel: string;
  begin
    if not dmGlobal.IntDataLookup.cdsLuCity.Active then
      dmGlobal.IntDataLookup.cdsLuCity.Open;

    sCity    := dsDukcapil.DataSet.FieldByName('KABUPATEN').AsString;;
    sCityDel := dmGlobal.GetStringDelimiter(sCity, 'ADM. ');

    if Length(sCity) = Length(dsDukcapil.DataSet.FieldByName('KABUPATEN').AsString) then
    begin
      sCityDel := dmGlobal.GetStringDelimiter(sCity, 'ADM. ');
      if Length(sCity) = Length(dsDukcapil.DataSet.FieldByName('KABUPATEN').AsString) then
        sCityDel := dmGlobal.GetStringDelimiter(sCity, 'KOTA ');
    end;

    if dmGlobal.IntDataLookup.cdsLuCity.Locate('CITYNAME', sCity, [loCaseInsensitive]) then
      Result := dmGlobal.IntDataLookup.cdsLuCity.FieldByName('CITYCODE').AsString
    else
      Result := '';
  end;
var
  oDataDukcapilList: TStringList;
  i: Integer;
  sCity: string;
begin
  if MessageDlg('Replace customer data with dukcapil data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dsOA.DataSet.FieldByName('SALESID').AsString = '' then
    begin
      MessageDlg('Sales ID can not empty', mtError, [mbOk], 0);
      Abort;
    end;

//    for i := 0 to mmDukcapil.Lines.Count -1 do
//    begin
      if not (dsOA.DataSet.State in dsEditModes) then
      begin
        dsOA.DataSet.Edit;
      end;
      sCity := '';

      dsOA.DataSet.FieldByName('FIRSTNAME').AsString         := dsDukcapil.DataSet.FieldByName('NAMA1').AsString;
      dsOA.DataSet.FieldByName('MIDDLENAME').AsString        := dsDukcapil.DataSet.FieldByName('NAMA2').AsString;
      dsOA.DataSet.FieldByName('LASTNAME').AsString          := dsDukcapil.DataSet.FieldByName('NAMA3').AsString;
      dsOA.DataSet.FieldByName('RET_BIRTHPLACE').AsString    := dsDukcapil.DataSet.FieldByName('TEMPATLAHIR').AsString;
      dsOA.DataSet.FieldByName('RET_BIRTDATE').AsDateTime    := GetDate(dsDukcapil.DataSet.FieldByName('TANGGALLAHIR').AsString);
      dsOA.DataSet.FieldByName('KTP_LIFETIME').AsString      := '1';
      dsOA.DataSet.FieldByName('RET_EDUBACKGROUND').AsString := GetLastEdu(dsDukcapil.DataSet.FieldByName('PENDIDIKAN').AsString);
      if dsOA.DataSet.FieldByName('RET_EDUBACKGROUND').AsString = '1' then
        dsOA.DataSet.FieldByName('EDU_BACKGOUND_OTHER').AsString := dsDukcapil.DataSet.FieldByName('PENDIDIKAN').AsString;
      dsOA.DataSet.FieldByName('OCCUPATION').AsString        := GetOccupation(dsDukcapil.DataSet.FieldByName('PEKERJAAN').AsString);
      if dsOA.DataSet.FieldByName('OCCUPATION').AsString = '1' then
        dsOA.DataSet.FieldByName('OCCUPATION_OTHER').AsString := dsDukcapil.DataSet.FieldByName('PEKERJAAN').AsString;;
      dsOA.DataSet.FieldByName('RET_GENDER').AsString        := GetGender(dsDukcapil.DataSet.FieldByName('KELAMIN').AsString);
      dsOA.DataSet.FieldByName('RET_MARITALSTATUS').AsString := GetMaritalStatus(dsDukcapil.DataSet.FieldByName('STATUS').AsString, dsDukcapil.DataSet.FieldByName('KELAMIN').AsString);
      dsOA.DataSet.FieldByName('CNTREST').AsString           := 'ID';
      dsOA.DataSet.FieldByName('MOTHER_NAME').AsString       := dsDukcapil.DataSet.FieldByName('IBUKANDUNG').AsString;

      if not dsAddress.DataSet.IsEmpty then
      begin
        if dsAddress.DataSet.Locate('ADDRTYPE', '1', []) then
        begin
          dsAddress.DataSet.Edit;
          if dsAddress.DataSet.FieldByName('PROVCODE').AsString = dsDukcapil.DataSet.FieldByName('PROVINSI').AsString then
            sCity := dsAddress.DataSet.FieldByName('CITY').AsString
          else
            sCity := '';
        end
        else
        begin
          dsAddress.DataSet.Append;
          dsAddress.DataSet.FieldByName('ADDRTYPE').AsString := '1';
        end;
      end else
      begin
        dsAddress.DataSet.Append;
        dsAddress.DataSet.FieldByName('ADDRTYPE').AsString := '1';
      end;

      dsAddress.DataSet.FieldByName('ADDRESS1').AsString  := dsDukcapil.DataSet.FieldByName('ALAMAT').AsString;
      dsAddress.DataSet.FieldByName('ADDRESS2').AsString  := 'Kelurahan : '+dsDukcapil.DataSet.FieldByName('KELURAHAN').AsString+', Kecamatan : '+
        dsDukcapil.DataSet.FieldByName('KECAMATAN').AsString;
      dsAddress.DataSet.FieldByName('ADDRESS3').AsString  := ''; //dsDukcapil.DataSet.FieldByName('KABUPATEN').AsString+', '+dsDukcapil.DataSet.FieldByName('PROVINSI').AsString;
      dsAddress.DataSet.FieldByName('RTRW').AsString      := FormatFloat('000', StrToIntDef(dsDukcapil.DataSet.FieldByName('RT').AsString, 0))+'/'+
        FormatFloat('000', StrToIntDef(dsDukcapil.DataSet.FieldByName('RW').AsString, 0));
      dsAddress.DataSet.FieldByName('COUNTCODE').AsString := 'ID';
      dsAddress.DataSet.FieldByName('PROVCODE').AsString  := GetProvince(dsDukcapil.DataSet.FieldByName('PROVINSI').AsString);
      dsAddress.DataSet.FieldByName('CITY').AsString      := GetCity(dsDukcapil.DataSet.FieldByName('KABUPATEN').AsString); //sCity;

      ShowMessage('Replace has been done');
//    end;

  end;
end;

procedure TfrmDataDukcapil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmGlobal.ShowDukcapil := False;
end;

procedure TfrmDataDukcapil.FormShow(Sender: TObject);
begin
  dmGlobal.ShowDukcapil := True;
end;

end.
