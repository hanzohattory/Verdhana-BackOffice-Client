(*
 * This software is distributed under BSD license.
 *
 * Copyright (c) 2006-2009 Iztok Kacin, Cromis (iztok.kacin@gmail.com).
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 * - Neither the name of the Iztok Kacin nor the names of its contributors may be
 *   used to endorse or promote products derived from this software without specific
 *   prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * ==================================================================================
 * A simple long interval scheduler. Good for scheduling tasks over long
 * periods of time. Low resolution but almost no resource usage.
 * ==================================================================================
 * 22/7/2006 (1.0.0)
 *   - Initial implementation.
 * 1/8/2006 (1.0.1)
 *   - Added progresive adjustment of resolution (period interval)
 *   - Adjusted code for linux (Kylix) - build "yes", work "no"
 * 15/8/2006 (1.0.2)
 *   - Added mutex for each schedule. Thas allows freeing threads on app
 *     termination.
 * 24/9/2006 (1.0.3)
 *   - Improved scheduling code to be more precise
 * 7/11/2007 (1.0.4)
 *   - Abandoned linux (Kylix) support because it is not worth the work
 * 25/2/2008 (1.1.0)
 *   - added support for diferent types of events The types are:
 *     I. stThreaded: event is run in the context of the scheduling thread
 *     II. stSynchronize: event is run in the context of the main thread
 *     III. stMessage: event is run in the context of the thread that created it
 * 27/2/2009 (2.0.0)
 *   - added support for chron type of events and schedules.
 *     I. for rules see: http://www.nncron.ru/help/EN/working/cron-format.htm
 *     II. not all variants of cron are supported yet, but most are. see bellow
 *   - periodic behaviour of old scheduler was moved to cron format
 *   - event can be paused
 * 10/10/2009 (2.0.1)
 *   - no need to register the WM_ON_SCHEDULE message on initialization
 *   - SetInterval now checks for limits of each value
 *   - RAD 2010 thread changes implemented (resume)
 * 18/01/2010 (2.0.2)
 *   - fixed a bug in valid interval calculation
 * 27/10/2010 (2.0.3)
 *   - added HasValue dunction for TChronEntry
 * 18/03/2012 (2.1.0)
 *   - 64 bit compiler compatible
 * 13/05/2012 (2.1.1)
 *   - Fixed a bug in calculation algorithm
 * 20/06/2012 (2.1.2)
 *   - Fixed a bug when deleting a schedule from the list (it was not removed)
 *     Thanks to Daniel for pointing that out.
 * ==================================================================================
*)

unit Cromis.Scheduler;

interface

uses
  Windows, Messages, SysUtils, Classes, DateUtils, Math, Contnrs,

  // cromis units
  Cromis.StringUtils;

const
  MIN_RESOLUTION = 50;
  MAX_RESOLUTION = 86400000;

  // chron constants
  CHRON_Second = 0;
  CHRON_Minute = 1;
  CHRON_Hour = 2;
  CHRON_DayInMonth = 3;
  CHRON_Month = 4;
  CHRON_DayInWeek = 5;
  CHRON_Year = 6;

  // number of fields
  CHRON_MaxField = 6;

const
  cShutdownTimeout = 3000;

const
  WM_ON_SCHEDULE = WM_USER + 1;

type
  TScheduledEvent = class;
  TSchNotifyEvent = procedure(Sender: TScheduledEvent) of object;
  TScheduleStatus = (ssIdleWait, ssTriggered, ssInvalid, ssAbort);
  TSignalType = (stThreaded, stSynchronize, stMessage);

  TChronEntry = record
    MinValue: Integer;
    MaxValue: Integer;
    Interval: Integer;
    Relative: Boolean;
    Values: array of Integer;
    procedure SetMaxValue(const Value: Integer);
    function GetNextValue(const Current: Integer): Integer;
    function GetFirstValue(const Current: Integer): Integer;
    function GetValue(const Current, Interval: Integer): Integer;
    function HasValue(const Value: Integer): Boolean;
  end;

  // chron representation of schedules
  TChronSchedule = array [0..CHRON_MaxField] of TChronEntry;

  TWorkerThread = class(TThread)
  private
    FIntSchedule: TScheduledEvent;
  protected
    procedure Execute; override;
  public
    constructor Create(const IntSchedule: TScheduledEvent);
  end;

  // main schedule class
  TSchedule = class
  strict private
    FEventPlan: string;
    FValidTo: TDateTime;
    FNextEvent: TDateTime;
    FValidFrom: TDateTime;
    FChronSchedule: TChronSchedule;
    FScheduleStatus: TScheduleStatus;
    procedure SetEventPlan(const Value: string);
    function EncodeNextEvent: Boolean;
  public
    constructor Create;
    procedure CheckSchedule;
    function ResetSchedule: Boolean;
    property NextEvent: TDateTime read FNextEvent;
    property ValidTo: TDateTime read FValidTo write FValidTo;
    property ValidFrom: TDateTime read FValidFrom write FValidFrom;
    property EventPlan: string read FEventPlan write SetEventPlan;
    property ScheduleStatus: TScheduleStatus read FScheduleStatus;
    procedure SetInterval(const Seconds, Minutes, Hours, Days, Months, Years: Integer);
  end;

  // the schedule thread that acts as a timer
  TScheduleThread = class(TThread)
  strict private
    { Private declarations }
    FHWND: HWND;
    FTermEvent: THandle;
    FRunAtOnce: Boolean;
    FResolution: Int64;
    FIntSchedule: TScheduledEvent;
    procedure CallEventHandlerFunction;
  protected
    procedure Execute; override;
  public
    constructor Create(const IntSchedule: TScheduledEvent;
                       const WindowHWND: HWND;
                       const TermEvent: THandle;
                       const RunAtOnce: Boolean);
  end;

  // the event object encapsulating TSchedule
  TScheduledEvent = class
  strict private
    FName: string;
    FPaused: Boolean;
    FRunning: Boolean;
    FSchedule: TSchedule;
    FTermEvent: THandle;
    FWinHandle: HWND;
    FSchThread: TScheduleThread;
    FRestarting: Boolean;
    FSignalType: TSignalType;
    FOnScheduleRun: TSchNotifyEvent;
    FOnScheduleStop: TSchNotifyEvent;
    FOnScheduleAbort: TSchNotifyEvent;
    FOnScheduleEvent: TSchNotifyEvent;
    FOnScheduleInvalid: TSchNotifyEvent;
    procedure WndProc(var msg: TMessage);
    procedure DeallocateHWnd(Wnd: HWND);
    procedure OnScheduleTerminated(Sender: TObject);
  public
    constructor Create(Name: string);
    destructor Destroy; override;
    function Run(const RunAtOnce: Boolean = False): Boolean;
    procedure Restart;
    procedure Resume;
    procedure Pause;
    procedure Stop;
    property Name: string read FName;
    property Running: Boolean read FRunning;
    property Schedule: TSchedule read FSchedule;
    property Restarting: Boolean read FRestarting;
    property SignalType: TSignalType read FSignalType write FSignalType;
    property OnScheduleRun: TSchNotifyEvent read FOnScheduleRun write FOnScheduleRun;
    property OnScheduleStop: TSchNotifyEvent read FOnScheduleStop write FOnScheduleStop;
    property OnScheduleEvent: TSchNotifyEvent read FOnScheduleEvent write FOnScheduleEvent;
    property OnScheduleAbort: TSchNotifyEvent read FOnScheduleAbort write FOnScheduleAbort;
    property OnScheduleInvalid: TSchNotifyEvent read FOnScheduleInvalid write FOnScheduleInvalid;
  end;

  // list of scheduled events
  TSchEventList = class(TObjectList)
  strict private
    function GetItem(Index : Integer) : TScheduledEvent;
    procedure SetItem(Index: Integer; Value: TScheduledEvent);
  public
    function GetFirstScheduled: TScheduledEvent;
    function FindSchEvent(Name: string): TScheduledEvent;
    function Add(EventName: string): TScheduledEvent; overload;
    function Delete(EventName: string): Boolean; overload;
    property Items[Index: Integer]: TScheduledEvent read GetItem write SetItem; default;
  end;

  // chron format schedule calculation and parsing functions
  function FindNextScheduleDate(const BaseDate: TDateTime;
                                var ChronSchedule: TChronSchedule;
                                const ValidFrom: TDateTime = 0;
                                const ValidTo: TDateTime = 0
                                ): TDateTime;

  procedure ParseScheduleEventPlan(const Schedule: string; var ChronSchedule: TChronSchedule);

implementation

function FindNextScheduleDate(const BaseDate: TDateTime;
                              var ChronSchedule: TChronSchedule;
                              const ValidFrom, ValidTo: TDateTime
                              ): TDateTime;
var
  Previous: array [0..CHRON_MaxField] of Integer;
  Current: array [0..CHRON_MaxField] of Integer;

  ResetIndex: Integer;
  ResetToMin: Boolean;
  StartDate: TDateTime;
  TempDate: TDateTime;
  K, J: Integer;

  function IsSchedulePartValid(const Position: Integer): Boolean;
  var
    I: Integer;
  begin
    Result := False;

    if Current[Position] >= Previous[Position] then
    begin
      Result := True;
      Exit;
    end;

    for I := CHRON_MaxField downto 0 do
    begin
      if (Position < I) and (Current[I] > Previous[I]) then
      begin
        Result := True;
        Exit;
      end;
    end;
  end;

  procedure ResetSubsetDateValues(var Index: Integer);
  var
    I: Integer;
  begin
    for I := 0 to CHRON_MaxField do
    begin
      if (Index > I) and not ChronSchedule[I].Relative then
      begin
        Current[I] := ChronSchedule[I].MinValue;
        Previous[I] := Current[I];
      end;
    end;

    // reset it
    Index := 0;
  end;

  function CheckLoopBreakCondition(const CronPart: Integer): Boolean;
  begin
    Result := False;

    if Previous[CronPart] = Current[CronPart] then
    begin
      Result := True;
      Exit;
    end;

    if Previous[CronPart]= ChronSchedule[CronPart].MaxValue then
      if  Current[CronPart] < Previous[CronPart] then
        Result := True;
  end;

begin
  StartDate := Max(ValidFrom, BaseDate);
  ResetToMin := False;
  ResetIndex := 0;
  Result := 0;

  if (ValidTo > 0) and (StartDate > ValidTo) then
    Exit;

  Previous[CHRON_Second] := SecondOf(StartDate);
  Previous[CHRON_Minute] := MinuteOf(StartDate);
  Previous[CHRON_Hour] := HourOf(StartDate);
  Previous[CHRON_DayInMonth] := DayOf(StartDate);
  Previous[CHRON_Month] := MonthOf(StartDate);
  Previous[CHRON_DayInWeek] := DayOfTheWeek(StartDate);
  Previous[CHRON_Year] := YearOf(StartDate);

  // set variable max value for days in moth as they vary
  ChronSchedule[CHRON_DayInMonth].MaxValue := DaysInMonth(StartDate);
  // calculate the first values
  for K := CHRON_MaxField downto 0 do
  begin
    case ResetToMin and not ChronSchedule[K].Relative of
      False: Current[K] := ChronSchedule[K].GetFirstValue(Previous[K]);
      True: Current[K] := ChronSchedule[K].MinValue;
    end;

    J := K;
    while ChronSchedule[J].Relative and (Current[J] < Previous[J]) and (J < CHRON_MaxField) do
    begin
      Inc(J);
      Current[J] := (Current[J] + 1) mod (ChronSchedule[J].MaxValue + 1);
      ChronSchedule[CHRON_DayInMonth].MaxValue := DaysInAMonth(Current[CHRON_Year],
                                                               Current[CHRON_Month]);
    end;

    ResetToMin := ResetToMin or (Current[K] > Previous[K]);
  end;

  // no valid year was found, finish
  while IsSchedulePartValid(CHRON_Year) do
  begin
    ResetSubsetDateValues(ResetIndex);

    while IsSchedulePartValid(CHRON_Month) do
    begin
      ResetSubsetDateValues(ResetIndex);

      while IsSchedulePartValid(CHRON_DayInMonth) do
      begin
        if IsValidDate(Current[CHRON_Year],
                       Current[CHRON_Month],
                       Current[CHRON_DayInMonth]) then
        begin
          TempDate := EncodeDate(Current[CHRON_Year], Current[CHRON_Month], Current[CHRON_DayInMonth]);
          Current[CHRON_DayInWeek] := ChronSchedule[CHRON_DayInWeek].GetFirstValue(DayOfTheWeek(TempDate));

          // is this the correct day of the week
          if DayOfTheWeek(TempDate) = Current[CHRON_DayInWeek] then
          begin
            // we found the correct day, now find the hours minutes and seconds
            ResetSubsetDateValues(ResetIndex);

            while IsSchedulePartValid(CHRON_Hour) do
            begin
              ResetSubsetDateValues(ResetIndex);

              while IsSchedulePartValid(CHRON_Minute) do
              begin
                ResetSubsetDateValues(ResetIndex);

                while IsSchedulePartValid(CHRON_Second) do
                begin
                  TempDate := EncodeDateTime(Current[CHRON_Year],
                                             Current[CHRON_Month],
                                             Current[CHRON_DayInMonth],
                                             Current[CHRON_Hour],
                                             Current[CHRON_Minute],
                                             Current[CHRON_Second],
                                             0);

                  if RecodeMilliSecond(StartDate, 0) <> TempDate then
                  begin
                    if (ValidFrom = 0) or (TempDate > ValidFrom) then
                    begin
                      if (ValidTo > 0) and (TempDate > ValidTo) then
                        Result := 0
                      else
                        Result := TempDate;

                      Exit;
                    end;
                  end;

                  // get next possible second
                  ResetIndex := CHRON_Second;
                  Previous[CHRON_Second] := Current[CHRON_Second];
                  Current[CHRON_Second] := ChronSchedule[CHRON_Second].GetNextValue(Previous[CHRON_Second]);

                  // break if there was no change
                  if CheckLoopBreakCondition(CHRON_Second) then
                    Break;
                end;

                // get next possible minute
                ResetIndex := CHRON_Minute;
                Previous[CHRON_Minute] := Current[CHRON_Minute];
                Current[CHRON_Minute] := ChronSchedule[CHRON_Minute].GetNextValue(Previous[CHRON_Minute]);
                Previous[CHRON_Second] := Current[CHRON_Second];

                // break if there was no change
                if CheckLoopBreakCondition(CHRON_Minute) then
                  Break;
              end;

              // get next possible hour
              ResetIndex := CHRON_Hour;
              Previous[CHRON_Hour] := Current[CHRON_Hour];
              Current[CHRON_Hour] := ChronSchedule[CHRON_Hour].GetNextValue(Previous[CHRON_Hour]);
              Previous[CHRON_Minute] := Current[CHRON_Minute];

              // break if there was no change
              if CheckLoopBreakCondition(CHRON_Hour) then
                Break;
            end;
          end;
        end;

        // get next possible day
        ResetIndex := CHRON_DayInMonth;
        Previous[CHRON_DayInMonth] := Current[CHRON_DayInMonth];
        ChronSchedule[CHRON_DayInMonth].MaxValue := DaysInAMonth(Current[CHRON_Year], Current[CHRON_Month]);
        Current[CHRON_DayInMonth] := ChronSchedule[CHRON_DayInMonth].GetNextValue(Previous[CHRON_DayInMonth]);
        Previous[CHRON_Hour] := Current[CHRON_Hour];

        // break if there was no change
        if CheckLoopBreakCondition(CHRON_DayInMonth) then
          Break;
      end;

      // get next possible month
      ResetIndex := CHRON_Month;
      Previous[CHRON_Month] := Current[CHRON_Month];
      Current[CHRON_Month] := ChronSchedule[CHRON_Month].GetNextValue(Previous[CHRON_Month]);
      Previous[CHRON_DayInMonth] := Current[CHRON_DayInMonth];

      // break if there was no change
      if CheckLoopBreakCondition(CHRON_Month) then
        Break;
    end;

    // get next possible year
    ResetIndex := CHRON_Year;
    Previous[CHRON_Year] := Current[CHRON_Year];
    Current[CHRON_Year] := ChronSchedule[CHRON_Year].GetNextValue(Previous[CHRON_Year]);
    Previous[CHRON_Month] := Current[CHRON_Month];

    // break if there was no change
    if CheckLoopBreakCondition(CHRON_Year) then
      Break;
  end;
end;

function SetRepeatingInterval(const Min, Max, Interval: Integer): TChronEntry;
begin
  Result.Interval := Interval;
  SetLength(Result.Values, 0);
  Result.MinValue := Min;
  Result.MaxValue := Max;
end;

function SetIntervalValues(const Min, Max, Interval: Integer; const Values: TStringList): TChronEntry;
var
  I: Integer;
begin
  SetLength(Result.Values, Values.Count);
  Result.Interval := Interval;
  Result.MinValue := Max;
  Result.MaxValue := Min;

  for I := 0 to Values.Count - 1 do
  begin
    Result.Values[I] := StrToInt(Values[I]);

    if Result.Values[I] < Result.MinValue then
      Result.MinValue := Result.Values[I];
    if Result.Values[I] > Result.MaxValue then
      Result.MaxValue := Result.Values[I];
  end;
end;

// single schedule part formating routine
function ParseSchedulePart(const Min, Max: Integer; const Schedule: string): TChronEntry;
var
  Values: string;
  MinVal: Integer;
  MaxVal: Integer;
  Interval: Integer;
  ValArray: TStringList;
begin
  // start normal procedure
  Result.Relative := False;
  Values := Schedule;
  Interval := 0;

  if Pos('/', Values) > 0 then
  begin
    Interval := StrToInt(StrAfter('/', Values));
    Values := StrBefore('/', Values);
  end;

  // parse the seconds values
  if Pos('*', Values) > 0 then
    Result := SetRepeatingInterval(Min, Max, Math.Max(1, Interval))
  else if Pos('?', Values) > 0 then
  begin
    Result := SetRepeatingInterval(Min, Max, Interval);
    Result.Relative := True;
  end
  else if Pos('-', Values) > 0 then
  begin
    MaxVal := StrToInt(StrAfter('-', Values));
    MinVal := StrToInt(StrBefore('-', Values));
    Result := SetRepeatingInterval(MinVal, MaxVal, Math.Max(1, Interval));
  end
  else
  begin
    ValArray := TStringList.Create;
    try
      ValArray.StrictDelimiter := True;
      ValArray.Delimiter := ',';

      // get the values as delimited text
      ValArray.DelimitedText := Values;
      Result := SetIntervalValues(Min, Max, Interval, ValArray);
    finally
      ValArray.Free;
    end;
  end;
end;

procedure ParseScheduleEventPlan(const Schedule: string; var ChronSchedule: TChronSchedule);
var
  ScheduleParts: TStringList;
begin
  ScheduleParts := TStringList.Create;
  try
    ScheduleParts.StrictDelimiter := True;
    ScheduleParts.Delimiter := #32;

    // parse the delimited schedule value
    ScheduleParts.DelimitedText := Schedule;

    // parse all parts of the schedule
    ChronSchedule[CHRON_Second] := ParseSchedulePart(0, 59, ScheduleParts[CHRON_Second]);
    ChronSchedule[CHRON_Minute] := ParseSchedulePart(0, 59, ScheduleParts[CHRON_Minute]);
    ChronSchedule[CHRON_Hour] := ParseSchedulePart(0, 23, ScheduleParts[CHRON_Hour]);
    ChronSchedule[CHRON_DayInMonth] := ParseSchedulePart(1, 31, ScheduleParts[CHRON_DayInMonth]);
    ChronSchedule[CHRON_Month] := ParseSchedulePart(1, 12, ScheduleParts[CHRON_Month]);
    ChronSchedule[CHRON_DayInWeek] := ParseSchedulePart(1, 7, ScheduleParts[CHRON_DayInWeek]);
    ChronSchedule[CHRON_Year] := ParseSchedulePart(1900, 3000, ScheduleParts[CHRON_Year]);
  finally
    ScheduleParts.Free;
  end;
end;

{ TScheduleThread }

procedure TScheduleThread.CallEventHandlerFunction;
begin
  FIntSchedule.OnScheduleEvent(FIntSchedule);
end;

constructor TScheduleThread.Create(const IntSchedule: TScheduledEvent;
                                   const WindowHWND: HWND;
                                   const TermEvent: THandle;
                                   const RunAtOnce: Boolean);
begin
  // set initial resolution based on interval length between now and schedule
  FResolution := MilliSecondsBetween(Now, IntSchedule.Schedule.NextEvent);
  // assign schedule to thread
  FIntSchedule := IntSchedule;
  // free thread on terminate
  FreeOnTerminate := True;
  // set if run at once
  FRunAtOnce := RunAtOnce;
  // set the term. event
  FTermEvent := TermEvent;
  // set the window
  FHWND := WindowHWND;

  inherited Create(False);
end;

procedure TScheduleThread.Execute;
var
  BeginDiff: Cardinal;
  WaitStatus: Cardinal;
  SleepInterval: Int64;
begin
  while not Terminated do
  begin
    // mark begin check routine
    BeginDiff := GetTickCount;
    // halve the resolution (progressive)
    FResolution := FResolution div 2;
    // check if schedule is already triggered
    FIntSchedule.Schedule.CheckSchedule;

    // check if we have to abort
    if FIntSchedule.Schedule.ScheduleStatus = ssAbort then
      Exit;

    if (FIntSchedule.Schedule.ScheduleStatus in [ssTriggered, ssInvalid]) or FRunAtOnce then
    begin
      FRunAtOnce := False;

      if Assigned(FIntSchedule.OnScheduleEvent) then
      begin
        FResolution := MilliSecondsBetween(Now, FIntSchedule.Schedule.NextEvent) div 2;

        case FIntSchedule.SignalType of
          stSynchronize: Synchronize(CallEventHandlerFunction);
          stMessage: PostMessage(FHWND, WM_ON_SCHEDULE, 0, 0);
          stThreaded: TWorkerThread.Create(FIntSchedule);
        end;

        // if invalid status stop the schedule
        if FIntSchedule.Schedule.ScheduleStatus = ssInvalid then
          Exit;
      end
      else
        raise Exception.Create('OnSchedule is not defined');
    end;
    // adjust the sleep interval
    SleepInterval := FResolution;
    if SleepInterval > MAX_RESOLUTION then
      SleepInterval := MAX_RESOLUTION
    else if SleepInterval < MIN_RESOLUTION then
      SleepInterval := MIN_RESOLUTION;
    // sleep for the interval period
    SleepInterval := SleepInterval - (GetTickCount - BeginDiff);
    // start the wait. Finish waiting if the event is set or timeout reached
    WaitStatus := WaitForSingleObject(FTermEvent, Max(0, SleepInterval));
    // check what was the cause for signalization
    if WaitStatus <> WAIT_TIMEOUT then
      Self.Terminate;
  end;
end;

{ TSchedule }

constructor TSchedule.Create;
begin
  FScheduleStatus := ssIdleWait;
  FNextEvent := Now;
  FValidFrom := 0;
  FValidTo := 0;
end;

function TSchedule.EncodeNextEvent: Boolean;
begin
  FNextEvent := FindNextScheduleDate(FNextEvent, FChronSchedule, FValidFrom, FValidTo);
  Result := FNextEvent <> 0;
end;

procedure TSchedule.CheckSchedule;
var
  NextValid: Boolean;
begin
  FScheduleStatus := ssIdleWait;

  if (FValidTo > 0) and (Now > FValidTo) then
  begin
    FScheduleStatus := ssAbort;
    Exit;
  end;

  if CompareDateTime(FNextEvent, Now) < 1 then
  begin
    NextValid := EncodeNextEvent;

    if not NextValid then
    begin
      FScheduleStatus := ssInvalid;
      Exit;
    end;

    if (FValidFrom = 0) or (Now > FValidFrom) then
    begin
      FScheduleStatus := ssTriggered;
      Exit;
    end;
  end;
end;

function TSchedule.ResetSchedule: Boolean;
begin
  FNextEvent := Now;
  Result := EncodeNextEvent;
end;

procedure TSchedule.SetEventPlan(const Value: string);
begin
  if FEventPlan <> Value then
  begin
    ParseScheduleEventPlan(Value, FChronSchedule);
    FEventPlan := Value;
    ResetSchedule;
  end;
end;

procedure TSchedule.SetInterval(const Seconds, Minutes, Hours, Days, Months, Years: Integer);
var
  SectionChar: Char;

  procedure EncodeSingleValue(const Value, Max: Integer; var PlanAsStr: string);
  begin
    if Value > Max then
      raise Exception.CreateFmt('Value "%d" is above the max value "%d"', [Value, Max]);

    // years interval
    if Value > 0 then
    begin
      SectionChar := '?';
      PlanAsStr := Format('%s/%d %s', [SectionChar, Value, PlanAsStr]);
    end
    else
      PlanAsStr := Format('%s %s', [SectionChar, PlanAsStr]);
  end;

begin
  SectionChar := '*';
  FEventPlan := '';

  EncodeSingleValue(Years, 9999, FEventPlan);
  // every day in week
  FEventPlan := Format('* %s', [FEventPlan]);
  // the rest of the plan parts
  EncodeSingleValue(Months, 12, FEventPlan);
  EncodeSingleValue(Days, 31, FEventPlan);
  EncodeSingleValue(Hours, 24, FEventPlan);
  EncodeSingleValue(Minutes, 60, FEventPlan);
  EncodeSingleValue(Seconds, 60, FEventPlan);
  // trim any cron schedule spaces
  EventPlan := Trim(FEventPlan);
end;

{ TScheduledEvent }

constructor TScheduledEvent.Create(Name: string);
begin
  FName := Name;
  // set the signal type to message
  FSignalType := stMessage;
  // create the internal schedule
  FSchedule := TSchedule.Create;
  // create the dummy window for messages
  FWinHandle := AllocateHWND(WndProc);
  // create the event needed to signal thread termination
  FTermEvent := CreateEvent(nil, False, False, nil);
end;

destructor TScheduledEvent.Destroy;
var
  AResult: Cardinal;
begin
  // check state
  if FRunning then
  begin
    // dealocate the event handler
    FSchThread.OnTerminate := nil;

    // Terminate the thread
    SetEvent(FTermEvent);
    // close the handle
    CloseHandle(FTermEvent);

    // wait and block until the scheduling thread is finished
    AResult := WaitForSingleObject(FSchThread.Handle, cShutdownTimeout);

    // check if we timed out
    if AResult = WAIT_TIMEOUT then
      TerminateThread(FSchThread.Handle, 0);
  end;

  //destroy the hidden window
  DeallocateHWnd(FWinHandle);
  // free the schedule object
  FreeAndNil(FSchedule);

  inherited;
end;

procedure TScheduledEvent.OnScheduleTerminated(Sender: TObject);
begin
  case FSchedule.ScheduleStatus of
    ssIdleWait: ; //do nothing
    ssTriggered: ; //do nothing
    ssInvalid:
      begin
        if Assigned(FOnScheduleInvalid) then
          FOnScheduleInvalid(Self);
      end;
    ssAbort:
      begin
        if Assigned(FOnScheduleAbort) then
          FOnScheduleAbort(Self);
      end;
  end;
end;

procedure TScheduledEvent.Pause;
begin
  FPaused := True;
end;

procedure TScheduledEvent.DeallocateHWnd(Wnd: HWND);
var
  Instance: Pointer;
begin
  Instance := Pointer(GetWindowLong(Wnd, GWL_WNDPROC));

  if Instance <> @DefWindowProc then
  begin
    { make sure we restore the default
      windows procedure before freeing memory }
    SetWindowLong(Wnd, GWL_WNDPROC, Longint(@DefWindowProc));
    FreeObjectInstance(Instance);
  end;
  
  DestroyWindow(Wnd);
end;

procedure TScheduledEvent.Restart;
begin
  FRestarting := True;
  try
    Stop;
    Run;
  finally
    FRestarting := False;
  end;
end;

procedure TScheduledEvent.Resume;
begin
  FPaused := False;
end;

function TScheduledEvent.Run(const RunAtOnce: Boolean = False): Boolean;
begin
  FRunning := False;
  // check if the shcedule is valid
  Result := FSchedule.ResetSchedule;

  if Result then
  begin
    // we are running
    FRunning := True;
    // create the timer thread
    FSchThread := TScheduleThread.Create(Self, FWinHandle, FTermEvent, RunAtOnce);
    // set the on terminated event handler
    FSchThread.OnTerminate := OnScheduleTerminated;
    // set maximum priority class
    FSchThread.Priority := tpTimeCritical;

    // fire the on schedule stop event
    if Assigned(FOnScheduleRun) then
      FOnScheduleRun(Self);
  end;
end;

procedure TScheduledEvent.Stop;
begin
  if FRunning then
  begin
    FRunning := False;
    // Terminate thread
    SetEvent(FTermEvent);

    // fire the on schedule stop event
    if Assigned(FOnScheduleStop) then
      FOnScheduleStop(Self);
  end;
end;

procedure TScheduledEvent.WndProc(var msg: TMessage);
begin
  if Msg.Msg = WM_ON_SCHEDULE then
  begin
    {
     if the message id is WM_ON_SCHEDULE
     do our own processing
    }
    if Assigned(FOnScheduleEvent) and not FPaused then
      FOnScheduleEvent(Self);
  end
  else
    {
     for all other messages call
     the default window procedure
    }
    Msg.Result := DefWindowProc(FWinHandle, Msg.Msg, Msg.wParam, Msg.lParam);
end;

{ TSchEventList }

function TSchEventList.Add(EventName: string): TScheduledEvent;
begin
  Result := TScheduledEvent.Create(EventName);
  Add(Result);
end;

function TSchEventList.Delete(EventName: string): Boolean;
var
  I: Integer;
begin
  Result := False;

  for I := 0 to Count - 1 do
  begin
    if Items[I].Name = EventName then
    begin
      Remove(Items[I]);
      Result := True;
      Exit;
    end;
  end;
end;

function TSchEventList.FindSchEvent(Name: string): TScheduledEvent;
var
  I: Integer;
begin
  Result := nil;
  
  for I := 0 to Count - 1 do
  begin
    if Items[I].Name = Name then
    begin
      Result := Items[I];
      Exit;
    end;  
  end;
end;

function TSchEventList.GetFirstScheduled: TScheduledEvent;
var
  I: Integer;
begin
  if Count = 0 then
    Result := nil
  else
  begin
    Result := Items[0];
    for I := 1 to Count - 1 do
      if CompareDateTime(Items[I].Schedule.NextEvent, Result.Schedule.NextEvent) = 1 then
        Result := Items[I];
  end;
end;

function TSchEventList.GetItem(Index: Integer): TScheduledEvent;
begin
  Result := (inherited GetItem(Index)) as TScheduledEvent;
end;

procedure TSchEventList.SetItem(Index: Integer; Value: TScheduledEvent);
begin
  inherited SetItem(Index, Value);
end;

{ TDataEntry }

function TChronEntry.GetFirstValue(const Current: Integer): Integer;
begin
  Result := GetValue(Current, Interval);
end;

function TChronEntry.GetNextValue(const Current: Integer): Integer;
begin
  if Relative then
    Result := GetValue(Current, Min(Interval, 1))
  else
    Result := GetValue(Current + 1, Interval);
end;

function TChronEntry.GetValue(const Current, Interval: Integer): Integer;
var
  I: Integer;
begin
  Result := MinValue;

  // if relative
  if Relative then
  begin
    // calculate the next relative step
    if (Current + Interval) > MaxValue then
      Result := Max(MinValue, (Current + Interval) mod (MaxValue - MinValue + 1))
    else
      Result := (Current + Interval);

    Exit;
  end;

  // if we have fixed values
  if Length(Values) > 0 then
  begin
    for I := 0 to Length(Values) - 1 do
    begin
      if Values[I] >= Current then
      begin
        Result := Values[I];
        Exit;
      end;
    end;

    // take the first one
    Result := Values[0];
    Exit;
  end;

  // if no fixed values then check min max
  // also check the interval for the value
  if (Current >= MinValue) and (Current <= MaxValue) then
  begin
    if ((Current - MinValue) mod Interval) <> 0 then
    begin
      Result := Current + (Interval - (Current - MinValue) mod Interval);

      if Result > MaxValue then
        Result := MinValue;
    end
    else
      Result := Current;
  end;
end;

function TChronEntry.HasValue(const Value: Integer): Boolean;
var
  I: Integer;
begin
  Result := False;

  for I := 0 to Length(Values) - 1 do
  begin
    if Values[I] = Value then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

procedure TChronEntry.SetMaxValue(const Value: Integer);
begin
  MaxValue := Value;
end;

{ TWorkerThread }

constructor TWorkerThread.Create(const IntSchedule: TScheduledEvent);
begin
  inherited Create(False);

  FIntSchedule := IntSchedule;
  FreeOnTerminate := True;
end;

procedure TWorkerThread.Execute;
begin
  inherited;

  FIntSchedule.OnScheduleEvent(FIntSchedule);
end;

end.
