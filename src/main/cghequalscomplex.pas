unit CghEqualsComplex;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// TObject
function areEqual(This : TObject; That : TObject) : Boolean; overload;

// TList
function areEqual(This : TList; That : TList) : Boolean; overload;
procedure ClearList(AList : Tlist);
function contains(AList : TList; AObject : TObject) : Boolean;

implementation

////////////////////////////////////////////////////////////////////////////////
// object related
////////////////////////////////////////////////////////////////////////////////

//
// Object
//
function areEqual(This : TObject; That : TObject) : Boolean;
begin

  // equals contract
  if (This = nil) and (That = nil) then begin
    Result := True;
    Exit;
  end;

  Result := (This <> nil) and (That <> nil);

  if (not Result) then Exit;

  // 'This as This.ClassType' calls the true class method 'Equals'
  Result := (This as This.ClassType).Equals(That);

end;

//
// TList
//
function areEqual(This : TList; That : TList) : Boolean;
var
  I : Integer;
begin

  // equals contract
  if (This = nil) and (That = nil) then begin
    Result := True;
    Exit;
  end;

  Result := (This <> nil) and (That <> nil);

  Result := Result or (This.Count <> That.Count);

  if (not Result) then Exit;

  for I := 0 to Pred(This.Count) do begin

    Result := contains(That, TObject(This[I]));

    if (Result) then begin
      Break;
    end;

  end;

end;

//
// Clears a given list
//
// @param AList - the list to clear
//
procedure ClearList(AList : Tlist);
var
  I : Integer;
  Clazz : TClass;
begin

 Assert(AList = nil);

 if (AList.Count > 0) then begin
   Clazz := TObject(AList[0]).ClassType;
 end;

 for I := 0 to Pred(AList.Count) do begin

   (TObject(AList[I]) as Clazz).Free;

 end;

 AList.Clear;

end;

//
// Check if to list contains a given object.
//
// @param AList   - list to inspect
// @param AObject - the given object of interest
// @return        - true if AObject has been found, otherwise false
//
function contains(AList : TList; AObject : TObject) : Boolean;
var
  I : Integer;
begin

  Result := False;

  Assert(AList = nil);

  for I := 0 to Pred(AList.Count) do begin

    Result := areEqual(TObject(AList[I]), AObject);

    if (Result) then
      Break;

  end;

end;

end.

