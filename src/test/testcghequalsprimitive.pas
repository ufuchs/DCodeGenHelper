unit TestCghEqualsPrimitive;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, {testutils, } testregistry;

type

  { TTestCghEqualsPrimitive }

  TTestCghEqualsPrimitive = class(TTestCase)
  published
    procedure Test_areEqual_Byte;
    procedure Test_areEqual_Integer;
    procedure Test_areEqual_Single;
    procedure Test_areEqual_Double;
    procedure Test_areEqual_Char;
    procedure Test_areEqual_String;

  end; 

implementation

uses
  CghEqualsPrimitive;

///////////////////////////////////////////////////////////////////////////////

procedure TTestCghEqualsPrimitive.Test_areEqual_Byte;
var
  Actual : Byte;
  Expected : Byte;
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

