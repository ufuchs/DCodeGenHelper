//
// Copyright (c) 2011. Uli Fuchs <ufuchs@gmx.com>
// Released under the terms of the GNU GPL v2.0.
//

unit Equals;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, CghEqualsComplex, CghEqualsPrimitive;

type

  /////////////////////////////////////
  //
  // TPersonenStand
  //
  TPersonenStand = class(TObject)
  private

    FStand : Integer;
    FVon : Integer;
    FBis : Integer;

  public

    destructor Destroy; override;

    function Equals(That : TObject) : Boolean; override;

    property Stand : Integer read FStand write FStand;
    property Von : Integer read FVon write FVon;
    property Bis : Integer read FBis write FBis;

  end;


  /////////////////////////////////////
  //
  // TPerson
  //
  TPerson = class
  private
    FName : String;
    FVorname : String;
    FPersonenStand : TPersonenStand;
  public

    constructor Create;
    destructor Destroy; override;

    function Equals(That : TObject) : Boolean; override;

    property Name : String read FName write FName;
    property Vorname : String read FVorname write FVorname;
    property PersonenStand : TPersonenStand read FPersonenStand write FPersonenStand;

  end;

implementation

///////////////////////////////////////////////////////////////////////////////
// TPersonenStand
///////////////////////////////////////////////////////////////////////////////

//
// Destroy
//
destructor TPersonenStand.Destroy;
begin
  FVon := 0;
  inherited Destroy;
end;

//
// Equals
//
function TPersonenStand.Equals(That : TObject) : Boolean;
var
  Other : TPersonenStand;
begin

  inherited;

  Result := False;

  if (That = nil) then
    Exit;

  if (That = Self) then begin
    Result := True;
    Exit;
  end;

  if not (That is TPersonenStand) then
    Exit;

  Other := That as TPersonenStand;

  Result :=
    areEqual(Stand, Other.Stand)
    and
    areEqual(Von, Other.Von)
    and
    areEqual(Bis, Other.Bis);

end;

///////////////////////////////////////////////////////////////////////////////
// TPerson
///////////////////////////////////////////////////////////////////////////////

//
// Create
//
constructor TPerson.Create;
begin
  inherited;
  FPersonenStand := TPersonenStand.Create;
end;

//
// Destroy
//
destructor TPerson.Destroy;
begin
  FPersonenStand.Free;
  inherited Destroy;
end;

//
// Equals
//
function TPerson.Equals(That : TObject) : Boolean;
var
  Other : TPerson;
begin

  inherited;

  Result := False;

  if (That = nil) then
    Exit;

  if (That = Self) then begin
    Result := True;
    Exit;
  end;

  if not (That is TPerson) then
    Exit;

  Other := That as TPerson;

  Result :=
    areEqual(Self.Name, Other.Name) and
    areEqual(Self.Vorname, Other.Vorname) and
    areEqual(Self.PersonenStand, Other.PersonenStand);

end;

end.

