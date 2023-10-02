program DelphiVersionsVCL;



uses
  Forms,
  uConditionalList in '..\uConditionalList.pas',
  ufrmDelphiVersions in '..\ufrmDelphiVersions.pas' {frmDelphiVersions},
  System.SysUtils,
  System.IOUtils,
  Vcl.Themes,
  Vcl.Styles;

begin
  Application.Initialize;
  TStyleManager.LoadFromFile('Glow.vsf');
  TStyleManager.TrySetStyle('Glow');
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
