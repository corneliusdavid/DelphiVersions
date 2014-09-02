program DelphiVersions;

uses
  Forms,
  ufrmDelphiVersions in 'ufrmDelphiVersions.pas' {frmDelphiVersions};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
