unit ufrmDelphiVersions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Vcl.ExtCtrls;

type
  TfrmDelphiVersions = class(TForm)
    lblIntro: TLabel;
    lbDefs: TListBox;
    pnlBottom: TPanel;
    Label2: TLabel;
    edtRef1: TEdit;
    Label3: TLabel;
    edtRef2: TEdit;
    procedure FormActivate(Sender: TObject);
  end;

var
  frmDelphiVersions: TfrmDelphiVersions;

implementation

{$R *.dfm}

uses
  uConditionalList;

procedure ShowCompilerDefine(const CompDefined: string);
begin
  frmDelphiVersions.lbDefs.Items.Add(CompDefined);
end;


procedure TfrmDelphiVersions.FormActivate(Sender: TObject);
begin
  lblIntro.Caption := IntroText;
  edtRef1.Text := RefText1;
  edtRef2.Text := RefText2;

  GetConditionalDefines(ShowCompilerDefine);
end;

end.
