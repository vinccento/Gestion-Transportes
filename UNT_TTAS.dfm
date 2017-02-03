object INT_TTAS: TINT_TTAS
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'INFORME A TRANSPORTISTAS'
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
    Left = 87
    Top = 30
    Width = 64
    Height = 13
    Caption = 'Fecha a listar'
  end
  object Label3: TLabel
    Left = 87
    Top = 70
    Width = 47
    Height = 13
    Caption = 'Filtro Tta.'
  end
  object FECHAINICIAL: TDateTimePicker
    Left = 216
    Top = 30
    Width = 97
    Height = 21
    Date = 42230.328922083330000000
    Time = 42230.328922083330000000
    TabOrder = 0
    OnKeyPress = FECHAINICIALKeyPress
  end
  object Edit1: TEdit
    Left = 160
    Top = 67
    Width = 180
    Height = 21
    Align = alCustom
    Alignment = taCenter
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
end
