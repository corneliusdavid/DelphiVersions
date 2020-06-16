program DelphiVersionsConsole;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  uConditionalList in '..\uConditionalList.pas';

procedure ShowCompilerDefine(const CompDefined: string);
begin
  Writeln(CompDefined);
end;

begin
  Writeln(IntroText);
  Writeln;

  GetConditionalDefines(ShowCompilerDefine);
  SetupReferenceLinks;

  Writeln;
  Writeln('References...');
  if Length(IntroLink1) > 0 then
    Writeln('About Conditional Compilation: ' + sLineBreak + '  ' + IntroLink1);
  if Length(IntroLink2) > 0 then
    Writeln('Classifications of Compiler Directives: ' + sLineBreak + '  ' + IntroLink2);
  if Length(DirectivesLink) > 0 then
    Writeln('Compiler Directives for this version of Delphi ' + sLineBreak + '  ' + DirectivesLink);

  if (Length(IntroLink1) = 0) and (Length(IntroLink2) = 0) and (Length(DirectivesLink) = 0) then
    Writeln('Follow this link for documentation on this version of Delphi:' + sLineBreak + '  ' + OldDocLink);

  Writeln('Compiler Version Directives for all versions of Delphi: ' + sLineBreak + '  ' + VersionsLink);

  Readln;
end.
