unit FormReportMKBDCompare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Datasnap.DBClient, NClientDataset, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid;

type
  TfrmReportMKBDCompare = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtDate1: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtDate2: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    grdMasterLevel2: TcxGridLevel;
    grdMasterLevel3: TcxGridLevel;
    grdMasterLevel4: TcxGridLevel;
    cdsReportVD51Compare: TNClientDataset;
    cdsReportVD52Compare: TNClientDataset;
    cdsReportVD56Compare: TNClientDataset;
    cdsReportVD57Compare: TNClientDataset;
    dsReportVD52Compare: TDataSource;
    dsReportVD56Compare: TDataSource;
    dsReportVD57Compare: TDataSource;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView2: TcxGridDBBandedTableView;
    grdMasterDBBandedTableView3: TcxGridDBBandedTableView;
    cdsReportVD52CompareLNNUM: TIntegerField;
    cdsReportVD52CompareNO: TStringField;
    cdsReportVD52CompareREMARKS1: TStringField;
    cdsReportVD52CompareREMARKS2_1: TStringField;
    cdsReportVD56CompareLNNUM: TIntegerField;
    cdsReportVD56CompareNO: TStringField;
    cdsReportVD56CompareREMARKS1: TStringField;
    cdsReportVD56CompareREMARKS2_1: TStringField;
    cdsReportVD56CompareREMARKS3_1: TStringField;
    cdsReportVD56CompareREMARKS4_1: TStringField;
    cdsReportVD56CompareREMARKS5_1: TStringField;
    cdsReportVD56CompareREMARKS2_2: TStringField;
    cdsReportVD56CompareREMARKS3_2: TStringField;
    cdsReportVD56CompareREMARKS4_2: TStringField;
    cdsReportVD56CompareREMARKS5_2: TStringField;
    cdsReportVD57CompareLNNUM: TIntegerField;
    cdsReportVD57CompareNO: TStringField;
    cdsReportVD57CompareREMARKS1: TStringField;
    cdsReportVD57CompareREMARKS2_1: TStringField;
    cdsReportVD57CompareREMARKS3_1: TStringField;
    cdsReportVD57CompareREMARKS4_1: TStringField;
    cdsReportVD57CompareREMARKS5_1: TStringField;
    cdsReportVD57CompareREMARKS2_2: TStringField;
    cdsReportVD57CompareREMARKS3_2: TStringField;
    cdsReportVD57CompareREMARKS4_2: TStringField;
    cdsReportVD57CompareREMARKS5_2: TStringField;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterREMARKS1: TcxGridDBBandedColumn;
    gvwMasterREMARKS2_1: TcxGridDBBandedColumn;
    gvwMasterREMARKS2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1LNNUM: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1REMARKS1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1REMARKS2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1REMARKS2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2LNNUM: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2REMARKS5_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3LNNUM: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3NO: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3REMARKS5_2: TcxGridDBBandedColumn;
    actViewData: TNAction;
    cdsReportVD51CompareLNNUM: TIntegerField;
    cdsReportVD51CompareNO: TStringField;
    cdsReportVD51CompareREMARKS1: TStringField;
    cdsReportVD51CompareREMARKS2_1: TStringField;
    cdsReportVD51CompareREMARKS2_2: TStringField;
    cdsReportVD52CompareREMARKS2_2: TStringField;
    cdsReportVD51CompareVALUE1: TFloatField;
    cdsReportVD51CompareVALUE2: TFloatField;
    cdsReportVD51CompareVALUE_DIFF: TFloatField;
    gvwMasterVALUE1: TcxGridDBBandedColumn;
    gvwMasterVALUE2: TcxGridDBBandedColumn;
    gvwMasterVALUE_DIFF: TcxGridDBBandedColumn;
    cdsReportVD51CompareVALUESTRING1: TStringField;
    cdsReportVD51CompareVALUESTRING2: TStringField;
    gvwMasterVALUESTRING1: TcxGridDBBandedColumn;
    gvwMasterVALUESTRING2: TcxGridDBBandedColumn;
    cdsReportVD52CompareVALUE1: TFloatField;
    cdsReportVD52CompareVALUE2: TFloatField;
    cdsReportVD52CompareVALUE_DIFF: TFloatField;
    cdsReportVD52CompareVALUESTRING1: TStringField;
    cdsReportVD52CompareVALUESTRING2: TStringField;
    grdMasterDBBandedTableView1VALUESTRING2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1VALUESTRING1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1VALUE_DIFF: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1VALUE2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1VALUE1: TcxGridDBBandedColumn;
    cdsReportVD56CompareVALUE2_1: TFloatField;
    cdsReportVD56CompareVALUE3_1: TFloatField;
    cdsReportVD56CompareVALUE4_1: TFloatField;
    cdsReportVD56CompareVALUE5_1: TFloatField;
    cdsReportVD56CompareVALUE2_2: TFloatField;
    cdsReportVD56CompareVALUE3_2: TFloatField;
    cdsReportVD56CompareVALUE4_2: TFloatField;
    cdsReportVD56CompareVALUE5_2: TFloatField;
    cdsReportVD56CompareVALUESTRING2_1: TStringField;
    cdsReportVD56CompareVALUESTRING3_1: TStringField;
    cdsReportVD56CompareVALUESTRING4_1: TStringField;
    cdsReportVD56CompareVALUESTRING5_1: TStringField;
    cdsReportVD56CompareVALUESTRING2_2: TStringField;
    cdsReportVD56CompareVALUESTRING3_2: TStringField;
    cdsReportVD56CompareVALUESTRING4_2: TStringField;
    cdsReportVD56CompareVALUESTRING5_2: TStringField;
    cdsReportVD56CompareVALUE_DIFF2: TStringField;
    cdsReportVD56CompareVALUE_DIFF3: TStringField;
    cdsReportVD56CompareVALUE_DIFF4: TStringField;
    cdsReportVD56CompareVALUE_DIFF5: TStringField;
    grdMasterDBBandedTableView2VALUE2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE5_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUESTRING5_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE_DIFF2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE_DIFF3: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE_DIFF4: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView2VALUE_DIFF5: TcxGridDBBandedColumn;
    cdsReportVD57CompareVALUE2_1: TFloatField;
    cdsReportVD57CompareVALUE3_1: TFloatField;
    cdsReportVD57CompareVALUE4_1: TFloatField;
    cdsReportVD57CompareVALUE5_1: TFloatField;
    cdsReportVD57CompareVALUE2_2: TFloatField;
    cdsReportVD57CompareVALUE3_2: TFloatField;
    cdsReportVD57CompareVALUE4_2: TFloatField;
    cdsReportVD57CompareVALUE5_2: TFloatField;
    cdsReportVD57CompareVALUESTRING2_1: TStringField;
    cdsReportVD57CompareVALUESTRING3_1: TStringField;
    cdsReportVD57CompareVALUESTRING4_1: TStringField;
    cdsReportVD57CompareVALUESTRING5_1: TStringField;
    cdsReportVD57CompareVALUESTRING2_2: TStringField;
    cdsReportVD57CompareVALUESTRING3_2: TStringField;
    cdsReportVD57CompareVALUESTRING4_2: TStringField;
    cdsReportVD57CompareVALUESTRING5_2: TStringField;
    cdsReportVD57CompareVALUE_DIFF2: TStringField;
    cdsReportVD57CompareVALUE_DIFF3: TStringField;
    cdsReportVD57CompareVALUE_DIFF4: TStringField;
    cdsReportVD57CompareVALUE_DIFF5: TStringField;
    grdMasterDBBandedTableView3VALUE2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE5_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING2_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING3_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING4_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING5_1: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING2_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING3_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING4_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUESTRING5_2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE_DIFF2: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE_DIFF3: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE_DIFF4: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView3VALUE_DIFF5: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure cdsReportVD51CompareCalcFields(DataSet: TDataSet);
    procedure cdsReportVD52CompareCalcFields(DataSet: TDataSet);
    procedure cdsReportVD56CompareCalcFields(DataSet: TDataSet);
    procedure cdsReportVD57CompareCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMKBDCompare: TfrmReportMKBDCompare;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMKBDCompare.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsReportVD51Compare.Close;
  cdsReportVD51Compare.Params[0].AsDate := dtDate1.EditValue;
  cdsReportVD51Compare.Params[1].AsDate := dtDate2.EditValue;
  cdsReportVD51Compare.Open;

  cdsReportVD52Compare.Close;
  cdsReportVD52Compare.Params[0].AsDate := dtDate1.EditValue;
  cdsReportVD52Compare.Params[1].AsDate := dtDate2.EditValue;
  cdsReportVD52Compare.Open;

  cdsReportVD56Compare.Close;
  cdsReportVD56Compare.Params[0].AsDate := dtDate1.EditValue;
  cdsReportVD56Compare.Params[1].AsDate := dtDate2.EditValue;
  cdsReportVD56Compare.Open;

  cdsReportVD57Compare.Close;
  cdsReportVD57Compare.Params[0].AsDate := dtDate1.EditValue;
  cdsReportVD57Compare.Params[1].AsDate := dtDate2.EditValue;
  cdsReportVD57Compare.Open;

  gvwMaster.ApplyBestFit();
  grdMasterDBBandedTableView1.ApplyBestFit();
  grdMasterDBBandedTableView2.ApplyBestFit();
  grdMasterDBBandedTableView3.ApplyBestFit();

  gvwMaster.Bands[1].Caption := dtDate1.EditValue;
  gvwMaster.Bands[2].Caption := dtDate2.EditValue;
  grdMasterDBBandedTableView1.Bands[1].Caption := dtDate1.EditValue;
  grdMasterDBBandedTableView1.Bands[2].Caption := dtDate2.EditValue;
  grdMasterDBBandedTableView2.Bands[1].Caption := dtDate1.EditValue;
  grdMasterDBBandedTableView2.Bands[2].Caption := dtDate2.EditValue;
  grdMasterDBBandedTableView3.Bands[1].Caption := dtDate1.EditValue;
  grdMasterDBBandedTableView3.Bands[2].Caption := dtDate2.EditValue;

end;

procedure TfrmReportMKBDCompare.cdsReportVD51CompareCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case cdsReportVD51CompareLNNUM.AsInteger of
    9, 11, 12, 15, 17, 19..22, 24..26, 28..30, 33..35, 37, 38, 40..45, 47..50, 52..56, 58, 60..62, 64..68, 70..81, 83..94, 96..99, 101..112:
      Begin
        cdsReportVD51CompareVALUE1.AsFloat := StrToFloatDef(cdsReportVD51CompareREMARKS2_1.AsString, 0);
        cdsReportVD51CompareVALUE2.AsFloat := StrToFloatDef(cdsReportVD51CompareREMARKS2_2.AsString, 0);
        cdsReportVD51CompareVALUESTRING1.AsString := FormatFloat('#,##0.00', cdsReportVD51CompareVALUE1.AsFloat);
        cdsReportVD51CompareVALUESTRING2.AsString := FormatFloat('#,##0.00', cdsReportVD51CompareVALUE2.AsFloat);
      End;
    else
      begin
        cdsReportVD51CompareVALUESTRING1.AsString := cdsReportVD51CompareREMARKS2_1.AsString;
        cdsReportVD51CompareVALUESTRING2.AsString := cdsReportVD51CompareREMARKS2_2.AsString;
      end;
  end;
  cdsReportVD51CompareVALUE_DIFF.AsFloat := cdsReportVD51CompareVALUE1.AsFloat - cdsReportVD51CompareVALUE2.AsFloat;
end;

procedure TfrmReportMKBDCompare.cdsReportVD52CompareCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case cdsReportVD52CompareLNNUM.AsInteger of
    8,9,11..13,15,16,19,20,22,23,25..29,32..35,37,38,40..50,53..59:
      Begin
        cdsReportVD52CompareVALUE1.AsFloat := StrToFloatDef(cdsReportVD52CompareREMARKS2_1.AsString, 0);
        cdsReportVD52CompareVALUE2.AsFloat := StrToFloatDef(cdsReportVD52CompareREMARKS2_2.AsString, 0);
        cdsReportVD52CompareVALUESTRING1.AsString := FormatFloat('#,##0.00', cdsReportVD52CompareVALUE1.AsFloat);
        cdsReportVD52CompareVALUESTRING2.AsString := FormatFloat('#,##0.00', cdsReportVD52CompareVALUE2.AsFloat);
      End;
    else
      begin
        cdsReportVD52CompareVALUESTRING1.AsString := cdsReportVD52CompareREMARKS2_1.AsString;
        cdsReportVD52CompareVALUESTRING2.AsString := cdsReportVD52CompareREMARKS2_2.AsString;
      end;
  end;
  cdsReportVD52CompareVALUE_DIFF.AsFloat := cdsReportVD52CompareVALUE1.AsFloat - cdsReportVD52CompareVALUE2.AsFloat;
end;

procedure TfrmReportMKBDCompare.cdsReportVD56CompareCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case cdsReportVD56CompareLNNUM.AsInteger of
    7,13,14,20..22 :
      Begin
        cdsReportVD56CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_1.AsString, 0);
        cdsReportVD56CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_2.AsString, 0);

        cdsReportVD56CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_1.AsFloat);
        cdsReportVD56CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_2.AsFloat);

        cdsReportVD56CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE2_1.AsFloat - cdsReportVD56CompareVALUE2_2.AsFloat);
      End;
    16,18 :
      Begin
        cdsReportVD56CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_1.AsString, 0);
        cdsReportVD56CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_2.AsString, 0);

        cdsReportVD56CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_1.AsFloat);
        cdsReportVD56CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_2.AsFloat);

        cdsReportVD56CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE2_1.AsFloat - cdsReportVD56CompareVALUE2_2.AsFloat);
      End;
    9,10,12:
      Begin
        cdsReportVD56CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_1.AsString, 0);
        cdsReportVD56CompareVALUE3_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_1.AsString, 0);
        cdsReportVD56CompareVALUE4_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS4_1.AsString, 0);
        cdsReportVD56CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_2.AsString, 0);
        cdsReportVD56CompareVALUE3_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_2.AsString, 0);
        cdsReportVD56CompareVALUE4_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS4_2.AsString, 0);

        cdsReportVD56CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_1.AsFloat);
        cdsReportVD56CompareVALUESTRING3_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_1.AsFloat);
        cdsReportVD56CompareVALUESTRING4_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE4_1.AsFloat);
        cdsReportVD56CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUESTRING3_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_2.AsFloat);
        cdsReportVD56CompareVALUESTRING4_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE4_2.AsFloat);


        cdsReportVD56CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE2_1.AsFloat - cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF3.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE3_1.AsFloat - cdsReportVD56CompareVALUE3_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF4.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE4_1.AsFloat - cdsReportVD56CompareVALUE4_2.AsFloat);
      End;
    19:
      Begin
        cdsReportVD56CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_1.AsString, 0);
        cdsReportVD56CompareVALUE3_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_1.AsString, 0);
        cdsReportVD56CompareVALUE4_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS4_1.AsString, 0);
        cdsReportVD56CompareVALUE5_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS5_1.AsString, 0);
        cdsReportVD56CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_2.AsString, 0);
        cdsReportVD56CompareVALUE3_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_2.AsString, 0);
        cdsReportVD56CompareVALUE4_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS4_2.AsString, 0);
        cdsReportVD56CompareVALUE5_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS5_1.AsString, 0);

        cdsReportVD56CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_1.AsFloat);
        cdsReportVD56CompareVALUESTRING3_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_1.AsFloat);
        cdsReportVD56CompareVALUESTRING4_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE4_1.AsFloat);
        cdsReportVD56CompareVALUESTRING5_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE5_1.AsFloat);
        cdsReportVD56CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUESTRING3_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_2.AsFloat);
        cdsReportVD56CompareVALUESTRING4_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE4_2.AsFloat);
        cdsReportVD56CompareVALUESTRING5_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE5_2.AsFloat);


        cdsReportVD56CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE2_1.AsFloat - cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF3.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE3_1.AsFloat - cdsReportVD56CompareVALUE3_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF4.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE4_1.AsFloat - cdsReportVD56CompareVALUE4_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF5.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE5_1.AsFloat - cdsReportVD56CompareVALUE5_2.AsFloat);
      End;
    else
      if cdsReportVD56CompareLNNUM.AsInteger > 24 then
      begin
        cdsReportVD56CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_1.AsString, 0);
        cdsReportVD56CompareVALUE3_1.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_1.AsString, 0);
        cdsReportVD56CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS2_2.AsString, 0);
        cdsReportVD56CompareVALUE3_2.AsFloat := StrToFloatDef(cdsReportVD56CompareREMARKS3_2.AsString, 0);

        cdsReportVD56CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_1.AsFloat);
        cdsReportVD56CompareVALUESTRING3_1.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_1.AsFloat);
        cdsReportVD56CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUESTRING3_2.AsString := FormatFloat('#,##0.00', cdsReportVD56CompareVALUE3_2.AsFloat);

        cdsReportVD56CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE2_1.AsFloat - cdsReportVD56CompareVALUE2_2.AsFloat);
        cdsReportVD56CompareVALUE_DIFF3.AsString := FormatFloat('#,##0.00',cdsReportVD56CompareVALUE3_1.AsFloat - cdsReportVD56CompareVALUE3_2.AsFloat);
      end
      else
      begin
        cdsReportVD56CompareVALUESTRING2_1.AsString := cdsReportVD56CompareREMARKS2_1.AsString;
        cdsReportVD56CompareVALUESTRING3_1.AsString := cdsReportVD56CompareREMARKS3_1.AsString;
        cdsReportVD56CompareVALUESTRING4_1.AsString := cdsReportVD56CompareREMARKS4_1.AsString;
        cdsReportVD56CompareVALUESTRING5_1.AsString := cdsReportVD56CompareREMARKS5_1.AsString;
        cdsReportVD56CompareVALUESTRING2_2.AsString := cdsReportVD56CompareREMARKS2_2.AsString;
        cdsReportVD56CompareVALUESTRING3_2.AsString := cdsReportVD56CompareREMARKS3_2.AsString;
        cdsReportVD56CompareVALUESTRING4_2.AsString := cdsReportVD56CompareREMARKS4_2.AsString;
        cdsReportVD56CompareVALUESTRING5_2.AsString := cdsReportVD56CompareREMARKS5_2.AsString;
      end;
  end;

end;

procedure TfrmReportMKBDCompare.cdsReportVD57CompareCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case cdsReportVD57CompareLNNUM.AsInteger of
    7,8,12,14..16,18,19,21..25,42,45,48..50,52,53,56,57,59..62:
      Begin
        cdsReportVD57CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_1.AsString, 0);
        cdsReportVD57CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_2.AsString, 0);

        cdsReportVD57CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_1.AsFloat);
        cdsReportVD57CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_2.AsFloat);

        cdsReportVD57CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE2_1.AsFloat - cdsReportVD57CompareVALUE2_2.AsFloat);
      End;
    10,11:
      Begin
        cdsReportVD57CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_1.AsString, 0);
        cdsReportVD57CompareVALUE3_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS3_1.AsString, 0);
        cdsReportVD57CompareVALUE4_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS4_1.AsString, 0);
        cdsReportVD57CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_2.AsString, 0);
        cdsReportVD57CompareVALUE3_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS3_2.AsString, 0);
        cdsReportVD57CompareVALUE4_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS4_2.AsString, 0);

        cdsReportVD57CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_1.AsFloat);
        cdsReportVD57CompareVALUESTRING3_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE3_1.AsFloat);
        cdsReportVD57CompareVALUESTRING4_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE4_1.AsFloat);
        cdsReportVD57CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_2.AsFloat);
        cdsReportVD57CompareVALUESTRING3_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE3_2.AsFloat);
        cdsReportVD57CompareVALUESTRING4_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE4_2.AsFloat);


        cdsReportVD57CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE2_1.AsFloat - cdsReportVD57CompareVALUE2_2.AsFloat);
        cdsReportVD57CompareVALUE_DIFF3.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE3_1.AsFloat - cdsReportVD57CompareVALUE3_2.AsFloat);
        cdsReportVD57CompareVALUE_DIFF4.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE4_1.AsFloat - cdsReportVD57CompareVALUE4_2.AsFloat);
      End;
    28..35,43,44,46,47,54,63..65:
      Begin
        cdsReportVD57CompareVALUE2_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_1.AsString, 0);
        cdsReportVD57CompareVALUE3_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS3_1.AsString, 0);
        cdsReportVD57CompareVALUE4_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS4_1.AsString, 0);
        cdsReportVD57CompareVALUE5_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS5_1.AsString, 0);
        cdsReportVD57CompareVALUE2_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS2_2.AsString, 0);
        cdsReportVD57CompareVALUE3_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS3_2.AsString, 0);
        cdsReportVD57CompareVALUE4_2.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS4_2.AsString, 0);
        cdsReportVD57CompareVALUE5_1.AsFloat := StrToFloatDef(cdsReportVD57CompareREMARKS5_1.AsString, 0);

        cdsReportVD57CompareVALUESTRING2_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_1.AsFloat);
        cdsReportVD57CompareVALUESTRING3_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE3_1.AsFloat);
        cdsReportVD57CompareVALUESTRING4_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE4_1.AsFloat);
        cdsReportVD57CompareVALUESTRING5_1.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE5_1.AsFloat);
        cdsReportVD57CompareVALUESTRING2_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE2_2.AsFloat);
        cdsReportVD57CompareVALUESTRING3_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE3_2.AsFloat);
        cdsReportVD57CompareVALUESTRING4_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE4_2.AsFloat);
        cdsReportVD57CompareVALUESTRING5_2.AsString := FormatFloat('#,##0.00', cdsReportVD57CompareVALUE5_2.AsFloat);


        cdsReportVD57CompareVALUE_DIFF2.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE2_1.AsFloat - cdsReportVD57CompareVALUE2_2.AsFloat);
        cdsReportVD57CompareVALUE_DIFF3.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE3_1.AsFloat - cdsReportVD57CompareVALUE3_2.AsFloat);
        cdsReportVD57CompareVALUE_DIFF4.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE4_1.AsFloat - cdsReportVD57CompareVALUE4_2.AsFloat);
        cdsReportVD57CompareVALUE_DIFF5.AsString := FormatFloat('#,##0.00',cdsReportVD57CompareVALUE5_1.AsFloat - cdsReportVD57CompareVALUE5_2.AsFloat);
      End;
    else
      begin
        cdsReportVD57CompareVALUESTRING2_1.AsString := cdsReportVD57CompareREMARKS2_1.AsString;
        cdsReportVD57CompareVALUESTRING3_1.AsString := cdsReportVD57CompareREMARKS3_1.AsString;
        cdsReportVD57CompareVALUESTRING4_1.AsString := cdsReportVD57CompareREMARKS4_1.AsString;
        cdsReportVD57CompareVALUESTRING5_1.AsString := cdsReportVD57CompareREMARKS5_1.AsString;
        cdsReportVD57CompareVALUESTRING2_2.AsString := cdsReportVD57CompareREMARKS2_2.AsString;
        cdsReportVD57CompareVALUESTRING3_2.AsString := cdsReportVD57CompareREMARKS3_2.AsString;
        cdsReportVD57CompareVALUESTRING4_2.AsString := cdsReportVD57CompareREMARKS4_2.AsString;
        cdsReportVD57CompareVALUESTRING5_2.AsString := cdsReportVD57CompareREMARKS5_2.AsString;
      end;
  end;
end;

procedure TfrmReportMKBDCompare.FormShow(Sender: TObject);
begin
  inherited;
  dtDate1.EditValue := dmglobal.RemoteServer.GetTransDate;
  dtDate2.EditValue := dmglobal.RemoteServer.GetTransDate;
end;

end.
