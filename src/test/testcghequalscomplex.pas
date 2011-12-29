//
// Copyright (c) 2011. Uli Fuchs <ufuchs@gmx.com>
// Released under the terms of the GNU GPL v2.0.
//

unit TestCghEqualsComplex;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, fpcunit, testregistry, Equals, CghEqualsComplex;

type

  /////////////////////////////////////
  //
  // TTestCghEqualsComplex
  //
  TTestCghEqualsComplex= class(TTestCase)
  published
    procedure Test_clearList;
    procedure Test_contains;
  end;

implementation

procedure TTestCghEqualsComplex.Test_clearList;
var
  P : TPersonenStand;
  L1 : TList;
begin
  L1 := TList.Create;
  P := TPersonenStand.Create;
  L1.Add(P);
  ClearList(L1);
  L1.Free;
end;

procedure TTestCghEqualsComplex.Test_contains;
var
  P : TPersonenStand;
  L1 : TList;
  Result : Boolean;
begin
  L1 := TList.Create;
  P := TPersonenStand.Create;
  L1.Add(P);
  P := TPersonenStand.Create;
  P.Von := 20111226;
  L1.Add(P);
  Result := contains(L1, P);
  AssertEquals(True, Result);
  ClearList(L1);
end;



initialization
  RegisterTest(TTestCghEqualsComplex);
end.

