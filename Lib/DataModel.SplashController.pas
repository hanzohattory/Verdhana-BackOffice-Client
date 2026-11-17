unit DataModel.SplashController;

interface

type
  TSplashController = class
  public
    procedure AutoUpdateProcess(const AMsg: string);
    procedure AutoUpdateProgress(const AValue: Int64);
    procedure AutoUpdateSetMaxProgress(const AValue: Int64);
    procedure AutoUpdateGetReleaseNotes(const AMsg: string);
  end;

implementation

uses
  SplashCommUtils;

{ TSplashController }

procedure TSplashController.AutoUpdateGetReleaseNotes(const AMsg: string);
begin
  SetSplashReleaseNotes(AMsg);
end;

procedure TSplashController.AutoUpdateProcess(const AMsg: string);
begin
  ChangeSplashLabelProgressCaption(AMsg);
end;

procedure TSplashController.AutoUpdateProgress(const AValue: Int64);
begin
  ChangeSplashProgressBarPosition(AValue);
end;

procedure TSplashController.AutoUpdateSetMaxProgress(const AValue: Int64);
begin
  SetSplashProgressBarMaxPosition(AValue);
end;

end.
