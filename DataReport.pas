unit DataReport;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, NDBDataset,
  Datasnap.DBClient, NClientDataset;

type
  TdmReport = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmReport: TdmReport;

implementation

uses DataGlobal;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
