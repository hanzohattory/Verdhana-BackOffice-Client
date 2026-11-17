unit FormBasic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NActionPermission, Menus, Math, JclGraphics;

type
  TfrmBasic = class(TForm)
    popDocking: TPopupMenu;
    ActionPermission: TNActionPermission;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SyncPermission;
  public
    { Public declarations }
  published
    procedure MeasureSeparator(Sender: TObject; ACanvas: TCanvas; var Width,
      Height: Integer);
    procedure MenuItemDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
    procedure MenuItemMeasureItem(Sender: TObject; ACanvas: TCanvas; var Width,
      Height: Integer);
    procedure SeparatorDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      Selected: Boolean);
  end;

var
  frmBasic: TfrmBasic;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmBasic.SeparatorDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var
  hintStr: string;
  item: TMenuItem;
  r: TRect;
  hasGutter: boolean;
begin
  item := TMenuItem(sender);
  hasGutter := item.GetImageList <> nil;

  //Background:
  ACanvas.Brush.Style := bsSolid;
  ACanvas.Brush.Color := RICHMENU_SEPARATOR_BACKGROUND_COLOR;
  ACanvas.FillRect(ARect);

  //Lines:
  ACanvas.Pen.Color := RICHMENU_SEPARATOR_LINE_COLOR;
  ACanvas.Polyline([point(ARect.Left, ARect.Bottom-2), point(ARect.Right, ARect.Bottom-2)]);
  ACanvas.Pen.Color := RICHMENU_ITEM_BACKGROUND_COLOR;
  ACanvas.Polyline([point(ARect.Left, ARect.Bottom-1), point(ARect.Right, ARect.Bottom-1)]);

  //Text
  hintStr := item.Hint;
  if hintStr <> '' then
  begin
    //Text:
    ACanvas.Brush.Style := bsClear;
    ACanvas.Font.Style := [];
    ACanvas.Font.Color := RICHMENU_FONT_COLOR;
    r.Left := ARect.Left + RICHMENU_MARG_X;
    if hasGutter then
      inc(r.Left, RICHMENU_SEPARATOR_LEADING);
    r.Right := ARect.Right - RICHMENU_MARG_X;
    r.Top := ARect.Top;
    r.Bottom := ARect.Bottom;
    DrawText(ACanvas.Handle, PChar(hintStr), length(hintStr), r, DT_LEFT or DT_EXTERNALLEADING or DT_SINGLELINE	or DT_VCENTER);
  end
  else if hasGutter then
  begin
   //Gutter
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := RICHMENU_GUTTER_COLOR;
    r := ARect;
    r.Right := RICHMENU_GUTTER_WIDTH;
    ACanvas.FillRect(r);

    ACanvas.Pen.Color := RICHMENU_SEPARATOR_LINE_COLOR;
    ACanvas.Polyline([point(r.Right, r.top), point(r.Right, r.Bottom)]);
  end;
end;

procedure TfrmBasic.FormCreate(Sender: TObject);
begin
  ActionPermission.PrepareActionPermission;
//  SyncPermission;
end;

procedure TfrmBasic.SyncPermission;
var
  i, j: integer;
  oPermItem: TNFormPermissionItem;
  oActItem: TNActionItem;
begin
  with dmGlobal do
  begin
    for i := 0 to ActionPermission.AssignedPermission.Count - 1 do
    begin
      oPermItem:= ActionPermission.AssignedPermission.Items[i];
      if not cdsPermission.Locate('PERMISSIONNAME', VarArrayOf([oPermItem.Name]),[]) then
      begin
        cdsPermission.Append;
        cdsPermission.Fields[0].AsString := oPermItem.Name;
        cdsPermission.Fields[1].AsString := oPermItem.Description;
        cdsPermission.Post;

        cdsPermission.ApplyUpdates(-1);
      end;

      if not cdsPermissionForm.Locate('PERMISSIONNAME;FORMNAME', VarArrayOf([oPermItem.Name, Self.Caption]),[]) then
      begin
        cdsPermissionForm.Append;
        cdsPermissionForm.Fields[0].AsString := oPermItem.Name;
        cdsPermissionForm.Fields[1].AsString := Self.Caption;
        cdsPermissionForm.Post;

        cdsPermissionForm.ApplyUpdates(-1);
      end;           

      for j := 0 to ActionPermission.Actions.Count - 1 do
      begin
        oActItem:= ActionPermission.Actions.Items[j];
        if oActItem.Permission = oPermItem.Name then
        begin
          if not cdsPermissionFormAction.Locate('PERMISSIONNAME;FORMNAME;ACTIONNAME', VarArrayOf([oPermItem.Name, Self.Caption, oActItem.ActionName]),[]) then
          begin
            cdsPermissionFormAction.Append;
            cdsPermissionFormAction.Fields[0].AsString := oPermItem.Name;
            cdsPermissionFormAction.Fields[1].AsString := Self.Caption;
            cdsPermissionFormAction.Fields[2].AsString := oActItem.ActionName;
            cdsPermissionFormAction.Post;

            cdsPermissionFormAction.ApplyUpdates(-1);
          end;         
        end;
      end;      
    end;    
  end;
end;

procedure TfrmBasic.MeasureSeparator(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
var
  SeparatorHint: string;
  item: TMenuItem;
  r: TRect;
begin
  item := TMenuItem(sender);
  SeparatorHint := item.Hint;

  //Separator with text:
  if SeparatorHint <> '' then
  begin
    //Initialize
    r := rect(0, 0, 0, 0);
    ACanvas.Font.Style := [fsBold];

    //Make windows calculate needed space
    Height := drawText(ACanvas.Handle, PChar(SeparatorHint), length(SeparatorHint), r, DT_CALCRECT or DT_LEFT or DT_EXTERNALLEADING);
    width := r.Right - r.Left;

    //Give some extra room for padding:
    inc(Height, RICHMENU_MARG_Y*4);
    inc(Width,  RICHMENU_MARG_X*2 + RICHMENU_SEPARATOR_LEADING);
  end
  else
  //Plain old separator:
  begin
    //Fixed height and width:
    height := 4;
    width := 10;
  end;
end;


procedure TfrmBasic.MenuItemMeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
var
  item: TMenuItem;

  captionStr: string;
  captionRect: TRect;
  captionHeight: integer;
  captionWidth: integer;

  hintStr: string;
  hintRect: TRect;
  hintHeight: integer;
  hintWidth: integer;

  shortCutStr: string;
  shortCutRect: TRect;
  shortCutHeight: integer;
  shortCutWidth: integer;
begin
  item := TMenuItem(sender);

  //Caption
  captionStr := item.Caption;
  captionRect := rect(0, 0, 0, 0);
  ACanvas.Font.Style := [fsBold];

  captionHeight := DrawText(ACanvas.Handle, PChar(captionStr), length(captionStr), captionRect, DT_CALCRECT or DT_LEFT or DT_EXTERNALLEADING);
  captionWidth  := captionRect.Right - captionRect.Left;

  //Shortcut:
  shortCutStr := ShortCutToText(item.ShortCut);
  if shortCutStr <> '' then
  begin
    shortCutRect := rect(0, 0, 0, 0);
    shortCutHeight := DrawText(ACanvas.Handle, PChar(shortCutStr), length(shortCutStr), shortCutRect, DT_CALCRECT or DT_RIGHT or DT_EXTERNALLEADING);
    shortCutWidth := shortCutRect.Right - shortCutRect.Left;
    inc(captionWidth, shortCutWidth + RICHMENU_MARG_X*2);
  end;

  //Hint:
  hintRect := rect(0, 0, 0, 0);
  hintStr := item.Hint;
  ACanvas.Font.Style := [];

  hintHeight := DrawText(ACanvas.Handle, PChar(hintStr), length(hintStr), hintRect, DT_CALCRECT or DT_LEFT or DT_EXTERNALLEADING);
  hintWidth  := hintRect.Right - hintRect.Left;

  width := Max(captionWidth, hintWidth) + RICHMENU_MARG_X*2;
  if item.GetImageList <> nil then
    inc(width, RICHMENU_GUTTER_WIDTH);

  height := captionHeight + hintHeight + RICHMENU_MARG_Y*4;
end;

procedure TfrmBasic.MenuItemDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
var
  i: integer;
  hintStr: string;
  captionStr: string;
  shortCutStr: string;
  r: TRect;
  offset: integer;
  selRgn: HRGN;
  fillRgn: HRGN;
  hasGutter: boolean;
  item: TMenuItem;
begin
  item := TMenuItem(sender);
  hintStr := item.Hint;
  captionStr := item.Caption;
  hasGutter := item.GetImageList <> nil;

  //Caption-hight:
  ACanvas.Font.Style := [];
  r := rect(0, 0, 0, 0);
  offset := DrawText(ACanvas.Handle, PChar(captionStr), length(captionStr), r, DT_CALCRECT or DT_EXTERNALLEADING or DT_TOP);

  //Backgrount
  ACanvas.Brush.Style := bsSolid;
  ACanvas.Brush.Color := RICHMENU_ITEM_BACKGROUND_COLOR;
  ACanvas.FillRect(ARect);

  //Gutter
  if hasGutter then
  begin
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := RICHMENU_GUTTER_COLOR;
    r := ARect;
    r.Right := RICHMENU_GUTTER_WIDTH;
    ACanvas.FillRect(r);

    ACanvas.Pen.Color := RICHMENU_SEPARATOR_LINE_COLOR;
    ACanvas.Polyline([point(r.Right, r.top), point(r.Right, r.Bottom)]);
  end;

  //Selection
  if selected then
  begin
    //Set a rounded rectangle as clip-region
    selRgn := CreateRoundRectRgn(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom, 3, 3);
    SelectClipRgn(ACanvas.Handle, selRgn);

    if hintStr <> '' then
    begin
      //First gradient - caption
      r := ARect;
      r.Bottom := r.Top + offset + RICHMENU_MARG_Y*2;
      FillGradient(ACanvas.Handle, r, 256, RICHMENU_GRADIENT_START1, RICHMENU_GRADIENT_END1, gdVertical);

      //Second gradient - description
      r.Top := r.Bottom;
      r.Bottom := ARect.Bottom;
      FillGradient(ACanvas.Handle, r, 256, RICHMENU_GRADIENT_START2, RICHMENU_GRADIENT_END2, gdVertical);
    end
    else
    begin
      //Only one gradient under captoin
      r := ARect;
      FillGradient(ACanvas.Handle, r, 256, RICHMENU_GRADIENT_START1, RICHMENU_GRADIENT_END1, gdVertical);
    end;

    //Release clipregion
    SelectClipRgn(ACanvas.Handle, 0);

    //Outline selection
    ACanvas.Pen.Color := RICHMENU_SEPARATOR_LINE_COLOR;
    ACanvas.Brush.Style := bsClear;
    ACanvas.RoundRect(ARect.Left, ARect.Top, ARect.Right, ARect.Bottom, 3, 3);
  end;

  //Caption
  ACanvas.Brush.Style := bsClear;
  ACanvas.Font.Style := [];
  if item.Enabled then
    ACanvas.Font.Color := RICHMENU_FONT_COLOR
  else
    ACanvas.Font.Color := RICHMENU_FONT_DISABLED_COLOR;
  r.Left := ARect.Left + RICHMENU_MARG_X;
  if hasGutter then
    inc(r.Left, RICHMENU_GUTTER_WIDTH);
  r.Right := ARect.Right - RICHMENU_MARG_X;
  r.Top := ARect.Top + RICHMENU_MARG_Y;
  r.Bottom := ARect.Bottom;
  DrawText(ACanvas.Handle, PChar(captionStr), length(captionStr), r, DT_LEFT or DT_EXTERNALLEADING or DT_TOP);

  //Shortcut
  shortCutStr := ShortCutToText(item.ShortCut);
  if shortCutStr <> '' then
  begin
    DrawText(ACanvas.Handle, PChar(shortCutStr), length(shortCutStr), r, DT_RIGHT or DT_EXTERNALLEADING or DT_TOP);
  end;

  //Hint
  ACanvas.Font.Style := [];
  if item.Enabled then
    ACanvas.Font.Color := RICHMENU_FONT_COLOR
  else
    ACanvas.Font.Color := RICHMENU_FONT_DISABLED_COLOR;
  r.Left := ARect.Left + RICHMENU_MARG_X;
  if hasGutter then
    inc(r.Left, RICHMENU_GUTTER_WIDTH);
  r.Right := ARect.Right - RICHMENU_MARG_X;
  r.Top := ARect.Top + offset + RICHMENU_MARG_Y*2;
  r.Bottom := ARect.Bottom;
  DrawText(ACanvas.Handle, PChar(hintStr), length(hintStr), r, DT_LEFT or DT_EXTERNALLEADING or DT_TOP);

  //Icon
  if (item.ImageIndex >= 0) and (item.GetImageList <> nil) then
  begin
    item.GetImageList.Draw(ACanvas, ARect.Left + RICHMENU_MARG_X, ARect.Top + RICHMENU_MARG_Y, item.ImageIndex);
  end;
end;


end.
