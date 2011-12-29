//
// Copyright (c) 2011. Uli Fuchs <ufuchs@gmx.com>
// Released under the terms of the GNU GPL v2.0.
//

unit CghEqualsPrimitive;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

////////////////////////////////////////////////////////////////////////////////
// boolean data types
////////////////////////////////////////////////////////////////////////////////

function areEqual(This : Boolean; That : Boolean) : Boolean; overload;
function areEqual(This : ByteBool; That : ByteBool) : Boolean; overload;
function areEqual(This : WordBool; That : WordBool) : Boolean; overload;
function areEqual(This : LongBool; That : LongBool) : Boolean; overload;

////////////////////////////////////////////////////////////////////////////////
// integer data types
////////////////////////////////////////////////////////////////////////////////

function areEqual(This : Byte; That : Byte) : Boolean; overload;
function areEqual(This : ShortInt; That : ShortInt) : Boolean; overload;
function areEqual(This : Word; That : Word) : Boolean; overload;
function areEqual(This : SmallInt; That : SmallInt) : Boolean; overload;
function areEqual(This : Cardinal; That : Cardinal) : Boolean; overload;
function areEqual(This : Integer; That : Integer) : Boolean; overload;
function areEqual(This : Int64; That : Int64) : Boolean; overload;
function areEqual(This : UInt64; That : UInt64) : Boolean; overload;

////////////////////////////////////////////////////////////////////////////////
// floating point data types
////////////////////////////////////////////////////////////////////////////////

// Single
function areEqual(This : Single; That : Single) : Boolean; overload;
// Double
function areEqual(This : Double; That : Double) : Boolean; overload;

////////////////////////////////////////////////////////////////////////////////
// string and character data types
////////////////////////////////////////////////////////////////////////////////

// Char
function areEqual(This : Char; That : Char) : Boolean; overload;
// String
function areEqual(This : String; That : String) : Boolean; overload;

implementation

////////////////////////////////////////////////////////////////////////////////
// boolean data types
////////////////////////////////////////////////////////////////////////////////

//
// Boolean
//
function areEqual(This : Boolean; That : Boolean) : Boolean;
begin
  Result := This = That;
end;

//
// ByteBool
//
function areEqual(This : ByteBool; That : ByteBool) : Boolean;
begin
  Result := This = That;
end;

//
// WordBool
//
function areEqual(This: WordBool; That: WordBool): Boolean;
begin
  Result := This = That;
end;

//
// LongBool
//
function areEqual(This: LongBool; That: LongBool): Boolean;
begin
  Result := This = That;
end;

////////////////////////////////////////////////////////////////////////////////
// integer data types
////////////////////////////////////////////////////////////////////////////////

//
// Byte
//
function areEqual(This : Byte; That : Byte) : Boolean;
begin
  Result := This = That;
end;

//
// ShortInt
//
function areEqual(This: ShortInt; That: ShortInt): Boolean;
begin
  Result := This = That;
end;

//
// Word
//
function areEqual(This: Word; That: Word): Boolean;
begin
  Result := This = That;
end;

//
// SmallInt
//
function areEqual(This: SmallInt; That: SmallInt): Boolean;
begin
  Result := This = That;
end;

//
// Cardinal
//
function areEqual(This: Cardinal; That: Cardinal): Boolean;
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
// UInt64
//
function areEqual(This: UInt64; That: UInt64): Boolean;
begin
  Result := This = That;
end;

////////////////////////////////////////////////////////////////////////////////
// floating point data types
////////////////////////////////////////////////////////////////////////////////

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
// string and character data types
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

