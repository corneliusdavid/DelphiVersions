program DelphiVersionsFM;

uses
  FMX.Forms,
  uConditionalList in '..\uConditionalList.pas',
  ufrmDelphiVersionsFM in '..\ufrmDelphiVersionsFM.pas' {frmDelphiVersionsFM};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDelphiVersionsFM, frmDelphiVersionsFM);
  Application.Run;
end.

