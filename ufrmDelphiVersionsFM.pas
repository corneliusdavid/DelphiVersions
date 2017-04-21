unit ufrmDelphiVersionsFM;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts, FMX.Gestures, FMX.Edit, FMX.StdCtrls,
  FMX.ListBox, FMX.Controls.Presentation;

type
  TfrmDelphiVersionsFM = class(TForm)
    StyleBook1: TStyleBook;
    ToolbarHolder: TLayout;
    ToolbarPopup: TPopup;
    ToolbarPopupAnimation: TFloatAnimation;
    ToolBar1: TToolBar;
    ToolbarApplyButton: TButton;
    ToolbarCloseButton: TButton;
    ToolbarAddButton: TButton;
    lblIntro: TLabel;
    lbDefines: TListBox;
    pnlBottom: TPanel;
    lblRef1: TLabel;
    lblRef2: TLabel;
    edtRef1: TEdit;
    edtRef2: TEdit;
    procedure ToolbarCloseButtonClick(Sender: TObject);
    procedure FormGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    FGestureOrigin: TPointF;
    FGestureInProgress: Boolean;
    procedure ShowToolbar(AShow: Boolean);
  end;

var
  frmDelphiVersionsFM: TfrmDelphiVersionsFM;

implementation

{$R *.fmx}

uses
  uConditionalList;

procedure TfrmDelphiVersionsFM.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkEscape then
    ShowToolbar(not ToolbarPopup.IsOpen);
end;

procedure TfrmDelphiVersionsFM.ToolbarCloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure ShowCompilerDefine(const CompDefined: string);
begin
  frmDelphiVersionsFM.lbDefines.Items.Add(CompDefined);
end;

procedure TfrmDelphiVersionsFM.FormActivate(Sender: TObject);
begin
  lblIntro.Text := IntroText;
  edtRef1.Text := RefText1;
  edtRef2.Text := RefText2;

  GetConditionalDefines(ShowCompilerDefine);
end;

procedure TfrmDelphiVersionsFM.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
var
  DX, DY : Single;
begin
  if EventInfo.GestureID = igiPan then
  begin
    if (TInteractiveGestureFlag.gfBegin in EventInfo.Flags)
      and ((Sender = ToolbarPopup)
        or (EventInfo.Location.Y > (ClientHeight - 70))) then
    begin
      FGestureOrigin := EventInfo.Location;
      FGestureInProgress := True;
    end;

    if FGestureInProgress and (TInteractiveGestureFlag.gfEnd in EventInfo.Flags) then
    begin
      FGestureInProgress := False;
      DX := EventInfo.Location.X - FGestureOrigin.X;
      DY := EventInfo.Location.Y - FGestureOrigin.Y;
      if (Abs(DY) > Abs(DX)) then
        ShowToolbar(DY < 0);
    end;
  end
end;

procedure TfrmDelphiVersionsFM.ShowToolbar(AShow: Boolean);
begin
  ToolbarPopup.Width := ClientWidth;
  ToolbarPopup.PlacementRectangle.Rect := TRectF.Create(0, ClientHeight-ToolbarPopup.Height, ClientWidth-1, ClientHeight-1);
  ToolbarPopupAnimation.StartValue := ToolbarPopup.Height;
  ToolbarPopupAnimation.StopValue := 0;

  ToolbarPopup.IsOpen := AShow;
end;

end.
