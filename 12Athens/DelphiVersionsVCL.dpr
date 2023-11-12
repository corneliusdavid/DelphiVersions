program DelphiVersionsVCL;

{$R *.dres}

uses
  System.SysUtils, System.IOUtils,
  Vcl.Forms, Vcl.Themes, Vcl.Styles,
  Winapi.Windows,
  uConditionalList in '..\uConditionalList.pas',
  ufrmDelphiVersions in '..\ufrmDelphiVersions.pas' {frmDelphiVersions};

var
  StyleHandle: TStyleManager.TStyleServicesHandle;
begin
  Application.Initialize;
  StyleHandle := TStyleManager.LoadFromResource(HInstance, 'AQUASTYLE');
  TStyleManager.SetStyle(StyleHandle);
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
