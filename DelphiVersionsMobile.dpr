program DelphiVersionsMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmDelphiVersionsMobile in 'ufrmDelphiVersionsMobile.pas' {frmDelphiVersionsMobile},
  uConditionalList in 'uConditionalList.pas',
  uOpenViewUrl in 'uOpenViewUrl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDelphiVersionsMobile, frmDelphiVersionsMobile);
  Application.Run;
end.
