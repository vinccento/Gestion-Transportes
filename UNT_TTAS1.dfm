object INT_TTAS1: TINT_TTAS1
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'INFORME A TRANSPORTISTAS-1'
  ClientHeight = 149
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
    Top = 30
    Width = 64
    Height = 13
    Caption = 'Fecha a listar'
  end
  object Label2: TLabel
    Left = 47
    Top = 94
    Width = 85
    Height = 13
    Caption = 'Cliente a Recoger'
  end
  object FECHAINICIAL: TDateTimePicker
    Left = 216
    Top = 30
    Width = 97
    Height = 21
    Date = 42230.328922083330000000
    Time = 42230.328922083330000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 200
    Top = 91
    Width = 137
    Height = 21
    Align = alCustom
    Alignment = taCenter
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
end
