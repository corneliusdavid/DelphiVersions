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
    StyleBook: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnLaunchRefClick(Sender: TObject);
  private
    FFirstTime: Boolean;
  end;

var
  frmDelphiVersionsMobile: TfrmDelphiVersionsMobile;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Surface.fmx MSWINDOWS}
{$R *.Macintosh.fmx MACOS}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.iPad.fmx IOS}
{$R *.iPhone.fmx IOS}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}

uses
  uOpenViewUrl,
  uConditionalList;

procedure ShowCompilerDefine(const CompDefined: string);
begin
  frmDelphiVersionsMobile.lbDefines.Items.Add(CompDefined);
end;

procedure TfrmDelphiVersionsMobile.btnLaunchRefClick(Sender: TObject);
begin
  case cmbRefs.ItemIndex of
    0: OpenURL(IntroLink1);
    1: OpenURL(IntroLink2);
    2: OpenURL(DirectivesLink);
    3: OpenURL(VersionsLink);
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

end.
