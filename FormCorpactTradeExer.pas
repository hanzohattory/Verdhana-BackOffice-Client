unit FormCorpactTradeExer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmCorpactTradeExercise = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsCorpactTradeExercise: TDataSource;
    gvwTradeExercise: TcxGridDBBandedTableView;
    gvwTradeExerciseAcqDate: TcxGridDBBandedColumn;
    gvwTradeExerciseBranchID: TcxGridDBBandedColumn;
    gvwTradeExerciseBranchCode: TcxGridDBBandedColumn;
    gvwTradeExerciseBranchName: TcxGridDBBandedColumn;
    gvwTradeExerciseSalesID: TcxGridDBBandedColumn;
    gvwTradeExerciseSalesCode: TcxGridDBBandedColumn;
    gvwTradeExerciseSalesName: TcxGridDBBandedColumn;
    gvwTradeExerciseAccID: TcxGridDBBandedColumn;
    gvwTradeExerciseAccNo: TcxGridDBBandedColumn;
    gvwTradeExerciseAccName: TcxGridDBBandedColumn;
    gvwTradeExerciseStockID: TcxGridDBBandedColumn;
    gvwTradeExerciseStockCode: TcxGridDBBandedColumn;
    gvwTradeExerciseStockName: TcxGridDBBandedColumn;
    gvwTradeExerciseAvgPrice: TcxGridDBBandedColumn;
    gvwTradeExerciseClosePrice: TcxGridDBBandedColumn;
    gvwTradeExerciseStockOnHand: TcxGridDBBandedColumn;
    gvwTradeExerciseStockOnHold: TcxGridDBBandedColumn;
    gvwTradeExerciseStockOuts: TcxGridDBBandedColumn;
    gvwTradeExerciseStockReceive: TcxGridDBBandedColumn;
    gvwTradeExerciseStockDeliver: TcxGridDBBandedColumn;
    gvwTradeExerciseStockBalance: TcxGridDBBandedColumn;
    gvwTradeExerciseStockBal_Value: TcxGridDBBandedColumn;
    gvwTradeExerciseStockBal_MktValue: TcxGridDBBandedColumn;
    gvwTradeExerciseUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwTradeExerciseLastCP: TcxGridDBBandedColumn;
    gvwTradeExerciseInvType: TcxGridDBBandedColumn;
    gvwTradeExerciseSELLQTY: TcxGridDBBandedColumn;
    gvwTradeExerciseAV_QTY: TcxGridDBBandedColumn;
    gvwTradeExerciseQTY_CORPACT: TcxGridDBBandedColumn;
    gvwTradeExerciseENTTID: TcxGridDBBandedColumn;
    gvwTradeExerciseEXERQTY: TcxGridDBBandedColumn;
    gvwTradeExerciseAVAILQTY: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpactTradeExercise: TfrmCorpactTradeExercise;

implementation

{$R *.dfm}

uses FormCorpactExercise, DataGlobal;

end.
