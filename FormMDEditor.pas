unit FormMDEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, Data.DB,
  NDatasetContainer, NDatasetGeneral, ClassClientConst, cxDBEdit,
  cxSpinEdit, cxDBLookupComboBox, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, cxEdit;

type
  TfrmMDEditor = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FFormContainer: TNMasterDetailContainer;
    FActiveNextOnEnter: Boolean;
  public
    property FormContainer: TNMasterDetailContainer read FFormContainer write FFormContainer;
    property ActiveNextOnEnter: Boolean read FActiveNextOnEnter write FActiveNextOnEnter;
    procedure LockWindow(AForm: TForm);
  end;

var
  frmMDEditor: TfrmMDEditor;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmMDEditor }

procedure TfrmMDEditor.btnOKClick(Sender: TObject);
var
  i : Integer;
begin
  if dsSubject.DataSet <> nil then
  begin
    for i := 0 to dsSubject.DataSet.FieldCount -1 do
    begin
      if (dsSubject.DataSet.Fields[i].Tag = REQUIRED_FIELD_TAG) or (dsSubject.DataSet.Fields[i].Required) then
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

procedure TfrmMDEditor.FormCreate(Sender: TObject);
begin
  ActiveNextOnEnter := dmGlobal.EnterForNextControl = 'Y';
end;

procedure TfrmMDEditor.FormShow(Sender: TObject);
begin
  dsSubject.DataSet := FFormContainer.DatasetEditor;

  if FFormContainer.SelectedAction = nsaNew then StatusBar.Panels[0].Text := 'New'
  else if FFormContainer.SelectedAction = nsaEdit then StatusBar.Panels[0].Text := 'Edit'
  else if FFormContainer.SelectedAction = nsaView then StatusBar.Panels[0].Text := 'View';
end;

procedure TfrmMDEditor.LockWindow(AForm: TForm);
  procedure SetLockToEdit;
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
begin
  if not FFormContainer.Control4Eyes then
  begin
    if (FFormContainer.SelectedAction = nsaNew) or (FFormContainer.SelectedAction = nsaEdit) then
    begin
      SetLockToEdit;
    end;
  end;
end;

end.
