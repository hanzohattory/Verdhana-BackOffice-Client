unit FormEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ActnList, DB,
  dxLayoutControl, cxControls, cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit,
  cxGraphics, cxLookAndFeels,  cxDBEdit,
  cxSpinEdit, cxDBLookupComboBox, cxMaskEdit, cxButtonEdit, cxCalc,
  cxDropDownEdit, cxContainer, cxEdit, cxDateUtils, cxCalendar,
  cxImageComboBox, cxTimeEdit, dxLayoutControlAdapters,
  dxLayoutContainer, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmEditor = class(TForm)
    LayoutControlGroup_Root: TdxLayoutGroup;
    LayoutControl: TdxLayoutControl;
    LayoutControlFooterGroup_Root: TdxLayoutGroup;
    LayoutControlFooter: TdxLayoutControl;
    dsSubject: TDataSource;
    btnOK: TcxButton;
    LayoutControlFooterItem1: TdxLayoutItem;
    btnCancel: TcxButton;
    LayoutControlFooterItem2: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FActiveNextOnEnter: Boolean;
  public
    { Public declarations }
    property ActiveNextOnEnter: boolean read FActiveNextOnEnter write FActiveNextOnEnter;
    procedure LockWindow(AForm: TForm);
  end;

var
  frmEditor: TfrmEditor;

implementation

uses DataGlobal, ClassClientConst;

{$R *.dfm}

procedure TfrmEditor.FormShow(Sender: TObject);
var
  oList: TList;
begin

  if dsSubject.State = dsInsert then
    Caption := 'New ' + Caption
  else if dsSubject.State = dsEdit then
    Caption := 'Edit ' + Caption
  else if dsSubject.State = dsBrowse then
    Caption := 'View ' + Caption;

  //dmGlobal.AssignDisableColor(self);
 // dmGlobal.SetFocus(Self);
  oList := TList.Create;
  try
    GetTabOrderList(oList);
    if oList.Count > 1 then
      TWinControl(oList.Items[1]).SetFocus;
  finally
    oList.Free;
  end;

  LockWindow(self);

end;



procedure TfrmEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Caption := Trim(copy(Caption, 5, length(Caption)));
end;

procedure TfrmEditor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if FActiveNextOnEnter then
    begin
      SendMessage(Handle,WM_NEXTDLGCTL,0,0);
    end;
  end
  else if key=27 then
  begin
    if (ActiveControl is TcxCustomInnerTextEdit) then
    begin
      if not TcxCustomInnerTextEdit(ActiveControl).Modified then ModalResult := mrCancel;
    end
    else ModalResult := mrCancel;
  end;
end;

procedure TfrmEditor.btnOKClick(Sender: TObject);
var
  i : Integer;
begin
  if dsSubject.DataSet <> nil then
  begin
    for i := 0 to dsSubject.DataSet.FieldCount -1 do
    begin
      if dsSubject.DataSet.Fields[i].Tag = REQUIRED_FIELD_TAG then
      begin
        case dsSubject.DataSet.Fields[i].DataType of
          ftString, ftWideString, //karakter
          ftMemo                  : begin
                                      if (dsSubject.DataSet.Fields[i].AsString = '') or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;
          ftInteger,ftFloat, ftBCD,ftLargeint,
          ftDate, ftTime, ftDateTime,
          ftWord,ftSmallint,
          ftCurrency
                                  : begin
                                      if (dsSubject.DataSet.Fields[i].Value = 0) or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;

        end;
      end;
    end;
  end;
  ModalResult := mrOk;
end;

procedure TfrmEditor.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  ActiveNextOnEnter := dmGlobal.EnterForNextControl = 'Y';

  for i := 0 to Self.ComponentCount - 1 do
  begin

    if (Self.Components[i] is TcxDBLookupComboBox) or (Self.Components[i] is TcxDBComboBox) or (Self.Components[i] is TcxDBDateEdit) or
      (Self.Components[i] is TcxDBButtonEdit) or (Self.Components[i] is TcxDBSpinEdit) or (Self.Components[i] is TcxDBCalcEdit) or
       (Self.Components[i] is TcxDBImageComboBox) or
       (Self.Components[i] is TcxLookupComboBox) or (Self.Components[i] is TcxComboBox) or (Self.Components[i] is TcxDateEdit) or
      (Self.Components[i] is TcxButtonEdit) or (Self.Components[i] is TcxSpinEdit) or (Self.Components[i] is TcxCalcEdit) or
       (Self.Components[i] is TcxImageComboBox)  then
    begin
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.NativeStyle := False;
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.SkinName := 'VS2010';
      TcxCustomEdit(Self.Components[i]).Style.BorderColor := clSilver;
      TcxCustomEdit(Self.Components[i]).Style.BorderStyle := ebs3D;
      TcxCustomEdit(Self.Components[i]).Style.ButtonStyle := bts3D;
    end;

  end;

end;

procedure TfrmEditor.LockWindow(AForm: TForm);
var
  i: Integer;
begin
  for i:=0 to AForm.ComponentCount-1 do
  begin

    if AForm.Components[i].Tag <> -1 then
    begin
      if (AForm.Components[i] is TcxDBLookupComboBox) then
      begin
        if TcxDBLookupComboBox(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBLookupComboBox(AForm.Components[i]).TabStop := False;
          TcxDBLookupComboBox(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBLookupComboBox(AForm.Components[i]).TabStop := False
            else TcxDBLookupComboBox(AForm.Components[i]).TabStop := True;
            TcxDBLookupComboBox(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBTextEdit) then
      begin
        if TcxDBTextEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBTextEdit(AForm.Components[i]).TabStop := False;
          TcxDBTextEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBTextEdit(AForm.Components[i]).TabStop := False
            else TcxDBTextEdit(AForm.Components[i]).TabStop := True;
            TcxDBTextEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBMemo) then
      begin
        if TcxDBMemo(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBMemo(AForm.Components[i]).TabStop := False;
          TcxDBMemo(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBMemo(AForm.Components[i]).TabStop := False
            else TcxDBMemo(AForm.Components[i]).TabStop := True;
            TcxDBMemo(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBButtonEdit) then
      begin
        if TcxDBButtonEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBButtonEdit(AForm.Components[i]).TabStop := False;
          TcxDBButtonEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBButtonEdit(AForm.Components[i]).TabStop := False
            else TcxDBButtonEdit(AForm.Components[i]).TabStop := True;
            TcxDBButtonEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxTextEdit) then
      begin
        if TcxTextEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxTextEdit(AForm.Components[i]).TabStop := False;
          TcxTextEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxTextEdit(AForm.Components[i]).TabStop := False
            else TcxTextEdit(AForm.Components[i]).TabStop := True;
            TcxTextEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBDateEdit) then
      begin
        if TcxTextEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBDateEdit(AForm.Components[i]).TabStop := False;
          TcxDBDateEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBDateEdit(AForm.Components[i]).TabStop := False
            else TcxDBDateEdit(AForm.Components[i]).TabStop := True;
            TcxDBDateEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBComboBox) then
      begin
        if TcxDBComboBox(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBComboBox(AForm.Components[i]).TabStop := False;
          TcxDBComboBox(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBComboBox(AForm.Components[i]).TabStop := False
            else TcxDBComboBox(AForm.Components[i]).TabStop := True;
            TcxDBComboBox(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBTimeEdit) then
      begin
        if TcxDBTimeEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBTimeEdit(AForm.Components[i]).TabStop := False;
          TcxDBTimeEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBTimeEdit(AForm.Components[i]).TabStop := False
            else TcxDBTimeEdit(AForm.Components[i]).TabStop := True;
            TcxDBTimeEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end
      else if (AForm.Components[i] is TcxDBSpinEdit) then
      begin
        if TcxDBSpinEdit(AForm.Components[i]).Properties.ReadOnly then
        begin
          TcxDBSpinEdit(AForm.Components[i]).TabStop := False;
          TcxDBSpinEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
        end
        else
        begin
          if AForm.Components[i].Tag <> -1 then
          begin
            if AForm.Components[i].Tag = 1 then TcxDBSpinEdit(AForm.Components[i]).TabStop := False
            else TcxDBSpinEdit(AForm.Components[i]).TabStop := True;
            TcxDBSpinEdit(AForm.Components[i]).Style.Color := clWindow;
          end;
        end;
      end;
    end;
  end;
end;


end.
