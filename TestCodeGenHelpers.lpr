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

