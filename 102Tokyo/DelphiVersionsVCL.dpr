program DelphiVersionsVCL;

uses
  Forms,
  Vcl.Themes,
  Vcl.Styles,
  uConditionalList in '..\uConditionalList.pas',
  ufrmDelphiVersions in '..\ufrmDelphiVersions.pas' {frmDelphiVersions};

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('CopperDark');
  Application.Title := 'Delphi Versions';
  Application.CreateForm(TfrmDelphiVersions, frmDelphiVersions);
  Application.Run;
end.
