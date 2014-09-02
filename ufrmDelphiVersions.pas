unit ufrmDelphiVersions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmDelphiVersions = class(TForm)
    Label1: TLabel;
    lbDefs: TListBox;
    procedure FormActivate(Sender: TObject);
  end;

var
  frmDelphiVersions: TfrmDelphiVersions;

implementation

{$R *.dfm}

procedure TfrmDelphiVersions.FormActivate(Sender: TObject);
begin
  {$IFDEF VER80}      lbDefs.Items.Add('VER80 (Delphi 1)');     {$ENDIF}
  {$IFDEF VER90}      lbDefs.Items.Add('VER90 (Delphi 2)');     {$ENDIF}
  {$IFDEF VER100}     lbDefs.Items.Add('VER100 (Delphi 3)');    {$ENDIF}
  {$IFDEF VER120}     lbDefs.Items.Add('VER120 (Delphi 4)');    {$ENDIF}
  {$IFDEF VER130}     lbDefs.Items.Add('VER130 (Delphi 5)');    {$ENDIF}
  {$IFDEF VER140}     lbDefs.Items.Add('VER140 (Delphi 6)');    {$ENDIF}
  {$IFDEF VER150}     lbDefs.Items.Add('VER150 (Delphi 7)');    {$ENDIF}
  {$IFDEF VER160}     lbDefs.Items.Add('VER160 (Delphi 8)');    {$ENDIF}
  {$IFDEF VER170}     lbDefs.Items.Add('VER170 (Delphi 2005)'); {$ENDIF}
  {$IFDEF VER180}     lbDefs.Items.Add('VER180 (Delphi 2006 & 2007)'); {$ENDIF}
  {$IFDEF VER185}     lbDefs.Items.Add('VER185 (Delphi 2007)'); {$ENDIF}
  {$IFDEF VER200}     lbDefs.Items.Add('VER200 (Delphi 2009)'); {$ENDIF}
  {$IFDEF VER210}     lbDefs.Items.Add('VER210 (Delphi 2010)'); {$ENDIF}
  {$IFDEF VER220}     lbDefs.Items.Add('VER220 (Delphi ?)'); {$ENDIF}
  {$IFDEF VER230}     lbDefs.Items.Add('VER230 (Delphi ?)'); {$ENDIF}
  {$IFDEF LINUX}      lbDefs.Items.Add('LINUX');                {$ENDIF}
  {$IFDEF WIN32}      lbDefs.Items.Add('WIN32');                {$ENDIF}
  {$IFDEF MSWINDOWS}  lbDefs.Items.Add('MSWINDOWS');            {$ENDIF}
  {$IFDEF CONSOLE}    lbDefs.Items.Add('CONSOLE');              {$ENDIF}
  {$IFDEF RELEASE}    lbDefs.Items.Add('RELEASE');              {$ENDIF}
  {$IFDEF DEBUG}      lbDefs.Items.Add('DEBUG');                {$ENDIF}
end;

end.
