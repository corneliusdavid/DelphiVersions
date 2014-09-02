object frmDelphiVersions: TfrmDelphiVersions
  Left = 263
  Top = 235
  Caption = 'Delphi Versions'
  ClientHeight = 340
  ClientWidth = 438
  Color = clBtnFace
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  DesignSize = (
    438
    340)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 422
    Height = 97
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Delphi has compiler directives that are defined in each version ' +
      'of Delphi that you can use in your code to determine, at compile' +
      '-time, what version of Delphi is being used.  This program, when' +
      ' compiled in various versions of Delphi show which ones are defi' +
      'ned for that version.'
    WordWrap = True
  end
  object lbDefs: TListBox
    Left = 8
    Top = 108
    Width = 422
    Height = 224
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
end
