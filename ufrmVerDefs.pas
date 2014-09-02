unit ufrmVerDefs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls; // {$IFNDEF VER130}, JvExControls, JvLinkLabel{$ENDIF};

type
  TfrmVerDefs = class(TForm)
    lblVer10: TLabel;
    lblVer11: TLabel;
    lblVer12: TLabel;
    lblVer13: TLabel;
    lblVer14: TLabel;
    lblVer15: TLabel;
    lblVer16: TLabel;
    lblVer17: TLabel;
    lblVer18: TLabel;
    lblVer19: TLabel;
    lblVer20: TLabel;
    lblVer21: TLabel;
    Label1: TLabel;
    lblVer185: TLabel;
    lblDelphi: TLabel;
    lblDelphiCompiler: TLabel;
    lblDelphiLanguage: TLabel;
    lblBorland: TLabel;
    lblWin32: TLabel;
    lblWin64: TLabel;
    lblWindows: TLabel;
    lblVer22: TLabel;
    lblVer23: TLabel;
    lblVer24: TLabel;
    lblVer25: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    procedure EnableDefinedLabels;
  end;

var
  frmVerDefs: TfrmVerDefs;

implementation

{$R *.DFM}

(*
{$IFNDEF VER130}
  {$I Jedi.inc}
{$ENDIF}
*)

procedure TfrmVerDefs.EnableDefinedLabels;
begin
  {$IFDEF Ver100} lblVer10.Enabled := True; {$ENDIF}
  {$IFDEF Ver110} lblVer11.Enabled := True; {$ENDIF}
  {$IFDEF Ver120} lblVer12.Enabled := True; {$ENDIF}
  {$IFDEF Ver130} lblVer13.Enabled := True; {$ENDIF}  // Delphi 5
  {$IFDEF Ver140} lblVer14.Enabled := True; {$ENDIF}
  {$IFDEF Ver150} lblVer15.Enabled := True; {$ENDIF}  // Delphi 7
  {$IFDEF Ver160} lblVer16.Enabled := True; {$ENDIF}
  {$IFDEF Ver170} lblVer17.Enabled := True; {$ENDIF}  // Delphi 2005
  {$IFDEF Ver180} lblVer18.Enabled := True; {$ENDIF}  // Delphi 2006
  {$IFDEF Ver185} lblVer185.Enabled := True; {$ENDIF} // Delphi 2007
  {$IFDEF Ver190} lblVer19.Enabled := True; {$ENDIF}
  {$IFDEF Ver200} lblVer20.Enabled := True; {$ENDIF}
  {$IFDEF Ver210} lblVer21.Enabled := True; {$ENDIF}  // Delphi 2010
  {$IFDEF Ver220} lblVer22.Enabled := True; {$ENDIF}  // Delphi XE
  {$IFDEF Ver230} lblVer23.Enabled := True; {$ENDIF}  //
  {$IFDEF Ver240} lblVer24.Enabled := True; {$ENDIF}  //
  {$IFDEF Ver250} lblVer25.Enabled := True; {$ENDIF}  //
  {$IFDEF Ver260} lblVer26.Enabled := True; {$ENDIF}  //

  {$IFDEF Delphi} lblDelphi.Enabled := True; {$ENDIF}
  {$IFDEF DelphiCompiler} lblDelphiCompiler.Enabled := True; {$ENDIF}
  {$IFDEF DelphiLanguage} lblDelphiLanguage.Enabled := True; {$ENDIF}
  {$IFDEF Borland} lblBorland.Enabled := True; {$ENDIF}
  {$IFDEF Win32} lblWin32.Enabled := True; {$ENDIF}
  {$IFDEF Win64} lblWin64.Enabled := True; {$ENDIF}
  {$IFDEF Windows} lblWindows.Enabled := True; {$ENDIF}

  // see many more in the JEDI.INC file!
end;

procedure TfrmVerDefs.FormCreate(Sender: TObject);
begin
  EnableDefinedLabels;
end;

end.
