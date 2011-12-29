//
// Copyright (c) 2011. Uli Fuchs <ufuchs@gmx.com>
// Released under the terms of the GNU GPL v2.0.
//

program TestCodeGenHelpers;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms,
CghEqualsPrimitive, TestCghEqualsPrimitive, GuiTestRunner,
CghEqualsComplex, Equals, TestCghEqualsComplex;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TGuiTestRunner, TestRunner);
  Application.Run;
end.

