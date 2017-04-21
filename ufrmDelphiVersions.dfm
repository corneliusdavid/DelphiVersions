object frmDelphiVersions: TfrmDelphiVersions
  Left = 263
  Top = 235
  BorderWidth = 5
  Caption = 'Delphi Versions'
  ClientHeight = 377
  ClientWidth = 534
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
  object lblIntro: TLabel
    Left = 0
    Top = 0
    Width = 534
    Height = 64
    Align = alTop
    Caption = 
      'Delphi has compiler directives that are defined in each version ' +
      'of Delphi that you can use in your code to determine, at compile' +
      '-time, what version of Delphi is being used.  This program, when' +
      ' compiled in various versions of Delphi show which ones are defi' +
      'ned for that version.'
    WordWrap = True
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 507
  end
  object lbDefs: TListBox
    Left = 0
    Top = 64
    Width = 534
    Height = 248
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 501
    ExplicitHeight = 224
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 312
    Width = 534
    Height = 65
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 304
    ExplicitWidth = 526
    object Label2: TLabel
      Left = 8
      Top = 13
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
      Top = 35
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
    object edtRef1: TEdit
      Left = 68
      Top = 10
      Width = 451
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 
        'http://docwiki.embarcadero.com/RADStudio/XE8/en/Compiler_Version' +
        's'
    end
    object edtRef2: TEdit
      Left = 68
      Top = 32
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
        'http://docwiki.embarcadero.com/RADStudio/XE8/en/Conditional_comp' +
        'ilation_%28Delphi%29'
    end
  end
end
