program DefinedVersions;

uses
  Forms,
  ufrmVerDefs in 'ufrmVerDefs.pas' {frmVerDefs};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmVerDefs, frmVerDefs);
  Application.Run;
end.
