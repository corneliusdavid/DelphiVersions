object frmDelphiVersions: TfrmDelphiVersions
  Left = 263
  Top = 235
  Width = 560
  Height = 426
  Caption = 'Delphi Versions'
  Color = clBtnFace
  Constraints.MinWidth = 450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 511
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
  object Label2: TLabel
    Left = 8
    Top = 341
    Width = 54
    Height = 13
    Caption = 'Reference:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 363
    Width = 54
    Height = 13
    Caption = 'Reference:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbDefs: TListBox
    Left = 8
    Top = 111
    Width = 511
    Height = 224
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 16
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 68
    Top = 338
    Width = 451
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = 
      'http://docwiki.embarcadero.com/RADStudio/XE8/en/Compiler_Version' +
      's'
  end
  object Edit2: TEdit
    Left = 68
    Top = 360
    Width = 451
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = 
      'http://docwiki.embarcadero.com/RADStudio/XE8/en/Conditional_comp' +
      'ilation_%28Delphi%29'
  end
end
