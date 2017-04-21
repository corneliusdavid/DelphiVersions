program DelphiVersionsConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, uConditionalList;

procedure ShowCompilerDefine(const CompDefined: string);
begin
  Writeln(CompDefined);
end;

begin
  Writeln(IntroText);
  Writeln;

  GetConditionalDefines(ShowCompilerDefine);

  Writeln;
  Writeln('References...');
  Writeln(RefText1);
  Writeln(RefText2);

  Readln;
end.
