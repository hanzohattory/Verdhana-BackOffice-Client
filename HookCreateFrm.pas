// Arnaud Bouchez provided great code, but he cut some important pieces of own code.
// And what is more important - he didn't try to run it even once before posting :)
// There is correct unit (copy-pasted from another project & tested with XE6/Win.x32)
// It works for Windows x32 and x64 platforms.

unit HookCreateFrm;

interface

implementation

uses
  Windows, Classes, Forms, IdGlobal, SysUtils, DataGlobal, StrUtils;

type
  THookedForm = class(TCustomForm)
    procedure HookedDoCreate;
  end;

  THookedFrame = class(TCustomFrame)
    constructor Create(AOwner: TComponent); override;
  end;

  PPatchEvent = ^TPatchEvent;
  // asm opcode hack to patch an existing routine
  TPatchEvent = packed record
    Jump: byte;
    Offset: integer;
  end;

var
  PatchForm, OriginalForm: TPatchEvent;
  PatchPositionForm: PPatchEvent = nil;
  PatchFrame, OriginalFrame: TPatchEvent;
  PatchPositionFrame: PPatchEvent = nil;

procedure PatchCreate;
var ov: cardinal;
begin
  // hook TForm:
  PatchPositionForm := PPatchEvent(@THookedForm.DoCreate);
  OriginalForm := PatchPositionForm^;
  PatchForm.Jump := $E9; // Jmp opcode
  PatchForm.Offset := PByte(@THookedForm.HookedDoCreate)-PByte(PatchPositionForm)-5;
  if not VirtualProtect(PatchPositionForm, 5, PAGE_EXECUTE_READWRITE, @ov) then
    RaiseLastOSError;
  PatchPositionForm^ := PatchForm; // enable Hook
  // hook TFrame:
  PatchPositionFrame := PPatchEvent(@TCustomFrame.Create);
  OriginalFrame := PatchPositionFrame^;
  PatchFrame.Jump := $E9; // Jmp opcode
  PatchFrame.Offset := PByte(@THookedFrame.Create)-PByte(PatchPositionFrame)-5;
  if not VirtualProtect(PatchPositionFrame, 5, PAGE_EXECUTE_READWRITE, @ov) then
    RaiseLastOSError;
  PatchPositionFrame^ := PatchFrame; // enable Hook
end;

// hook logic was inspired from GetText()

{ THookedForm }

procedure THookedForm.HookedDoCreate;
begin

  // do what you want before original DoCreate

  PatchPositionForm^ := OriginalForm;
  try
    DoCreate;
  finally
    PatchPositionForm^ := PatchForm;
  end;

  if (UpperCase(LeftStr(Self.ClassName, 4)) = UpperCase('Tfrm')) then
  begin
    if (UpperCase(Self.ClassName) <> UpperCase('TdmGlobal'))
       And (UpperCase(Self.ClassName) <> UpperCase('TfrmMain'))
       And (UpperCase(Self.ClassName) <> UpperCase('TfrmLoginDialog'))
       And (UpperCase(Self.ClassName) <> UpperCase('TfrmNFECSplash'))
       And (UpperCase(Self.ClassName) <> UpperCase('TdxAlertWindow')) then
    begin
      with dmGlobal do
      begin
        if cdsHelpConfig.Locate('Class', Self.ClassName, []) then
        begin
          Self.HelpContext := cdsHelpConfigHelpContext.AsInteger;
        end
        else
        begin
          cdsHelpConfig.Append;
          cdsHelpConfigClass.AsString := Self.ClassName;
          cdsHelpConfigCaption.AsString := Self.Caption;
          cdsHelpConfigHelpContext.AsInteger := Self.HelpContext;
          cdsHelpConfig.Post;
        end;

      end;

//      dmGlobal.NewAlertMessage('Form Class ' + Self.ClassName + ' is Created.');
    end;
  end;
  // do what you want after original DoCreate

end;

{ THookedFrame }

constructor THookedFrame.Create(AOwner: TComponent);
begin

  // do what you want before original DoCreate

  PatchPositionFrame^ := OriginalFrame;
  try
    inherited Create(AOwner);
  finally
    PatchPositionFrame^ := PatchFrame;
  end;

  // do what you want after original Create

end;

initialization
  PatchCreate;

end.
