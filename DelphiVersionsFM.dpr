program DelphiVersionsFM;

uses
  FMX.Forms,
  ufrmDelphiVersionsFM in 'ufrmDelphiVersionsFM.pas' {frmDelphiVersionsFM};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDelphiVersionsFM, frmDelphiVersionsFM);
  Application.Run;
end.
