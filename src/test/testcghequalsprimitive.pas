//
// Copyright (c) 2011. Uli Fuchs <ufuchs@gmx.com>
// Released under the terms of the GNU GPL v2.0.
//

unit TestCghEqualsPrimitive;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, {testutils, } testregistry;

type

  { TTestCghEqualsPrimitive }

  TTestCghEqualsPrimitive = class(TTestCase)
  published

    ////////////////////////////////////////////////////////////////////////////
    // boolean data types
    ////////////////////////////////////////////////////////////////////////////

    procedure Test_areEqual_Boolean;
    procedure Test_areEqual_ByteBool;
    procedure Test_areEqual_WordBool;
    procedure Test_areEqual_LongBool;

    ////////////////////////////////////////////////////////////////////////////
    // integer data types
    ////////////////////////////////////////////////////////////////////////////

    procedure Test_areEqual_Byte;
    procedure Test_areEqual_ShortInt;
    procedure Test_areEqual_Word;
    procedure Test_areEqual_SmallInt;
    procedure Test_areEqual_Cardinal;
    procedure Test_areEqual_Integer;
    procedure Test_areEqual_UInt64;
    procedure Test_areEqual_Int64;

    ////////////////////////////////////////////////////////////////////////////
    // floating point data types
    ////////////////////////////////////////////////////////////////////////////

    procedure Test_areEqual_Single;
    procedure Test_areEqual_Double;

    ////////////////////////////////////////////////////////////////////////////
    // string and character data types
    ////////////////////////////////////////////////////////////////////////////

    procedure Test_areEqual_Char;
    procedure Test_areEqual_String;

  end; 

implementation

uses
  CghEqualsPrimitive;

////////////////////////////////////////////////////////////////////////////////
// boolean data types
////////////////////////////////////////////////////////////////////////////////

procedure TTestCghEqualsPrimitive.Test_areEqual_Boolean;
var
  Actual : Boolean;
  Expected : Boolean;
begin
  Actual := True;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_ByteBool;
var
  Actual : ByteBool;
  Expected : ByteBool;
begin
  Actual := True;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_WordBool;
var
  Actual : WordBool;
  Expected : WordBool;
begin
  Actual := True;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_LongBool;
var
  Actual : LongBool;
  Expected : LongBool;
begin
  Actual := True;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

////////////////////////////////////////////////////////////////////////////////
// integer data types
////////////////////////////////////////////////////////////////////////////////

procedure TTestCghEqualsPrimitive.Test_areEqual_Byte;
var
  Actual : Byte;
  Expected : Byte;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_ShortInt;
var
  Actual : ShortInt;
  Expected : ShortInt;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_Word;
var
  Actual : Word;
  Expected : Word;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_SmallInt;
var
  Actual : SmallInt;
  Expected : SmallInt;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_Cardinal;
var
  Actual : Cardinal;
  Expected : Cardinal;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_Integer;
var
  Actual : Integer;
  Expected : Integer;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_UInt64;
var
  Actual : UInt64;
  Expected : UInt64;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_Int64;
var
  Actual : Int64;
  Expected : Int64;
begin
  Actual := 1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

////////////////////////////////////////////////////////////////////////////////
// floating point data types
////////////////////////////////////////////////////////////////////////////////

procedure TTestCghEqualsPrimitive.Test_areEqual_Single;
var
  Actual : Single;
  Expected : Single;
begin
  Actual := 1.1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_Double;
var
  Actual : Double;
  Expected : Double;
begin
  Actual := 1.1;
  Expected := Actual;
  AssertEquals(True, areEqual(Actual, Expected));
end;

////////////////////////////////////////////////////////////////////////////////
// string and character data types
////////////////////////////////////////////////////////////////////////////////

procedure TTestCghEqualsPrimitive.Test_areEqual_Char;
var
  Actual : Char;
  Expected : Char;
begin
  Actual := 'C';
  Expected := 'C';
  AssertEquals(True, areEqual(Actual, Expected));
end;

procedure TTestCghEqualsPrimitive.Test_areEqual_String;
var
  Actual : String;
  Expected : String;
begin
  Actual := 'String';
  Expected := 'String';
  AssertEquals(True, areEqual(Actual, Expected));
end;

initialization

  RegisterTest(TTestCghEqualsPrimitive);
end.

