program DelphiVersionsVCL;

uses
  Forms,
  ufrmDelphiVersions in 'ufrmDelphiVersions.pas' {frmDelphiVersions},
  uConditionalList in 'uConditionalList.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('CopperDark');
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
