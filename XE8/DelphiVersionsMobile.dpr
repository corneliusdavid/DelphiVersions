program DelphiVersionsMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  uConditionalList in '..\..\uConditionalList.pas',
  ufrmDelphiVersionsMobile in '..\..\ufrmDelphiVersionsMobile.pas' {frmDelphiVersionsMobile},
  uOpenViewUrl in '..\..\uOpenViewUrl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDelphiVersionsMobile, frmDelphiVersionsMobile);
  Application.Run;
end.
