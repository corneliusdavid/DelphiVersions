unit ufrmDelphiVersionsMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Colors;

type
  TfrmDelphiVersionsMobile = class(TForm)
    lblIntro: TLabel;
    pnlBottom: TPanel;
    lbDefines: TListBox;
    cmbRefs: TComboBox;
    btnLaunchRef: TButton;
    ColorBoxBorder: TColorBox;
    lblTitle: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnLaunchRefClick(Sender: TObject);
  private
    FFirstTime: Boolean;
    procedure Launch(const RefURL: string);
  public
    { Public declarations }
  end;

var
  frmDelphiVersionsMobile: TfrmDelphiVersionsMobile;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses
{$IFDEF MSWINDOWS}
  Winapi.ShellAPI, Winapi.Windows,
{$ELSE}
  {$IFDEF POSIX}
    uOpenViewUrl,
  {$ENDIF POSIX}
{$ENDIF}
  uConditionalList;

procedure ShowCompilerDefine(const CompDefined: string);
begin
  frmDelphiVersionsMobile.lbDefines.Items.Add(CompDefined);
end;

procedure TfrmDelphiVersionsMobile.btnLaunchRefClick(Sender: TObject);
begin
  case cmbRefs.ItemIndex of
    0: Launch(IntroLink1);
    1: Launch(IntroLink2);
    2: Launch(DirectivesLink);
    3: Launch(VersionsLink);
  end;
end;

procedure TfrmDelphiVersionsMobile.FormActivate(Sender: TObject);
begin
  if FFirstTime then begin
    FFirstTime := False;

    GetConditionalDefines(ShowCompilerDefine);
    SetupReferenceLinks;

    lblIntro.Text := IntroText;
  end;
end;

procedure TfrmDelphiVersionsMobile.FormCreate(Sender: TObject);
begin
  FFirstTime := True;
end;

procedure TfrmDelphiVersionsMobile.Launch(const RefURL: string);
begin
{$IFDEF MSWINDOWS}
  ShellExecute(0, 'OPEN', PChar(RefURL), '', '', SW_SHOWNORMAL);
{$ENDIF MSWINDOWS}
{$IFDEF POSIX}
   OpenURL(RefURL);
{$ENDIF POSIX}
end;

end.
