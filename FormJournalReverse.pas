unit FormJournalReverse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxMemo, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, NDatasetContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxImageComboBox, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, cxGridDBTableView, cxCurrencyEdit;

type
  TJrnDetailUpdate = class(TObject)
  private
    FCCY: string;
    FDC: string;
    FAmount: Double;
  public
    property CCY: string read FCCY write FCCY;
    property DC: string read FDC write FDC;
    property Amount: double read FAmount write FAmount;
  end;

  TfrmJournalReverse = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    dsJrnExRate: TDataSource;
    gvwJRNExRate: TcxGridDBBandedTableView;
    gvwJRNExRateCCYCODE: TcxGridDBBandedColumn;
    gvwJRNExRateEXRATE: TcxGridDBBandedColumn;
    gvwJRNDetail: TcxGridDBBandedTableView;
    dsJrnDetail: TDataSource;
    gvwSummary: TcxGridDBBandedTableView;
    gvwJRNDetailGLACCOUNTID: TcxGridDBBandedColumn;
    gvwJRNDetailCCYCODE: TcxGridDBBandedColumn;
    gvwJRNDetailJRNDDESC: TcxGridDBBandedColumn;
    gvwJRNDetailCPID: TcxGridDBBandedColumn;
    gvwJRNDetailDC: TcxGridDBBandedColumn;
    gvwJRNDetailAMOUNT: TcxGridDBBandedColumn;
    gvwJRNDetailGLACCOUNTID1: TcxGridDBBandedColumn;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dsSum: TDataSource;
    gvwSummaryCCY: TcxGridDBBandedColumn;
    gvwSummaryDEBET: TcxGridDBBandedColumn;
    gvwSummaryCREDIT: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cdsJRNH: TNClientDataset;
    cdsJRNHJRNID: TLargeintField;
    cdsJRNHJRNCD: TStringField;
    cdsJRNHVDATE: TDateTimeField;
    cdsJRNHEDATE: TDateTimeField;
    cdsJRNHREFFID: TLargeintField;
    cdsJRNHACCID: TLargeintField;
    cdsJRNHACCCODE: TStringField;
    cdsJRNHACCNAME: TStringField;
    cdsJRNHVPERIODID: TLargeintField;
    cdsJRNHVPERIODCODE: TStringField;
    cdsJRNHEPERIODID: TLargeintField;
    cdsJRNHEPERIODCODE: TStringField;
    cdsJRNHJRNTYPE: TStringField;
    cdsJRNHHDESC: TStringField;
    cdsJRNHTOTALDB: TFloatField;
    cdsJRNHTOTALCR: TFloatField;
    cdsJRNHCCYCODE: TStringField;
    cdsJRNHEXRATE: TFloatField;
    cdsJRNHMODDA: TDateTimeField;
    cdsJRNHMODUI: TStringField;
    cdsJRNHAPPDA: TDateTimeField;
    cdsJRNHAPPUI: TStringField;
    cdsJRNHUNDER4Y: TIntegerField;
    cdsJRNHUNDER4YDA: TDateTimeField;
    cdsJRNHNOTES4Y: TStringField;
    cdsJRNHISDEL: TIntegerField;
    cdsJRNHID: TLargeintField;
    cdsJRNHPOSTED: TStringField;
    cdsJRNHqryJRNExRate: TDataSetField;
    cdsJRNHqryJRND: TDataSetField;
    cdsJRND: TNClientDataset;
    cdsJRNDJRNID: TLargeintField;
    cdsJRNDJRNCD: TStringField;
    cdsJRNDSEQNUM: TFloatField;
    cdsJRNDGLACCOUNTID: TIntegerField;
    cdsJRNDGLACCOUNTCODE: TStringField;
    cdsJRNDCCYCODE: TStringField;
    cdsJRNDJRNDDESC: TStringField;
    cdsJRNDCPID: TLargeintField;
    cdsJRNDCPCODE: TStringField;
    cdsJRNDDC: TStringField;
    cdsJRNDAMOUNT: TFloatField;
    cdsJRNDPOSTED: TStringField;
    cdsJRNDMODDA: TDateTimeField;
    cdsJRNDMODUI: TStringField;
    cdsJRNDAPPDA: TDateTimeField;
    cdsJRNDAPPUI: TStringField;
    cdsJRNDUNDER4Y: TIntegerField;
    cdsJRNDUNDER4YDA: TDateTimeField;
    cdsJRNDNOTES4Y: TStringField;
    cdsJRNDISDEL: TIntegerField;
    cdsJRNDID: TLargeintField;
    cdsJRNDSPOTTYPE: TStringField;
    cdsJRNDSPOTCCY: TStringField;
    cdsJRNExRate: TNClientDataset;
    cdsJRNExRateJRNID: TLargeintField;
    cdsJRNExRateJRNCD: TStringField;
    cdsJRNExRateCCYCODE: TStringField;
    cdsJRNExRateEXRATE: TFloatField;
    cdsJRNExRateMODDA: TDateTimeField;
    cdsJRNExRateMODUI: TStringField;
    cdsJRNExRateAPPDA: TDateTimeField;
    cdsJRNExRateAPPUI: TStringField;
    cdsJRNExRateUNDER4Y: TIntegerField;
    cdsJRNExRateUNDER4YDA: TDateTimeField;
    cdsJRNExRateNOTES4Y: TStringField;
    cdsJRNExRateISDEL: TIntegerField;
    cdsJRNExRateID: TLargeintField;
    cdsJRNExRateSPCONACCID: TLargeintField;
    cdsJRNExRateSPPOSACCID: TLargeintField;
    cdsJRNExRateSPCONACCNO: TStringField;
    cdsJRNExRateSPPOSACCNO: TStringField;
    cdsSum: TClientDataSet;
    cdsSumCCY: TStringField;
    cdsSumDEBET: TFloatField;
    cdsSumCREDIT: TFloatField;
    cdsSumSPCONVALUE: TFloatField;
    cdsSumSPPOSVALUE: TFloatField;
    cdsExRateCalc: TClientDataSet;
    cdsExRateCalcCCYCODE: TStringField;
    cdsExRateCalcEXRATE: TFloatField;
    cdsExRateCalcSPCONACCID: TLargeintField;
    cdsExRateCalcSPPOSACCID: TLargeintField;
    cdsExRateCalcSPCONACCNO: TStringField;
    cdsExRateCalcSPPOSACCNO: TStringField;
    cdsSumCalc: TClientDataSet;
    cdsSumCalcCCY: TStringField;
    cdsSumCalcDEBET: TFloatField;
    cdsSumCalcCREDIT: TFloatField;
    cdsSumCalcSPCONVALUE: TFloatField;
    cdsSumCalcSPPOSVALUE: TFloatField;
    cdsJRNDDEBET: TFloatField;
    cdsJRNDCREDIT: TFloatField;
    gvwJRNDetailDEBET: TcxGridDBBandedColumn;
    gvwJRNDetailCREDIT: TcxGridDBBandedColumn;
    cdsJRNDFXAMOUNT: TFloatField;
    cdsJRNDEMPLOYEEID: TIntegerField;
    cdsJRNDPROJECTID: TIntegerField;
    gvwJRNDetailEMPLOYEEID: TcxGridDBBandedColumn;
    gvwJRNDetailPROJECTID: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    cdsSysExRate: TClientDataSet;
    dsSysExRate: TDataSource;
    cdsSysExRateCCYCODE: TStringField;
    cdsSysExRateEXRATE: TFloatField;
    gvwSysExRate: TcxGridDBBandedTableView;
    gvwSysExRateCCYCODE: TcxGridDBBandedColumn;
    gvwSysExRateEXRATE: TcxGridDBBandedColumn;
    cdsJRNHRev: TNClientDataset;
    cdsJRNDRev: TNClientDataset;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cdsJRNExRateRev: TNClientDataset;
    cdsSumRev: TClientDataSet;
    cdsSysExRateRev: TClientDataSet;
    cdsExRateCalcRev: TClientDataSet;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    gvwJRNDetailOld: TcxGridDBBandedTableView;
    gvwJRNDetailOldJRNID: TcxGridDBBandedColumn;
    gvwJRNDetailOldJRNCD: TcxGridDBBandedColumn;
    gvwJRNDetailOldSEQNUM: TcxGridDBBandedColumn;
    gvwJRNDetailOldGLACCOUNTID: TcxGridDBBandedColumn;
    gvwJRNDetailOldGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwJRNDetailOldCCYCODE: TcxGridDBBandedColumn;
    gvwJRNDetailOldJRNDDESC: TcxGridDBBandedColumn;
    gvwJRNDetailOldCPID: TcxGridDBBandedColumn;
    gvwJRNDetailOldCPCODE: TcxGridDBBandedColumn;
    gvwJRNDetailOldDC: TcxGridDBBandedColumn;
    gvwJRNDetailOldAMOUNT: TcxGridDBBandedColumn;
    gvwJRNDetailOldPOSTED: TcxGridDBBandedColumn;
    gvwJRNDetailOldMODDA: TcxGridDBBandedColumn;
    gvwJRNDetailOldMODUI: TcxGridDBBandedColumn;
    gvwJRNDetailOldAPPDA: TcxGridDBBandedColumn;
    gvwJRNDetailOldAPPUI: TcxGridDBBandedColumn;
    gvwJRNDetailOldUNDER4Y: TcxGridDBBandedColumn;
    gvwJRNDetailOldUNDER4YDA: TcxGridDBBandedColumn;
    gvwJRNDetailOldNOTES4Y: TcxGridDBBandedColumn;
    gvwJRNDetailOldISDEL: TcxGridDBBandedColumn;
    gvwJRNDetailOldID: TcxGridDBBandedColumn;
    gvwJRNDetailOldSPOTTYPE: TcxGridDBBandedColumn;
    gvwJRNDetailOldSPOTCCY: TcxGridDBBandedColumn;
    gvwJRNDetailOldDEBET: TcxGridDBBandedColumn;
    gvwJRNDetailOldCREDIT: TcxGridDBBandedColumn;
    gvwJRNDetailOldFXAMOUNT: TcxGridDBBandedColumn;
    gvwJRNDetailOldEMPLOYEEID: TcxGridDBBandedColumn;
    gvwJRNDetailOldPROJECTID: TcxGridDBBandedColumn;
    gvwJRNDetailOldColumn1: TcxGridDBBandedColumn;
    dsJRNHRev: TDataSource;
    dsJRNDRev: TDataSource;
    dsJRNExRateRev: TDataSource;
    dsSumRev: TDataSource;
    dsSysExRateRev: TDataSource;
    cdsSumCalcRev: TClientDataSet;
    cdsJRNHRevJRNCD: TStringField;
    cdsJRNHRevVDATE: TDateTimeField;
    cdsJRNHRevEDATE: TDateTimeField;
    cdsJRNHRevREFFID: TLargeintField;
    cdsJRNHRevACCID: TLargeintField;
    cdsJRNHRevACCCODE: TStringField;
    cdsJRNHRevACCNAME: TStringField;
    cdsJRNHRevVPERIODID: TLargeintField;
    cdsJRNHRevVPERIODCODE: TStringField;
    cdsJRNHRevEPERIODID: TLargeintField;
    cdsJRNHRevEPERIODCODE: TStringField;
    cdsJRNHRevJRNTYPE: TStringField;
    cdsJRNHRevHDESC: TStringField;
    cdsJRNHRevTOTALDB: TFloatField;
    cdsJRNHRevTOTALCR: TFloatField;
    cdsJRNHRevCCYCODE: TStringField;
    cdsJRNHRevEXRATE: TFloatField;
    cdsJRNExRateRevJRNCD: TStringField;
    cdsJRNExRateRevCCYCODE: TStringField;
    cdsJRNExRateRevEXRATE: TFloatField;
    cdsJRNExRateRevMODDA: TDateTimeField;
    cdsJRNExRateRevMODUI: TStringField;
    cdsJRNExRateRevAPPDA: TDateTimeField;
    cdsJRNExRateRevAPPUI: TStringField;
    cdsJRNExRateRevUNDER4Y: TIntegerField;
    cdsJRNExRateRevUNDER4YDA: TDateTimeField;
    cdsJRNExRateRevNOTES4Y: TStringField;
    cdsJRNExRateRevISDEL: TIntegerField;
    cdsJRNExRateRevID: TLargeintField;
    cdsJRNExRateRevSPCONACCID: TLargeintField;
    cdsJRNExRateRevSPPOSACCID: TLargeintField;
    cdsJRNExRateRevSPCONACCNO: TStringField;
    cdsJRNExRateRevSPPOSACCNO: TStringField;
    cdsSumRevCCY: TStringField;
    cdsSumRevDEBET: TFloatField;
    cdsSumRevCREDIT: TFloatField;
    cdsSumRevSPCONVALUE: TFloatField;
    cdsSumRevSPPOSVALUE: TFloatField;
    cdsSysExRateRevCCYCODE: TStringField;
    cdsSysExRateRevEXRATE: TFloatField;
    cdsExRateCalcRevCCYCODE: TStringField;
    cdsExRateCalcRevEXRATE: TFloatField;
    cdsExRateCalcRevSPCONACCID: TLargeintField;
    cdsExRateCalcRevSPPOSACCID: TLargeintField;
    cdsExRateCalcRevSPCONACCNO: TStringField;
    cdsExRateCalcRevSPPOSACCNO: TStringField;
    cdsSumCalcRevCCY: TStringField;
    cdsSumCalcRevDEBET: TFloatField;
    cdsSumCalcRevCREDIT: TFloatField;
    cdsSumCalcRevSPCONVALUE: TFloatField;
    cdsSumCalcRevSPPOSVALUE: TFloatField;
    cdsJRNHCan: TNClientDataset;
    cdsJRNDCan: TNClientDataset;
    cdsJRNExRateCan: TNClientDataset;
    cdsJRNHCanJRNCD: TStringField;
    cdsJRNHCanVDATE: TDateTimeField;
    cdsJRNHCanEDATE: TDateTimeField;
    cdsJRNHCanREFFID: TLargeintField;
    cdsJRNHCanACCID: TLargeintField;
    cdsJRNHCanACCCODE: TStringField;
    cdsJRNHCanACCNAME: TStringField;
    cdsJRNHCanVPERIODID: TLargeintField;
    cdsJRNHCanVPERIODCODE: TStringField;
    cdsJRNHCanEPERIODID: TLargeintField;
    cdsJRNHCanEPERIODCODE: TStringField;
    cdsJRNHCanJRNTYPE: TStringField;
    cdsJRNHCanHDESC: TStringField;
    cdsJRNHCanTOTALDB: TFloatField;
    cdsJRNHCanTOTALCR: TFloatField;
    cdsJRNHCanCCYCODE: TStringField;
    cdsJRNHCanEXRATE: TFloatField;
    cdsJRNDCanJRNCD: TStringField;
    cdsJRNDCanGLACCOUNTID: TIntegerField;
    cdsJRNDCanGLACCOUNTCODE: TStringField;
    cdsJRNDCanCCYCODE: TStringField;
    cdsJRNDCanJRNDDESC: TStringField;
    cdsJRNDCanCPID: TLargeintField;
    cdsJRNDCanCPCODE: TStringField;
    cdsJRNDCanDC: TStringField;
    cdsJRNDCanAMOUNT: TFloatField;
    cdsJRNDCanPOSTED: TStringField;
    cdsJRNDCanMODDA: TDateTimeField;
    cdsJRNDCanMODUI: TStringField;
    cdsJRNDCanAPPDA: TDateTimeField;
    cdsJRNDCanAPPUI: TStringField;
    cdsJRNDCanUNDER4Y: TIntegerField;
    cdsJRNDCanUNDER4YDA: TDateTimeField;
    cdsJRNDCanNOTES4Y: TStringField;
    cdsJRNDCanISDEL: TIntegerField;
    cdsJRNDCanID: TLargeintField;
    cdsJRNDCanSPOTTYPE: TStringField;
    cdsJRNDCanSPOTCCY: TStringField;
    cdsJRNDCanDEBET: TFloatField;
    cdsJRNDCanCREDIT: TFloatField;
    cdsJRNDCanFXAMOUNT: TFloatField;
    cdsJRNDCanEMPLOYEEID: TIntegerField;
    cdsJRNDCanPROJECTID: TIntegerField;
    cdsJRNExRateCanJRNCD: TStringField;
    cdsJRNExRateCanCCYCODE: TStringField;
    cdsJRNExRateCanEXRATE: TFloatField;
    cdsJRNExRateCanMODDA: TDateTimeField;
    cdsJRNExRateCanMODUI: TStringField;
    cdsJRNExRateCanAPPDA: TDateTimeField;
    cdsJRNExRateCanAPPUI: TStringField;
    cdsJRNExRateCanUNDER4Y: TIntegerField;
    cdsJRNExRateCanUNDER4YDA: TDateTimeField;
    cdsJRNExRateCanNOTES4Y: TStringField;
    cdsJRNExRateCanISDEL: TIntegerField;
    cdsJRNExRateCanID: TLargeintField;
    cdsJRNExRateCanSPCONACCID: TLargeintField;
    cdsJRNExRateCanSPPOSACCID: TLargeintField;
    cdsJRNExRateCanSPCONACCNO: TStringField;
    cdsJRNExRateCanSPPOSACCNO: TStringField;
    cdsJRNDRevJRNCD: TStringField;
    cdsJRNDRevGLACCOUNTID: TIntegerField;
    cdsJRNDRevGLACCOUNTCODE: TStringField;
    cdsJRNDRevCCYCODE: TStringField;
    cdsJRNDRevJRNDDESC: TStringField;
    cdsJRNDRevCPID: TLargeintField;
    cdsJRNDRevCPCODE: TStringField;
    cdsJRNDRevDC: TStringField;
    cdsJRNDRevAMOUNT: TFloatField;
    cdsJRNDRevPOSTED: TStringField;
    cdsJRNDRevMODDA: TDateTimeField;
    cdsJRNDRevMODUI: TStringField;
    cdsJRNDRevAPPDA: TDateTimeField;
    cdsJRNDRevAPPUI: TStringField;
    cdsJRNDRevUNDER4Y: TIntegerField;
    cdsJRNDRevUNDER4YDA: TDateTimeField;
    cdsJRNDRevNOTES4Y: TStringField;
    cdsJRNDRevISDEL: TIntegerField;
    cdsJRNDRevID: TLargeintField;
    cdsJRNDRevSPOTTYPE: TStringField;
    cdsJRNDRevSPOTCCY: TStringField;
    cdsJRNDRevDEBET: TFloatField;
    cdsJRNDRevCREDIT: TFloatField;
    cdsJRNDRevFXAMOUNT: TFloatField;
    cdsJRNDRevEMPLOYEEID: TIntegerField;
    cdsJRNDRevPROJECTID: TIntegerField;
    procedure gvwJRNDetailDCPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tabEditorDataChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsJRNHNewRecord(DataSet: TDataSet);
    procedure cdsJRNDBeforeDelete(DataSet: TDataSet);
    procedure cdsJRNDBeforeEdit(DataSet: TDataSet);
    procedure cdsJRNDBeforePost(DataSet: TDataSet);
    procedure cdsJRNDNewRecord(DataSet: TDataSet);
    procedure cdsJRNHVDATEChange(Sender: TField);
    procedure cdsJRNHEDATEChange(Sender: TField);
    procedure cdsJRNDAfterPost(DataSet: TDataSet);
    procedure cdsJRNDGLACCOUNTIDChange(Sender: TField);
    procedure cdsJRNHBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsJRNDCalcFields(DataSet: TDataSet);
    procedure cdsJRNExRateBeforePost(DataSet: TDataSet);
    procedure cdsJRNHAfterOpen(DataSet: TDataSet);
    procedure cdsJRNDRevAfterPost(DataSet: TDataSet);
    procedure cdsJRNDRevBeforeDelete(DataSet: TDataSet);
    procedure cdsJRNDRevBeforeEdit(DataSet: TDataSet);
    procedure cdsJRNDRevBeforePost(DataSet: TDataSet);
    procedure cdsJRNDRevCalcFields(DataSet: TDataSet);
    procedure cdsJRNDRevNewRecord(DataSet: TDataSet);
    procedure cdsJRNHRevNewRecord(DataSet: TDataSet);
    procedure cdsJRNHRevBeforePost(DataSet: TDataSet);
    procedure cdsJRNHRevVDATEChange(Sender: TField);
    procedure cdsJRNHRevEDATEChange(Sender: TField);
    procedure cdsJRNExRateRevBeforePost(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsJRNDRevGLACCOUNTIDChange(Sender: TField);
  private
    { Private declarations }
    FBeforeEdit: TJrnDetailUpdate;
    FCalcSpot: Boolean;
    FCPID : integer;
    FLastCCY, FLastDC: string;
    FExRateAmount, FLastAmount: Double;

    procedure ReverseJournal;
    procedure InsertNewJournal;
  public
    { Public declarations }
    procedure OpenPeriodByDate(ADate: TDateTime);
    procedure SpotCalculation;
  end;

var
  frmJournalReverse: TfrmJournalReverse;

implementation

{$R *.dfm}

uses FormJournalInputList, DataLookup, DataGlobal;

procedure TfrmJournalReverse.btnOKClick(Sender: TObject);
var
  sSeqName: string;
  iSeq: Int64;
  i: Integer;
  sMsg: string;
begin
  if MessageDlg('Reverse Journal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if not cdsJRNDRev.Active then
      MessageDlg('Please create new journal before reverse journal input', mtError, [mbOk], 0)
    else
    begin
      if cdsJRNDRev.RecordCount > 0 then
      begin
        if cdsJRNHRevTOTALDB.AsFloat = cdsJRNHRevTOTALCR.AsFloat then
        begin
//          ReverseJournal;
          if dmGlobal.RemoteServer.UnpostingJournal(cdsJRNHJRNID.AsLargeInt, sMsg) then
          begin
            InsertNewJournal;
            inherited;
          end
          else
            MessageDlg(sMsg, mtError, [mbOk], 0);
        end
        else
          MessageDlg('Invalid total debet and total credit', mtError, [mbOk], 0);
      end
      else
        MessageDlg('Reverse journal can not be empty', mtError, [mbOk], 0);
    end;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FBeforeEdit <> nil then FreeAndNil(FBeforeEdit);
end;

procedure TfrmJournalReverse.cdsJRNDBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FCalcSpot then cdsSum.DisableControls;

  if cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
  begin

    cdsSum.Edit;
    cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
    if cdsJRNDDC.AsString = 'D' then
    begin
      cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat - cdsJRNDAMOUNT.AsFloat;
    end
    else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat - cdsJRNDAMOUNT.AsFloat;
    cdsSum.Post;
  end;

  if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

  if cdsJRNDDC.AsString = 'D' then
  begin
    cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat - cdsJRNDAMOUNT.AsFloat;
  end
  else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat - cdsJRNDAMOUNT.AsFloat;


  if not FCalcSpot then cdsSum.EnableControls;

end;

procedure TfrmJournalReverse.cdsJRNDBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEdit := TJrnDetailUpdate.Create;
  FBeforeEdit.CCY := cdsJRNDCCYCODE.AsString;
  FBeforeEdit.DC := cdsJRNDDC.AsString;
  FBeforeEdit.Amount := cdsJRNDAMOUNT.AsFloat;
end;

procedure TfrmJournalReverse.cdsJRNDBeforePost(DataSet: TDataSet);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsJRNExRate.Locate('CCYCODE', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin
        cdsJRNExRate.Append;
        cdsJRNExRateCCYCODE.AsString := cdsJRNDCCYCODE.AsString;

        if cdsJRNDCCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
        begin
          cdsJRNExRateEXRATE.Value := 1;
        end
        else
        begin
          cdsMaxExRateByCCY.Close;
          cdsMaxExRateByCCY.Params[0].AsString := cdsJRNDCCYCODE.AsString;
          cdsMaxExRateByCCY.Open;

          if not cdsMaxExRateByCCY.IsEmpty then
          begin
            cdsJRNExRateEXRATE.AsFloat := cdsMaxExRateByCCYCONVERSION_VALUE.AsFloat;
            cdsJRNExRateSPCONACCID.Value := cdsMaxExRateByCCYSPCONACCID.Value;
            cdsJRNExRateSPCONACCNO.Value := cdsMaxExRateByCCYSPCONACC.Value;
            cdsJRNExRateSPPOSACCID.Value := cdsMaxExRateByCCYSPPOSACCID.Value;
            cdsJRNExRateSPPOSACCNO.Value := cdsMaxExRateByCCYSPPOSACC.Value;
          end;


        end;
        cdsJRNExRate.Post
      end;
    if DataSet.State in [dsInsert] then
    begin
      if not FCalcSpot then cdsSum.DisableControls;

      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin

        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      if not FCalcSpot then cdsSum.EnableControls;

      if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

      if cdsJRNDDC.AsString = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat + cdsJRNDAMOUNT.AsFloat;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat + cdsJRNDAMOUNT.AsFloat;


    end
    else if DataSet.State in [dsEdit] then
    begin
      if not FCalcSpot then cdsSum.DisableControls;

      if cdsSum.Locate('CCY', VarArrayOf([FBeforeEdit.CCY]), []) then
      begin

        cdsSum.Edit;
        if FBeforeEdit.DC = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat - FBeforeEdit.Amount;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat - FBeforeEdit.Amount;
        cdsSum.Post;
      end;

      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin

        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      if not (cdsJRNH.State in [dsInsert, dsEdit]) then cdsJRNH.Edit;

      if FBeforeEdit.DC = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat - FBeforeEdit.Amount;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat - FBeforeEdit.Amount;;

      if cdsJRNDDC.AsString = 'D' then
      begin
        cdsJRNHTOTALDB.AsFloat := cdsJRNHTOTALDB.AsFloat + cdsJRNDAMOUNT.AsFloat;
      end
      else cdsJRNHTOTALCR.AsFloat := cdsJRNHTOTALCR.AsFloat + cdsJRNDAMOUNT.AsFloat;


      if not FCalcSpot then cdsSum.EnableControls;

    end;
  end;

  if cdsJRNExRate.Locate('CCYCODE', cdsJRNDCCYCODE.AsString, []) then
  begin
      cdsJRNDFXAMOUNT.AsFloat := cdsJRNDAMOUNT.AsFloat * cdsJRNExRateEXRATE.AsFloat;
  end;

  FLastCCY      := cdsJRNDCCYCODE.AsString;
  FExRateAmount := cdsJRNDFXAMOUNT.AsFloat;
  FLastDC       := cdsJRNDDC.AsString;
  FLastAmount   := cdsJRNDAMOUNT.AsFloat;
end;

procedure TfrmJournalReverse.cdsJRNDCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DC').AsString = 'D' then
  begin
    DataSet.FieldByName('DEBET').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
    DataSet.FieldByName('CREDIT').AsFloat := 0;
  end
  else
  begin
    DataSet.FieldByName('DEBET').AsFloat := 0;
    DataSet.FieldByName('CREDIT').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDGLACCOUNTIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      cdsGLAccountByID.Close;
      cdsGLAccountByID.Params[0].Value := cdsJRNDGLACCOUNTID.Value;
      cdsGLAccountByID.Open;

      if not cdsGLAccountByID.IsEmpty then
      begin
        cdsJRNDGLACCOUNTCODE.AsString := cdsGLAccountByIDGLACCOUNTCODE.AsString;
        cdsJRNDCCYCODE.AsString := cdsGLAccountByIDCCY.AsString;
      end;
    end;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNDSPOTTYPE.AsString := 'N';
  cdsJRNDPOSTED.AsString := 'N';
  cdsJRNDJRNCD.asString := cdsJRNDJRNCD.AsString;
end;

procedure TfrmJournalReverse.cdsJRNDRevAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FBeforeEdit <> nil then FreeAndNil(FBeforeEdit);
end;

procedure TfrmJournalReverse.cdsJRNDRevBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FCalcSpot then cdsSumRev.DisableControls;

  if cdsSumRev.Locate('CCY', VarArrayOf([cdsJRNDRevCCYCODE.AsString]), []) then
  begin

    cdsSumRev.Edit;
    cdsSumRevCCY.AsString := cdsJRNDRevCCYCODE.AsString;
    if cdsJRNDRevDC.AsString = 'D' then
    begin
      cdsSumRevDEBET.AsFloat := cdsSumRevDEBET.AsFloat - cdsJRNDRevAMOUNT.AsFloat;
    end
    else cdsSumRevCREDIT.AsFloat := cdsSumRevCREDIT.AsFloat - cdsJRNDRevAMOUNT.AsFloat;
    cdsSumRev.Post;
  end;

  if not (cdsJRNHRev.State in [dsInsert, dsEdit]) then cdsJRNHRev.Edit;

  if cdsJRNDRevDC.AsString = 'D' then
  begin
    cdsJRNHRevTOTALDB.AsFloat := cdsJRNHRevTOTALDB.AsFloat - cdsJRNDRevAMOUNT.AsFloat;
  end
  else cdsJRNHRevTOTALCR.AsFloat := cdsJRNHRevTOTALCR.AsFloat - cdsJRNDRevAMOUNT.AsFloat;

  if not FCalcSpot then cdsSumRev.EnableControls;
end;

procedure TfrmJournalReverse.cdsJRNDRevBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FBeforeEdit := TJrnDetailUpdate.Create;
  FBeforeEdit.CCY := cdsJRNDRevCCYCODE.AsString;
  FBeforeEdit.DC := cdsJRNDRevDC.AsString;
  FBeforeEdit.Amount := cdsJRNDRevAMOUNT.AsFloat;
end;

procedure TfrmJournalReverse.cdsJRNDRevBeforePost(DataSet: TDataSet);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsJRNExRateRev.Locate('CCYCODE', VarArrayOf([cdsJRNDRevCCYCODE.AsString]), []) then
      begin
        cdsJRNExRateRev.Append;
        cdsJRNExRateRevCCYCODE.AsString := cdsJRNDRevCCYCODE.AsString;

        if cdsJRNDRevCCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
        begin
          cdsJRNExRateRevEXRATE.Value := 1;
        end
        else
        begin
          cdsMaxExRateByCCY.Close;
          cdsMaxExRateByCCY.Params[0].AsString := cdsJRNDRevCCYCODE.AsString;
          cdsMaxExRateByCCY.Open;

          if not cdsMaxExRateByCCY.IsEmpty then
          begin
            cdsJRNExRateRevEXRATE.AsFloat := cdsMaxExRateByCCYCONVERSION_VALUE.AsFloat;
            cdsJRNExRateRevSPCONACCID.Value := cdsMaxExRateByCCYSPCONACCID.Value;
            cdsJRNExRateRevSPCONACCNO.Value := cdsMaxExRateByCCYSPCONACC.Value;
            cdsJRNExRateRevSPPOSACCID.Value := cdsMaxExRateByCCYSPPOSACCID.Value;
            cdsJRNExRateRevSPPOSACCNO.Value := cdsMaxExRateByCCYSPPOSACC.Value;
          end;


        end;
        cdsJRNExRateRev.Post
      end;
    if DataSet.State in [dsInsert] then
    begin
      if not FCalcSpot then cdsSumRev.DisableControls;

      if not cdsSumRev.Locate('CCY', VarArrayOf([cdsJRNDRevCCYCODE.AsString]), []) then
      begin

        cdsSumRev.Append;
        cdsSumRevCCY.AsString := cdsJRNDRevCCYCODE.AsString;
        if cdsJRNDRevDC.AsString = 'D' then
        begin
          cdsSumRevDEBET.AsFloat := cdsJRNDRevAMOUNT.AsFloat;
        end
        else cdsSumRevCREDIT.AsFloat := cdsJRNDRevAMOUNT.AsFloat;
        cdsSumRev.Post;
      end
      else
      begin

        cdsSumRev.Edit;
        cdsSumRevCCY.AsString := cdsJRNDRevCCYCODE.AsString;
        if cdsJRNDRevDC.AsString = 'D' then
        begin
          cdsSumRevDEBET.AsFloat := cdsSumRevDEBET.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
        end
        else cdsSumRevCREDIT.AsFloat := cdsSumRevCREDIT.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
        cdsSumRev.Post;
      end;

      if not FCalcSpot then cdsSumRev.EnableControls;

      if not (cdsJRNHRev.State in [dsInsert, dsEdit]) then cdsJRNHRev.Edit;

      if cdsJRNDRevDC.AsString = 'D' then
      begin
        cdsJRNHRevTOTALDB.AsFloat := cdsJRNHRevTOTALDB.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
      end
      else cdsJRNHRevTOTALCR.AsFloat := cdsJRNHRevTOTALCR.AsFloat + cdsJRNDRevAMOUNT.AsFloat;


    end
    else if DataSet.State in [dsEdit] then
    begin
      if not FCalcSpot then cdsSumRev.DisableControls;

      if cdsSumRev.Locate('CCY', VarArrayOf([FBeforeEdit.CCY]), []) then
      begin

        cdsSumRev.Edit;
        if FBeforeEdit.DC = 'D' then
        begin
          cdsSumRevDEBET.AsFloat := cdsSumRevDEBET.AsFloat - FBeforeEdit.Amount;
        end
        else cdsSumRevCREDIT.AsFloat := cdsSumRevCREDIT.AsFloat - FBeforeEdit.Amount;
        cdsSumRev.Post;
      end;

      if not cdsSumRev.Locate('CCY', VarArrayOf([cdsJRNDRevCCYCODE.AsString]), []) then
      begin

        cdsSumRev.Append;
        cdsSumRevCCY.AsString := cdsJRNDRevCCYCODE.AsString;
        if cdsJRNDRevDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumRevCREDIT.AsFloat := cdsJRNDRevAMOUNT.AsFloat;
        cdsSumRev.Post;
      end
      else
      begin

        cdsSumRev.Edit;
        cdsSumRevCCY.AsString := cdsJRNDRevCCYCODE.AsString;
        if cdsJRNDRevDC.AsString = 'D' then
        begin
          cdsSumRevDEBET.AsFloat := cdsSumRevDEBET.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
        end
        else cdsSumRevCREDIT.AsFloat := cdsSumRevCREDIT.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
        cdsSumRev.Post;
      end;

      if not (cdsJRNHRev.State in [dsInsert, dsEdit]) then cdsJRNHRev.Edit;

      if FBeforeEdit.DC = 'D' then
      begin
        cdsJRNHRevTOTALDB.AsFloat := cdsJRNHRevTOTALDB.AsFloat - FBeforeEdit.Amount;
      end
      else cdsJRNHRevTOTALCR.AsFloat := cdsJRNHRevTOTALCR.AsFloat - FBeforeEdit.Amount;;

      if cdsJRNDRevDC.AsString = 'D' then
      begin
        cdsJRNHRevTOTALDB.AsFloat := cdsJRNHRevTOTALDB.AsFloat + cdsJRNDRevAMOUNT.AsFloat;
      end
      else cdsJRNHRevTOTALCR.AsFloat := cdsJRNHRevTOTALCR.AsFloat + cdsJRNDRevAMOUNT.AsFloat;


      if not FCalcSpot then cdsSumRev.EnableControls;

    end;
  end;

  if cdsJRNExRateRev.Locate('CCYCODE', cdsJRNDRevCCYCODE.AsString, []) then
  begin
      cdsJRNDRevFXAMOUNT.AsFloat := cdsJRNDRevAMOUNT.AsFloat * cdsJRNExRateRevEXRATE.AsFloat;
  end;

  FLastCCY      := cdsJRNDRevCCYCODE.AsString;
  FExRateAmount := cdsJRNDRevFXAMOUNT.AsFloat;
  FLastDC       := cdsJRNDRevDC.AsString;
  FLastAmount   := cdsJRNDRevAMOUNT.AsFloat;
end;

procedure TfrmJournalReverse.cdsJRNDRevCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('DC').AsString = 'D' then
  begin
    DataSet.FieldByName('DEBET').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
    DataSet.FieldByName('CREDIT').AsFloat := 0;
  end
  else
  begin
    DataSet.FieldByName('DEBET').AsFloat := 0;
    DataSet.FieldByName('CREDIT').AsFloat := DataSet.FieldByName('AMOUNT').AsFloat;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDRevGLACCOUNTIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      cdsGLAccountByID.Close;
      cdsGLAccountByID.Params[0].Value := cdsJRNDGLACCOUNTID.Value;
      cdsGLAccountByID.Open;

      if not cdsGLAccountByID.IsEmpty then
      begin
        cdsJRNDRevGLACCOUNTCODE.AsString := cdsGLAccountByIDGLACCOUNTCODE.AsString;
        cdsJRNDRevCCYCODE.AsString       := cdsGLAccountByIDCCY.AsString;
      end;
    end;
  end;
end;

procedure TfrmJournalReverse.cdsJRNDRevNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNDRevSPOTTYPE.AsString    := 'N';
  cdsJRNDRevPOSTED.AsString      := 'N';
  cdsJRNDRevJRNCD.asString       := cdsJRNDRevJRNCD.AsString;
  cdsJRNHRevVDATE.AsDateTime     := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHRevVPERIODCODE.AsString := FormatDateTime('mm/yyyy', cdsJRNHRevVDATE.AsDateTime);
  cdsJRNHRevEDATE.AsDateTime     := cdsJRNHRevVDATE.AsDateTime;
  cdsJRNHRevEPERIODCODE.AsString := FormatDateTime('mm/yyyy', cdsJRNHRevEDATE.AsDateTime);
end;

procedure TfrmJournalReverse.cdsJRNExRateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsJRNExRate.State in [dsInsert] then
  begin
    cdsSysExRate.Append;
    cdsSysExRateCCYCODE.AsString := cdsJRNExRateCCYCODE.AsString;
    cdsSysExRateEXRATE.AsFloat   := cdsJRNExRateEXRATE.AsFloat;
    cdsSysExRate.Post;
  end;
end;

procedure TfrmJournalReverse.cdsJRNExRateRevBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsJRNExRateRev.State in [dsInsert] then
  begin
    cdsSysExRateRev.Append;
    cdsSysExRateRevCCYCODE.AsString := cdsJRNExRateRevCCYCODE.AsString;
    cdsSysExRateRevEXRATE.AsFloat   := cdsJRNExRateRevEXRATE.AsFloat;
    cdsSysExRateRev.Post;
  end
end;

procedure TfrmJournalReverse.cdsJRNHAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
end;

procedure TfrmJournalReverse.cdsJRNHBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := cdsJRNHJRNTYPE.AsString + cdsJRNHEPERIODCODE.AsString;
    iSeq := dmGlobal.RemoteServer.GetSeq(sSeqName);

    cdsJRNHJRNCD.AsString := cdsJRNHJRNTYPE.AsString + '-' + cdsJRNHEPERIODCODE.AsString + '/' +
      FormatFloat('00000', iSeq);

  end;

end;

procedure TfrmJournalReverse.cdsJRNHEDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin

    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHEDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHEPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHEPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

    end;
  end;

end;

procedure TfrmJournalReverse.cdsJRNHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNHJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
  cdsJRNHVDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHEDATE.AsDateTime := cdsJRNHVDATE.AsDateTime;
end;

procedure TfrmJournalReverse.cdsJRNHRevBeforePost(DataSet: TDataSet);
//var
//  sSeqName: string;
//  iSeq: Int64;
begin
  inherited;
//  if cdsJRNHRev.State in [dsInsert] then
//  begin
//    cdsJRNHRevJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
//
//    sSeqName := cdsJRNHRevJRNTYPE.AsString + cdsJRNHRevEPERIODCODE.AsString;
//    iSeq := dmGlobal.RemoteServer.GetSeq(sSeqName);
//
//    cdsJRNHRevJRNCD.AsString := cdsJRNHRevJRNTYPE.AsString + '-' + cdsJRNHRevEPERIODCODE.AsString + '/' + FormatFloat('00000', iSeq);
//  end;
end;

procedure TfrmJournalReverse.cdsJRNHRevEDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHRevEDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHRevEPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHRevEPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end
end;

procedure TfrmJournalReverse.cdsJRNHRevNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJRNHRevVDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHRevEDATE.AsDateTime := cdsJRNHRevVDATE.AsDateTime;
end;

procedure TfrmJournalReverse.cdsJRNHRevVDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHRevVDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHRevVPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHRevVPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;
end;

procedure TfrmJournalReverse.cdsJRNHVDATEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if Sender.DataSet.State in [dsInsert, dsEdit] then
    begin
      OpenPeriodByDate(cdsJRNHVDATE.AsDateTime);
      if not cdsGLPeriodByDate.IsEmpty then
      begin
        cdsJRNHVPERIODID.Value   := cdsGLPeriodByDatePERIODID.Value;
        cdsJRNHVPERIODCODE.Value := cdsGLPeriodByDatePERIODCODE.AsString;
      end;

      cdsGLPeriodByDate.Close;
    end;
  end;

end;

procedure TfrmJournalReverse.cxButton1Click(Sender: TObject);
begin
  inherited;
  SpotCalculation;
end;

procedure TfrmJournalReverse.FormCreate(Sender: TObject);
begin
  inherited;
  FCalcSpot := True;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuJrnType.Active then
      cdsLuJrnType.Open
    else
      cdsLuJrnType.Refresh;

    if not cdsLuGLAccountTrx.Active then
      cdsLuGLAccountTrx.Open
    else
      cdsLuGLAccountTrx.Refresh;

    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open
    else
      cdsLuCPCenter.Refresh;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open
    else
      cdsLuCcy.Refresh;

    if not cdsLuEmployee.Active then
      cdsLuEmployee.Open
    else
      cdsLuEmployee.Refresh;

    if not cdsLuProject.Active then
      cdsLuProject.Open
    else
      cdsLuProject.Refresh;
  end;
end;

procedure TfrmJournalReverse.FormShow(Sender: TObject);
begin
  inherited;

  if Self.Tag = 0 then
  begin
    cdsJRND.DisableControls;
    cdsJRND.First;

    cdsSum.DisableControls;
    cdsSum.Close;
    cdsSum.CreateDataSet;

    while not cdsJRND.Eof do
    begin
      if not cdsSum.Locate('CCY', VarArrayOf([cdsJRNDCCYCODE.AsString]), []) then
      begin
        cdsSum.Append;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end
      else
      begin

        cdsSum.Edit;
        cdsSumCCY.AsString := cdsJRNDCCYCODE.AsString;
        if cdsJRNDDC.AsString = 'D' then
        begin
          cdsSumDEBET.AsFloat := cdsSumDEBET.AsFloat + cdsJRNDAMOUNT.AsFloat;
        end
        else cdsSumCREDIT.AsFloat := cdsSumCREDIT.AsFloat + cdsJRNDAMOUNT.AsFloat;
        cdsSum.Post;
      end;

      cdsJRND.Next;

    end;

    cdsJRND.First;

    cdsJRND.EnableControls;
    cdsSum.EnableControls;

    Self.Tag := -1;
  end;

  cdsSysExRate.Close;
  cdsSysExRate.CreateDataSet;

  if not cdsJRNExRate.IsEmpty then
  begin
    cdsJRNExRate.DisableControls;
    while not cdsJRNExRate.Eof do
    begin
      cdsSysExRate.Append;
      cdsSysExRateCCYCODE.AsString := cdsJRNExRateCCYCODE.AsString;
      cdsSysExRateEXRATE.AsFloat   := dmGlobal.RemoteServer.GetCCYRate(cdsJRNHEDATE.AsDateTime, cdsJRNExRateCCYCODE.AsString);
      cdsSysExRate.Post;

      cdsJRNExRate.Next;
    end;
  end;

//  Opening Reverse Clent Data Set
  cdsJRNHRev.Close;
  cdsJRNHRev.CreateDataSet;

  cdsJRNDRev.Close;
  cdsJRNDRev.CreateDataSet;

  cdsJRNExRateRev.Close;
  cdsJRNExRateRev.CreateDataSet;

  cdsSysExRateRev.Close;
  cdsSysExRateRev.CreateDataSet;

  cdsExRateCalcRev.Close;
  cdsExRateCalcRev.CreateDataSet;

  cdsSumRev.Close;
  cdsSumRev.CreateDataSet;

  cdsSumCalcRev.Close;
  cdsSumCalcRev.CreateDataSet;

  cdsJRNHRev.Append;
end;

procedure TfrmJournalReverse.gvwJRNDetailDCPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (DisplayValue <> 'D') and (DisplayValue <> 'C') then
  begin
    Error := True;
    ErrorText := 'Only Valid for D/C';
  end;

end;

procedure TfrmJournalReverse.InsertNewJournal;
var
  sSeqName: string;
  iSeq: Int64;
  i: Integer;
  sFieldName: string;
begin
  sSeqName := cdsJRNHRevJRNTYPE.AsString + cdsJRNHRevEPERIODCODE.AsString;
  iSeq     := dmGlobal.RemoteServer.GetSeq(sSeqName);

  cdsJRNH.Append;
  cdsJRNHJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
  cdsJRNHJRNCD.AsString   := cdsJRNHJRNTYPE.AsString + '-' + cdsJRNHRevEPERIODCODE.AsString + '/' + FormatFloat('00000', iSeq);
  for i := 1 to cdsJRNHRev.FieldCount -1 do
    cdsJRNH.Fields[i+1].AsVariant := cdsJRNHRev.Fields[i].AsVariant;

  cdsJRNDRev.First;
  while not cdsJRNDRev.Eof do
  begin
    cdsJRND.Append;
    for i := 0 to cdsJRNDRev.FieldCount -1 do
    begin
      sFieldName := cdsJRNDRev.Fields[i].FieldName;
      cdsJRND.FieldByName(sFieldName).AsVariant := cdsJRNDRev.FieldByName(sFieldName).AsVariant;
    end;
//      cdsJRNDJRNID.AsLargeInt := cdsJRNHJRNID.AsLargeInt;
    cdsJRNDJRNCD.AsString   := cdsJRNHJRNCD.AsString;
    cdsJRND.Post;

    cdsJRNDRev.Next;
  end;

//  cdsJRNExRateCan.Close;
//  cdsJRNExRateCan.CreateDataSet;
//  cdsJRNExRate.First;
//  while not cdsJRNExRate.Eof do
//  begin
//    cdsJRNExRateCan.Append;
//    for i := 0 to cdsJRNExRateCan.FieldCount -1 do
//      cdsJRNExRateCan.Fields[i].AsVariant := cdsJRNExRate.Fields[i+1].AsVariant;
//    cdsJRNExRateCan.Post;
//
//    cdsJRNExRate.Next;
//  end;
//
//  cdsJRNExRateCan.First;
//  while not cdsJRNExRateCan.Eof do
//  begin
//    cdsJRNExRate.Append;
//    for i := 0 to cdsJRNExRateCan.FieldCount -1 do
//      cdsJRNExRate.Fields[i+1].AsVariant := cdsJRNExRateCan.Fields[i].AsVariant;
//    cdsJRNExRateJRNID.AsLargeInt := cdsJRNHJRNID.AsLargeInt;
//    cdsJRNExRateJRNCD.AsString   := cdsJRNHJRNCD.AsString;
//    cdsJRNExRate.Post;
//
//    cdsJRNExRateCan.Next;
//  end;

  dmGlobal.JournalReverseList.Add(cdsJRNHJRNID.AsString);
  cdsJRNH.Post;
  cdsJRNH.ApplyUpdates(-1);
end;

procedure TfrmJournalReverse.OpenPeriodByDate(ADate: TDateTime);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsGLPeriodByDate.Close;
    cdsGLPeriodByDate.Params[0].Value := ADate;
    cdsGLPeriodByDate.Params[1].Value := ADate;
    cdsGLPeriodByDate.Open;
  end;

end;

procedure TfrmJournalReverse.ReverseJournal;
var
  sSeqName: string;
  iSeq: Int64;
  i: Integer;
begin
  cdsJRNHCan.Close;
  cdsJRNHCan.CreateDataSet;
  cdsJRNHCan.Append;
  for i := 0 to cdsJRNHCan.FieldCount -1 do
    cdsJRNHCan.Fields[i].AsVariant := cdsJRNH.Fields[i+1].AsVariant;
  cdsJRNHCanHDESC.AsString       := 'Reverse Journal ' + cdsJRNHCanHDESC.AsString;
  cdsJRNHCanEDATE.AsDateTime     := dmGlobal.RemoteServer.GetTransDate;
  cdsJRNHCanVDATE.AsDateTime     := dmGlobal.RemoteServer.GetTransDate;
//  cdsJRNHCanEPERIODCODE.AsString := FormatDateTime('mm/yyyy', cdsJRNHCanEDATE.AsDateTime);
  cdsJRNHCan.Post;

  cdsJRNDCan.Close;
  cdsJRNDCan.CreateDataSet;
  cdsJRND.First;
  while not cdsJRND.Eof do
  begin
    cdsJRNDCan.Append;
    for i := 0 to cdsJRNDCan.FieldCount -1 do
    begin
      if cdsJRNDCan.Fields[i].FieldName = 'DC' then
      begin
        if cdsJRNDDC.AsString = 'D' then
          cdsJRNDCanDC.AsString := 'C'
        else if cdsJRNDDC.AsString = 'C' then
          cdsJRNDCanDC.AsString := 'D';
      end
      else
        cdsJRNDCan.Fields[i].AsVariant := cdsJRND.Fields[i+2].AsVariant;
    end;
    cdsJRNDCan.Post;

    cdsJRND.Next;
  end;

  cdsJRNExRateCan.Close;
  cdsJRNExRateCan.CreateDataSet;
  cdsJRNExRate.First;
  while not cdsJRNExRate.Eof do
  begin
    cdsJRNExRateCan.Append;
    for i := 0 to cdsJRNExRateCan.FieldCount -1 do
      cdsJRNExRateCan.Fields[i].AsVariant := cdsJRNExRate.Fields[i+1].AsVariant;
    cdsJRNExRateCan.Post;

    cdsJRNExRate.Next;
  end;

  sSeqName := cdsJRNHCanJRNTYPE.AsString + cdsJRNHCanEPERIODCODE.AsString;
  iSeq     := dmGlobal.RemoteServer.GetSeq(sSeqName);

  cdsJRNH.Append;
  cdsJRNHJRNID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JRNH');
  cdsJRNHJRNCD.AsString   := cdsJRNHJRNTYPE.AsString + '-' + cdsJRNHCanEPERIODCODE.AsString + '/' + FormatFloat('00000', iSeq);
  for i := 1 to cdsJRNHCan.FieldCount -1 do
    cdsJRNH.Fields[i+1].AsVariant := cdsJRNHCan.Fields[i].AsVariant;

  cdsJRNDCan.First;
  while not cdsJRNDCan.Eof do
  begin
    cdsJRND.Append;
//      cdsJRNDJRNID.AsLargeInt := cdsJRNHJRNID.AsLargeInt;
    cdsJRNDJRNCD.AsString   := cdsJRNHJRNCD.AsString;
    for i := 0 to cdsJRNDCan.FieldCount -1 do
      cdsJRND.Fields[i+2].AsVariant := cdsJRNDCan.Fields[i].AsVariant;
    cdsJRND.Post;

    cdsJRNDCan.Next;
  end;

//    cdsJRNExRateCan.First;
//    while not cdsJRNExRateCan.Eof do
//    begin
//      cdsJRNExRate.Append;
////      cdsJRNExRateJRNID.AsLargeInt := cdsJRNHJRNID.AsLargeInt;
//      cdsJRNExRateJRNCD.AsString   := cdsJRNHJRNCD.AsString;
//      for i := 0 to cdsJRNExRateCan.FieldCount -1 do
//        cdsJRNExRate.Fields[i+1].AsVariant := cdsJRNExRateCan.Fields[i].AsVariant;
//      cdsJRNExRate.Post;
//
//      cdsJRNExRateCan.Next;
//    end;

  dmGlobal.JournalReverseList.Add(cdsJRNHJRNID.AsString);
  cdsJRNH.Post;
  cdsJRNH.ApplyUpdates(-1);
end;

procedure TfrmJournalReverse.SpotCalculation;
var
  dValue: double;
begin
  with dmGlobal.IntDataLookup do
  begin
    FCalcSpot := True;

    cdsSumRev.DisableControls;
    cdsJRNExRateRev.DisableControls;
    cdsJRNDRev.DisableControls;

    cdsExRateCalc.Close;
    cdsExRateCalc.CreateDataSet;

    cdsJRNDRev.First;
    while not cdsJRNDRev.Eof do
    begin
      if cdsJRNDRevCCYCODE.AsString <> dmGlobal.RemoteServer.GetLocalCCY then
        FCPID := cdsJRNDRevCPID.AsInteger;

      if cdsJRNDRevSPOTTYPE.AsString <> 'N' then
      begin
        cdsJRNDRev.Delete;
      end
      else cdsJRNDRev.Next;
    end;

    cdsJRNExRateRev.First;
    while not cdsJRNExRateRev.Eof do
    begin
      cdsExRateCalcRev.Append;
      cdsExRateCalcRevCCYCODE.AsString := cdsJRNExRateRevCCYCODE.AsString;
      cdsExRateCalcRevEXRATE.AsFloat := cdsJRNExRateRevEXRATE.AsFloat;
      cdsExRateCalcRevSPCONACCID.AsInteger := cdsJRNExRateRevSPCONACCID.AsInteger;
      cdsExRateCalcRevSPPOSACCID.AsInteger := cdsJRNExRateRevSPPOSACCID.AsInteger;
      cdsExRateCalcRevSPCONACCNO.AsString := cdsJRNExRateRevSPCONACCNO.AsString;
      cdsExRateCalcRevSPPOSACCNO.AsString := cdsJRNExRateRevSPPOSACCNO.AsString;
      cdsExRateCalcRev.Post;
      cdsJRNExRateRev.Next;
    end;

    cdsSumCalcRev.Close;
    cdsSumCalcRev.CreateDataSet;

    cdsSumRev.First;

    while not cdsSumRev.Eof do
    begin
      cdsSumCalcRev.Append;
      cdsSumCalcRevCCY.AsString := cdsSumCCY.AsString;
      cdsSumCalcRevDEBET.AsFloat := cdsSumDEBET.AsFloat;
      cdsSumCalcRevCREDIT.AsFloat := cdsSumCREDIT.AsFloat;

      cdsSumCalcRev.Post;

      cdsSumRev.Next;

    end;

    cdsSumCalc.First;

    while not cdsSumCalc.Eof do
    begin
      if cdsSumCalcCCY.AsString <> dmGlobal.RemoteServer.GetLocalCCY then
      begin
        if cdsExRateCalc.Locate('CCYCODE', VarArrayOf([cdsSumCalcCCY.AsString]), []) then
        begin
          dValue := cdsSumCalcDEBET.AsFloat - cdsSumCalcCREDIT.AsFloat;

          if dValue <> 0 then
          begin

            cdsGLAccountByID.Close;
            cdsGLAccountByID.Params[0].AsInteger := cdsExRateCalcSPCONACCID.AsInteger;
            cdsGLAccountByID.Open;

            if not cdsGLAccountByID.IsEmpty then
            begin
              cdsJRND.Append;
              cdsJRNDGLACCOUNTID.Value := cdsGLAccountByIDGLACCOUNTID.Value;
              cdsJRNDGLACCOUNTCODE.Value := cdsGLAccountByIDGLACCOUNTCODE.Value;
              cdsJRNDCCYCODE.Value := cdsGLAccountByIDCCY.Value;
              cdsJRNDJRNDDESC.Value := 'System Spot Control';

              if dValue < 0 then cdsJRNDDC.AsString := 'C'
              else cdsJRNDDC.AsString := 'D';
              cdsJRNDCPID.AsInteger := FCPID;
              cdsJRNDAMOUNT.Value := Abs(dValue * cdsExRateCalcEXRATE.AsFloat);
              cdsJRNDSPOTTYPE.AsString := 'C';
              cdsJRNDSPOTCCY.AsString := cdsSumCalcCCY.AsString;
              cdsJRND.Post;


            end;

            cdsGLAccountByID.Close;
            cdsGLAccountByID.Params[0].AsInteger := cdsExRateCalcSPPOSACCID.AsInteger;
            cdsGLAccountByID.Open;

            if not cdsGLAccountByID.IsEmpty then
            begin
              cdsJRND.Append;
              cdsJRNDGLACCOUNTID.Value := cdsGLAccountByIDGLACCOUNTID.Value;
              cdsJRNDGLACCOUNTCODE.Value := cdsGLAccountByIDGLACCOUNTCODE.Value;
              cdsJRNDCCYCODE.Value :=  cdsSumCalcCCY.Value;
              cdsJRNDJRNDDESC.Value := 'System Spot Position';

              if dValue < 0 then cdsJRNDDC.AsString := 'D'
              else cdsJRNDDC.AsString := 'C';
              cdsJRNDCPID.AsInteger := FCPID;
              cdsJRNDAMOUNT.Value := Abs(dValue);
              cdsJRNDSPOTTYPE.AsString := 'P';
              cdsJRNDSPOTCCY.AsString := cdsSumCalcCCY.AsString;
              cdsJRND.Post;

            end;


          end;
        end;

      end;

      cdsSumCalc.Next;

    end;

    cdsSum.EnableControls;
    cdsJRNExRate.EnableControls;
    cdsJRND.EnableControls;


    FCalcSpot := False;
  end;
end;

procedure TfrmJournalReverse.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  inherited;
  if NewTab = 0 then dsSum.DataSet := cdsSum
  else if NewTab = 1 then dsSum.DataSet := cdsSum;
end;

Initialization
  RegisterClass(TfrmJournalReverse);

end.
