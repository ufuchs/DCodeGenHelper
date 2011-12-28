unit CghEqualsPrimitive;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// Boolean
function areEqual(This : Boolean; That : Boolean) : Boolean; overload;

// Byte
function areEqual(This : Byte; That : Byte) : Boolean; overload;
// Integer
function areEqual(This : Integer; That : Integer) : Boolean; overload;
// Int64
function areEqual(This : Int64; That : Int64) : Boolean; overload;

// Single
function areEqual(This : Single; That : Single) : Boolean; overload;
// Double
function areEqual(This : Double; That : Double) : Boolean; overload;

// Char
function areEqual(This : Char; That : Char) : Boolean; overload;
// String
function areEqual(This : String; That : String) : Boolean; overload;

implementation

//
// Boolean
//
function areEqual(This : Boolean; That : Boolean) : Boolean;
begin
  Result := This = That;
end;

////////////////////////////////////////////////////////////////////////////////
// numeric related
////////////////////////////////////////////////////////////////////////////////

//
// Byte
//
function areEqual(This : Byte; That : Byte) : Boolean;
begin
  Result := This = That;
end;

//
// Integer
//
function areEqual(This : Integer; That : Integer) : Boolean;
begin
  Result := This = That;
end;

//
// Int64
//
function areEqual(This : Int64; That : Int64) : Boolean;
begin
  Result := This = That;
end;

//
// Single
//
function areEqual(This : Single; That : Single) : Boolean;
type
TConverter = record
  case Byte of
    0 : (AsHex : array[0..3] of Char);
    1 : (Origin : Single);
end;
var
  S1 : TConverter;
  S2 : TConverter;
  I : Integer;
  C1 : Char;
  C2 : Char;
begin
  Result := False;
  S1.Origin := This;
  S2.Origin := That;
  for I := 0 to Pred(Length(S1.AsHex)) do begin
    C1 := S1.AsHex[I];
    C2 := S2.AsHex[I];
    if (C1 <> C2) then begin
      Exit;
    end;
  end;
  Result := True;
end;

//
// Double
//
function areEqual(This: Double; That: Double): Boolean;
type
TConverter = record
  case Byte of
    0 : (AsHex : array[0..7] of Char);
    1 : (Origin : Double);
end;
var
  S1 : TConverter;
  S2 : TConverter;
  I : Integer;
  C1 : Char;
  C2 : Char;
begin
  Result := False;
  S1.Origin := This;
  S2.Origin := That;
  for I := 0 to Pred(Length(S1.AsHex)) do begin
    C1 := S1.AsHex[I];
    C2 := S2.AsHex[I];
    if (C1 <> C2) then begin
      Exit;
    end;
  end;
  Result := True;
end;

////////////////////////////////////////////////////////////////////////////////
// string related
////////////////////////////////////////////////////////////////////////////////

//
// Char
//
function areEqual(This : Char; That : Char) : Boolean;
begin
  Result := This = That;
end;

//
// String
//
function areEqual(This : String; That : String) : Boolean;
begin
  Result := This = That;
end;

end.

