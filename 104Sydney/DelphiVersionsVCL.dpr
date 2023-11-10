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
  TStyleManager.LoadFromFile(TPath.Combine(ExtractFilePath(Application.ExeName), 'CopperDark.vsf'));
  TStyleManager.TrySetStyle('CopperDark');
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
