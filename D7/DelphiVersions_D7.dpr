program DelphiVersions;

uses
  Forms,
  ufrmDelphiVersions in '..\ufrmDelphiVersions.pas' {frmDelphiVersions},
  uConditionalList in '..\uConditionalList.pas';

{.$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
