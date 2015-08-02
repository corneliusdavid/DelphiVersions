unit ufrmDelphiVersions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmDelphiVersions = class(TForm)
    Label1: TLabel;
    lbDefs: TListBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    procedure FormActivate(Sender: TObject);
  end;

var
  frmDelphiVersions: TfrmDelphiVersions;

implementation

{$R *.dfm}

procedure TfrmDelphiVersions.FormActivate(Sender: TObject);
begin
  // platform
  {$IFDEF LINUX}      lbDefs.Items.Add('LINUX');                {$ENDIF}
  {$IFDEF LINUX32}    lbDefs.Items.Add('LINUX32');              {$ENDIF}
  {$IFDEF MSWINDOWS}  lbDefs.Items.Add('MSWINDOWS');            {$ENDIF}
  {$IFDEF WIN32}      lbDefs.Items.Add('WIN32');                {$ENDIF}
  {$IFDEF WIN64}      lbDefs.Items.Add('WIN64');                {$ENDIF}
  {$IFDEF IOS}        lbDefs.Items.Add('IOS');                  {$ENDIF}
  {$IFDEF NATIVECODE} lbDefs.Items.Add('NATIVECODE');           {$ENDIF}
  {$IFDEF MACOS}      lbDefs.Items.Add('MACOS');                {$ENDIF}
  {$IFDEF MACOS32}    lbDefs.Items.Add('MACOS32');              {$ENDIF}
  {$IFDEF POSIX}      lbDefs.Items.Add('POSIX');                {$ENDIF}
  {$IFDEF POSIX32}    lbDefs.Items.Add('POSIX32');              {$ENDIF}
  {$IFDEF ANDROID}    lbDefs.Items.Add('ANDROID');              {$ENDIF}

  // cpu
  {$IFDEF CPU386}     lbDefs.Items.Add('CPU386');               {$ENDIF}
  {$IFDEF CPUARM}     lbDefs.Items.Add('CPUARM');               {$ENDIF}
  {$IFDEF CPUARM64}   lbDefs.Items.Add('CPUARM64');             {$ENDIF}
  {$IFDEF CPUX86}     lbDefs.Items.Add('CPUX86');               {$ENDIF}
  {$IFDEF CPUX64}     lbDefs.Items.Add('CPUX64');               {$ENDIF}
  {$IFDEF CPU32BITS}  lbDefs.Items.Add('CPU32BITS');            {$ENDIF}
  {$IFDEF CPU64BITS}  lbDefs.Items.Add('CPU64BITS');            {$ENDIF}

  // application type
  {$IFDEF CONSOLE}    lbDefs.Items.Add('CONSOLE');              {$ENDIF}

  // default build configurations
  {$IFDEF RELEASE}    lbDefs.Items.Add('RELEASE');              {$ENDIF}
  {$IFDEF DEBUG}      lbDefs.Items.Add('DEBUG');                {$ENDIF}

  // other options
  {$IFDEF CONDITIONALEXPRESSIONS} lbDefs.Items.Add('CONDITIONALEXPRESSIONS'); {$ENDIF}

  // delphi version
  {$IFDEF VER80}      lbDefs.Items.Add('VER80 (Delphi 1)');     {$ENDIF}
  {$IFDEF VER90}      lbDefs.Items.Add('VER90 (Delphi 2)');     {$ENDIF}
  {$IFDEF VER100}     lbDefs.Items.Add('VER100 (Delphi 3)');    {$ENDIF}
  {$IFDEF VER120}     lbDefs.Items.Add('VER120 (Delphi 4)');    {$ENDIF}
  {$IFDEF VER130}     lbDefs.Items.Add('VER130 (Delphi 5)');    {$ENDIF}
  {$IFDEF VER140}     lbDefs.Items.Add('VER140 (Delphi 6, package version 60)');    {$ENDIF}
  {$IFDEF VER150}     lbDefs.Items.Add('VER150 (Delphi 7, package version 70)');    {$ENDIF}
  {$IFDEF VER160}     lbDefs.Items.Add('VER160 (Delphi 8, package version 80)');    {$ENDIF}
  {$IFDEF VER170}     lbDefs.Items.Add('VER170 (Delphi 2005, package version 90)'); {$ENDIF}
  {$IFDEF VER180}     lbDefs.Items.Add('VER180 (Delphi 2006, package version 100)'); {$ENDIF}
  {$IFDEF VER180}     lbDefs.Items.Add('VER180 (Delphi 2007, package version 100)'); {$ENDIF}
  {$IFDEF VER185}     lbDefs.Items.Add('VER185 (Delphi 2007, package version 110)'); {$ENDIF}
  {$IFDEF VER200}     lbDefs.Items.Add('VER200 (Delphi 2009, package version 120)'); {$ENDIF}
  {$IFDEF VER210}     lbDefs.Items.Add('VER210 (Delphi 2010, package version 140)'); {$ENDIF}
  {$IFDEF VER220}     lbDefs.Items.Add('VER220 (Delphi XE, package version 150)');   {$ENDIF}
  {$IFDEF VER230}     lbDefs.Items.Add('VER230 (Delphi XE2, package version 160, 161)');  {$ENDIF}
  {$IFDEF VER240}     lbDefs.Items.Add('VER240 (Delphi XE3, package version 170)');  {$ENDIF}
  {$IFDEF VER250}     lbDefs.Items.Add('VER250 (Delphi XE4, package version 180)');  {$ENDIF}
  {$IFDEF VER260}     lbDefs.Items.Add('VER260 (Delphi XE5, package version 190)');  {$ENDIF}
  {$IFDEF VER270}     lbDefs.Items.Add('VER270 (Delphi XE6, package version 200)');  {$ENDIF}
  {$IFDEF VER280}     lbDefs.Items.Add('VER280 (Delphi XE7, package version 210)');  {$ENDIF}
  {$IFDEF VER290}     lbDefs.Items.Add('VER290 (Delphi XE8, package version 220)');  {$ENDIF}
end;

end.
